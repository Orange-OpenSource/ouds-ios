#!/usr/bin/env bash
#
# Software Name: OUDS iOS
# SPDX-FileCopyrightText: Copyright (c) Orange SA
# SPDX-License-Identifier: MIT
#
# This software is distributed under the MIT license,
# the text of which is available at https://opensource.org/license/MIT/
# or see the "LICENSE" file for more details.
#
# Authors: See CONTRIBUTORS.txt
# Software description: A SwiftUI components library with code examples for Orange Unified Design System
#

# ------------------------------------------------------------------------------
# build-xcframework.sh
#
# Builds a dynamic XCFramework for the OUDSSwiftUIOrangeSosh umbrella product.
#
# Output slices: iOS device (ios-arm64) and iOS Simulator (ios-arm64_x86_64-simulator).
#
# The script :
#   1. Cleans build/ and dist/ directories.
#   2. Archives the SPM product for iOS device and iOS simulator using
#      BUILD_LIBRARY_FOR_DISTRIBUTION=YES so that a .swiftinterface is emitted
#      (module stability) and MACH_O_TYPE=mh_dylib so that the produced binary
#      is a dynamic library, ready to be shared between multiple consumers.
#   3. Locates the produced .framework in each .xcarchive and copies the resource
#      bundles produced by SPM for the atomic targets that ship resources
#      (Orange theme icons, Sosh theme icons + fonts, Components strings).
#   4. Assembles the two slices into a single .xcframework via `xcodebuild
#      -create-xcframework`.
#   5. Zips the .xcframework using `ditto` (preserves symlinks and metadata),
#      generates a SHA256 checksum and a small release-notes snippet.
#
# Usage :
#   ./scripts/build-xcframework.sh <version>
#   VERSION=<version> ./scripts/build-xcframework.sh
#
#   If no version is supplied, the current `git describe --tags` value is used,
#   and if that fails too, "0.0.0-dev" is used as a fallback.
#
# Requirements :
#   - Xcode (matching the toolchain declared in .github/workflows/build-and-test.yml)
#   - swift 6.x (matches swift-tools-version declared in Package.swift)
#   - macOS with `ditto`, `shasum`, `plutil`
# ------------------------------------------------------------------------------

set -euo pipefail

# Configuration
# -------------

readonly SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
readonly REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"

# Product / scheme that will be exposed by the XCFramework.
# It is the umbrella SPM product that re-exports Orange + Sosh themes and
# every other atomic library (see OUDS/exported/OUDSSwiftUIOrangeSosh/Sources/Exported.swift).
readonly PRODUCT_NAME="OUDSSwiftUIOrangeSosh"

# Targets that ship resources through SPM.
# For each of them SPM produces a "OUDS_<TargetName>.bundle" that must be
# copied inside the final .framework so that Bundle.module keeps resolving
# at runtime once the framework is embedded in a host app.
readonly RESOURCE_TARGETS=(
    "OUDSThemesOrange"
    "OUDSThemesSosh"
    "OUDSComponents"
)

# Atomic modules that are re-exported by the umbrella product via
# `@_exported import` (see OUDS/exported/OUDSSwiftUIOrangeSosh/Sources/Exported.swift).
# The XCFramework must expose one framework per atomic module so that a
# consumer Xcode project can resolve the transitive imports declared inside
# the umbrella's .swiftinterface. Each atomic framework is a Swift-module-only
# stub: it exposes the .swiftmodule required for compilation, but its binary
# is an empty static archive (no symbols) because the actual object code is
# already linked into the umbrella dylib.
readonly ATOMIC_MODULES=(
    "OUDSFoundations"
    "OUDSTokensRaw"
    "OUDSTokensSemantic"
    "OUDSTokensComponent"
    "OUDSThemesContract"
    "OUDSThemesOrange"
    "OUDSThemesSosh"
    "OUDSComponents"
    "OUDSModules"
)

