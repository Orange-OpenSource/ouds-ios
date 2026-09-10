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

/// Tests the default and explicit parameter values of `OUDSBulletList` enum cases.
struct OUDSBulletListTests {

    // MARK: - OUDSBulletList.UnorderedAsset.icon default values

    @Test func unorderedAssetIconDefaultAccessibilityLabelIsNil() {
        guard case let .icon(_, accessibilityLabel) = OUDSBulletList.UnorderedAsset.icon(Image(systemName: "star")) else {
            Issue.record("Expected .icon case")
            return
        }
        #expect(accessibilityLabel == nil)
    }

    // MARK: - OUDSBulletList.Type.unordered default values

    @Test func bulletListTypeDefaultAssetIsBullet() {
        let type: OUDSBulletList.`Type` = .unordered()
        guard case let .unordered(asset, _) = type else {
            Issue.record("Expected .unordered case")
            return
        }
        guard case .bullet = asset else {
            Issue.record("Expected .bullet asset")
            return
        }
    }

    @Test func bulletListTypeDefaultIsBrandedIsTrue() {
        let type: OUDSBulletList.`Type` = .unordered()
        guard case let .unordered(_, isBranded) = type else {
            Issue.record("Expected .unordered case")
            return
        }
        #expect(isBranded == true)
    }

    // MARK: - OUDSBulletList.Type.unordered explicit values are preserved

    @Test func bulletListTypeExplicitIsBrandedFalseIsPreserved() {
        let type: OUDSBulletList.`Type` = .unordered(isBranded: false)
        guard case let .unordered(_, isBranded) = type else {
            Issue.record("Expected .unordered case")
            return
        }
        #expect(isBranded == false)
    }
}
