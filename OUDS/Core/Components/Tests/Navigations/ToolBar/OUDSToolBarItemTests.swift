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

#if !os(watchOS) && !os(tvOS)
import OUDSComponents
import SwiftUI
import Testing

/// Tests the default and explicit parameter values of `OUDSToolBarItem` enum cases.
struct OUDSToolBarItemTests {

    // MARK: - ActionType.label default values

    @Test func labelActionTypeDefaultEmphasizedIsFalse() {
        guard case let .label(_, emphasized, _, _) = OUDSToolBarItem.ActionType.label("Action") else {
            Issue.record("Expected .label case")
            return
        }
        #expect(emphasized == false)
    }

    @Test func labelActionTypeDefaultAccessibilityHintIsNil() {
        guard case let .label(_, _, accessibilityHint, _) = OUDSToolBarItem.ActionType.label("Action") else {
            Issue.record("Expected .label case")
            return
        }
        #expect(accessibilityHint == nil)
    }

    // MARK: - ActionType.icon default values

    @Test func iconActionTypeDefaultAccessibilityHintIsNil() {
        guard case let .icon(_, _, accessibilityHint, _, _) = OUDSToolBarItem.ActionType.icon(asset: Image(systemName: "star"), accessibilityLabel: "Star") else {
            Issue.record("Expected .icon case")
            return
        }
        #expect(accessibilityHint == nil)
    }

    @Test func iconActionTypeDefaultBadgeTypeIsNil() {
        guard case let .icon(_, _, _, badgeType, _) = OUDSToolBarItem.ActionType.icon(asset: Image(systemName: "star"), accessibilityLabel: "Star") else {
            Issue.record("Expected .icon case")
            return
        }
        #expect(badgeType == nil)
    }

    // MARK: - NavigationType.back default values

    @Test func backNavigationTypeDefaultLabelIsNil() {
        guard case let .back(label, _, _) = OUDSToolBarItem.NavigationType.back() else {
            Issue.record("Expected .back case")
            return
        }
        #expect(label == nil)
    }

    @Test func backNavigationTypeDefaultAccessibilityLabelIsNotEmpty() {
        guard case let .back(_, accessibilityLabel, _) = OUDSToolBarItem.NavigationType.back() else {
            Issue.record("Expected .back case")
            return
        }
        #expect(!accessibilityLabel.isEmpty)
    }
}
#endif