# Build directories.
readonly BUILD_DIR="${REPO_ROOT}/build"
readonly DIST_DIR="${REPO_ROOT}/dist"

readonly DEVICE_ARCHIVE_PATH="${BUILD_DIR}/${PRODUCT_NAME}-iphoneos.xcarchive"
readonly SIMULATOR_ARCHIVE_PATH="${BUILD_DIR}/${PRODUCT_NAME}-iphonesimulator.xcarchive"

readonly XCFRAMEWORK_PATH="${DIST_DIR}/${PRODUCT_NAME}.xcframework"

# Helpers
# -------

info()  { printf "\033[1;34m==>\033[0m %s\n" "$*"; }
warn()  { printf "\033[1;33m!!\033[0m  %s\n" "$*" >&2; }
error() { printf "\033[1;31mXX\033[0m  %s\n" "$*" >&2; exit 1; }

resolve_version() {
    local version="${1:-${VERSION:-}}"

    if [[ -z "${version}" ]]; then
        if version="$(git -C "${REPO_ROOT}" describe --tags --exact-match 2>/dev/null)"; then
            :
        elif version="$(git -C "${REPO_ROOT}" describe --tags 2>/dev/null)"; then
            :
        else
            version="0.0.0-dev"
        fi
    fi

    # Strip leading "v" if present.
    version="${version#v}"
    printf "%s" "${version}"
}

clean() {
    info "Cleaning ${BUILD_DIR} and ${DIST_DIR}"
    rm -rf "${BUILD_DIR}" "${DIST_DIR}"
    mkdir -p "${BUILD_DIR}" "${DIST_DIR}"
}

# ------------------------------------------------------------------------------
# Archive a single slice
#
# $1 : destination (e.g. "generic/platform=iOS")
# $2 : archive path
# ------------------------------------------------------------------------------

archive_slice() {
    local destination="$1"
    local archive_path="$2"
    local sdk_label="$3"

    info "Archiving ${PRODUCT_NAME} for ${sdk_label}"

    # Run xcodebuild from REPO_ROOT so it auto-detects the Package.swift
    # located there. Do NOT pass `-workspace "${REPO_ROOT}"` — that flag
    # expects a path to a .xcworkspace directory, not to the repo root;
    # passing a plain directory silently leads to a partially-resolved
    # package graph and to spurious "missing dependency" warnings from
    # the Swift 6 explicit module scanner.
    #
    # Do NOT pass `MACH_O_TYPE=mh_dylib` either — the dynamic nature of the
    # umbrella product is declared directly in Package.swift via
    # `.library(name: "OUDSSwiftUIOrangeSosh", type: .dynamic, ...)`.
    # Forcing MACH_O_TYPE at the xcodebuild level applies it to every
    # target in the package graph, produces duplicated PIF targets
    # (objfile + framework variants for the same module) and confuses
    # the Swift 6 explicit module scanner into emitting spurious
    # "missing dependency on X" warnings that get promoted to errors.
    (
        cd "${REPO_ROOT}"
        xcodebuild archive \
            -scheme "${PRODUCT_NAME}" \
            -destination "${destination}" \
            -archivePath "${archive_path}" \
            -configuration Release \
            -derivedDataPath "${BUILD_DIR}/DerivedData-${sdk_label}" \
            SKIP_INSTALL=NO \
            BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
            ONLY_ACTIVE_ARCH=NO \
            | xcbeautify 2>/dev/null || xcodebuild archive \
                -scheme "${PRODUCT_NAME}" \
                -destination "${destination}" \
                -archivePath "${archive_path}" \
                -configuration Release \
                -derivedDataPath "${BUILD_DIR}/DerivedData-${sdk_label}" \
                SKIP_INSTALL=NO \
                BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
                ONLY_ACTIVE_ARCH=NO
    )

    if [[ ! -d "${archive_path}" ]]; then
        error "Archive not produced at ${archive_path}"
    fi
}

