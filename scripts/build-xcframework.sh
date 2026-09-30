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
# Builds dynamic XCFrameworks for the OUDSSwiftUIOrange and OUDSSwiftUIOrangeSosh
# umbrella products.
#
# Output slices: iOS device (ios-arm64) and iOS Simulator (ios-arm64_x86_64-simulator).
#
# The script :
#   1. Cleans build/ and dist/ directories.
#   2. For each product (OUDSSwiftUIOrange, OUDSSwiftUIOrangeSosh):
#      a. Archives the SPM product for iOS device and iOS simulator using
#         BUILD_LIBRARY_FOR_DISTRIBUTION=YES so that a .swiftinterface is emitted
#         (module stability) and MACH_O_TYPE=mh_dylib so that the produced binary
#         is a dynamic library, ready to be shared between multiple consumers.
#      b. Locates the produced .framework in each .xcarchive and copies the resource
#         bundles produced by SPM for the atomic targets that ship resources.
#      c. Assembles the two slices into a single .xcframework via `xcodebuild
#         -create-xcframework`.
#      d. Zips the .xcframework using `ditto` (preserves symlinks and metadata),
#         generates a SHA256 checksum and a small release-notes snippet.
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

# Products to build (umbrella SPM products that re-export atomic libraries).
readonly PRODUCTS=(
    "OUDSSwiftUIOrange"
    "OUDSSwiftUIOrangeSosh"
)

# Get resource targets for a product.
# For each target, SPM produces a "OUDS_<TargetName>.bundle" that must be
# copied inside the final .framework so that Bundle.module keeps resolving
# at runtime once the framework is embedded in a host app.
get_resource_targets() {
    local product="$1"
    case "$product" in
        OUDSSwiftUIOrange) echo "OUDSThemesOrange OUDSComponents" ;;
        OUDSSwiftUIOrangeSosh) echo "OUDSThemesOrange OUDSThemesSosh OUDSComponents" ;;
    esac
}

# Get atomic modules for a product.
# These are re-exported by the umbrella product via `@_exported import`.
# The XCFramework must expose one framework per atomic module so that a
# consumer Xcode project can resolve the transitive imports declared inside
# the umbrella's .swiftinterface. Each atomic framework is a Swift-module-only
# stub: it exposes the .swiftmodule required for compilation, but its binary
# is an empty static archive (no symbols) because the actual object code is
# already linked into the umbrella dylib.
get_atomic_modules() {
    local product="$1"
    case "$product" in
        OUDSSwiftUIOrange) echo "OUDSFoundations OUDSTokensRaw OUDSTokensSemantic OUDSTokensComponent OUDSThemesContract OUDSThemesOrange OUDSThemesOrangeCompact OUDSComponents OUDSModules" ;;
        OUDSSwiftUIOrangeSosh) echo "OUDSFoundations OUDSTokensRaw OUDSTokensSemantic OUDSTokensComponent OUDSThemesContract OUDSThemesOrange OUDSThemesSosh OUDSComponents OUDSModules" ;;
    esac
}

# Build directories.
readonly BUILD_DIR="${REPO_ROOT}/build"
readonly DIST_DIR="${REPO_ROOT}/dist"

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
# $1 : product name
# $2 : destination (e.g. "generic/platform=iOS")
# $3 : archive path
# $4 : sdk label
# ------------------------------------------------------------------------------

