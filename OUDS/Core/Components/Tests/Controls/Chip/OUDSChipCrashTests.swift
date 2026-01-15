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

import OUDSComponents
import OUDSFoundations
import SwiftUI
import Testing

/// Tests crash scenarios for chip components using Swift Testing's `#expect(processExitsWith:)`.
/// These tests verify that the components correctly enforce design constraints by crashing when
/// forbidden parameter combinations or values are used.
struct OUDSChipCrashTests {

    /// Verify that `OUDSFilterChip` crashes when text parameter is empty.
    /// An empty text is forbidden by design.
    @Test(.enabled(if: ProcessInfo.processInfo.environment["XCODE_RUNNING_FOR_PREVIEWS"] == nil))
    func filterChipCrashesWithEmptyText() async {
        #expect(exitsWith: .failure) {
            _ = OUDSFilterChip(text: "") { }
        }
    }

    /// Verify that `OUDSSuggestionChip` crashes when text parameter is empty.
    /// An empty text is forbidden by design.
    @Test(.enabled(if: ProcessInfo.processInfo.environment["XCODE_RUNNING_FOR_PREVIEWS"] == nil))
    func suggestionChipCrashesWithEmptyText() async {
        #expect(exitsWith: .failure) {
            _ = OUDSSuggestionChip(text: "") { }
        }
    }

    /// Verify that `ChipInteractionState` crashes when initialized with `.readOnly` interaction state.
    /// Chips do not support read-only state by design.
    @Test(.enabled(if: ProcessInfo.processInfo.environment["XCODE_RUNNING_FOR_PREVIEWS"] == nil))
    func chipInteractionStateCrashesWithReadOnly() async {
        #expect(exitsWith: .failure) {
            _ = ChipInteractionState(with: .readOnly)
        }
    }
}
