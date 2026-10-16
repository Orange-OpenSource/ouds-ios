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

# -----------------------------------------------------------------------------
# Compare the public API surface of the OUDS Swift Package between two Git
# refs (tags, branches, commits), using `swift-api-digester` from the Xcode
# toolchain.
#
# Usage:
#   scripts/check-API-break.sh <OLD_REF> <NEW_REF> [options]
#
# Examples:
#   scripts/check-API-break.sh 3.0.0 HEAD
#   scripts/check-API-break.sh 3.0.0 HEAD --platforms ios,tvos
#
# Options:
#   --platforms <list>   Comma-separated: ios, ios-sim, macos, tvos, watchos,
#                        visionos. Default: all of them.
#   --product <name>     Umbrella library product from Package.swift
#                        Default: OUDSSwiftUI.
#   --verbose            More logs.
#   -h | --help          Show this help.
#
# Exit code:
#   0  no breaking change
#   1  script / build error
#   2  at least one breaking change detected
# -----------------------------------------------------------------------------

set -euo pipefail

# Project specific
# ----------------

# All products defined in Swift Package for OUDS any user can use 
ATOMIC_MODULES=(
    OUDSFoundations
    OUDSTokensRaw
    OUDSTokensSemantic
    OUDSTokensComponent
    OUDSThemesContract
    OUDSThemesOrange
    OUDSThemesOrangeCompact
    OUDSThemesSosh
    OUDSThemesWireframe
    OUDSThemesWhiteLabel
    OUDSComponents
    OUDSModules
)

# Highest level product containing anything
UMBRELLA_PRODUCT="OUDSSwiftUI"

# Matches the lowest supported version of each supported platforms
# For OUDS: iOS 15, macOS 13, tvOS 16, watchOS 11, visionOS 1
platform_triple() { 
    case "$1" in
        ios)      echo "arm64-apple-ios15.0" ;;
        ios-sim)  echo "arm64-apple-ios15.0-simulator" ;;
        macos)    echo "arm64-apple-macosx13.0" ;;
        tvos)     echo "arm64-apple-tvos16.0" ;;
        watchos)  echo "arm64-apple-watchos11.0" ;;
        visionos) echo "arm64-apple-xros1.0" ;;
        *) return 1 ;;
    esac
}

TEMP_DIFF_DIR="ouds-api-diff"

# Configuration
# -------------

EXIT_OK=0
EXIT_ERROR=1
EXIT_BREAKING=2

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

# Logging
# -------

VERBOSE=0
log()  { printf '[check-API-break] %s\n' "$*" >&2; }
vlog() { [ "$VERBOSE" -eq 1 ] && printf '[check-API-break] %s\n' "$*" >&2 || true; }
err()  { printf '[check-API-break][ERROR] %s\n' "$*" >&2; }
die()  { err "$*"; exit $EXIT_ERROR; }

usage() { sed -n '14,39p' "$0"; }

# Arguments
# ---------

OLD_REF=""
NEW_REF=""
PLATFORMS_ARG="ios,ios-sim,macos,tvos,watchos,visionos" # iPadOS included in iOS

while [ $# -gt 0 ]; do
    case "$1" in
        -h|--help) usage; exit $EXIT_OK ;;
        --platforms) PLATFORMS_ARG="${2:-}"; shift 2 ;;
        --product)   UMBRELLA_PRODUCT="${2:-}"; shift 2 ;;
        --verbose)   VERBOSE=1; shift ;;
        -*)          die "Unknown option: $1" ;;
        *)
            if [ -z "$OLD_REF" ]; then OLD_REF="$1"
            elif [ -z "$NEW_REF" ]; then NEW_REF="$1"
            else die "Unexpected argument: $1"
            fi
            shift ;;
    esac
done

[ -n "$OLD_REF" ] || die "Missing OLD_REF. See --help."
[ -n "$NEW_REF" ] || die "Missing NEW_REF. See --help."

# Environment / toolchain checks
# ------------------------------

command -v git >/dev/null        || die "git is required"
command -v xcrun >/dev/null      || die "xcrun is required"
command -v xcodebuild >/dev/null || die "xcodebuild is required (full Xcode)"

API_DIGESTER="$(xcrun -f swift-api-digester 2>/dev/null || true)"
[ -x "$API_DIGESTER" ] || die "swift-api-digester not found in Xcode toolchain"

# Platforms helpers
# -----------------

