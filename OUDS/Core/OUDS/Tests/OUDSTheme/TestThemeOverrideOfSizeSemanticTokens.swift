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
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeSmMobile == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeSmTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeSmTablet, abstractTheme.sizes.sizeIconWithHeadingXlargeSizeSmTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeSmTablet == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeMdMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeMdMobile, abstractTheme.sizes.sizeIconWithHeadingXlargeSizeMdMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeMdMobile == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeMdTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeMdTablet, abstractTheme.sizes.sizeIconWithHeadingXlargeSizeMdTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeMdTablet == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeLgMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeLgMobile, abstractTheme.sizes.sizeIconWithHeadingXlargeSizeLgMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeLgMobile == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeLgTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeLgTablet, abstractTheme.sizes.sizeIconWithHeadingXlargeSizeLgTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeLgTablet == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeSizeSmMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeSmMobile, abstractTheme.sizes.sizeIconWithHeadingLargeSizeSmMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeSmMobile == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeShortTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeSmTablet, abstractTheme.sizes.sizeIconWithHeadingLargeSizeSmTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeSmTablet == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeMdMobile, abstractTheme.sizes.sizeIconWithHeadingLargeSizeMdMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeMdMobile == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeMdTablet, abstractTheme.sizes.sizeIconWithHeadingLargeSizeMdTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeMdTablet == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeTallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeLgMobile, abstractTheme.sizes.sizeIconWithHeadingLargeSizeLgMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeLgMobile == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeTallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeLgTablet, abstractTheme.sizes.sizeIconWithHeadingLargeSizeLgTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeLgTablet == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumShortMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeSmMobile, abstractTheme.sizes.sizeIconWithHeadingMediumSizeSmMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeSmMobile == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumShortTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeSmTablet, abstractTheme.sizes.sizeIconWithHeadingMediumSizeSmTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeSmTablet == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeMdMobile, abstractTheme.sizes.sizeIconWithHeadingMediumSizeMdMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeMdMobile == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeMdTablet, abstractTheme.sizes.sizeIconWithHeadingMediumSizeMdTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeMdTablet == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumSizeLgMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeLgMobile, abstractTheme.sizes.sizeIconWithHeadingMediumSizeLgMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeLgMobile == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumSizeLgTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeLgTablet, abstractTheme.sizes.sizeIconWithHeadingMediumSizeLgTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeLgTablet == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallSizeSmMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeSmMobile, abstractTheme.sizes.sizeIconWithHeadingSmallSizeSmMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeSmMobile == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallShortTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeSmTablet, abstractTheme.sizes.sizeIconWithHeadingSmallSizeSmTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeSmTablet == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallSizeMdMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeMdMobile, abstractTheme.sizes.sizeIconWithHeadingSmallSizeMdMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeMdMobile == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeMdTablet, abstractTheme.sizes.sizeIconWithHeadingSmallSizeMdTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeMdTablet == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallSizeLgMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeLgMobile, abstractTheme.sizes.sizeIconWithHeadingSmallSizeLgMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeLgMobile == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallTallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeLgTablet, abstractTheme.sizes.sizeIconWithHeadingSmallSizeLgTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeLgTablet == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeSizeSmMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodyLargeSizeSmMobile, abstractTheme.sizes.sizeIconWithBodyLargeSizeSmMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodyLargeSizeSmMobile == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeShortTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodyLargeSizeSmTablet, abstractTheme.sizes.sizeIconWithBodyLargeSizeSmTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodyLargeSizeSmTablet == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodyLargeSizeMdMobile, abstractTheme.sizes.sizeIconWithBodyLargeSizeMdMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodyLargeSizeMdMobile == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodyLargeSizeMdTablet, abstractTheme.sizes.sizeIconWithBodyLargeSizeMdTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodyLargeSizeMdTablet == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeTallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodyLargeSizeLgMobile, abstractTheme.sizes.sizeIconWithBodyLargeSizeLgMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodyLargeSizeLgMobile == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeTallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodyLargeSizeLgTablet, abstractTheme.sizes.sizeIconWithBodyLargeSizeLgTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodyLargeSizeLgTablet == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumShortMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodyMediumSizeSmMobile, abstractTheme.sizes.sizeIconWithBodyMediumSizeSmMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodyMediumSizeSmMobile == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumShortTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodyMediumSizeSmTablet, abstractTheme.sizes.sizeIconWithBodyMediumSizeSmTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodyMediumSizeSmTablet == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodyMediumSizeMdMobile, abstractTheme.sizes.sizeIconWithBodyMediumSizeMdMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodyMediumSizeMdMobile == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodyMediumSizeMdTablet, abstractTheme.sizes.sizeIconWithBodyMediumSizeMdTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodyMediumSizeMdTablet == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumSizeLgMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodyMediumSizeLgMobile, abstractTheme.sizes.sizeIconWithBodyMediumSizeLgMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodyMediumSizeLgMobile == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumSizeLgTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodyMediumSizeLgTablet, abstractTheme.sizes.sizeIconWithBodyMediumSizeLgTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodyMediumSizeLgTablet == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallSizeSmMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodySmallSizeSmMobile, abstractTheme.sizes.sizeIconWithBodySmallSizeSmMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodySmallSizeSmMobile == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallShortTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodySmallSizeSmTablet, abstractTheme.sizes.sizeIconWithBodySmallSizeSmTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodySmallSizeSmTablet == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallSizeMdMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodySmallSizeMdMobile, abstractTheme.sizes.sizeIconWithBodySmallSizeMdMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodySmallSizeMdMobile == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodySmallSizeMdTablet, abstractTheme.sizes.sizeIconWithBodySmallSizeMdTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodySmallSizeMdTablet == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallSizeLgMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodySmallSizeLgMobile, abstractTheme.sizes.sizeIconWithBodySmallSizeLgMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodySmallSizeLgMobile == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallTallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodySmallSizeLgTablet, abstractTheme.sizes.sizeIconWithBodySmallSizeLgTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodySmallSizeLgTablet == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelXlargeSizeSm() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithLabelXlargeSizeSm, abstractTheme.sizes.sizeIconWithLabelXlargeSizeSm)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithLabelXlargeSizeSm == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelXlargeSizeMd() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithLabelXlargeSizeMd, abstractTheme.sizes.sizeIconWithLabelXlargeSizeMd)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithLabelXlargeSizeMd == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelXlargeSizeLg() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithLabelXlargeSizeLg, abstractTheme.sizes.sizeIconWithLabelXlargeSizeLg)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithLabelXlargeSizeLg == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelSizeXs() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithLabelLargeSizeXs, abstractTheme.sizes.sizeIconWithLabelLargeSizeXs)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithLabelLargeSizeXs == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabeSizeSm() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithLabelLargeSizeSm, abstractTheme.sizes.sizeIconWithLabelLargeSizeSm)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithLabelLargeSizeSm == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelSizeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithLabelLargeSizeMd, abstractTheme.sizes.sizeIconWithLabelLargeSizeMd)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithLabelLargeSizeMd == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelSizeLg() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithLabelLargeSizeLg, abstractTheme.sizes.sizeIconWithLabelLargeSizeLg)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithLabelLargeSizeLg == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelSizeXl() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithLabelLargeSizeXl, abstractTheme.sizes.sizeIconWithLabelLargeSizeXl)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithLabelLargeSizeXl == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelMediumSizeSm() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithLabelMediumSizeSm, abstractTheme.sizes.sizeIconWithLabelMediumSizeSm)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithLabelMediumSizeSm == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelMediumSizeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithLabelMediumSizeMd, abstractTheme.sizes.sizeIconWithLabelMediumSizeMd)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithLabelMediumSizeMd == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelMediumSizeLg() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithLabelMediumSizeLg, abstractTheme.sizes.sizeIconWithLabelMediumSizeLg)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithLabelMediumSizeLg == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelSmallSizeSm() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithLabelSmallSizeSm, abstractTheme.sizes.sizeIconWithLabelSmallSizeSm)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithLabelSmallSizeSm == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelSmallSizeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithLabelSmallSizeMd, abstractTheme.sizes.sizeIconWithLabelSmallSizeMd)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithLabelSmallSizeMd == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelSmallSizeLg() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithLabelSmallSizeLg, abstractTheme.sizes.sizeIconWithLabelSmallSizeLg)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithLabelSmallSizeLg == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    // MARK: - Semantic token - Sizing - Icon decorative

    func testInheritedThemeCanOverrideSemanticTokenSizeIconDecorative2xs() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconDecorative2xs, abstractTheme.sizes.sizeIconDecorative2xs)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconDecorative2xs == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconDecorativeXs() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconDecorativeXs, abstractTheme.sizes.sizeIconDecorativeXs)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconDecorativeXs == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokensizeIconDecorativeSm() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconDecorativeSm, abstractTheme.sizes.sizeIconDecorativeSm)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconDecorativeSm == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconDecorativeMd() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconDecorativeMd, abstractTheme.sizes.sizeIconDecorativeMd)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconDecorativeMd == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconDecorativeLg() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconDecorativeLg, abstractTheme.sizes.sizeIconDecorativeLg)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconDecorativeLg == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconDecorativeXl() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconDecorativeXl, abstractTheme.sizes.sizeIconDecorativeXl)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconDecorativeXl == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconDecorative2xl() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconDecorative2xl, abstractTheme.sizes.sizeIconDecorative2xl)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconDecorative2xl == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    // MARK: - Semantic token - Sizing - Max width

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeDisplayLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeDisplayLargeMobile, abstractTheme.sizes.sizeMaxWidthTypeDisplayLargeMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeDisplayLargeMobile == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeDisplayLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeDisplayLargeTablet, abstractTheme.sizes.sizeMaxWidthTypeDisplayLargeTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeDisplayLargeTablet == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeDisplayMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeDisplayMediumMobile, abstractTheme.sizes.sizeMaxWidthTypeDisplayMediumMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeDisplayMediumMobile == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeDisplayMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeDisplayMediumTablet, abstractTheme.sizes.sizeMaxWidthTypeDisplayMediumTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeDisplayMediumTablet == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeDisplaySmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeDisplaySmallMobile, abstractTheme.sizes.sizeMaxWidthTypeDisplaySmallMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeDisplaySmallMobile == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeDisplaySmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeDisplaySmallTablet, abstractTheme.sizes.sizeMaxWidthTypeDisplaySmallTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeDisplaySmallTablet == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingXlargeSizeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeHeadingXlargeMobile, abstractTheme.sizes.sizeMaxWidthTypeHeadingXlargeMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeHeadingXlargeMobile == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingXlargeSizeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeHeadingXlargeTablet, abstractTheme.sizes.sizeMaxWidthTypeHeadingXlargeTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeHeadingXlargeTablet == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeHeadingLargeMobile, abstractTheme.sizes.sizeMaxWidthTypeHeadingLargeMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeHeadingLargeMobile == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeHeadingLargeTablet, abstractTheme.sizes.sizeMaxWidthTypeHeadingLargeTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeHeadingLargeTablet == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeHeadingMediumMobile, abstractTheme.sizes.sizeMaxWidthTypeHeadingMediumMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeHeadingMediumMobile == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeHeadingMediumTablet, abstractTheme.sizes.sizeMaxWidthTypeHeadingMediumTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeHeadingMediumTablet == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingSmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeHeadingSmallMobile, abstractTheme.sizes.sizeMaxWidthTypeHeadingSmallMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeHeadingSmallMobile == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingSmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeHeadingSmallTablet, abstractTheme.sizes.sizeMaxWidthTypeHeadingSmallTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeHeadingSmallTablet == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeBodyLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeBodyLargeMobile, abstractTheme.sizes.sizeMaxWidthTypeBodyLargeMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeBodyLargeMobile == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeBodyLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeBodyLargeTablet, abstractTheme.sizes.sizeMaxWidthTypeBodyLargeTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeBodyLargeTablet == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeBodyMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeBodyMediumMobile, abstractTheme.sizes.sizeMaxWidthTypeBodyMediumMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeBodyMediumMobile == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeBodyMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeBodyMediumTablet, abstractTheme.sizes.sizeMaxWidthTypeBodyMediumTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeBodyMediumTablet == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeBodySmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeBodySmallMobile, abstractTheme.sizes.sizeMaxWidthTypeBodySmallMobile)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeBodySmallMobile == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeBodySmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeBodySmallTablet, abstractTheme.sizes.sizeMaxWidthTypeBodySmallTablet)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeBodySmallTablet == MockThemeSizeSemanticTokensWrapper.mockThemeSizeRawToken)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable type_body_length