archive_slice() {
    local product_name="$1"
    local destination="$2"
    local archive_path="$3"
    local sdk_label="$4"

    info "Archiving ${product_name} for ${sdk_label}"

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
            -scheme "${product_name}" \
            -destination "${destination}" \
            -archivePath "${archive_path}" \
            -configuration Release \
            -derivedDataPath "${BUILD_DIR}/DerivedData-${product_name}-${sdk_label}" \
            SKIP_INSTALL=NO \
            BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
            ONLY_ACTIVE_ARCH=NO \
            | xcbeautify 2>/dev/null || xcodebuild archive \
                -scheme "${product_name}" \
                -destination "${destination}" \
                -archivePath "${archive_path}" \
                -configuration Release \
                -derivedDataPath "${BUILD_DIR}/DerivedData-${product_name}-${sdk_label}" \
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
#
# $1 : product name
# $2 : archive path
# ------------------------------------------------------------------------------

locate_framework_in_archive() {
    local product_name="$1"
    local archive_path="$2"
    local framework_path

    framework_path="$(find "${archive_path}/Products" -type d -name "${product_name}.framework" -print -quit 2>/dev/null || true)"

    if [[ -z "${framework_path}" || ! -d "${framework_path}" ]]; then
        error "Could not locate ${product_name}.framework inside ${archive_path}"
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
#     ${product_name}/BuildProductsPath/Release-<sdk>/
#
# This function copies every *.swiftmodule/ found there into the framework's
# Modules/ directory (the umbrella one plus every atomic library that the
# umbrella `@_exported import`s), and emits a minimal module.modulemap so that
# Xcode can resolve the framework as a Swift-only module.
#
# $1 : product name
# $2 : framework path (destination)
# $3 : derived data path (search source)
# ------------------------------------------------------------------------------

inject_swift_modules() {
    local product_name="$1"
    local framework_path="$2"
    local derived_data="$3"

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
    local umbrella_swiftmodule="${build_products_dir}/${product_name}.swiftmodule"
    if [[ ! -d "${umbrella_swiftmodule}" ]]; then
        error "Umbrella swiftmodule not found at ${umbrella_swiftmodule}"
    fi

    rm -rf "${modules_dir}/${product_name}.swiftmodule"
    cp -R "${umbrella_swiftmodule}" "${modules_dir}/"

    # Emit a minimal module.modulemap so that Xcode recognises the framework
    # as a Swift-only module.
    cat > "${modules_dir}/module.modulemap" <<EOF
framework module ${product_name} {
    export *
}
EOF

    info "  Injected ${product_name}.swiftmodule + module.modulemap"
}

# ------------------------------------------------------------------------------
# Build atomic frameworks for a given slice.
#
# Each atomic framework is a Swift-module-only stub:
#   - Its Modules/ directory contains the target's .swiftmodule/ and a
#     minimal module.modulemap.
#   - Its binary is an empty Mach-O static archive (produced from an empty .c
#     file) so that Xcode accepts it as a framework and links it, but no
#     symbol is actually added to the consumer executable — the real code
#     lives in the umbrella dylib.
#
# $1 : product name (used to select atomic modules)
# $2 : slice label used to pick the SDK (iphoneos / iphonesimulator)
# $3 : destination directory (parent of the atomic frameworks to create)
# $4 : BuildProductsPath directory (source of .swiftmodule/ directories)
# ------------------------------------------------------------------------------

build_atomic_frameworks() {
    local product_name="$1"
    local sdk_label="$2"
    local dest_dir="$3"
    local build_products_dir="$4"

    info "Building atomic frameworks for ${product_name} (${sdk_label})"

    mkdir -p "${dest_dir}"

    # Get atomic modules for this product
    local -a atomic_modules
    read -ra atomic_modules <<< "$(get_atomic_modules "${product_name}")"

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
    for module in "${atomic_modules[@]}"; do
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
# $1 : product name (used to get atomic modules list)
# $2 : framework path
# $3 : module name (matches CFBundleExecutable)
# ------------------------------------------------------------------------------

verify_atomic_framework() {
    local product_name="$1"
    local fw="$2"
    local module="$3"

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
# For every target in RESOURCE_TARGETS for the given product, SPM produces a
# bundle named "OUDS_<TargetName>.bundle" (the "OUDS_" prefix comes from the
# package name). It may live either inside the archive Products, or inside the
# derived data BuildProductsPath. We look up both.
#
# $1 : product name
# $2 : framework path (destination)
# $3 : archive path (search source #1)
# $4 : derived data path (search source #2)
# ------------------------------------------------------------------------------

inject_resource_bundles() {
    local product_name="$1"
    local framework_path="$2"
    local archive_path="$3"
    local derived_data="$4"

    info "Injecting SPM resource bundles into ${framework_path}"

    # Get resource targets for this product
    local -a resource_targets
    read -ra resource_targets <<< "$(get_resource_targets "${product_name}")"

    local bundle_name
    local found_bundle
    for target in "${resource_targets[@]}"; do
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
#
# $1 : product name
# $2 : framework path
# $3 : label (e.g. "iphoneos")
# ------------------------------------------------------------------------------

verify_framework() {
    local product_name="$1"
    local framework_path="$2"
    local label="$3"

    info "Verifying umbrella framework (${label}): ${framework_path}"

    local binary_path="${framework_path}/${product_name}"
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
    if [[ ! -d "${modules_dir}/${product_name}.swiftmodule" ]]; then
        error "${product_name}.swiftmodule missing in ${modules_dir}"
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
#
# $1 : product name
# $2 : device umbrella framework path
# $3 : device atomic frameworks directory
# $4 : simulator umbrella framework path
# $5 : simulator atomic frameworks directory
# ------------------------------------------------------------------------------

create_xcframework() {
    local product_name="$1"
    local device_umbrella="$2"
    local device_atomic_dir="$3"
    local simulator_umbrella="$4"
    local simulator_atomic_dir="$5"

    local xcframework_path="${DIST_DIR}/${product_name}.xcframework"

    # Get atomic modules for this product
    local -a atomic_modules
    read -ra atomic_modules <<< "$(get_atomic_modules "${product_name}")"

    # `xcodebuild -create-xcframework` accepts only ONE framework per (platform,
    # arch) slice. Trying to pack the umbrella and its atomic sibling stubs
    # in the same xcframework fails with "A library with the identifier
    # 'ios-arm64' already exists". We therefore produce one .xcframework per
    # module: the umbrella + atomic ones. The consumer drag-and-drops the
    # xcframeworks into Xcode and sets only the umbrella to "Embed & Sign".

    info "Creating umbrella XCFramework at ${xcframework_path}"
    rm -rf "${xcframework_path}"
    xcodebuild -create-xcframework \
        -framework "${device_umbrella}" \
        -framework "${simulator_umbrella}" \
        -output "${xcframework_path}"

    if [[ ! -d "${xcframework_path}" ]]; then
        error "Failed to create umbrella XCFramework at ${xcframework_path}"
    fi

    local module
    for module in "${atomic_modules[@]}"; do
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
#
# $1 : product name
# $2 : version
# ------------------------------------------------------------------------------

package_xcframework() {
    local product_name="$1"
    local version="$2"

    local zip_name="${product_name}-${version}.xcframework.zip"
    local zip_path="${DIST_DIR}/${zip_name}"
    local sha_path="${zip_path}.sha256"
    local notes_path="${DIST_DIR}/RELEASE_NOTES_XCFRAMEWORK_${product_name#OUDSSwiftUI}.md"

    # Get atomic modules for this product
    local -a atomic_modules
    read -ra atomic_modules <<< "$(get_atomic_modules "${product_name}")"
    local atomic_count=${#atomic_modules[@]}

    # Bundle the umbrella xcframework and the atomic ones together in a
    # single zip so that consumers only have to download and unzip one asset.
    info "Zipping umbrella + atomic xcframeworks -> ${zip_path}"
    local -a xcf_names=("${product_name}.xcframework")
    local module
    for module in "${atomic_modules[@]}"; do
        xcf_names+=("${module}.xcframework")
    done

    # `ditto -c -k` accepts only ONE source argument, so we cannot pass all
    # xcframeworks directly. Instead we materialise a temporary wrapper
    # directory named after the release version, copy every xcframework into
    # it, then archive that single directory. Consumers who unzip the asset
    # get a self-contained folder named "${product_name}-<version>/" that
    # holds the xcframeworks side by side, ready to drag-and-drop.
    local wrap_name="${product_name}-${version}"
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

    # Build atomic frameworks list for release notes
    local atomic_list=""
    for module in "${atomic_modules[@]}"; do
        atomic_list="${atomic_list}\n- \`${module}.xcframework\`"
    done

    info "Writing release notes to ${notes_path}"
    cat > "${notes_path}" <<EOF
# OUDS ${product_name} XCFramework ${version}

Set of $((atomic_count + 1)) XCFrameworks distributed together in a single zip:

- \`${product_name}.xcframework\` — dynamic umbrella that holds all the
  actual code. Re-exports every atomic OUDS library via \`@_exported import\`.
${atomic_list}

## Why ${atomic_count} atomic xcframeworks?

\`xcodebuild -create-xcframework\` accepts only one \`.framework\` per
(platform, arch) slice. Packing multiple frameworks in a single xcframework is not
supported. The consumer therefore drag-and-drops the ${atomic_count} xcframeworks; only
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
import ${product_name}
\`\`\`

In the consumer Xcode target's **Frameworks, Libraries, and Embedded
Content**:

- \`${product_name}.xcframework\` → **Embed & Sign**
- The ${atomic_count} atomic xcframeworks → **Do Not Embed** (link-time only, no runtime code)

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
}

# ------------------------------------------------------------------------------
# Build a single product (umbrella + atomic frameworks)
#
# $1 : product name
# $2 : version
# ------------------------------------------------------------------------------

build_product() {
    local product_name="$1"
    local version="$2"

    info "Building ${product_name}.xcframework version ${version}"

    local device_archive_path="${BUILD_DIR}/${product_name}-iphoneos.xcarchive"
    local simulator_archive_path="${BUILD_DIR}/${product_name}-iphonesimulator.xcarchive"

    # ---- Device slice ----
    archive_slice \
        "${product_name}" \
        "generic/platform=iOS" \
        "${device_archive_path}" \
        "iphoneos"
    local device_framework
    device_framework="$(locate_framework_in_archive "${product_name}" "${device_archive_path}")"
    local device_build_products_dir
    device_build_products_dir="$(find "${BUILD_DIR}/DerivedData-${product_name}-iphoneos/Build/Intermediates.noindex/ArchiveIntermediates" \
        -maxdepth 4 -type d -name "Release-*" -print -quit 2>/dev/null || true)"
    if [[ -z "${device_build_products_dir}" || ! -d "${device_build_products_dir}" ]]; then
        error "Could not locate BuildProductsPath/Release-* under DerivedData-${product_name}-iphoneos"
    fi
    inject_swift_modules \
        "${product_name}" \
        "${device_framework}" \
        "${BUILD_DIR}/DerivedData-${product_name}-iphoneos"
    inject_resource_bundles \
        "${product_name}" \
        "${device_framework}" \
        "${device_archive_path}" \
        "${BUILD_DIR}/DerivedData-${product_name}-iphoneos"
    verify_framework "${product_name}" "${device_framework}" "iphoneos"

    local device_atomic_dir="${BUILD_DIR}/atomic-${product_name}-iphoneos"
    build_atomic_frameworks "${product_name}" "iphoneos" "${device_atomic_dir}" "${device_build_products_dir}"
    local -a atomic_modules
    read -ra atomic_modules <<< "$(get_atomic_modules "${product_name}")"
    local module
    for module in "${atomic_modules[@]}"; do
        verify_atomic_framework "${product_name}" "${device_atomic_dir}/${module}.framework" "${module}"
    done

    # ---- Simulator slice ----
    archive_slice \
        "${product_name}" \
        "generic/platform=iOS Simulator" \
        "${simulator_archive_path}" \
        "iphonesimulator"
    local simulator_framework
    simulator_framework="$(locate_framework_in_archive "${product_name}" "${simulator_archive_path}")"
    local simulator_build_products_dir
    simulator_build_products_dir="$(find "${BUILD_DIR}/DerivedData-${product_name}-iphonesimulator/Build/Intermediates.noindex/ArchiveIntermediates" \
        -maxdepth 4 -type d -name "Release-*" -print -quit 2>/dev/null || true)"
    if [[ -z "${simulator_build_products_dir}" || ! -d "${simulator_build_products_dir}" ]]; then
        error "Could not locate BuildProductsPath/Release-* under DerivedData-${product_name}-iphonesimulator"
    fi
    inject_swift_modules \
        "${product_name}" \
        "${simulator_framework}" \
        "${BUILD_DIR}/DerivedData-${product_name}-iphonesimulator"
    inject_resource_bundles \
        "${product_name}" \
        "${simulator_framework}" \
        "${simulator_archive_path}" \
        "${BUILD_DIR}/DerivedData-${product_name}-iphonesimulator"
    verify_framework "${product_name}" "${simulator_framework}" "iphonesimulator"

    local simulator_atomic_dir="${BUILD_DIR}/atomic-${product_name}-iphonesimulator"
    build_atomic_frameworks "${product_name}" "iphonesimulator" "${simulator_atomic_dir}" "${simulator_build_products_dir}"
    for module in "${atomic_modules[@]}"; do
        verify_atomic_framework "${product_name}" "${simulator_atomic_dir}/${module}.framework" "${module}"
    done

    # ---- XCFramework ----
    create_xcframework \
        "${product_name}" \
        "${device_framework}" "${device_atomic_dir}" \
        "${simulator_framework}" "${simulator_atomic_dir}"

    # ---- Package ----
    package_xcframework "${product_name}" "${version}"

    info "Successfully built ${product_name}.xcframework ${version}"
}

# ------------------------------------------------------------------------------
# Main
# ------------------------------------------------------------------------------

main() {
    local version
    version="$(resolve_version "${1:-}")"

    info "Building XCFrameworks for products: ${PRODUCTS[*]}"

    clean

    for product_name in "${PRODUCTS[@]}"; do
        build_product "${product_name}" "${version}"
    done

    info "Done. Artefacts under ${DIST_DIR}:"
    ls -lh "${DIST_DIR}"
}

main "$@"