# ------------------------------------------------------------------------------
# Locate the .framework produced inside the archive.
#
# SPM archives place frameworks in various locations depending on Xcode version.
# We search for it under Products/.
# ------------------------------------------------------------------------------

locate_framework_in_archive() {
    local archive_path="$1"
    local framework_path

    framework_path="$(find "${archive_path}/Products" -type d -name "${PRODUCT_NAME}.framework" -print -quit 2>/dev/null || true)"

    if [[ -z "${framework_path}" || ! -d "${framework_path}" ]]; then
        error "Could not locate ${PRODUCT_NAME}.framework inside ${archive_path}"
    fi

    printf "%s" "${framework_path}"
}

# ------------------------------------------------------------------------------
# Copy Swift module artefacts into a framework.
#
# When xcodebuild archives a SwiftPM product, the resulting .framework placed
# under the .xcarchive/Products/usr/local/lib/ is a stub: it contains the binary
# but NO Modules/ directory, so any Swift consumer that drag-and-drops the
# framework in Xcode fails to resolve `import <ProductName>` with an error such
# as "no such module OUDSSwiftUIOrangeSosh".
#
# The .swiftmodule/ directories (containing .swiftinterface, .swiftmodule,
# .abi.json, .swiftdoc for every arch) are actually produced next to the stub
# framework, in:
#   ${derived_data}/Build/Intermediates.noindex/ArchiveIntermediates/
#     ${PRODUCT_NAME}/BuildProductsPath/Release-<sdk>/
#
# This function copies every *.swiftmodule/ found there into the framework's
# Modules/ directory (the umbrella one plus every atomic library that the
# umbrella `@_exported import`s), and emits a minimal module.modulemap so that
# Xcode can resolve the framework as a Swift-only module.
#
# $1 : framework path (destination)
# $2 : derived data path (search source)
# ------------------------------------------------------------------------------

inject_swift_modules() {
    local framework_path="$1"
    local derived_data="$2"

    info "Injecting umbrella Swift module into ${framework_path}"

    local build_products_dir
    build_products_dir="$(find "${derived_data}/Build/Intermediates.noindex/ArchiveIntermediates" \
        -maxdepth 4 -type d -name "Release-*" -print -quit 2>/dev/null || true)"

    if [[ -z "${build_products_dir}" || ! -d "${build_products_dir}" ]]; then
        error "Could not locate BuildProductsPath/Release-* under ${derived_data}"
    fi

    info "  Sourcing umbrella swiftmodule from ${build_products_dir}"

    local modules_dir="${framework_path}/Modules"
    mkdir -p "${modules_dir}"

    # Copy ONLY the umbrella .swiftmodule/. The atomic modules that the
    # umbrella `@_exported import`s are exposed via sibling atomic frameworks
    # in the xcframework (see build_atomic_frameworks below), not embedded
    # inside the umbrella framework itself.
    local umbrella_swiftmodule="${build_products_dir}/${PRODUCT_NAME}.swiftmodule"
    if [[ ! -d "${umbrella_swiftmodule}" ]]; then
        error "Umbrella swiftmodule not found at ${umbrella_swiftmodule}"
    fi

    rm -rf "${modules_dir}/${PRODUCT_NAME}.swiftmodule"
    cp -R "${umbrella_swiftmodule}" "${modules_dir}/"

    # Emit a minimal module.modulemap so that Xcode recognises the framework
    # as a Swift-only module.
    cat > "${modules_dir}/module.modulemap" <<EOF
framework module ${PRODUCT_NAME} {
    export *
}
EOF

    info "  Injected ${PRODUCT_NAME}.swiftmodule + module.modulemap"
}

