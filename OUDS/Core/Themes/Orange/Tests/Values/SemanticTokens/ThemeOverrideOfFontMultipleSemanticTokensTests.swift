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
import Testing

// swiftlint:disable type_name

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In fact the `OUDSTheme` object is a class, which can be seen as an _asbtract class_, exposing through its extensions and protocols _font semantic tokens_.
/// These semantic tokens should be overridable by subclasses like the ``OrangeThemeFontSemanticTokensProvider``.
///
/// **These tests checks if any _font semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
struct ThemeOverrideOfFontMultipleSemanticTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Semantic tokens - Typography - Font - Size

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeDisplayLarge() throws {
        #expect(inheritedTheme.fonts.fontSizeDisplayLarge != abstractTheme.fonts.fontSizeDisplayLarge)
        #expect(inheritedTheme.fonts.fontSizeDisplayLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontSizeTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeDisplayMedium() throws {
        #expect(inheritedTheme.fonts.fontSizeDisplayMedium != abstractTheme.fonts.fontSizeDisplayMedium)
        #expect(inheritedTheme.fonts.fontSizeDisplayMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontSizeTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeDisplaySmall() throws {
        #expect(inheritedTheme.fonts.fontSizeDisplaySmall != abstractTheme.fonts.fontSizeDisplaySmall)
        #expect(inheritedTheme.fonts.fontSizeDisplaySmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontSizeTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeHeadingXlarge() throws {
        #expect(inheritedTheme.fonts.fontSizeHeadingXlarge != abstractTheme.fonts.fontSizeHeadingXlarge)
        #expect(inheritedTheme.fonts.fontSizeHeadingXlarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontSizeTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeHeadingLarge() throws {
        #expect(inheritedTheme.fonts.fontSizeHeadingLarge != abstractTheme.fonts.fontSizeHeadingLarge)
        #expect(inheritedTheme.fonts.fontSizeHeadingLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontSizeTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeHeadingMedium() throws {
        #expect(inheritedTheme.fonts.fontSizeHeadingMedium != abstractTheme.fonts.fontSizeHeadingMedium)
        #expect(inheritedTheme.fonts.fontSizeHeadingMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontSizeTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeHeadingSmall() throws {
        #expect(inheritedTheme.fonts.fontSizeHeadingSmall != abstractTheme.fonts.fontSizeHeadingSmall)
        #expect(inheritedTheme.fonts.fontSizeHeadingSmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontSizeTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeBodyLarge() throws {
        #expect(inheritedTheme.fonts.fontSizeBodyLarge != abstractTheme.fonts.fontSizeBodyLarge)
        #expect(inheritedTheme.fonts.fontSizeBodyLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontSizeTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeBodyMedium() throws {
        #expect(inheritedTheme.fonts.fontSizeBodyMedium != abstractTheme.fonts.fontSizeBodyMedium)
        #expect(inheritedTheme.fonts.fontSizeBodyMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontSizeTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeBodySmall() throws {
        #expect(inheritedTheme.fonts.fontSizeBodySmall != abstractTheme.fonts.fontSizeBodySmall)
        #expect(inheritedTheme.fonts.fontSizeBodySmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontSizeTokens)
    }

    // MARK: - Semantic tokens - Typography - Font - Letter spacing

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingDisplayLarge() throws {
        #expect(inheritedTheme.fonts.fontLetterSpacingDisplayLarge != abstractTheme.fonts.fontLetterSpacingDisplayLarge)
        #expect(inheritedTheme.fonts.fontLetterSpacingDisplayLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLetterSpacingTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingDisplayMedium() throws {
        #expect(inheritedTheme.fonts.fontLetterSpacingDisplayMedium != abstractTheme.fonts.fontLetterSpacingDisplayMedium)
        #expect(inheritedTheme.fonts.fontLetterSpacingDisplayMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLetterSpacingTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingDisplaySmall() throws {
        #expect(inheritedTheme.fonts.fontLetterSpacingDisplaySmall != abstractTheme.fonts.fontLetterSpacingDisplaySmall)
        #expect(inheritedTheme.fonts.fontLetterSpacingDisplaySmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLetterSpacingTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingXlarge() throws {
        #expect(inheritedTheme.fonts.fontLetterSpacingHeadingXlarge != abstractTheme.fonts.fontLetterSpacingHeadingXlarge)
        #expect(inheritedTheme.fonts.fontLetterSpacingHeadingXlarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLetterSpacingTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingLarge() throws {
        #expect(inheritedTheme.fonts.fontLetterSpacingHeadingLarge != abstractTheme.fonts.fontLetterSpacingHeadingLarge)
        #expect(inheritedTheme.fonts.fontLetterSpacingHeadingLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLetterSpacingTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingMedium() throws {
        #expect(inheritedTheme.fonts.fontLetterSpacingHeadingMedium != abstractTheme.fonts.fontLetterSpacingHeadingMedium)
        #expect(inheritedTheme.fonts.fontLetterSpacingHeadingMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLetterSpacingTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingSmall() throws {
        #expect(inheritedTheme.fonts.fontLetterSpacingHeadingSmall != abstractTheme.fonts.fontLetterSpacingHeadingSmall)
        #expect(inheritedTheme.fonts.fontLetterSpacingHeadingSmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLetterSpacingTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodyLarge() throws {
        #expect(inheritedTheme.fonts.fontLetterSpacingBodyLarge != abstractTheme.fonts.fontLetterSpacingBodyLarge)
        #expect(inheritedTheme.fonts.fontLetterSpacingBodyLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLetterSpacingTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodyMedium() throws {
        #expect(inheritedTheme.fonts.fontLetterSpacingBodyMedium != abstractTheme.fonts.fontLetterSpacingBodyMedium)
        #expect(inheritedTheme.fonts.fontLetterSpacingBodyMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLetterSpacingTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodySmall() throws {
        #expect(inheritedTheme.fonts.fontLetterSpacingBodySmall != abstractTheme.fonts.fontLetterSpacingBodySmall)
        #expect(inheritedTheme.fonts.fontLetterSpacingBodySmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLetterSpacingTokens)
    }

    // MARK: - Semantic tokens - Typography - Font - Line height

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightDisplayLarge() throws {
        #expect(inheritedTheme.fonts.fontLineHeightDisplayLarge != abstractTheme.fonts.fontLineHeightDisplayLarge)
        #expect(inheritedTheme.fonts.fontLineHeightDisplayLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLineHeightTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightDisplayMedium() throws {
        #expect(inheritedTheme.fonts.fontLineHeightDisplayMedium != abstractTheme.fonts.fontLineHeightDisplayMedium)
        #expect(inheritedTheme.fonts.fontLineHeightDisplayMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLineHeightTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightDisplaySmall() throws {
        #expect(inheritedTheme.fonts.fontLineHeightDisplaySmall != abstractTheme.fonts.fontLineHeightDisplaySmall)
        #expect(inheritedTheme.fonts.fontLineHeightDisplaySmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLineHeightTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingXlarge() throws {
        #expect(inheritedTheme.fonts.fontLineHeightHeadingXlarge != abstractTheme.fonts.fontLineHeightHeadingXlarge)
        #expect(inheritedTheme.fonts.fontLineHeightHeadingXlarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLineHeightTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingLarge() throws {
        #expect(inheritedTheme.fonts.fontLineHeightHeadingLarge != abstractTheme.fonts.fontLineHeightHeadingLarge)
        #expect(inheritedTheme.fonts.fontLineHeightHeadingLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLineHeightTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingMedium() throws {
        #expect(inheritedTheme.fonts.fontLineHeightHeadingMedium != abstractTheme.fonts.fontLineHeightHeadingMedium)
        #expect(inheritedTheme.fonts.fontLineHeightHeadingMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLineHeightTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingSmall() throws {
        #expect(inheritedTheme.fonts.fontLineHeightHeadingSmall != abstractTheme.fonts.fontLineHeightHeadingSmall)
        #expect(inheritedTheme.fonts.fontLineHeightHeadingSmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLineHeightTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightBodyLarge() throws {
        #expect(inheritedTheme.fonts.fontLineHeightBodyLarge != abstractTheme.fonts.fontLineHeightBodyLarge)
        #expect(inheritedTheme.fonts.fontLineHeightBodyLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLineHeightTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightBodyMedium() throws {
        #expect(inheritedTheme.fonts.fontLineHeightBodyMedium != abstractTheme.fonts.fontLineHeightBodyMedium)
        #expect(inheritedTheme.fonts.fontLineHeightBodyMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLineHeightTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightBodySmall() throws {
        #expect(inheritedTheme.fonts.fontLineHeightBodySmall != abstractTheme.fonts.fontLineHeightBodySmall)
        #expect(inheritedTheme.fonts.fontLineHeightBodySmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLineHeightTokens)
    }
}

// swiftlint:enable type_name
