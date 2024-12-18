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
import OUDSThemesOrange
import XCTest

// swiftlint:disable required_deinit
// swiftlint:disable implicitly_unwrapped_optional
// swiftlint:disable type_name

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In fact the `OUDSTheme` object is a class, which can be seen as an _asbtract class_, exposing through its extensions and protocols _font semantic tokens_.
/// These semantic tokens should be overridable by subclasses like the ``OrangeThemeFontSemanticTokensProvider``.
///
/// **These tests checks if any _font semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
final class TestThemeOverrideOfFontMultipleSemanticTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Semantic token - Typography - Font - Size

    func testInheritedThemeCanOverrideSemanticTokenFontSizeDisplayLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontSizeDisplayLarge, abstractTheme.fonts.fontSizeDisplayLarge)
        XCTAssertTrue(inheritedTheme.fonts.fontSizeDisplayLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontSizeTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeDisplayMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontSizeDisplayMedium, abstractTheme.fonts.fontSizeDisplayMedium)
        XCTAssertTrue(inheritedTheme.fonts.fontSizeDisplayMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontSizeTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeDisplaySmall() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontSizeDisplaySmall, abstractTheme.fonts.fontSizeDisplaySmall)
        XCTAssertTrue(inheritedTheme.fonts.fontSizeDisplaySmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontSizeTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeHeadingXlarge() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontSizeHeadingXlarge, abstractTheme.fonts.fontSizeHeadingXlarge)
        XCTAssertTrue(inheritedTheme.fonts.fontSizeHeadingXlarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontSizeTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeHeadingLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontSizeHeadingLarge, abstractTheme.fonts.fontSizeHeadingLarge)
        XCTAssertTrue(inheritedTheme.fonts.fontSizeHeadingLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontSizeTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeHeadingMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontSizeHeadingMedium, abstractTheme.fonts.fontSizeHeadingMedium)
        XCTAssertTrue(inheritedTheme.fonts.fontSizeHeadingMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontSizeTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeHeadingSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontSizeHeadingSmall, abstractTheme.fonts.fontSizeHeadingSmall)
        XCTAssertTrue(inheritedTheme.fonts.fontSizeHeadingSmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontSizeTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeBodyLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontSizeBodyLarge, abstractTheme.fonts.fontSizeBodyLarge)
        XCTAssertTrue(inheritedTheme.fonts.fontSizeBodyLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontSizeTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeBodyMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontSizeBodyMedium, abstractTheme.fonts.fontSizeBodyMedium)
        XCTAssertTrue(inheritedTheme.fonts.fontSizeBodyMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontSizeTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeBodySmall() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontSizeBodySmall, abstractTheme.fonts.fontSizeBodySmall)
        XCTAssertTrue(inheritedTheme.fonts.fontSizeBodySmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontSizeTokens)
    }

    // MARK: - Semantic token - Typography - Font - Letter spacing

    func testInheritedThemeCanOverrideSemanticTokenfontLetterSpacingDisplayLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLetterSpacingDisplayLarge, abstractTheme.fonts.fontLetterSpacingDisplayLarge)
        XCTAssertTrue(inheritedTheme.fonts.fontLetterSpacingDisplayLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLetterSpacingTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingDisplayMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLetterSpacingDisplayMedium, abstractTheme.fonts.fontLetterSpacingDisplayMedium)
        XCTAssertTrue(inheritedTheme.fonts.fontLetterSpacingDisplayMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLetterSpacingTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingDisplaySmall() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLetterSpacingDisplaySmall, abstractTheme.fonts.fontLetterSpacingDisplaySmall)
        XCTAssertTrue(inheritedTheme.fonts.fontLetterSpacingDisplaySmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLetterSpacingTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingXlarge() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLetterSpacingHeadingXlarge, abstractTheme.fonts.fontLetterSpacingHeadingXlarge)
        XCTAssertTrue(inheritedTheme.fonts.fontLetterSpacingHeadingXlarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLetterSpacingTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLetterSpacingHeadingLarge, abstractTheme.fonts.fontLetterSpacingHeadingLarge)
        XCTAssertTrue(inheritedTheme.fonts.fontLetterSpacingHeadingLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLetterSpacingTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLetterSpacingHeadingMedium, abstractTheme.fonts.fontLetterSpacingHeadingMedium)
        XCTAssertTrue(inheritedTheme.fonts.fontLetterSpacingHeadingMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLetterSpacingTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLetterSpacingHeadingSmall, abstractTheme.fonts.fontLetterSpacingHeadingSmall)
        XCTAssertTrue(inheritedTheme.fonts.fontLetterSpacingHeadingSmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLetterSpacingTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodyLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLetterSpacingBodyLarge, abstractTheme.fonts.fontLetterSpacingBodyLarge)
        XCTAssertTrue(inheritedTheme.fonts.fontLetterSpacingBodyLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLetterSpacingTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodyMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLetterSpacingBodyMedium, abstractTheme.fonts.fontLetterSpacingBodyMedium)
        XCTAssertTrue(inheritedTheme.fonts.fontLetterSpacingBodyMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLetterSpacingTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodySmall() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLetterSpacingBodySmall, abstractTheme.fonts.fontLetterSpacingBodySmall)
        XCTAssertTrue(inheritedTheme.fonts.fontLetterSpacingBodySmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLetterSpacingTokens)
    }

    // MARK: - Semantic token - Typography - Font - Line height

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightDisplayLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLineHeightDisplayLarge, abstractTheme.fonts.fontLineHeightDisplayLarge)
        XCTAssertTrue(inheritedTheme.fonts.fontLineHeightDisplayLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLineHeightTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightDisplayMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLineHeightDisplayMedium, abstractTheme.fonts.fontLineHeightDisplayMedium)
        XCTAssertTrue(inheritedTheme.fonts.fontLineHeightDisplayMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLineHeightTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightDisplaySmall() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLineHeightDisplaySmall, abstractTheme.fonts.fontLineHeightDisplaySmall)
        XCTAssertTrue(inheritedTheme.fonts.fontLineHeightDisplaySmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLineHeightTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingXlarge() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLineHeightHeadingXlarge, abstractTheme.fonts.fontLineHeightHeadingXlarge)
        XCTAssertTrue(inheritedTheme.fonts.fontLineHeightHeadingXlarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLineHeightTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLineHeightHeadingLarge, abstractTheme.fonts.fontLineHeightHeadingLarge)
        XCTAssertTrue(inheritedTheme.fonts.fontLineHeightHeadingLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLineHeightTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLineHeightHeadingMedium, abstractTheme.fonts.fontLineHeightHeadingMedium)
        XCTAssertTrue(inheritedTheme.fonts.fontLineHeightHeadingMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLineHeightTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLineHeightHeadingSmall, abstractTheme.fonts.fontLineHeightHeadingSmall)
        XCTAssertTrue(inheritedTheme.fonts.fontLineHeightHeadingSmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLineHeightTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightBodyLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLineHeightBodyLarge, abstractTheme.fonts.fontLineHeightBodyLarge)
        XCTAssertTrue(inheritedTheme.fonts.fontLineHeightBodyLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLineHeightTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightBodyMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLineHeightBodyMedium, abstractTheme.fonts.fontLineHeightBodyMedium)
        XCTAssertTrue(inheritedTheme.fonts.fontLineHeightBodyMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLineHeightTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightBodySmall() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLineHeightBodySmall, abstractTheme.fonts.fontLineHeightBodySmall)
        XCTAssertTrue(inheritedTheme.fonts.fontLineHeightBodySmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLineHeightTokens)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable type_name