# ------------------------------------------------------------------------------
# Build 9 atomic frameworks for a given slice.
#
# Each atomic framework is a Swift-module-only stub:
#   - Its Modules/ directory contains the target's .swiftmodule/ and a
#     minimal module.modulemap.
#   - Its binary is an empty Mach-O static archive (produced from an empty .c
#     file) so that Xcode accepts it as a framework and links it, but no
#     symbol is actually added to the consumer executable — the real code
#     lives in the umbrella dylib.
#
# $1 : slice label used to pick the SDK (iphoneos / iphonesimulator)
# $2 : destination directory (parent of the atomic frameworks to create)
# $3 : BuildProductsPath directory (source of .swiftmodule/ directories)
# ------------------------------------------------------------------------------

build_atomic_frameworks() {
    local sdk_label="$1"
    local dest_dir="$2"
    local build_products_dir="$3"

    info "Building atomic frameworks for ${sdk_label}"

    mkdir -p "${dest_dir}"

    # Prepare the architecture list and SDK to use for the empty stub binary.
    local archs
    if [[ "${sdk_label}" == "iphoneos" ]]; then
        archs=("arm64")
    else
        archs=("arm64" "x86_64")
    fi
    local sdk="${sdk_label}"

    # Prepare a temporary directory holding the empty .o files for this slice.
    local stub_dir="${dest_dir}/.stub"
    mkdir -p "${stub_dir}"
    local empty_c="${stub_dir}/empty.c"
    printf "// intentionally empty\n" > "${empty_c}"

    # Determine the Mach-O platform triple suffix: iOS device vs simulator.
    # Without this, clang defaults to "iOS device" (platform 2) even when
    # invoked with --sdk iphonesimulator on arm64, which produces a fat
    # binary that xcodebuild -create-xcframework rejects with
    # "binaries with multiple platforms are not supported".
    local target_suffix=""
    if [[ "${sdk_label}" == "iphonesimulator" ]]; then
        target_suffix="-simulator"
    fi

    local -a stub_objects=()
    local arch
    for arch in "${archs[@]}"; do
        local obj="${stub_dir}/empty-${arch}.o"
        xcrun --sdk "${sdk}" clang \
            --target="${arch}-apple-ios15.0${target_suffix}" \
            -c "${empty_c}" -o "${obj}"
        stub_objects+=("${obj}")
    done

    local module
    for module in "${ATOMIC_MODULES[@]}"; do
        local module_swiftmodule="${build_products_dir}/${module}.swiftmodule"
        if [[ ! -d "${module_swiftmodule}" ]]; then
            error "Missing swiftmodule for atomic ${module} at ${module_swiftmodule}"
        fi

        local fw="${dest_dir}/${module}.framework"
        rm -rf "${fw}"
        mkdir -p "${fw}/Modules"

        # Copy the swiftmodule/ that carries the .swiftinterface, .swiftmodule,
        # .abi.json and .swiftdoc for every arch of the current slice.
        cp -R "${module_swiftmodule}" "${fw}/Modules/"

        # Minimal module.modulemap so that Xcode's Swift module resolver picks
        # up the atomic framework when the umbrella's .swiftinterface performs
        # `@_exported import ${module}`.
        cat > "${fw}/Modules/module.modulemap" <<EOF
framework module ${module} {
    export *
}
EOF

        # Minimal Info.plist. CFBundleExecutable MUST match the binary name.
        cat > "${fw}/Info.plist" <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>CFBundleDevelopmentRegion</key>
    <string>en</string>
    <key>CFBundleExecutable</key>
    <string>${module}</string>
    <key>CFBundleIdentifier</key>
    <string>com.orange.ouds.${module}</string>
    <key>CFBundleInfoDictionaryVersion</key>
    <string>6.0</string>
    <key>CFBundleName</key>
    <string>${module}</string>
    <key>CFBundlePackageType</key>
    <string>FMWK</string>
    <key>CFBundleShortVersionString</key>
    <string>1.0</string>
    <key>CFBundleVersion</key>
    <string>1</string>
    <key>MinimumOSVersion</key>
    <string>15.0</string>
</dict>
</plist>
EOF

        # Empty static archive that acts as a link-time stub — Xcode requires a
        # binary at CFBundleExecutable's location, but this one contributes
        # zero symbols so it will not duplicate anything already provided by
        # the umbrella dylib at runtime.
        xcrun --sdk "${sdk}" libtool -static -o "${fw}/${module}" "${stub_objects[@]}"

        info "  Built ${module}.framework (stub, ${#archs[@]} arch)"
    done

    # Clean up the temporary .o files; keep only the frameworks.
    rm -rf "${stub_dir}"
}

