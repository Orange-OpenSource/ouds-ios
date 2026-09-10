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

#if os(iOS)
@testable import OUDSComponents
import Testing

/// Tests the public static constants exposed by `SelectedTabIndicator`.
struct OUDSSelectedTabIndicatorTests {

    @Test func `animation duration value`() {
        #expect(SelectedTabIndicator.animationDuration == 0.2)
    }

    @Test func `async delay value`() {
        #expect(SelectedTabIndicator.asyncDelay == 0.1)
    }

    @Test func `async delay is less than animation duration`() {
        #expect(SelectedTabIndicator.asyncDelay < SelectedTabIndicator.animationDuration)
    }
}
#endif
