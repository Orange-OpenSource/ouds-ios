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

import XCTest
import OUDS

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In factn the `OUDSTheme` object is a class, which can be seens as an _asbtract class_, exposing through its extensions and protocols _sizing semantic tokens_.
/// These semantic tokens should be overriden by subclass like the `OrangeTheme` default theme.
/// **These tests checks if any _sizing semantic tokens_ can be surcharged by a child theme**
final class TestThemeOverrideOfSizingSemanticTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OUDSTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Semantic token - Sizing - Width height - Icon decorative

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconShortest() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconDecorativeShortest, abstractTheme.sizeIconDecorativeShortest)
        XCTAssertTrue(inheritedTheme.sizeIconDecorativeShortest == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconShorter() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconDecorativeShorter, abstractTheme.sizeIconDecorativeShorter)
        XCTAssertTrue(inheritedTheme.sizeIconDecorativeShorter == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconDecorativeShort, abstractTheme.sizeIconDecorativeShort)
        XCTAssertTrue(inheritedTheme.sizeIconDecorativeShort == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconDecorativeMedium, abstractTheme.sizeIconDecorativeMedium)
        XCTAssertTrue(inheritedTheme.sizeIconDecorativeMedium == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconDecorativeTall, abstractTheme.sizeIconDecorativeTall)
        XCTAssertTrue(inheritedTheme.sizeIconDecorativeTall == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconTaller() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconDecorativeTaller, abstractTheme.sizeIconDecorativeTaller)
        XCTAssertTrue(inheritedTheme.sizeIconDecorativeTaller == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconTallest() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconDecorativeTallest, abstractTheme.sizeIconDecorativeTallest)
        XCTAssertTrue(inheritedTheme.sizeIconDecorativeTallest == MockTheme.mockThemeSizeRawToken)
    }

    // MARK: - Semantic token - Sizing - Width height - Icon component

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIsLabelSmallShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeHeadingSmallShort, abstractTheme.sizeIconWithTypeHeadingSmallShort)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeHeadingSmallShort == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIsLabelSmallMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeHeadingSmallMedium, abstractTheme.sizeIconWithTypeHeadingSmallMedium)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeHeadingSmallMedium == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIsLabelSmallTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeHeadingSmallTall, abstractTheme.sizeIconWithTypeHeadingSmallTall)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeHeadingSmallTall == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIsLabelMediumShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeHeadingMediumShort, abstractTheme.sizeIconWithTypeHeadingMediumShort)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeHeadingMediumShort == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIsLabelMediumMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeHeadingMediumMedium, abstractTheme.sizeIconWithTypeHeadingMediumMedium)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeHeadingMediumMedium == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIsLabelMediumTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeHeadingTall, abstractTheme.sizeIconWithTypeHeadingTall)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeHeadingTall == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIsLabelLargeShorter() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeHeadingLargeShort, abstractTheme.sizeIconWithTypeHeadingLargeShort)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeHeadingLargeShort == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIsLabelLargeShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeHeadingLargeMedium, abstractTheme.sizeIconWithTypeHeadingLargeMedium)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeHeadingLargeMedium == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIsLabelLargeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeHeadingTall, abstractTheme.sizeIconWithTypeHeadingTall)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeHeadingTall == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIsLabelLargeTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeHeadingXLargeShort, abstractTheme.sizeIconWithTypeHeadingXLargeShort)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeHeadingXLargeShort == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIsLabelLargeTaller() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeHeadingXLargeMedium, abstractTheme.sizeIconWithTypeHeadingXLargeMedium)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeHeadingXLargeMedium == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIsLabelXLargeShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeHeadingXLargeTall, abstractTheme.sizeIconWithTypeHeadingXLargeTall)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeHeadingXLargeTall == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIsLabelXLargeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeLabelXLargeMedium, abstractTheme.sizeIconWithTypeLabelXLargeMedium)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeLabelXLargeMedium == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIsLabelXLargeTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeLabelXLargeTall, abstractTheme.sizeIconWithTypeLabelXLargeTall)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeLabelXLargeTall == MockTheme.mockThemeSizeRawToken)
    }

    // MARK: - Semantic token - Sizing - Width height - Icon typography - Heading

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconIsHeadingSmallShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsHeadingSmallShort, abstractTheme.sizeWidthHeightIconIsHeadingSmallShort)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsHeadingSmallShort.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconIsHeadingSmallMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsHeadingSmallMedium, abstractTheme.sizeWidthHeightIconIsHeadingSmallMedium)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsHeadingSmallMedium.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconIsHeadingSmallTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsHeadingSmallTall, abstractTheme.sizeWidthHeightIconIsHeadingSmallTall)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsHeadingSmallTall.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconIsHeadingMediumShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsHeadingMediumShort, abstractTheme.sizeWidthHeightIconIsHeadingMediumShort)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsHeadingMediumShort.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconIsHeadingMediumMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsHeadingMediumMedium, abstractTheme.sizeWidthHeightIconIsHeadingMediumMedium)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsHeadingMediumMedium.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconIsHeadingMediumTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsHeadingMediumTall, abstractTheme.sizeWidthHeightIconIsHeadingMediumTall)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsHeadingMediumTall.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconIsHeadingLargeShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsHeadingLargeShort, abstractTheme.sizeWidthHeightIconIsHeadingLargeShort)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsHeadingLargeShort.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconIsHeadingLargeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsHeadingLargeMedium, abstractTheme.sizeWidthHeightIconIsHeadingLargeMedium)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsHeadingLargeMedium.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconIsHeadingLargeTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsHeadingLargeTall, abstractTheme.sizeWidthHeightIconIsHeadingLargeTall)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsHeadingLargeTall.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconIsHeadingXLargeShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsHeadingXLargeShort, abstractTheme.sizeWidthHeightIconIsHeadingXLargeShort)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsHeadingXLargeShort.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconIsHeadingXLargeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsHeadingXLargeMedium, abstractTheme.sizeWidthHeightIconIsHeadingXLargeMedium)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsHeadingXLargeMedium.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconIsHeadingXLargeTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsHeadingXLargeTall, abstractTheme.sizeWidthHeightIconIsHeadingXLargeTall)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsHeadingXLargeTall.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    // MARK: - Semantic token - Sizing - Width height - Icon typography - Body

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconIsBodySmallShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeBodySmallShort, abstractTheme.sizeIconWithTypeBodySmallShort)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeBodySmallShort.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconIsBodySmallMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeBodySmallMediuù, abstractTheme.sizeIconWithTypeBodySmallMediuù)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeBodySmallMediuù.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconIsBodySmallTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeBodySmallTall, abstractTheme.sizeIconWithTypeBodySmallTall)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeBodySmallTall.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconIsBodyMediumShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeBodyMediumShort, abstractTheme.sizeIconWithTypeBodyMediumShort)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeBodyMediumShort.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconIsBodyMediumMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeBodyMediumMedium, abstractTheme.sizeIconWithTypeBodyMediumMedium)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeBodyMediumMedium.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconIsBodyMediumTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeBodyMediumTall, abstractTheme.sizeIconWithTypeBodyMediumTall)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeBodyMediumTall.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconIsBodyLargeShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeBodyLargeShort, abstractTheme.sizeIconWithTypeBodyLargeShort)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeBodyLargeShort.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconIsBodyLargeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeBodyLargeMedium, abstractTheme.sizeIconWithTypeBodyLargeMedium)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeBodyLargeMedium.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconIsBodyLargeTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeBodyLargeTall, abstractTheme.sizeIconWithTypeBodyLargeTall)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeBodyLargeTall.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    // MARK: - Semantic token - Sizing - Max width

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyDisplaySmall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeDisplaySmall, abstractTheme.sizeMaxWidthTypeDisplaySmall)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeDisplaySmall.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyDisplayMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeDisplayMedium, abstractTheme.sizeMaxWidthTypeDisplayMedium)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeDisplayMedium.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyDisplayLarge() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeDisplayLarge, abstractTheme.sizeMaxWidthTypeDisplayLarge)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeDisplayLarge.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyHeadingSmall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeHeadingSmall, abstractTheme.sizeMaxWidthTypeHeadingSmall)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeHeadingSmall.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyHeadingMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeHeadingMedium, abstractTheme.sizeMaxWidthTypeHeadingMedium)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeHeadingMedium.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyHeadingLarge() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeHeadingLarge, abstractTheme.sizeMaxWidthTypeHeadingLarge)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeHeadingLarge.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyHeadingXLarge() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeHeadingXLarge, abstractTheme.sizeMaxWidthTypeHeadingXLarge)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeHeadingXLarge.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyBodySmall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeBodySmall, abstractTheme.sizeMaxWidthTypeBodySmall)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeBodySmall.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyBodyMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeBodyMedium, abstractTheme.sizeMaxWidthTypeBodyMedium)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeBodyMedium.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyBodyLarge() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeBodyLarge, abstractTheme.sizeMaxWidthTypeBodyLarge)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeBodyLarge.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }
}
