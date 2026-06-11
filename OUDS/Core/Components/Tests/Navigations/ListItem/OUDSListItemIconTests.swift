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
import SwiftUI
import Testing

/// Tests the default and explicit parameter values of `OUDSListItemIcon.IconType` cases.
struct OUDSListItemIconTests {

    // MARK: - .neutral default values

    @Test func neutralIconTypeDefaultBadgeIsFalse() {
        guard case let .neutral(_, badge) = OUDSListItemIcon.IconType.neutral(asset: Image(systemName: "star")) else {
            Issue.record("Expected .neutral case")
            return
        }
        #expect(badge == false)
    }

    // MARK: - .neutral explicit values are preserved

    @Test func neutralIconTypeExplicitBadgeTrueIsPreserved() {
        guard case let .neutral(_, badge) = OUDSListItemIcon.IconType.neutral(asset: Image(systemName: "star"), badge: true) else {
            Issue.record("Expected .neutral case")
            return
        }
        #expect(badge == true)
    }
}