platform_sdk() {
    case "$1" in
        ios)      echo "iphoneos" ;;
        ios-sim)  echo "iphonesimulator" ;;
        macos)    echo "macosx" ;;
        tvos)     echo "appletvos" ;;
        watchos)  echo "watchos" ;;
        visionos) echo "xros" ;;
        *) return 1 ;;
    esac
}

platform_xcdest() {
    case "$1" in
        ios)      echo "generic/platform=iOS" ;;
        ios-sim)  echo "generic/platform=iOS Simulator" ;;
        macos)    echo "generic/platform=macOS" ;;
        tvos)     echo "generic/platform=tvOS" ;;
        watchos)  echo "generic/platform=watchOS" ;;
        visionos) echo "generic/platform=visionOS" ;;
        *) return 1 ;;
    esac
}

IFS=',' read -r -a PLATFORMS <<< "$PLATFORMS_ARG"
for p in "${PLATFORMS[@]}"; do
    platform_triple "$p" >/dev/null || die "Unknown platform: $p"
done

MODULES=("${ATOMIC_MODULES[@]}") # MODULES=("${ATOMIC_MODULES[@]}" "$UMBRELLA_PRODUCT") <--- doublon maybe

# Workspace
# ---------

WORK_DIR="$(mktemp -d -t "$TEMP_DIFF_DIR")"
vlog "Workspace dir: $WORK_DIR"

slugify() { echo "$1" | tr '/' '_' | tr -c '[:alnum:]._-' '_'; }
OLD_SLUG="$(slugify "$OLD_REF")"
NEW_SLUG="$(slugify "$NEW_REF")"

cleanup() {
    vlog "Cleaning up $WORK_DIR"
    # Try to let git remove its own worktrees first (cleans .git/worktrees/*).
    for slug in "$OLD_SLUG" "$NEW_SLUG"; do
        wt="$WORK_DIR/worktrees/$slug"
        [ -d "$wt" ] && git -C "$REPO_ROOT" worktree remove --force "$wt" >/dev/null 2>&1 || true
    done
    rm -rf "$WORK_DIR"
    git -C "$REPO_ROOT" worktree prune >/dev/null 2>&1 || true
}
trap cleanup EXIT

prepare_worktree() {
    local ref="$1" slug="$2"
    local path="$WORK_DIR/worktrees/$slug"
    mkdir -p "$WORK_DIR/worktrees"
    git -C "$REPO_ROOT" worktree prune >/dev/null 2>&1 || true
    log "Creating worktree for $ref"
    git -C "$REPO_ROOT" worktree add --detach --force "$path" "$ref" >/dev/null \
        || die "git worktree add failed for $ref"
}

# Build / dump / diagnose / kaboom
# --------------------------------

build_for_platform() {
    local worktree="$1" platform="$2"
    local destination; destination="$(platform_xcdest "$platform")"
    local build_path="$worktree/.derived/$platform"
    local build_log="$build_path/xcodebuild.log"
    mkdir -p "$build_path"

    log "  xcodebuild -scheme $UMBRELLA_PRODUCT -destination '$destination'"
    (
        cd "$worktree"
        xcodebuild \
            -scheme "$UMBRELLA_PRODUCT" \
            -destination "$destination" \
            -derivedDataPath "$build_path" \
            -configuration Debug \
            -skipPackagePluginValidation \
            -skipMacroValidation \
            BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
            SWIFT_EMIT_MODULE_INTERFACE=YES \
            COMPILER_INDEX_STORE_ENABLE=NO \
            build \
            >"$build_log" 2>&1
    ) || {
        err "xcodebuild failed for $platform. Last 40 lines of log:"
        tail -n 40 "$build_log" >&2 || true
        return $EXIT_ERROR
    }

    echo "$build_path"
}

# All directories under DerivedData that contain a .swiftmodule bundle,
# one per line.
collect_module_search_paths() {
    local build_path="$1"
    find "$build_path/Build" -type d -name "*.swiftmodule" 2>/dev/null \
        | sed 's|/[^/]*\.swiftmodule$||' | sort -u
}

