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

/// Tests crash scenarios for `OUDSSwitchItem` using Swift Testing's `#expect(exitsWith:)`.
/// These tests verify that the component correctly enforces design constraints by crashing when
/// forbidden parameter combinations are used.
///
/// **Should be run on macOS to catch the failure crash, not possible on iOS yet**
struct OUDSSwitchItemCrashTests {

    /// Verify that `OUDSSwitchItem` crashes when both `isReadOnly` and `isError` are set to `true`.
    /// This is forbidden by design as a component cannot be in both error and read-only states.
    @Test
    func switchItemCrashesWhenReadOnlyAndError() async {
        await #expect(processExitsWith: .failure) {
            let isOn = false
            _ = OUDSSwitchItem("Test",
                               isOn: .constant(isOn),
                               isError: true,
                               isReadOnly: true)
        }
    }
}
#endif
