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
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconShortest, abstractTheme.sizeWidthHeightIconShortest)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconShortest == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconShorter() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconShorter, abstractTheme.sizeWidthHeightIconShorter)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconShorter == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconShort, abstractTheme.sizeWidthHeightIconShort)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconShort == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconMedium, abstractTheme.sizeWidthHeightIconMedium)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconMedium == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconTall, abstractTheme.sizeWidthHeightIconTall)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconTall == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconTaller() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconTaller, abstractTheme.sizeWidthHeightIconTaller)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconTaller == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconTallest() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconTallest, abstractTheme.sizeWidthHeightIconTallest)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconTallest == MockTheme.mockThemeSizeRawToken)
    }

    // MARK: - Semantic token - Sizing - Width height - Icon component

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIsLabelSmallShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIsLabelSmallShort, abstractTheme.sizeWidthHeightIsLabelSmallShort)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIsLabelSmallShort == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIsLabelSmallMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIsLabelSmallMedium, abstractTheme.sizeWidthHeightIsLabelSmallMedium)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIsLabelSmallMedium == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIsLabelSmallTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIsLabelSmallTall, abstractTheme.sizeWidthHeightIsLabelSmallTall)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIsLabelSmallTall == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIsLabelMediumShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIsLabelMediumShort, abstractTheme.sizeWidthHeightIsLabelMediumShort)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIsLabelMediumShort == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIsLabelMediumMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIsLabelMediumMedium, abstractTheme.sizeWidthHeightIsLabelMediumMedium)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIsLabelMediumMedium == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIsLabelMediumTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIsLabelMediumTall, abstractTheme.sizeWidthHeightIsLabelMediumTall)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIsLabelMediumTall == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIsLabelLargeShorter() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIsLabelLargeShorter, abstractTheme.sizeWidthHeightIsLabelLargeShorter)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIsLabelLargeShorter == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIsLabelLargeShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIsLabelLargeShort, abstractTheme.sizeWidthHeightIsLabelLargeShort)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIsLabelLargeShort == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIsLabelLargeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIsLabelLargeMedium, abstractTheme.sizeWidthHeightIsLabelLargeMedium)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIsLabelLargeMedium == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIsLabelLargeTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIsLabelLargeTall, abstractTheme.sizeWidthHeightIsLabelLargeTall)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIsLabelLargeTall == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIsLabelLargeTaller() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIsLabelLargeTaller, abstractTheme.sizeWidthHeightIsLabelLargeTaller)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIsLabelLargeTaller == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIsLabelXLargeShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIsLabelXLargeShort, abstractTheme.sizeWidthHeightIsLabelXLargeShort)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIsLabelXLargeShort == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIsLabelXLargeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIsLabelXLargeMedium, abstractTheme.sizeWidthHeightIsLabelXLargeMedium)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIsLabelXLargeMedium == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIsLabelXLargeTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIsLabelXLargeTall, abstractTheme.sizeWidthHeightIsLabelXLargeTall)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIsLabelXLargeTall == MockTheme.mockThemeSizeRawToken)
    }

    // MARK: - Semantic token - Sizing - Width height - Icon typography - Heading

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconIsHeadingSmallShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsHeadingSmallShort, abstractTheme.sizeWidthHeightIconIsHeadingSmallShort)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsHeadingSmallShort == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconIsHeadingSmallMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsHeadingSmallMedium, abstractTheme.sizeWidthHeightIconIsHeadingSmallMedium)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsHeadingSmallMedium == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconIsHeadingSmallTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsHeadingSmallTall, abstractTheme.sizeWidthHeightIconIsHeadingSmallTall)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsHeadingSmallTall == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconIsHeadingMediumShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsHeadingMediumShort, abstractTheme.sizeWidthHeightIconIsHeadingMediumShort)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsHeadingMediumShort == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconIsHeadingMediumMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsHeadingMediumMedium, abstractTheme.sizeWidthHeightIconIsHeadingMediumMedium)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsHeadingMediumMedium == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconIsHeadingMediumTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsHeadingMediumTall, abstractTheme.sizeWidthHeightIconIsHeadingMediumTall)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsHeadingMediumTall == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconIsHeadingLargeShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsHeadingLargeShort, abstractTheme.sizeWidthHeightIconIsHeadingLargeShort)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsHeadingLargeShort == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconIsHeadingLargeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsHeadingLargeMedium, abstractTheme.sizeWidthHeightIconIsHeadingLargeMedium)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsHeadingLargeMedium == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconIsHeadingLargeTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsHeadingLargeTall, abstractTheme.sizeWidthHeightIconIsHeadingLargeTall)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsHeadingLargeTall == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconIsHeadingXLargeShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsHeadingXLargeShort, abstractTheme.sizeWidthHeightIconIsHeadingXLargeShort)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsHeadingXLargeShort == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconIsHeadingXLargeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsHeadingXLargeMedium, abstractTheme.sizeWidthHeightIconIsHeadingXLargeMedium)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsHeadingXLargeMedium == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconIsHeadingXLargeTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsHeadingXLargeTall, abstractTheme.sizeWidthHeightIconIsHeadingXLargeTall)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsHeadingXLargeTall == MockTheme.mockThemeSizeRawToken)
    }

    // MARK: - Semantic token - Sizing - Width height - Icon typography - Body

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconIsBodySmallShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsBodySmallShort, abstractTheme.sizeWidthHeightIconIsBodySmallShort)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsBodySmallShort == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconIsBodySmallMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsBodySmallMedium, abstractTheme.sizeWidthHeightIconIsBodySmallMedium)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsBodySmallMedium == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconIsBodySmallTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsBodySmallTall, abstractTheme.sizeWidthHeightIconIsBodySmallTall)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsBodySmallTall == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconIsBodyMediumShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsBodyMediumShort, abstractTheme.sizeWidthHeightIconIsBodyMediumShort)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsBodyMediumShort == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconIsBodyMediumMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsBodyMediumMedium, abstractTheme.sizeWidthHeightIconIsBodyMediumMedium)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsBodyMediumMedium == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconIsBodyMediumTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsBodyMediumTall, abstractTheme.sizeWidthHeightIconIsBodyMediumTall)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsBodyMediumTall == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconIsBodyLargeShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsBodyLargeShort, abstractTheme.sizeWidthHeightIconIsBodyLargeShort)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsBodyLargeShort == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconIsBodyLargeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsBodyLargeMedium, abstractTheme.sizeWidthHeightIconIsBodyLargeMedium)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsBodyLargeMedium == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWidthHeightIconIsBodyLargeTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsBodyLargeTall, abstractTheme.sizeWidthHeightIconIsBodyLargeTall)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsBodyLargeTall == MockTheme.mockThemeSizeRawToken)
    }

    // MARK: - Semantic token - Sizing - Max width

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyDisplaySmall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypographyDisplaySmall, abstractTheme.sizeMaxWidthTypographyDisplaySmall)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypographyDisplaySmall == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyDisplayMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypographyDisplayMedium, abstractTheme.sizeMaxWidthTypographyDisplayMedium)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypographyDisplayMedium == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyDisplayLarge() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypographyDisplayLarge, abstractTheme.sizeMaxWidthTypographyDisplayLarge)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypographyDisplayLarge == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyHeadingSmall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypographyHeadingSmall, abstractTheme.sizeMaxWidthTypographyHeadingSmall)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypographyHeadingSmall == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyHeadingMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypographyHeadingMedium, abstractTheme.sizeMaxWidthTypographyHeadingMedium)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypographyHeadingMedium == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyHeadingLarge() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypographyHeadingLarge, abstractTheme.sizeMaxWidthTypographyHeadingLarge)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypographyHeadingLarge == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyHeadingXLarge() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypographyHeadingXLarge, abstractTheme.sizeMaxWidthTypographyHeadingXLarge)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypographyHeadingXLarge == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyBodySmall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypographyBodySmall, abstractTheme.sizeMaxWidthTypographyBodySmall)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypographyBodySmall == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyBodyMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypographyBodyMedium, abstractTheme.sizeMaxWidthTypographyBodyMedium)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypographyBodyMedium == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyBodyLarge() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypographyBodyLarge, abstractTheme.sizeMaxWidthTypographyBodyLarge)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypographyBodyLarge == MockTheme.mockThemeSizeRawToken)
    }
}
