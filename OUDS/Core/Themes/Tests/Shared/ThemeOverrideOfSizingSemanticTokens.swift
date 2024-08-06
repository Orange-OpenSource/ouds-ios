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
import OUDSThemesShared

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In factn the `OUDSTheme` object is a class, which can be seens as an _asbtract class_, exposing through its extensions and protocols _sizing semantic tokens_.
/// These semantic tokens should be overriden by subclass like the `OrangeTheme` default theme.
/// **These tests checks if any _sizing semantic tokens_ can be surcharged by a child theme**
final class ThemeOverrideOfSizingSemanticTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OUDSTheme()
        inheritedTheme = MockTheme()
    }

    /// Test overriding of sizing semantic tokens for width height icon
    func testInheritedThemeCanOverrideSizeWidthHeightIconSemanticTokens() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconShortest, abstractTheme.sizeWidthHeightIsLabelSmallShort)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconShortest == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconShorter, abstractTheme.sizeWidthHeightIsLabelSmallMedium)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconShorter == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconShort, abstractTheme.sizeWidthHeightIsLabelSmallTall)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconShort == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconMedium, abstractTheme.sizeWidthHeightIsLabelMediumShort)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconMedium == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconTall, abstractTheme.sizeWidthHeightIsLabelMediumMedium)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconTall == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconTaller, abstractTheme.sizeWidthHeightIsLabelMediumTall)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconTaller == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconTallest, abstractTheme.sizeWidthHeightIsLabelLargeShorter)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconTallest == MockTheme.mockThemeSizeRawToken)
    }

    /// Test overriding of sizing semantic tokens for width height is label
    func testInheritedThemeCanOverrideSizeWidthHeightIsLabelSemanticTokens() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIsLabelSmallShort, abstractTheme.sizeWidthHeightIsLabelSmallShort)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIsLabelSmallShort == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIsLabelSmallMedium, abstractTheme.sizeWidthHeightIsLabelSmallMedium)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIsLabelSmallMedium == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIsLabelSmallTall, abstractTheme.sizeWidthHeightIsLabelSmallTall)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIsLabelSmallTall == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIsLabelMediumShort, abstractTheme.sizeWidthHeightIsLabelMediumShort)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIsLabelMediumShort == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIsLabelMediumMedium, abstractTheme.sizeWidthHeightIsLabelMediumMedium)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIsLabelMediumMedium == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIsLabelMediumTall, abstractTheme.sizeWidthHeightIsLabelMediumTall)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIsLabelMediumTall == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIsLabelLargeShorter, abstractTheme.sizeWidthHeightIsLabelLargeShorter)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIsLabelLargeShorter == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIsLabelLargeShort, abstractTheme.sizeWidthHeightIsLabelLargeShort)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIsLabelLargeShort == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIsLabelLargeMedium, abstractTheme.sizeWidthHeightIsLabelLargeMedium)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIsLabelLargeMedium == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIsLabelLargeTall, abstractTheme.sizeWidthHeightIsLabelLargeTall)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIsLabelLargeTall == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIsLabelLargeTaller, abstractTheme.sizeWidthHeightIsLabelLargeTaller)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIsLabelLargeTaller == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIsLabelXLargeShort, abstractTheme.sizeWidthHeightIsLabelXLargeShort)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIsLabelXLargeShort == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIsLabelXLargeMedium, abstractTheme.sizeWidthHeightIsLabelXLargeMedium)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIsLabelXLargeMedium == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIsLabelXLargeTall, abstractTheme.sizeWidthHeightIsLabelXLargeTall)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIsLabelXLargeTall == MockTheme.mockThemeSizeRawToken)
    }

    /// Test overriding of sizing semantic tokens for width height is heading
    func testInheritedThemeCanOverrideSizeWidthHeightIsHeadingSemanticTokens() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsHeadingSmallShort, abstractTheme.sizeWidthHeightIconIsHeadingSmallShort)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsHeadingSmallShort == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsHeadingSmallMedium, abstractTheme.sizeWidthHeightIconIsHeadingSmallMedium)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsHeadingSmallMedium == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsHeadingSmallTall, abstractTheme.sizeWidthHeightIconIsHeadingSmallTall)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsHeadingSmallTall == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsHeadingMediumShort, abstractTheme.sizeWidthHeightIconIsHeadingMediumShort)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsHeadingMediumShort == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsHeadingMediumMedium, abstractTheme.sizeWidthHeightIconIsHeadingMediumMedium)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsHeadingMediumMedium == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsHeadingMediumTall, abstractTheme.sizeWidthHeightIconIsHeadingMediumTall)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsHeadingMediumTall == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsHeadingLargeShort, abstractTheme.sizeWidthHeightIconIsHeadingLargeShort)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsHeadingLargeShort == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsHeadingLargeMedium, abstractTheme.sizeWidthHeightIconIsHeadingLargeMedium)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsHeadingLargeMedium == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsHeadingLargeTall, abstractTheme.sizeWidthHeightIconIsHeadingLargeTall)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsHeadingLargeTall == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsHeadingXLargeShort, abstractTheme.sizeWidthHeightIconIsHeadingXLargeShort)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsHeadingXLargeShort == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsHeadingXLargeMedium, abstractTheme.sizeWidthHeightIconIsHeadingXLargeMedium)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsHeadingXLargeMedium == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsHeadingXLargeTall, abstractTheme.sizeWidthHeightIconIsHeadingXLargeTall)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsHeadingXLargeTall == MockTheme.mockThemeSizeRawToken)
    }

    /// Test overriding of sizing semantic tokens for width height is body
    func testInheritedThemeCanOverrideSizeWidthHeightIsBodySemanticTokens() throws {
        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsBodySmallShort, abstractTheme.sizeWidthHeightIconIsBodySmallShort)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsBodySmallShort == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsBodySmallMedium, abstractTheme.sizeWidthHeightIconIsBodySmallMedium)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsBodySmallMedium == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsBodySmallTall, abstractTheme.sizeWidthHeightIconIsBodySmallTall)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsBodySmallTall == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsBodyMediumShort, abstractTheme.sizeWidthHeightIconIsBodyMediumShort)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsBodyMediumShort == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsBodyMediumMedium, abstractTheme.sizeWidthHeightIconIsBodyMediumMedium)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsBodyMediumMedium == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsBodyMediumTall, abstractTheme.sizeWidthHeightIconIsBodyMediumTall)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsBodyMediumTall == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsBodyLargeShort, abstractTheme.sizeWidthHeightIconIsBodyLargeShort)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsBodyLargeShort == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsBodyLargeMedium, abstractTheme.sizeWidthHeightIconIsBodyLargeMedium)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsBodyLargeMedium == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeWidthHeightIconIsBodyLargeTall, abstractTheme.sizeWidthHeightIconIsBodyLargeTall)
        XCTAssertTrue(inheritedTheme.sizeWidthHeightIconIsBodyLargeTall == MockTheme.mockThemeSizeRawToken)
    }

    /// Test overriding of sizing semantic tokens for max width typography
    func testInheritedThemeCanOverrideSizeMaxWidthTypographySemanticTokens() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypographyDisplaySmall, abstractTheme.sizeMaxWidthTypographyDisplaySmall)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypographyDisplaySmall == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypographyDisplayMedium, abstractTheme.sizeMaxWidthTypographyDisplayMedium)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypographyDisplayMedium == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypographyDisplayLarge, abstractTheme.sizeMaxWidthTypographyDisplayLarge)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypographyDisplayLarge == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypographyHeadingSmall, abstractTheme.sizeMaxWidthTypographyHeadingSmall)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypographyHeadingSmall == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypographyHeadingMedium, abstractTheme.sizeMaxWidthTypographyHeadingMedium)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypographyHeadingMedium == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypographyHeadingLarge, abstractTheme.sizeMaxWidthTypographyHeadingLarge)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypographyHeadingLarge == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypographyHeadingXLarge, abstractTheme.sizeMaxWidthTypographyHeadingXLarge)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypographyHeadingXLarge == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypographyBodySmall, abstractTheme.sizeMaxWidthTypographyBodySmall)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypographyBodySmall == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypographyBodyMedium, abstractTheme.sizeMaxWidthTypographyBodyMedium)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypographyBodyMedium == MockTheme.mockThemeSizeRawToken)

        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypographyBodyLarge, abstractTheme.sizeMaxWidthTypographyBodyLarge)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypographyBodyLarge == MockTheme.mockThemeSizeRawToken)
    }
}
