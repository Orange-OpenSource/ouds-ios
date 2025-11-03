//
// Software Name: OUDSThemesContract iOS
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

import OUDSThemesContract
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
        #expect(inheritedTheme.fonts.sizeDisplayLarge != abstractTheme.fonts.sizeDisplayLarge)
        #expect(inheritedTheme.fonts.sizeDisplayLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontSizeTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeDisplayMedium() throws {
        #expect(inheritedTheme.fonts.sizeDisplayMedium != abstractTheme.fonts.sizeDisplayMedium)
        #expect(inheritedTheme.fonts.sizeDisplayMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontSizeTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeDisplaySmall() throws {
        #expect(inheritedTheme.fonts.sizeDisplaySmall != abstractTheme.fonts.sizeDisplaySmall)
        #expect(inheritedTheme.fonts.sizeDisplaySmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontSizeTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeHeadingXlarge() throws {
        #expect(inheritedTheme.fonts.sizeHeadingXlarge != abstractTheme.fonts.sizeHeadingXlarge)
        #expect(inheritedTheme.fonts.sizeHeadingXlarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontSizeTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeHeadingLarge() throws {
        #expect(inheritedTheme.fonts.sizeHeadingLarge != abstractTheme.fonts.sizeHeadingLarge)
        #expect(inheritedTheme.fonts.sizeHeadingLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontSizeTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeHeadingMedium() throws {
        #expect(inheritedTheme.fonts.sizeHeadingMedium != abstractTheme.fonts.sizeHeadingMedium)
        #expect(inheritedTheme.fonts.sizeHeadingMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontSizeTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeHeadingSmall() throws {
        #expect(inheritedTheme.fonts.sizeHeadingSmall != abstractTheme.fonts.sizeHeadingSmall)
        #expect(inheritedTheme.fonts.sizeHeadingSmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontSizeTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeBodyLarge() throws {
        #expect(inheritedTheme.fonts.sizeBodyLarge != abstractTheme.fonts.sizeBodyLarge)
        #expect(inheritedTheme.fonts.sizeBodyLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontSizeTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeBodyMedium() throws {
        #expect(inheritedTheme.fonts.sizeBodyMedium != abstractTheme.fonts.sizeBodyMedium)
        #expect(inheritedTheme.fonts.sizeBodyMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontSizeTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeBodySmall() throws {
        #expect(inheritedTheme.fonts.sizeBodySmall != abstractTheme.fonts.sizeBodySmall)
        #expect(inheritedTheme.fonts.sizeBodySmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontSizeTokens)
    }

    // MARK: - Semantic tokens - Typography - Font - Letter spacing

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingDisplayLarge() throws {
        #expect(inheritedTheme.fonts.letterSpacingDisplayLarge != abstractTheme.fonts.letterSpacingDisplayLarge)
        #expect(inheritedTheme.fonts.letterSpacingDisplayLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLetterSpacingTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingDisplayMedium() throws {
        #expect(inheritedTheme.fonts.letterSpacingDisplayMedium != abstractTheme.fonts.letterSpacingDisplayMedium)
        #expect(inheritedTheme.fonts.letterSpacingDisplayMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLetterSpacingTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingDisplaySmall() throws {
        #expect(inheritedTheme.fonts.letterSpacingDisplaySmall != abstractTheme.fonts.letterSpacingDisplaySmall)
        #expect(inheritedTheme.fonts.letterSpacingDisplaySmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLetterSpacingTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingXlarge() throws {
        #expect(inheritedTheme.fonts.letterSpacingHeadingXlarge != abstractTheme.fonts.letterSpacingHeadingXlarge)
        #expect(inheritedTheme.fonts.letterSpacingHeadingXlarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLetterSpacingTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingLarge() throws {
        #expect(inheritedTheme.fonts.letterSpacingHeadingLarge != abstractTheme.fonts.letterSpacingHeadingLarge)
        #expect(inheritedTheme.fonts.letterSpacingHeadingLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLetterSpacingTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingMedium() throws {
        #expect(inheritedTheme.fonts.letterSpacingHeadingMedium != abstractTheme.fonts.letterSpacingHeadingMedium)
        #expect(inheritedTheme.fonts.letterSpacingHeadingMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLetterSpacingTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingSmall() throws {
        #expect(inheritedTheme.fonts.letterSpacingHeadingSmall != abstractTheme.fonts.letterSpacingHeadingSmall)
        #expect(inheritedTheme.fonts.letterSpacingHeadingSmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLetterSpacingTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodyLarge() throws {
        #expect(inheritedTheme.fonts.letterSpacingBodyLarge != abstractTheme.fonts.letterSpacingBodyLarge)
        #expect(inheritedTheme.fonts.letterSpacingBodyLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLetterSpacingTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodyMedium() throws {
        #expect(inheritedTheme.fonts.letterSpacingBodyMedium != abstractTheme.fonts.letterSpacingBodyMedium)
        #expect(inheritedTheme.fonts.letterSpacingBodyMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLetterSpacingTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodySmall() throws {
        #expect(inheritedTheme.fonts.letterSpacingBodySmall != abstractTheme.fonts.letterSpacingBodySmall)
        #expect(inheritedTheme.fonts.letterSpacingBodySmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLetterSpacingTokens)
    }

    // MARK: - Semantic tokens - Typography - Font - Line height

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightDisplayLarge() throws {
        #expect(inheritedTheme.fonts.lineHeightDisplayLarge != abstractTheme.fonts.lineHeightDisplayLarge)
        #expect(inheritedTheme.fonts.lineHeightDisplayLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLineHeightTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightDisplayMedium() throws {
        #expect(inheritedTheme.fonts.lineHeightDisplayMedium != abstractTheme.fonts.lineHeightDisplayMedium)
        #expect(inheritedTheme.fonts.lineHeightDisplayMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLineHeightTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightDisplaySmall() throws {
        #expect(inheritedTheme.fonts.lineHeightDisplaySmall != abstractTheme.fonts.lineHeightDisplaySmall)
        #expect(inheritedTheme.fonts.lineHeightDisplaySmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLineHeightTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingXlarge() throws {
        #expect(inheritedTheme.fonts.lineHeightHeadingXlarge != abstractTheme.fonts.lineHeightHeadingXlarge)
        #expect(inheritedTheme.fonts.lineHeightHeadingXlarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLineHeightTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingLarge() throws {
        #expect(inheritedTheme.fonts.lineHeightHeadingLarge != abstractTheme.fonts.lineHeightHeadingLarge)
        #expect(inheritedTheme.fonts.lineHeightHeadingLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLineHeightTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingMedium() throws {
        #expect(inheritedTheme.fonts.lineHeightHeadingMedium != abstractTheme.fonts.lineHeightHeadingMedium)
        #expect(inheritedTheme.fonts.lineHeightHeadingMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLineHeightTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingSmall() throws {
        #expect(inheritedTheme.fonts.lineHeightHeadingSmall != abstractTheme.fonts.lineHeightHeadingSmall)
        #expect(inheritedTheme.fonts.lineHeightHeadingSmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLineHeightTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightBodyLarge() throws {
        #expect(inheritedTheme.fonts.lineHeightBodyLarge != abstractTheme.fonts.lineHeightBodyLarge)
        #expect(inheritedTheme.fonts.lineHeightBodyLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLineHeightTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightBodyMedium() throws {
        #expect(inheritedTheme.fonts.lineHeightBodyMedium != abstractTheme.fonts.lineHeightBodyMedium)
        #expect(inheritedTheme.fonts.lineHeightBodyMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLineHeightTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightBodySmall() throws {
        #expect(inheritedTheme.fonts.lineHeightBodySmall != abstractTheme.fonts.lineHeightBodySmall)
        #expect(inheritedTheme.fonts.lineHeightBodySmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontLineHeightTokens)
    }
}

// swiftlint:enable type_name
