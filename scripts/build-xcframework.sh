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

    info "Verifying framework (${label}): ${framework_path}"

    local binary_path="${framework_path}/${PRODUCT_NAME}"
    if [[ ! -f "${binary_path}" ]]; then
        error "Binary not found at ${binary_path}"
    fi

    local file_output
    file_output="$(file "${binary_path}")"
    if ! grep -q "dynamically linked shared library" <<< "${file_output}"; then
        error "Framework binary is not a dynamic library. Got: ${file_output}"
    fi

    info "  file  : ${file_output}"
    info "  lipo  : $(lipo -info "${binary_path}" 2>/dev/null || echo 'lipo not available')"
}

# ------------------------------------------------------------------------------
# Build .xcframework
# ------------------------------------------------------------------------------

create_xcframework() {
    local device_framework="$1"
    local simulator_framework="$2"

    info "Creating XCFramework at ${XCFRAMEWORK_PATH}"

    rm -rf "${XCFRAMEWORK_PATH}"
    xcodebuild -create-xcframework \
        -framework "${device_framework}" \
        -framework "${simulator_framework}" \
        -output "${XCFRAMEWORK_PATH}"

    if [[ ! -d "${XCFRAMEWORK_PATH}" ]]; then
        error "Failed to create XCFramework at ${XCFRAMEWORK_PATH}"
    fi
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

    info "Zipping ${XCFRAMEWORK_PATH} -> ${zip_path}"
    (cd "${DIST_DIR}" && ditto -c -k --sequesterRsrc --keepParent "${PRODUCT_NAME}.xcframework" "${zip_name}")

    info "Computing SHA-256"
    (cd "${DIST_DIR}" && shasum -a 256 "${zip_name}" | tee "${sha_path}")

    local sha_value
    sha_value="$(awk '{print $1}' "${sha_path}")"

    info "Writing release notes to ${notes_path}"
    cat > "${notes_path}" <<EOF
# OUDS ${PRODUCT_NAME} XCFramework ${version}

Dynamic XCFramework built from the \`${PRODUCT_NAME}\` umbrella SPM product.
It re-exports every atomic OUDS library (Foundations, Tokens raw / semantic /
component, ThemesContract, ThemesOrange, ThemesSosh, Components, Modules).

## Slices

- \`ios-arm64\`                          (iOS device, arm64)
- \`ios-arm64_x86_64-simulator\`         (iOS Simulator, arm64 + x86_64)

## Deployment target

- iOS 15.0

## Linkage

- Dynamic (Mach-O type: \`mh_dylib\`)
- Built with \`BUILD_LIBRARY_FOR_DISTRIBUTION=YES\` (module stability)
- Not code-signed. Consumer projects are responsible for signing / embedding.

## Integration

\`\`\`swift
import ${PRODUCT_NAME}
\`\`\`

## Checksum

\`\`\`
${sha_value}  ${zip_name}
\`\`\`
EOF

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

    # ---- Device slice ----
    archive_slice \
        "generic/platform=iOS" \
        "${DEVICE_ARCHIVE_PATH}" \
        "iphoneos"
    local device_framework
    device_framework="$(locate_framework_in_archive "${DEVICE_ARCHIVE_PATH}")"
    inject_resource_bundles \
        "${device_framework}" \
        "${DEVICE_ARCHIVE_PATH}" \
        "${BUILD_DIR}/DerivedData-iphoneos"
    verify_framework "${device_framework}" "iphoneos"

    # ---- Simulator slice ----
    archive_slice \
        "generic/platform=iOS Simulator" \
        "${SIMULATOR_ARCHIVE_PATH}" \
        "iphonesimulator"
    local simulator_framework
    simulator_framework="$(locate_framework_in_archive "${SIMULATOR_ARCHIVE_PATH}")"
    inject_resource_bundles \
        "${simulator_framework}" \
        "${SIMULATOR_ARCHIVE_PATH}" \
        "${BUILD_DIR}/DerivedData-iphonesimulator"
    verify_framework "${simulator_framework}" "iphonesimulator"

    # ---- XCFramework ----
    create_xcframework "${device_framework}" "${simulator_framework}"

    # ---- Package ----
    package_xcframework "${version}"

    info "Successfully built ${PRODUCT_NAME}.xcframework ${version}"
}

main "$@"