dump_module() {
    local module="$1" platform="$2" build_path="$3" out_json="$4"
    local triple sdk_path
    triple="$(platform_triple "$platform")"
    sdk_path="$(xcrun --sdk "$(platform_sdk "$platform")" --show-sdk-path)"

    local i_flags=()
    while IFS= read -r dir; do
        [ -n "$dir" ] && i_flags+=(-I "$dir")
    done < <(collect_module_search_paths "$build_path")

    [ ${#i_flags[@]} -gt 0 ] || { err "No .swiftmodule under $build_path"; return 1; }

    mkdir -p "$(dirname "$out_json")"
    # out_json is .../dumps/<slug>/<platform>/<Module>.json
    local ref_slug; ref_slug="$(basename "$(dirname "$(dirname "$out_json")")")"
    vlog "    Dumping $module ($ref_slug / $platform)"
    "$API_DIGESTER" -dump-sdk \
        -module "$module" \
        -target "$triple" \
        -sdk "$sdk_path" \
        "${i_flags[@]}" \
        -o "$out_json" 2>"${out_json}.log" || {
            err "Dump failed for $module/$platform. Log:"
            tail -n 20 "${out_json}.log" >&2 || true
            return $EXIT_ERROR
        }
}

diagnose_module() {
    local old_json="$1" new_json="$2" out_txt="$3"
    "$API_DIGESTER" -diagnose-sdk \
        -input-paths "$old_json" \
        -input-paths "$new_json" \
        -print-module \
        >"$out_txt" 2>&1 || true
}

# Orchestration
# -------------

log "Comparing public API: $OLD_REF -> $NEW_REF"
log "Platforms: ${PLATFORMS[*]}"
log "Modules  : ${MODULES[*]}"

prepare_worktree "$OLD_REF" "$OLD_SLUG"
prepare_worktree "$NEW_REF" "$NEW_SLUG"

OLD_WT="$WORK_DIR/worktrees/$OLD_SLUG"
NEW_WT="$WORK_DIR/worktrees/$NEW_SLUG"

# Build each ref for each platform.
for platform in "${PLATFORMS[@]}"; do
    log "=== Platform: $platform ==="
    log "Building $OLD_REF for $platform"
    OLD_BUILD="$(build_for_platform "$OLD_WT" "$platform")" \
        || die "Build error ($OLD_REF/$platform)"
    log "Building $NEW_REF for $platform"
    NEW_BUILD="$(build_for_platform "$NEW_WT" "$platform")" \
        || die "Build error ($NEW_REF/$platform)"

    for module in "${MODULES[@]}"; do
        old_json="$WORK_DIR/dumps/$OLD_SLUG/$platform/${module}.json"
        new_json="$WORK_DIR/dumps/$NEW_SLUG/$platform/${module}.json"
        out_txt="$WORK_DIR/diffs/$platform/${module}.txt"
        mkdir -p "$(dirname "$out_txt")"

        dump_module "$module" "$platform" "$OLD_BUILD" "$old_json" \
            || die "Dump failed on OLD for $module/$platform"
        dump_module "$module" "$platform" "$NEW_BUILD" "$new_json" \
            || die "Dump failed on NEW for $module/$platform"
        diagnose_module "$old_json" "$new_json" "$out_txt"
    done
done

# Summary
# -------

HAS_BREAKAGE=0
printf '\n=== Summary ===\n' >&2

# swift-api-digester groups breakings under section headers like:
#   /* Removed Decls */
#   /* Moved Decls */
#   /* Renamed Decls */
#   /* Type Changes */
#   /* Decl Attribute changes */
#   /* Fixed-layout Type Changes */
#   /* Protocol Conformance Change */
#   /* Protocol Requirement Change */
#   /* Class Inheritance Change */
#   /* Generic Signature Changes */
#   /* RawRepresentable Changes */
#   /* Others */
# Every non-empty line inside such a section is a breaking change.

# Warning: if some values were previously defined by default in parameters and not now anymore,
# these cases may not be found!

for platform in "${PLATFORMS[@]}"; do
    for module in "${MODULES[@]}"; do
        out_txt="$WORK_DIR/diffs/$platform/${module}.txt"
        [ -f "$out_txt" ] || continue

        breaking_count="$(awk '
            /^\/\*/            { in_section=1; next }
            in_section && NF>0 { n++ }
            END { print n+0 }
        ' "$out_txt")"

        if [ "$breaking_count" -gt 0 ]; then
            HAS_BREAKAGE=1
            printf '%s / %-28s : ❌ %d breaking change(s)\n' \
                "$platform" "$module" "$breaking_count" >&2
            awk '
                /^\/\*/            { in_section=1; next }
                in_section && NF>0 { print "    - " $0 }
            ' "$out_txt" >&2
        else
            printf '%s / %-28s : ✅\n' "$platform" "$module" >&2
        fi
    done
done

printf '\n' >&2

if [ "$HAS_BREAKAGE" -eq 1 ]; then
    err "Breaking API change(s) detected."
    exit $EXIT_BREAKING
fi

log "No breaking API change detected."
exit $EXIT_OK