# ------------------------------------------------------------------------------
# Verify a stub atomic framework: it must have a binary, a Modules/ folder,
# a module.modulemap and its .swiftmodule/.
#
# $1 : framework path
# $2 : module name (matches CFBundleExecutable)
# ------------------------------------------------------------------------------

verify_atomic_framework() {
    local fw="$1"
    local module="$2"

    if [[ ! -f "${fw}/${module}" ]]; then
        error "Atomic framework ${fw} is missing its binary '${module}'"
    fi
    if [[ ! -f "${fw}/Info.plist" ]]; then
        error "Atomic framework ${fw} is missing Info.plist"
    fi
    if [[ ! -f "${fw}/Modules/module.modulemap" ]]; then
        error "Atomic framework ${fw} is missing Modules/module.modulemap"
    fi
    if [[ ! -d "${fw}/Modules/${module}.swiftmodule" ]]; then
        error "Atomic framework ${fw} is missing Modules/${module}.swiftmodule/"
    fi
}

# ------------------------------------------------------------------------------
# Copy resource bundles into a framework.
#
# For every target in RESOURCE_TARGETS, SPM produces a bundle named
# "OUDS_<TargetName>.bundle" (the "OUDS_" prefix comes from the package name).
# It may live either inside the archive Products, or inside the derived data
# BuildProductsPath. We look up both.
#
# $1 : framework path (destination)
# $2 : archive path (search source #1)
# $3 : derived data path (search source #2)
# ------------------------------------------------------------------------------

inject_resource_bundles() {
    local framework_path="$1"
    local archive_path="$2"
    local derived_data="$3"

    info "Injecting SPM resource bundles into ${framework_path}"

    local bundle_name
    local found_bundle
    for target in "${RESOURCE_TARGETS[@]}"; do
        bundle_name="OUDS_${target}.bundle"
        found_bundle="$(find "${archive_path}" "${derived_data}" -type d -name "${bundle_name}" -print -quit 2>/dev/null || true)"

        if [[ -z "${found_bundle}" || ! -d "${found_bundle}" ]]; then
            warn "Bundle ${bundle_name} not found in archive nor derived data. Runtime resource loading for target ${target} may fail."
            continue
        fi

        info "  Copying ${bundle_name} from ${found_bundle}"
        rm -rf "${framework_path}/${bundle_name}"
        cp -R "${found_bundle}" "${framework_path}/"
    done
}

# ------------------------------------------------------------------------------
# Verify a produced framework.
# ------------------------------------------------------------------------------

verify_framework() {
    local framework_path="$1"
    local label="$2"

    info "Verifying umbrella framework (${label}): ${framework_path}"

    local binary_path="${framework_path}/${PRODUCT_NAME}"
    if [[ ! -f "${binary_path}" ]]; then
        error "Binary not found at ${binary_path}"
    fi

    local file_output
    file_output="$(file "${binary_path}")"
    if ! grep -q "dynamically linked shared library" <<< "${file_output}"; then
        error "Framework binary is not a dynamic library. Got: ${file_output}"
    fi

    # Modules/ presence check — required for `import <ProductName>` to resolve
    # in a consumer Xcode project that drag-and-drops the xcframework.
    local modules_dir="${framework_path}/Modules"
    if [[ ! -d "${modules_dir}" ]]; then
        error "Modules/ directory missing in ${framework_path}"
    fi
    if [[ ! -d "${modules_dir}/${PRODUCT_NAME}.swiftmodule" ]]; then
        error "${PRODUCT_NAME}.swiftmodule missing in ${modules_dir}"
    fi
    if [[ ! -f "${modules_dir}/module.modulemap" ]]; then
        error "module.modulemap missing in ${modules_dir}"
    fi

    info "  file             : ${file_output}"
    info "  lipo             : $(lipo -info "${binary_path}" 2>/dev/null || echo 'lipo not available')"
    info "  umbrella module  : present"
    info "  modulemap        : present"
}

