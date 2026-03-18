#!/usr/bin/env bash
# Software Name: OUDS iOS
# SPDX-FileCopyrightText: Copyright (c) Orange SA
# SPDX-License-Identifier: MIT
#
# Native macOS build script for ClusterFuzzLite / OSS-Fuzz.
#
# Environment variables (set by ClusterFuzzLite or locally):
#   OUT       – destination directory for fuzzer binaries  (default: ./out)
#   SANITIZER – sanitizer to use: address | undefined | coverage (default: address)
#
# Requirements:
#   • Xcode command-line tools (clang, swiftc)
#   • Swift toolchain (bundled with Xcode on macOS)
#
# Usage (local):
#   SANITIZER=address OUT=/tmp/fuzzers ./infra/build.sh

set -euxo pipefail

###############################################################################
# Configuration
###############################################################################

: "${OUT:=$(pwd)/out}"
: "${SANITIZER:=address}"

mkdir -p "${OUT}"

# Resolve the Swift binary and SDK paths.
SWIFT_BIN=$(xcrun --find swift)
SWIFTC_BIN=$(xcrun --find swiftc)
CLANGXX_BIN=$(xcrun --find clang++)
SDK=$(xcrun --sdk macosx --show-sdk-path)
MACOS_VER=$(sw_vers -productVersion | cut -d. -f1-2)

echo "Swift:  ${SWIFT_BIN}"
echo "swiftc: ${SWIFTC_BIN}"
echo "clang++:${CLANGXX_BIN}"
echo "SDK:    ${SDK}"
echo "macOS:  ${MACOS_VER}"
echo "OUT:    ${OUT}"
echo "SAN:    ${SANITIZER}"

###############################################################################
# Step 1 – Build the Swift package with AddressSanitizer instrumentation.
#
# We use swift build to compile all package targets so that we get the
# compiled object files for OUDSFoundations (our fuzzer dependency).
# The `-Xswiftc -sanitize=address` flag embeds ASan instrumentation into every
# compiled Swift translation unit.
###############################################################################

"${SWIFT_BIN}" build \
    --target OUDSSwiftUIFuzzer \
    -c release \
    -Xswiftc -sanitize=address

# Locate build artefacts produced by SwiftPM.
BUILD_DIR=$("${SWIFT_BIN}" build --target OUDSSwiftUIFuzzer -c release --show-bin-path)

###############################################################################
# Step 2 – Re-link the fuzzer binary with libFuzzer + AddressSanitizer.
#
# `swift build` produces an executable whose main() is the Swift top-level
# code.  libFuzzer needs to provide its own main().  We therefore:
#   a) Extract the object files from the static archive that SwiftPM placed
#      in the build directory.
#   b) Re-link them with clang++ -fsanitize=fuzzer,address so that libFuzzer's
#      main() wins.
#
# SwiftPM names each module's static library lib<ModuleName>.a.
###############################################################################

WORK_DIR=$(mktemp -d)
trap 'rm -rf "${WORK_DIR}"' EXIT

# Collect all static archives produced by the release build (the fuzzer
# module itself plus its OUDSFoundations dependency).
ARCHIVES=()
for archive in "${BUILD_DIR}"/../*.a; do
    [[ -f "${archive}" ]] && ARCHIVES+=("${archive}")
done

# Also grab the fuzzer's own .o file (SwiftPM may not produce a .a for the
# executableTarget itself; the object lives under the build intermediates).
FUZZER_OBJ=$(find "${BUILD_DIR}/.." -name "OUDSSwiftUIFuzzer.build" -type d | head -1)
if [[ -n "${FUZZER_OBJ}" ]]; then
    FUZZER_OBJS=()
    while IFS= read -r obj; do
        FUZZER_OBJS+=("${obj}")
    done < <(find "${FUZZER_OBJ}" -name "*.o")
else
    FUZZER_OBJS=()
fi

# Locate Swift runtime and stdlib path (needed for linking Swift-compiled code
# with a C++ driver).
SWIFT_LIB_DIR=$(dirname "${SWIFTC_BIN}")/../lib/swift/macosx
if [[ ! -d "${SWIFT_LIB_DIR}" ]]; then
    # Fallback path for toolchain installations.
    SWIFT_LIB_DIR=$(xcrun --sdk macosx --show-sdk-path)/../../Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/macosx
fi

SANITIZER_FLAGS="-fsanitize=fuzzer,address"
if [[ "${SANITIZER}" == "undefined" ]]; then
    SANITIZER_FLAGS="-fsanitize=fuzzer,undefined"
elif [[ "${SANITIZER}" == "coverage" ]]; then
    # Coverage mode: instrument but do not link full libFuzzer driver.
    SANITIZER_FLAGS="-fsanitize=address -fprofile-instr-generate -fcoverage-mapping"
fi

# Re-link using clang++ so that libFuzzer's main() is included.
# shellcheck disable=SC2068
"${CLANGXX_BIN}" \
    ${SANITIZER_FLAGS} \
    -mmacosx-version-min="${MACOS_VER}" \
    -isysroot "${SDK}" \
    ${FUZZER_OBJS[@]+"${FUZZER_OBJS[@]}"} \
    ${ARCHIVES[@]+"${ARCHIVES[@]}"} \
    -L "${SWIFT_LIB_DIR}" \
    -Wl,-rpath,"${SWIFT_LIB_DIR}" \
    -lc++ \
    -o "${OUT}/OUDSSwiftUIFuzzer"

echo "Built fuzzer -> ${OUT}/OUDSSwiftUIFuzzer"
