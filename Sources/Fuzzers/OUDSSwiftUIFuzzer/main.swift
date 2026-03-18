// Software Name: OUDS iOS
// SPDX-FileCopyrightText: Copyright (c) Orange SA
// SPDX-License-Identifier: MIT
//
// This software is distributed under the MIT license,
// the text of which is available at https://opensource.org/license/MIT/
// or see the "LICENSE" file for more details.
//
// Authors: See CONTRIBUTORS.txt
// Software description: A SwiftUI components library with code examples for Orange Unified Design System

import Foundation
import OUDSFoundations

// MARK: - libFuzzer entry point

/// libFuzzer entry point called by the fuzzing engine with arbitrary byte sequences.
///
/// This fuzzer exercises deterministic, pure logic from `OUDSFoundations` (which is
/// the leaf dependency of `OUDSSwiftUI`) without any network or I/O calls:
///
/// 1. **UTF-8 decode** — tests string parsing robustness.
/// 2. **`OUDSUtils.cyclicLatinLetter`** — exercises the cyclic letter index logic.
/// 3. **`OUDSUtils.cyclicArabicLetter`** — same for Arabic alphabet paths.
/// 4. **`Color(hexadecimalCode:)`** — exercises hex-colour string parsing.
///
/// The function must return 0 on every path (non-zero would signal a crash to libFuzzer).
@_cdecl("LLVMFuzzerTestOneInput")
public func LLVMFuzzerTestOneInput(_ data: UnsafePointer<UInt8>?, _ size: Int) -> Int32 {
    guard let data, size > 0 else { return 0 }

    let bytes = Data(bytes: data, count: size)

    // 1. Try UTF-8 decoding
    if let string = String(data: bytes, encoding: .utf8) {
        // 2. Drive cyclic letter utilities using bytes from the input
        let index = bytes[0]
        let isUppercase = (bytes.count % 2) == 0
        _ = OUDSUtils.cyclicLatinLetter(at: index, isUppercase: isUppercase)
        _ = OUDSUtils.cyclicArabicLetter(at: index)

        // 3. Try parsing the string as a hex colour (exercises branch logic for 6/8-char codes)
        _ = Color(hexadecimalCode: string)
    }

    return 0
}

// MARK: - Standard executable entry point (non-fuzzing builds)

// When built *without* libFuzzer, the top-level code below is the binary's
// main() entry point and simply prints usage information.
// When built *with* `-fsanitize=fuzzer`, libFuzzer provides its own main()
// and this code is never reached.
print("OUDSSwiftUIFuzzer: libFuzzer target for OUDSSwiftUI.")
print("Build with '-fsanitize=fuzzer,address' to run under ClusterFuzzLite.")
print("See docs/fuzzing.md for details.")