# ------------------------------------------------------------------------------
# Build .xcframework
# ------------------------------------------------------------------------------

create_xcframework() {
    local device_umbrella="$1"
    local device_atomic_dir="$2"
    local simulator_umbrella="$3"
    local simulator_atomic_dir="$4"

    # `xcodebuild -create-xcframework` accepts only ONE framework per (platform,
    # arch) slice. Trying to pack the umbrella and its 9 atomic sibling stubs
    # in the same xcframework fails with "A library with the identifier
    # 'ios-arm64' already exists". We therefore produce one .xcframework per
    # module: the umbrella + 9 atomic ones. The consumer drag-and-drops the
    # 10 xcframeworks into Xcode and sets only the umbrella to "Embed & Sign".

    info "Creating umbrella XCFramework at ${XCFRAMEWORK_PATH}"
    rm -rf "${XCFRAMEWORK_PATH}"
    xcodebuild -create-xcframework \
        -framework "${device_umbrella}" \
        -framework "${simulator_umbrella}" \
        -output "${XCFRAMEWORK_PATH}"

    if [[ ! -d "${XCFRAMEWORK_PATH}" ]]; then
        error "Failed to create umbrella XCFramework at ${XCFRAMEWORK_PATH}"
    fi

    local module
    for module in "${ATOMIC_MODULES[@]}"; do
        local xcf="${DIST_DIR}/${module}.xcframework"
        local device_fw="${device_atomic_dir}/${module}.framework"
        local simulator_fw="${simulator_atomic_dir}/${module}.framework"

        info "Creating atomic XCFramework ${module}.xcframework"
        rm -rf "${xcf}"
        xcodebuild -create-xcframework \
            -framework "${device_fw}" \
            -framework "${simulator_fw}" \
            -output "${xcf}"

        if [[ ! -d "${xcf}" ]]; then
            error "Failed to create atomic XCFramework ${xcf}"
        fi
    done
}

# ------------------------------------------------------------------------------
# Package (zip + sha256 + release notes)
# ------------------------------------------------------------------------------

