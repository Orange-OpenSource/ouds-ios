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
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingXlargeSizeSmMobile, abstractTheme.sizeIconWithHeadingXlargeSizeSmMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingXlargeSizeSmMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeSmTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingXlargeSizeSmTablet, abstractTheme.sizeIconWithHeadingXlargeSizeSmTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingXlargeSizeSmTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeMdMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingXlargeSizeMdMobile, abstractTheme.sizeIconWithHeadingXlargeSizeMdMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingXlargeSizeMdMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeMdTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingXlargeSizeMdTablet, abstractTheme.sizeIconWithHeadingXlargeSizeMdTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingXlargeSizeMdTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeLgMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingXlargeSizeLgMobile, abstractTheme.sizeIconWithHeadingXlargeSizeLgMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingXlargeSizeLgMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeLgTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingXlargeSizeLgTablet, abstractTheme.sizeIconWithHeadingXlargeSizeLgTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingXlargeSizeLgTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeSizeSmMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingLargeSizeSmMobile, abstractTheme.sizeIconWithHeadingLargeSizeSmMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingLargeSizeSmMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeShortTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingLargeSizeSmTablet, abstractTheme.sizeIconWithHeadingLargeSizeSmTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingLargeSizeSmTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingLargeSizeMdMobile, abstractTheme.sizeIconWithHeadingLargeSizeMdMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingLargeSizeMdMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingLargeSizeMdTablet, abstractTheme.sizeIconWithHeadingLargeSizeMdTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingLargeSizeMdTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeTallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingLargeSizeLgMobile, abstractTheme.sizeIconWithHeadingLargeSizeLgMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingLargeSizeLgMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeTallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingLargeSizeLgTablet, abstractTheme.sizeIconWithHeadingLargeSizeLgTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingLargeSizeLgTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumShortMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingMediumSizeSmMobile, abstractTheme.sizeIconWithHeadingMediumSizeSmMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingMediumSizeSmMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumShortTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingMediumSizeSmTablet, abstractTheme.sizeIconWithHeadingMediumSizeSmTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingMediumSizeSmTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingMediumSizeMdMobile, abstractTheme.sizeIconWithHeadingMediumSizeMdMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingMediumSizeMdMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingMediumSizeMdTablet, abstractTheme.sizeIconWithHeadingMediumSizeMdTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingMediumSizeMdTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumSizeLgMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingMediumSizeLgMobile, abstractTheme.sizeIconWithHeadingMediumSizeLgMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingMediumSizeLgMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumSizeLgTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingMediumSizeLgTablet, abstractTheme.sizeIconWithHeadingMediumSizeLgTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingMediumSizeLgTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallSizeSmMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingSmallSizeSmMobile, abstractTheme.sizeIconWithHeadingSmallSizeSmMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingSmallSizeSmMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallShortTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingSmallSizeSmTablet, abstractTheme.sizeIconWithHeadingSmallSizeSmTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingSmallSizeSmTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallSizeMdMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingSmallSizeMdMobile, abstractTheme.sizeIconWithHeadingSmallSizeMdMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingSmallSizeMdMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingSmallSizeMdTablet, abstractTheme.sizeIconWithHeadingSmallSizeMdTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingSmallSizeMdTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallSizeLgMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingSmallSizeLgMobile, abstractTheme.sizeIconWithHeadingSmallSizeLgMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingSmallSizeLgMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallTallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingSmallSizeLgTablet, abstractTheme.sizeIconWithHeadingSmallSizeLgTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingSmallSizeLgTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeSizeSmMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyLargeSizeSmMobile, abstractTheme.sizeIconWithBodyLargeSizeSmMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyLargeSizeSmMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeShortTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyLargeSizeSmTablet, abstractTheme.sizeIconWithBodyLargeSizeSmTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyLargeSizeSmTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyLargeSizeMdMobile, abstractTheme.sizeIconWithBodyLargeSizeMdMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyLargeSizeMdMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyLargeSizeMdTablet, abstractTheme.sizeIconWithBodyLargeSizeMdTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyLargeSizeMdTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeTallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyLargeSizeLgMobile, abstractTheme.sizeIconWithBodyLargeSizeLgMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyLargeSizeLgMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeTallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyLargeSizeLgTablet, abstractTheme.sizeIconWithBodyLargeSizeLgTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyLargeSizeLgTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumShortMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyMediumSizeSmMobile, abstractTheme.sizeIconWithBodyMediumSizeSmMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyMediumSizeSmMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumShortTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyMediumSizeSmTablet, abstractTheme.sizeIconWithBodyMediumSizeSmTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyMediumSizeSmTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyMediumSizeMdMobile, abstractTheme.sizeIconWithBodyMediumSizeMdMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyMediumSizeMdMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyMediumSizeMdTablet, abstractTheme.sizeIconWithBodyMediumSizeMdTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyMediumSizeMdTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumSizeLgMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyMediumSizeLgMobile, abstractTheme.sizeIconWithBodyMediumSizeLgMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyMediumSizeLgMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumSizeLgTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyMediumSizeLgTablet, abstractTheme.sizeIconWithBodyMediumSizeLgTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyMediumSizeLgTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallSizeSmMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodySmallSizeSmMobile, abstractTheme.sizeIconWithBodySmallSizeSmMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodySmallSizeSmMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallShortTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodySmallSizeSmTablet, abstractTheme.sizeIconWithBodySmallSizeSmTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodySmallSizeSmTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallSizeMdMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodySmallSizeMdMobile, abstractTheme.sizeIconWithBodySmallSizeMdMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodySmallSizeMdMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodySmallSizeMdTablet, abstractTheme.sizeIconWithBodySmallSizeMdTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodySmallSizeMdTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallSizeLgMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodySmallSizeLgMobile, abstractTheme.sizeIconWithBodySmallSizeLgMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodySmallSizeLgMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallTallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodySmallSizeLgTablet, abstractTheme.sizeIconWithBodySmallSizeLgTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodySmallSizeLgTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelXlargeSizeSm() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithLabelXlargeSizeSm, abstractTheme.sizeIconWithLabelXlargeSizeSm)
        XCTAssertTrue(inheritedTheme.sizeIconWithLabelXlargeSizeSm == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelXlargeSizeMd() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithLabelXlargeSizeMd, abstractTheme.sizeIconWithLabelXlargeSizeMd)
        XCTAssertTrue(inheritedTheme.sizeIconWithLabelXlargeSizeMd == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelXlargeSizeLg() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithLabelXlargeSizeLg, abstractTheme.sizeIconWithLabelXlargeSizeLg)
        XCTAssertTrue(inheritedTheme.sizeIconWithLabelXlargeSizeLg == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelSizeXs() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithLabelLargeSizeXs, abstractTheme.sizeIconWithLabelLargeSizeXs)
        XCTAssertTrue(inheritedTheme.sizeIconWithLabelLargeSizeXs == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabeSizeSm() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithLabelLargeSizeSm, abstractTheme.sizeIconWithLabelLargeSizeSm)
        XCTAssertTrue(inheritedTheme.sizeIconWithLabelLargeSizeSm == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelSizeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithLabelLargeSizeMd, abstractTheme.sizeIconWithLabelLargeSizeMd)
        XCTAssertTrue(inheritedTheme.sizeIconWithLabelLargeSizeMd == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelSizeLg() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithLabelLargeSizeLg, abstractTheme.sizeIconWithLabelLargeSizeLg)
        XCTAssertTrue(inheritedTheme.sizeIconWithLabelLargeSizeLg == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelSizeXl() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithLabelLargeSizeXl, abstractTheme.sizeIconWithLabelLargeSizeXl)
        XCTAssertTrue(inheritedTheme.sizeIconWithLabelLargeSizeXl == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelMediumSizeSm() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithLabelMediumSizeSm, abstractTheme.sizeIconWithLabelMediumSizeSm)
        XCTAssertTrue(inheritedTheme.sizeIconWithLabelMediumSizeSm == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelMediumSizeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithLabelMediumSizeMd, abstractTheme.sizeIconWithLabelMediumSizeMd)
        XCTAssertTrue(inheritedTheme.sizeIconWithLabelMediumSizeMd == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelMediumSizeLg() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithLabelMediumSizeLg, abstractTheme.sizeIconWithLabelMediumSizeLg)
        XCTAssertTrue(inheritedTheme.sizeIconWithLabelMediumSizeLg == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelSmallSizeSm() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithLabelSmallSizeSm, abstractTheme.sizeIconWithLabelSmallSizeSm)
        XCTAssertTrue(inheritedTheme.sizeIconWithLabelSmallSizeSm == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelSmallSizeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithLabelSmallSizeMd, abstractTheme.sizeIconWithLabelSmallSizeMd)
        XCTAssertTrue(inheritedTheme.sizeIconWithLabelSmallSizeMd == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelSmallSizeLg() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithLabelSmallSizeLg, abstractTheme.sizeIconWithLabelSmallSizeLg)
        XCTAssertTrue(inheritedTheme.sizeIconWithLabelSmallSizeLg == MockTheme.mockThemeSizeRawToken)
    }

    // MARK: - Semantic token - Sizing - Icon decorative

    func testInheritedThemeCanOverrideSemanticTokenSizeIconDecorative2xs() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconDecorative2xs, abstractTheme.sizeIconDecorative2xs)
        XCTAssertTrue(inheritedTheme.sizeIconDecorative2xs == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconDecorativeXs() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconDecorativeXs, abstractTheme.sizeIconDecorativeXs)
        XCTAssertTrue(inheritedTheme.sizeIconDecorativeXs == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokensizeIconDecorativeSm() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconDecorativeSm, abstractTheme.sizeIconDecorativeSm)
        XCTAssertTrue(inheritedTheme.sizeIconDecorativeSm == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconDecorativeMd() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconDecorativeMd, abstractTheme.sizeIconDecorativeMd)
        XCTAssertTrue(inheritedTheme.sizeIconDecorativeMd == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconDecorativeLg() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconDecorativeLg, abstractTheme.sizeIconDecorativeLg)
        XCTAssertTrue(inheritedTheme.sizeIconDecorativeLg == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconDecorativeXl() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconDecorativeXl, abstractTheme.sizeIconDecorativeXl)
        XCTAssertTrue(inheritedTheme.sizeIconDecorativeXl == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconDecorative2Xl() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconDecorative2Xl, abstractTheme.sizeIconDecorative2Xl)
        XCTAssertTrue(inheritedTheme.sizeIconDecorative2Xl == MockTheme.mockThemeSizeRawToken)
    }

    // MARK: - Semantic token - Sizing - Max width

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyDisplayLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeDisplayLargeMobile, abstractTheme.sizeMaxWidthTypeDisplayLargeMobile)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeDisplayLargeMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyDisplayLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeDisplayLargeTablet, abstractTheme.sizeMaxWidthTypeDisplayLargeTablet)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeDisplayLargeTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyDisplayMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeDisplayMediumMobile, abstractTheme.sizeMaxWidthTypeDisplayMediumMobile)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeDisplayMediumMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyDisplayMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeDisplayMediumTablet, abstractTheme.sizeMaxWidthTypeDisplayMediumTablet)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeDisplayMediumTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyDisplaySmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeDisplaySmallMobile, abstractTheme.sizeMaxWidthTypeDisplaySmallMobile)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeDisplaySmallMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyDisplaySmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeDisplaySmallTablet, abstractTheme.sizeMaxWidthTypeDisplaySmallTablet)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeDisplaySmallTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyHeadingXlargeSizeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeHeadingXlargeMobile, abstractTheme.sizeMaxWidthTypeHeadingXlargeMobile)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeHeadingXlargeMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyHeadingXlargeSizeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeHeadingXlargeTablet, abstractTheme.sizeMaxWidthTypeHeadingXlargeTablet)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeHeadingXlargeTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyHeadingLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeHeadingLargeMobile, abstractTheme.sizeMaxWidthTypeHeadingLargeMobile)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeHeadingLargeMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyHeadingLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeHeadingLargeTablet, abstractTheme.sizeMaxWidthTypeHeadingLargeTablet)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeHeadingLargeTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyHeadingMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeHeadingMediumMobile, abstractTheme.sizeMaxWidthTypeHeadingMediumMobile)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeHeadingMediumMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyHeadingMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeHeadingMediumTablet, abstractTheme.sizeMaxWidthTypeHeadingMediumTablet)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeHeadingMediumTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyHeadingSmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeHeadingSmallMobile, abstractTheme.sizeMaxWidthTypeHeadingSmallMobile)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeHeadingSmallMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyHeadingSmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeHeadingSmallTablet, abstractTheme.sizeMaxWidthTypeHeadingSmallTablet)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeHeadingSmallTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyBodyLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeBodyLargeMobile, abstractTheme.sizeMaxWidthTypeBodyLargeMobile)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeBodyLargeMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyBodyLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeBodyLargeTablet, abstractTheme.sizeMaxWidthTypeBodyLargeTablet)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeBodyLargeTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyBodyMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeBodyMediumMobile, abstractTheme.sizeMaxWidthTypeBodyMediumMobile)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeBodyMediumMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyBodyMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeBodyMediumTablet, abstractTheme.sizeMaxWidthTypeBodyMediumTablet)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeBodyMediumTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyBodySmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeBodySmallMobile, abstractTheme.sizeMaxWidthTypeBodySmallMobile)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeBodySmallMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyBodySmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeBodySmallTablet, abstractTheme.sizeMaxWidthTypeBodySmallTablet)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeBodySmallTablet == MockTheme.mockThemeSizeRawToken)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable type_body_length
