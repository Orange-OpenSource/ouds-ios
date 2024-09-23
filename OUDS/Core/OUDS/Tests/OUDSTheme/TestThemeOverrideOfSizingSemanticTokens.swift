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
/// In fact the `OUDSTheme` object is a class, which can be seen as an _asbtract class_, exposing through its extensions and protocols _sizing semantic tokens_.
/// These semantic tokens should be overriden by subclass like the `OrangeTheme` default theme.
/// **These tests checks if any _sizing semantic tokens_ can be surcharged by a child theme**
final class TestThemeOverrideOfSizingSemanticTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OUDSTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Semantic token - Sizing - Icon decorative

    func testInheritedThemeCanOverrideSemanticTokenSizeIconDecorativeShortest() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconDecorativeShortest, abstractTheme.sizeIconDecorativeShortest)
        XCTAssertTrue(inheritedTheme.sizeIconDecorativeShortest == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconDecorativeShorter() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconDecorativeShorter, abstractTheme.sizeIconDecorativeShorter)
        XCTAssertTrue(inheritedTheme.sizeIconDecorativeShorter == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconDecorativeShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconDecorativeShort, abstractTheme.sizeIconDecorativeShort)
        XCTAssertTrue(inheritedTheme.sizeIconDecorativeShort == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconDecorativeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconDecorativeMedium, abstractTheme.sizeIconDecorativeMedium)
        XCTAssertTrue(inheritedTheme.sizeIconDecorativeMedium == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconDecorativeTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconDecorativeTall, abstractTheme.sizeIconDecorativeTall)
        XCTAssertTrue(inheritedTheme.sizeIconDecorativeTall == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconDecorativeTaller() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconDecorativeTaller, abstractTheme.sizeIconDecorativeTaller)
        XCTAssertTrue(inheritedTheme.sizeIconDecorativeTaller == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconDecorativeTallest() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconDecorativeTallest, abstractTheme.sizeIconDecorativeTallest)
        XCTAssertTrue(inheritedTheme.sizeIconDecorativeTallest == MockTheme.mockThemeSizeRawToken)
    }

    // MARK: - Semantic token - Sizing - Icon with typography

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithTypeHeadingSmallShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeHeadingSmallShort, abstractTheme.sizeIconWithTypeHeadingSmallShort)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeHeadingSmallShort == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithTypeHeadingSmallMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeHeadingSmallMedium, abstractTheme.sizeIconWithTypeHeadingSmallMedium)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeHeadingSmallMedium == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithTypeHeadingSmallTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeHeadingSmallTall, abstractTheme.sizeIconWithTypeHeadingSmallTall)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeHeadingSmallTall == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithTypeHeadingMediumShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeHeadingMediumShort, abstractTheme.sizeIconWithTypeHeadingMediumShort)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeHeadingMediumShort == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizIconWithTypeHeadingMediumMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeHeadingMediumMedium, abstractTheme.sizeIconWithTypeHeadingMediumMedium)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeHeadingMediumMedium == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithTypeHeadingMediumTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeHeadingMediumTall, abstractTheme.sizeIconWithTypeHeadingMediumTall)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeHeadingMediumTall == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithTypeHeadingLargeShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeHeadingLargeShort, abstractTheme.sizeIconWithTypeHeadingLargeShort)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeHeadingLargeShort == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithTypeHeadingLargeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeHeadingLargeMedium, abstractTheme.sizeIconWithTypeHeadingLargeMedium)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeHeadingLargeMedium == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithTypeHeadingLargeTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeHeadingLargeTall, abstractTheme.sizeIconWithTypeHeadingLargeTall)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeHeadingLargeTall == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithTypeHeadingXLargeShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeHeadingXLargeShort, abstractTheme.sizeIconWithTypeHeadingXLargeShort)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeHeadingXLargeShort == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithTypeHeadingXLargeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeHeadingXLargeMedium, abstractTheme.sizeIconWithTypeHeadingXLargeMedium)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeHeadingXLargeMedium == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithTypeHeadingXLargeTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeHeadingXLargeTall, abstractTheme.sizeIconWithTypeHeadingXLargeTall)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeHeadingXLargeTall == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithTypeBodySmallShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeBodySmallShort, abstractTheme.sizeIconWithTypeBodySmallShort)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeBodySmallShort.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithTypeBodySmallMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeBodySmallMedium, abstractTheme.sizeIconWithTypeBodySmallMedium)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeBodySmallMedium.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithTypeBodySmallTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeBodySmallTall, abstractTheme.sizeIconWithTypeBodySmallTall)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeBodySmallTall.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithTypeBodyMediumShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeBodyMediumShort, abstractTheme.sizeIconWithTypeBodyMediumShort)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeBodyMediumShort.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithTypeBodyMediumMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeBodyMediumMedium, abstractTheme.sizeIconWithTypeBodyMediumMedium)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeBodyMediumMedium.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithTypeBodyMediumTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeBodyMediumTall, abstractTheme.sizeIconWithTypeBodyMediumTall)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeBodyMediumTall.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithTypeBodyLargeShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeBodyLargeShort, abstractTheme.sizeIconWithTypeBodyLargeShort)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeBodyLargeShort.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithTypeBodyLargeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeBodyLargeMedium, abstractTheme.sizeIconWithTypeBodyLargeMedium)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeBodyLargeMedium.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithTypeBodyLargeTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeBodyLargeTall, abstractTheme.sizeIconWithTypeBodyLargeTall)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeBodyLargeTall.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithTypeLabelSmallShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeLabelSmallShort, abstractTheme.sizeIconWithTypeLabelSmallShort)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeLabelSmallShort == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithTypeLabelSmallMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeLabelSmallMedium, abstractTheme.sizeIconWithTypeLabelSmallMedium)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeLabelSmallMedium == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithTypeLabelSmallTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeLabelSmallTall, abstractTheme.sizeIconWithTypeLabelSmallTall)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeLabelSmallTall == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithTypeLabelMediumShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeLabelMediumShort, abstractTheme.sizeIconWithTypeLabelMediumShort)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeLabelMediumShort == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithTypeLabelMediumMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeLabelMediumMedium, abstractTheme.sizeIconWithTypeLabelMediumMedium)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeLabelMediumMedium == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithTypeLabelMediumTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeLabelMediumTall, abstractTheme.sizeIconWithTypeLabelMediumTall)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeLabelMediumTall == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithTypeLabelLargeShorter() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeLabelLargeShorter, abstractTheme.sizeIconWithTypeLabelLargeShorter)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeLabelLargeShorter == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithTypeLabelLargeShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeLabelLargeShort, abstractTheme.sizeIconWithTypeLabelLargeShort)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeLabelLargeShort == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithTypeLabelLargeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeLabelLargeMedium, abstractTheme.sizeIconWithTypeLabelLargeMedium)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeLabelLargeMedium == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithTypeLabelLargeTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeLabelLargeTall, abstractTheme.sizeIconWithTypeLabelLargeTall)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeLabelLargeTall == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithTypeLabelLargeTaller() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeLabelLargeTaller, abstractTheme.sizeIconWithTypeLabelLargeTaller)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeLabelLargeTaller == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithTypeLabelXLargeShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeLabelXLargeShort, abstractTheme.sizeIconWithTypeLabelXLargeShort)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeLabelXLargeShort == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithTypeLabelXLargeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeLabelXLargeMedium, abstractTheme.sizeIconWithTypeLabelXLargeMedium)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeLabelXLargeMedium == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithTypeLabelXLargeTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithTypeLabelXLargeTall, abstractTheme.sizeIconWithTypeLabelXLargeTall)
        XCTAssertTrue(inheritedTheme.sizeIconWithTypeLabelXLargeTall == MockTheme.mockThemeSizeRawToken)
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
