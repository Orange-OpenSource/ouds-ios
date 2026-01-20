//
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
//

#if os(macOS)
import OUDSComponents
import SwiftUI
import Testing

/// Tests crash scenarios for chip components using Swift Testing's `#expect(exitsWith:)`.
/// These tests verify that the components correctly enforce design constraints by crashing when
/// forbidden parameter combinations or values are used.
///
/// **Should be run on macOS to catch the failure crash, not possible on iOS yet**
struct OUDSChipCrashTests {

    /// Verify that `OUDSFilterChip` crashes when text parameter is empty.
    /// An empty text is forbidden by design.
    @Test
    func filterChipCrashesWithEmptyText() async {
        await #expect(processExitsWith: .failure) {
            _ = OUDSFilterChip(text: "") {}
        }
    }

    /// Verify that `OUDSSuggestionChip` crashes when text parameter is empty.
    /// An empty text is forbidden by design.
    @Test
    func suggestionChipCrashesWithEmptyText() async {
        await #expect(processExitsWith: .failure) {
            _ = OUDSSuggestionChip(text: "") {}
        }
    }
}
#endif
