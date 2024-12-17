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

import OUDS
import XCTest

// swiftlint:disable required_deinit
// swiftlint:disable implicitly_unwrapped_optional
// swiftlint:disable type_body_length

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In fact the `OUDSTheme` object is a class, which can be seen as an _asbtract class_, exposing through its extensions and protocols _sizing semantic tokens_.
/// These semantic tokens should be overriden by subclass like the `OrangeTheme` default theme.
/// 
/// **These tests checks if any _size semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
final class TestThemeOverrideOfSizeSemanticTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OUDSTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Semantic token - Sizing - Icon with typography

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeSmMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeSmMobile, abstractTheme.sizes.sizeIconWithHeadingXlargeSizeSmMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeSmMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeSmTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeSmTablet, abstractTheme.sizes.sizeIconWithHeadingXlargeSizeSmTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeSmTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeMdMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeMdMobile, abstractTheme.sizes.sizeIconWithHeadingXlargeSizeMdMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeMdMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeMdTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeMdTablet, abstractTheme.sizes.sizeIconWithHeadingXlargeSizeMdTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeMdTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeLgMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeLgMobile, abstractTheme.sizes.sizeIconWithHeadingXlargeSizeLgMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeLgMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeLgTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeLgTablet, abstractTheme.sizes.sizeIconWithHeadingXlargeSizeLgTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeLgTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeSizeSmMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeSmMobile, abstractTheme.sizes.sizeIconWithHeadingLargeSizeSmMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeSmMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeShortTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeSmTablet, abstractTheme.sizes.sizeIconWithHeadingLargeSizeSmTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeSmTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeMdMobile, abstractTheme.sizes.sizeIconWithHeadingLargeSizeMdMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeMdMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeMdTablet, abstractTheme.sizes.sizeIconWithHeadingLargeSizeMdTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeMdTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeTallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeLgMobile, abstractTheme.sizes.sizeIconWithHeadingLargeSizeLgMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeLgMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeTallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeLgTablet, abstractTheme.sizes.sizeIconWithHeadingLargeSizeLgTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeLgTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumShortMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeSmMobile, abstractTheme.sizes.sizeIconWithHeadingMediumSizeSmMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeSmMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumShortTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeSmTablet, abstractTheme.sizes.sizeIconWithHeadingMediumSizeSmTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeSmTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeMdMobile, abstractTheme.sizes.sizeIconWithHeadingMediumSizeMdMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeMdMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeMdTablet, abstractTheme.sizes.sizeIconWithHeadingMediumSizeMdTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeMdTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumSizeLgMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeLgMobile, abstractTheme.sizes.sizeIconWithHeadingMediumSizeLgMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeLgMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumSizeLgTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeLgTablet, abstractTheme.sizes.sizeIconWithHeadingMediumSizeLgTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeLgTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallSizeSmMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeSmMobile, abstractTheme.sizes.sizeIconWithHeadingSmallSizeSmMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeSmMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallShortTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeSmTablet, abstractTheme.sizes.sizeIconWithHeadingSmallSizeSmTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeSmTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallSizeMdMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeMdMobile, abstractTheme.sizes.sizeIconWithHeadingSmallSizeMdMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeMdMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeMdTablet, abstractTheme.sizes.sizeIconWithHeadingSmallSizeMdTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeMdTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallSizeLgMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeLgMobile, abstractTheme.sizes.sizeIconWithHeadingSmallSizeLgMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeLgMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallTallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeLgTablet, abstractTheme.sizes.sizeIconWithHeadingSmallSizeLgTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeLgTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeSizeSmMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodyLargeSizeSmMobile, abstractTheme.sizes.sizeIconWithBodyLargeSizeSmMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodyLargeSizeSmMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeShortTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodyLargeSizeSmTablet, abstractTheme.sizes.sizeIconWithBodyLargeSizeSmTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodyLargeSizeSmTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodyLargeSizeMdMobile, abstractTheme.sizes.sizeIconWithBodyLargeSizeMdMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodyLargeSizeMdMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodyLargeSizeMdTablet, abstractTheme.sizes.sizeIconWithBodyLargeSizeMdTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodyLargeSizeMdTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeTallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodyLargeSizeLgMobile, abstractTheme.sizes.sizeIconWithBodyLargeSizeLgMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodyLargeSizeLgMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeTallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodyLargeSizeLgTablet, abstractTheme.sizes.sizeIconWithBodyLargeSizeLgTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodyLargeSizeLgTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumShortMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodyMediumSizeSmMobile, abstractTheme.sizes.sizeIconWithBodyMediumSizeSmMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodyMediumSizeSmMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumShortTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodyMediumSizeSmTablet, abstractTheme.sizes.sizeIconWithBodyMediumSizeSmTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodyMediumSizeSmTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodyMediumSizeMdMobile, abstractTheme.sizes.sizeIconWithBodyMediumSizeMdMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodyMediumSizeMdMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodyMediumSizeMdTablet, abstractTheme.sizes.sizeIconWithBodyMediumSizeMdTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodyMediumSizeMdTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumSizeLgMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodyMediumSizeLgMobile, abstractTheme.sizes.sizeIconWithBodyMediumSizeLgMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodyMediumSizeLgMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumSizeLgTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodyMediumSizeLgTablet, abstractTheme.sizes.sizeIconWithBodyMediumSizeLgTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodyMediumSizeLgTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallSizeSmMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodySmallSizeSmMobile, abstractTheme.sizes.sizeIconWithBodySmallSizeSmMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodySmallSizeSmMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallShortTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodySmallSizeSmTablet, abstractTheme.sizes.sizeIconWithBodySmallSizeSmTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodySmallSizeSmTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallSizeMdMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodySmallSizeMdMobile, abstractTheme.sizes.sizeIconWithBodySmallSizeMdMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodySmallSizeMdMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodySmallSizeMdTablet, abstractTheme.sizes.sizeIconWithBodySmallSizeMdTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodySmallSizeMdTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallSizeLgMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodySmallSizeLgMobile, abstractTheme.sizes.sizeIconWithBodySmallSizeLgMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodySmallSizeLgMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallTallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodySmallSizeLgTablet, abstractTheme.sizes.sizeIconWithBodySmallSizeLgTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodySmallSizeLgTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelXlargeSizeSm() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithLabelXlargeSizeSm, abstractTheme.sizes.sizeIconWithLabelXlargeSizeSm)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithLabelXlargeSizeSm == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelXlargeSizeMd() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithLabelXlargeSizeMd, abstractTheme.sizes.sizeIconWithLabelXlargeSizeMd)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithLabelXlargeSizeMd == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelXlargeSizeLg() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithLabelXlargeSizeLg, abstractTheme.sizes.sizeIconWithLabelXlargeSizeLg)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithLabelXlargeSizeLg == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelSizeXs() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithLabelLargeSizeXs, abstractTheme.sizes.sizeIconWithLabelLargeSizeXs)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithLabelLargeSizeXs == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabeSizeSm() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithLabelLargeSizeSm, abstractTheme.sizes.sizeIconWithLabelLargeSizeSm)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithLabelLargeSizeSm == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelSizeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithLabelLargeSizeMd, abstractTheme.sizes.sizeIconWithLabelLargeSizeMd)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithLabelLargeSizeMd == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelSizeLg() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithLabelLargeSizeLg, abstractTheme.sizes.sizeIconWithLabelLargeSizeLg)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithLabelLargeSizeLg == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelSizeXl() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithLabelLargeSizeXl, abstractTheme.sizes.sizeIconWithLabelLargeSizeXl)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithLabelLargeSizeXl == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelMediumSizeSm() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithLabelMediumSizeSm, abstractTheme.sizes.sizeIconWithLabelMediumSizeSm)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithLabelMediumSizeSm == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelMediumSizeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithLabelMediumSizeMd, abstractTheme.sizes.sizeIconWithLabelMediumSizeMd)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithLabelMediumSizeMd == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelMediumSizeLg() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithLabelMediumSizeLg, abstractTheme.sizes.sizeIconWithLabelMediumSizeLg)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithLabelMediumSizeLg == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelSmallSizeSm() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithLabelSmallSizeSm, abstractTheme.sizes.sizeIconWithLabelSmallSizeSm)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithLabelSmallSizeSm == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelSmallSizeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithLabelSmallSizeMd, abstractTheme.sizes.sizeIconWithLabelSmallSizeMd)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithLabelSmallSizeMd == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelSmallSizeLg() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithLabelSmallSizeLg, abstractTheme.sizes.sizeIconWithLabelSmallSizeLg)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithLabelSmallSizeLg == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    // MARK: - Semantic token - Sizing - Icon decorative

    func testInheritedThemeCanOverrideSemanticTokenSizeIconDecorative2xs() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconDecorative2xs, abstractTheme.sizes.sizeIconDecorative2xs)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconDecorative2xs == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconDecorativeXs() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconDecorativeXs, abstractTheme.sizes.sizeIconDecorativeXs)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconDecorativeXs == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokensizeIconDecorativeSm() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconDecorativeSm, abstractTheme.sizes.sizeIconDecorativeSm)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconDecorativeSm == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconDecorativeMd() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconDecorativeMd, abstractTheme.sizes.sizeIconDecorativeMd)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconDecorativeMd == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconDecorativeLg() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconDecorativeLg, abstractTheme.sizes.sizeIconDecorativeLg)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconDecorativeLg == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconDecorativeXl() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconDecorativeXl, abstractTheme.sizes.sizeIconDecorativeXl)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconDecorativeXl == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconDecorative2xl() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconDecorative2xl, abstractTheme.sizes.sizeIconDecorative2xl)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconDecorative2xl == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    // MARK: - Semantic token - Sizing - Max width

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeDisplayLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeDisplayLargeMobile, abstractTheme.sizes.sizeMaxWidthTypeDisplayLargeMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeDisplayLargeMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeDisplayLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeDisplayLargeTablet, abstractTheme.sizes.sizeMaxWidthTypeDisplayLargeTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeDisplayLargeTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeDisplayMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeDisplayMediumMobile, abstractTheme.sizes.sizeMaxWidthTypeDisplayMediumMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeDisplayMediumMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeDisplayMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeDisplayMediumTablet, abstractTheme.sizes.sizeMaxWidthTypeDisplayMediumTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeDisplayMediumTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeDisplaySmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeDisplaySmallMobile, abstractTheme.sizes.sizeMaxWidthTypeDisplaySmallMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeDisplaySmallMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeDisplaySmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeDisplaySmallTablet, abstractTheme.sizes.sizeMaxWidthTypeDisplaySmallTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeDisplaySmallTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingXlargeSizeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeHeadingXlargeMobile, abstractTheme.sizes.sizeMaxWidthTypeHeadingXlargeMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeHeadingXlargeMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingXlargeSizeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeHeadingXlargeTablet, abstractTheme.sizes.sizeMaxWidthTypeHeadingXlargeTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeHeadingXlargeTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeHeadingLargeMobile, abstractTheme.sizes.sizeMaxWidthTypeHeadingLargeMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeHeadingLargeMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeHeadingLargeTablet, abstractTheme.sizes.sizeMaxWidthTypeHeadingLargeTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeHeadingLargeTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeHeadingMediumMobile, abstractTheme.sizes.sizeMaxWidthTypeHeadingMediumMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeHeadingMediumMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeHeadingMediumTablet, abstractTheme.sizes.sizeMaxWidthTypeHeadingMediumTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeHeadingMediumTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingSmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeHeadingSmallMobile, abstractTheme.sizes.sizeMaxWidthTypeHeadingSmallMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeHeadingSmallMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingSmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeHeadingSmallTablet, abstractTheme.sizes.sizeMaxWidthTypeHeadingSmallTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeHeadingSmallTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeBodyLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeBodyLargeMobile, abstractTheme.sizes.sizeMaxWidthTypeBodyLargeMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeBodyLargeMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeBodyLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeBodyLargeTablet, abstractTheme.sizes.sizeMaxWidthTypeBodyLargeTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeBodyLargeTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeBodyMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeBodyMediumMobile, abstractTheme.sizes.sizeMaxWidthTypeBodyMediumMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeBodyMediumMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeBodyMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeBodyMediumTablet, abstractTheme.sizes.sizeMaxWidthTypeBodyMediumTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeBodyMediumTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeBodySmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeBodySmallMobile, abstractTheme.sizes.sizeMaxWidthTypeBodySmallMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeBodySmallMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeBodySmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeBodySmallTablet, abstractTheme.sizes.sizeMaxWidthTypeBodySmallTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeBodySmallTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable type_body_length