package_xcframework() {
    local version="$1"
    local zip_name="${PRODUCT_NAME}-${version}.xcframework.zip"
    local zip_path="${DIST_DIR}/${zip_name}"
    local sha_path="${zip_path}.sha256"
    local notes_path="${DIST_DIR}/RELEASE_NOTES_XCFRAMEWORK.md"

    # Bundle the umbrella xcframework and the 9 atomic ones together in a
    # single zip so that consumers only have to download and unzip one asset.
    info "Zipping umbrella + atomic xcframeworks -> ${zip_path}"
    local -a xcf_names=("${PRODUCT_NAME}.xcframework")
    local module
    for module in "${ATOMIC_MODULES[@]}"; do
        xcf_names+=("${module}.xcframework")
    done

    # `ditto -c -k` accepts only ONE source argument, so we cannot pass all
    # 10 xcframeworks directly. Instead we materialise a temporary wrapper
    # directory named after the release version, copy every xcframework into
    # it, then archive that single directory. Consumers who unzip the asset
    # get a self-contained folder named "${PRODUCT_NAME}-<version>/" that
    # holds the 10 xcframeworks side by side, ready to drag-and-drop.
    local wrap_name="${PRODUCT_NAME}-${version}"
    local wrap_dir="${DIST_DIR}/${wrap_name}"
    rm -rf "${wrap_dir}"
    mkdir -p "${wrap_dir}"
    local name
    for name in "${xcf_names[@]}"; do
        cp -R "${DIST_DIR}/${name}" "${wrap_dir}/"
    done
    (cd "${DIST_DIR}" && ditto -c -k --sequesterRsrc --keepParent "${wrap_name}" "${zip_name}")
    rm -rf "${wrap_dir}"

    info "Computing SHA-256"
    (cd "${DIST_DIR}" && shasum -a 256 "${zip_name}" | tee "${sha_path}")

    local sha_value
    sha_value="$(awk '{print $1}' "${sha_path}")"

    info "Writing release notes to ${notes_path}"
    cat > "${notes_path}" <<EOF
# OUDS ${PRODUCT_NAME} XCFramework ${version}

Set of 10 XCFrameworks distributed together in a single zip:

- \`${PRODUCT_NAME}.xcframework\` — dynamic umbrella that holds all the
  actual code. Re-exports every atomic OUDS library via \`@_exported import\`
  (Foundations, Tokens raw / semantic / component, ThemesContract,
  ThemesOrange, ThemesSosh, Components, Modules).
- 9 atomic XCFrameworks (\`OUDSFoundations.xcframework\`,
  \`OUDSTokensRaw.xcframework\`, \`OUDSTokensSemantic.xcframework\`,
  \`OUDSTokensComponent.xcframework\`, \`OUDSThemesContract.xcframework\`,
  \`OUDSThemesOrange.xcframework\`, \`OUDSThemesSosh.xcframework\`,
  \`OUDSComponents.xcframework\`, \`OUDSModules.xcframework\`) — each one
  exposes a Swift .swiftmodule so that the umbrella's transitive imports can
  be resolved by the consumer's Swift compiler. Their binaries are empty
  static archives contributing zero symbol at link time.

## Why 10 xcframeworks rather than one?

\`xcodebuild -create-xcframework\` accepts only one \`.framework\` per
(platform, arch) slice. Packing 10 frameworks in a single xcframework is not
supported. The consumer therefore drag-and-drops the 10 xcframeworks; only
the umbrella carries actual code at runtime.

## Slices

Each xcframework contains:

- \`ios-arm64\`                          (iOS device, arm64)
- \`ios-arm64_x86_64-simulator\`         (iOS Simulator, arm64 + x86_64)

## Deployment target

- iOS 15.0

## Linkage

- Umbrella: dynamic library (Mach-O type: \`mh_dylib\`).
- Atomic stubs: empty static archives (no runtime footprint).
- Built with \`BUILD_LIBRARY_FOR_DISTRIBUTION=YES\` (module stability).
- Not code-signed. Consumer projects are responsible for signing / embedding.

## Integration

A single import is enough — every re-exported atomic module becomes visible
through the umbrella:

\`\`\`swift
import ${PRODUCT_NAME}
\`\`\`

In the consumer Xcode target's **Frameworks, Libraries, and Embedded
Content**:

- \`${PRODUCT_NAME}.xcframework\` → **Embed & Sign**
- The 9 atomic xcframeworks → **Do Not Embed** (link-time only, no runtime code)

## Checksum

\`\`\`
${sha_value}  ${zip_name}
\`\`\`
EOF

    # Remove the individual .xcframework directories now that they are all
    # packaged inside the zip. Keeps dist/ clean with only the distributable
    # artefacts: the zip, its checksum, and the release notes.
    info "Cleaning up individual .xcframework directories (already in the zip)"
    local name
    for name in "${xcf_names[@]}"; do
        rm -rf "${DIST_DIR}/${name}"
    done

    info "Done. Artefacts under ${DIST_DIR}:"
    ls -lh "${DIST_DIR}"
}

# ------------------------------------------------------------------------------
# Main
# ------------------------------------------------------------------------------

main() {
    local version
    version="$(resolve_version "${1:-}")"
    info "Building ${PRODUCT_NAME}.xcframework version ${version}"

    clean

    # Resolve BuildProductsPath for each slice — needed for both the umbrella
    # swiftmodule injection and the atomic framework generation.
    local device_build_products_dir
    local simulator_build_products_dir

    # ---- Device slice ----
    archive_slice \
        "generic/platform=iOS" \
        "${DEVICE_ARCHIVE_PATH}" \
        "iphoneos"
    local device_framework
    device_framework="$(locate_framework_in_archive "${DEVICE_ARCHIVE_PATH}")"
    device_build_products_dir="$(find "${BUILD_DIR}/DerivedData-iphoneos/Build/Intermediates.noindex/ArchiveIntermediates" \
        -maxdepth 4 -type d -name "Release-*" -print -quit 2>/dev/null || true)"
    if [[ -z "${device_build_products_dir}" || ! -d "${device_build_products_dir}" ]]; then
        error "Could not locate BuildProductsPath/Release-* under DerivedData-iphoneos"
    fi
    inject_swift_modules \
        "${device_framework}" \
        "${BUILD_DIR}/DerivedData-iphoneos"
    inject_resource_bundles \
        "${device_framework}" \
        "${DEVICE_ARCHIVE_PATH}" \
        "${BUILD_DIR}/DerivedData-iphoneos"
    verify_framework "${device_framework}" "iphoneos"

    local device_atomic_dir="${BUILD_DIR}/atomic-iphoneos"
    build_atomic_frameworks "iphoneos" "${device_atomic_dir}" "${device_build_products_dir}"
    local module
    for module in "${ATOMIC_MODULES[@]}"; do
        verify_atomic_framework "${device_atomic_dir}/${module}.framework" "${module}"
    done

    # ---- Simulator slice ----
    archive_slice \
        "generic/platform=iOS Simulator" \
        "${SIMULATOR_ARCHIVE_PATH}" \
        "iphonesimulator"
    local simulator_framework
    simulator_framework="$(locate_framework_in_archive "${SIMULATOR_ARCHIVE_PATH}")"
    simulator_build_products_dir="$(find "${BUILD_DIR}/DerivedData-iphonesimulator/Build/Intermediates.noindex/ArchiveIntermediates" \
        -maxdepth 4 -type d -name "Release-*" -print -quit 2>/dev/null || true)"
    if [[ -z "${simulator_build_products_dir}" || ! -d "${simulator_build_products_dir}" ]]; then
        error "Could not locate BuildProductsPath/Release-* under DerivedData-iphonesimulator"
    fi
    inject_swift_modules \
        "${simulator_framework}" \
        "${BUILD_DIR}/DerivedData-iphonesimulator"
    inject_resource_bundles \
        "${simulator_framework}" \
        "${SIMULATOR_ARCHIVE_PATH}" \
        "${BUILD_DIR}/DerivedData-iphonesimulator"
    verify_framework "${simulator_framework}" "iphonesimulator"

    local simulator_atomic_dir="${BUILD_DIR}/atomic-iphonesimulator"
    build_atomic_frameworks "iphonesimulator" "${simulator_atomic_dir}" "${simulator_build_products_dir}"
    for module in "${ATOMIC_MODULES[@]}"; do
        verify_atomic_framework "${simulator_atomic_dir}/${module}.framework" "${module}"
    done

    # ---- XCFramework ----
    create_xcframework \
        "${device_framework}" "${device_atomic_dir}" \
        "${simulator_framework}" "${simulator_atomic_dir}"

    # ---- Package ----
    package_xcframework "${version}"

    info "Successfully built ${PRODUCT_NAME}.xcframework ${version}"
}

main "$@"
