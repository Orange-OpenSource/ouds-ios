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
/// **These tests checks if any _font composite semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
struct ThemeOverrideOfFontCompositeSemanticTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Semantic tokens - Typography - Composites - Display

    @Test func inheritedThemeCanOverrideSemanticTokenTypeDisplayLarge() throws {
        #expect(inheritedTheme.fonts.typeDisplayLarge != abstractTheme.fonts.typeDisplayLarge)
        #expect(inheritedTheme.fonts.typeDisplayLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeDisplayMedium() throws {
        #expect(inheritedTheme.fonts.typeDisplayMedium != abstractTheme.fonts.typeDisplayMedium)
        #expect(inheritedTheme.fonts.typeDisplayMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeDisplaySmall() throws {
        #expect(inheritedTheme.fonts.typeDisplaySmall != abstractTheme.fonts.typeDisplaySmall)
        #expect(inheritedTheme.fonts.typeDisplaySmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    // MARK: - Semantic tokens - Typography - Composites - Heading

    @Test func inheritedThemeCanOverrideSemanticTokenTypeHeadingXLarge() throws {
        #expect(inheritedTheme.fonts.typeHeadingXLarge != abstractTheme.fonts.typeHeadingXLarge)
        #expect(inheritedTheme.fonts.typeHeadingXLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeHeadingLarge() throws {
        #expect(inheritedTheme.fonts.typeHeadingLarge != abstractTheme.fonts.typeHeadingLarge)
        #expect(inheritedTheme.fonts.typeHeadingLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeHeadingMedium() throws {
        #expect(inheritedTheme.fonts.typeHeadingMedium != abstractTheme.fonts.typeHeadingMedium)
        #expect(inheritedTheme.fonts.typeHeadingMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeHeadingSmall() throws {
        #expect(inheritedTheme.fonts.typeHeadingSmall != abstractTheme.fonts.typeHeadingSmall)
        #expect(inheritedTheme.fonts.typeHeadingSmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    // MARK: - Semantic tokens - Typography - Composites - Body

    @Test func inheritedThemeCanOverrideSemanticTokenTypeDefaultLarge() throws {
        #expect(inheritedTheme.fonts.typeBodyDefaultLarge != abstractTheme.fonts.typeBodyDefaultLarge)
        #expect(inheritedTheme.fonts.typeBodyDefaultLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeDefaultMedium() throws {
        #expect(inheritedTheme.fonts.typeBodyDefaultMedium != abstractTheme.fonts.typeBodyDefaultMedium)
        #expect(inheritedTheme.fonts.typeBodyDefaultMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeDefaultSmall() throws {
        #expect(inheritedTheme.fonts.typeBodyDefaultSmall != abstractTheme.fonts.typeBodyDefaultSmall)
        #expect(inheritedTheme.fonts.typeBodyDefaultSmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeStrongLarge() throws {
        #expect(inheritedTheme.fonts.typeBodyStrongLarge != abstractTheme.fonts.typeBodyStrongLarge)
        #expect(inheritedTheme.fonts.typeBodyStrongLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeStrongMedium() throws {
        #expect(inheritedTheme.fonts.typeBodyStrongMedium != abstractTheme.fonts.typeBodyStrongMedium)
        #expect(inheritedTheme.fonts.typeBodyStrongMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeStrongSmall() throws {
        #expect(inheritedTheme.fonts.typeBodyStrongSmall != abstractTheme.fonts.typeBodyStrongSmall)
        #expect(inheritedTheme.fonts.typeBodyStrongSmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    // MARK: - Semantic tokens - Typography - Composites - Label

    @Test func inheritedThemeCanOverrideSemanticTokenTypeLabelDefaultXLarge() throws {
        #expect(inheritedTheme.fonts.typeLabelDefaultXLarge != abstractTheme.fonts.typeLabelDefaultXLarge)
        #expect(inheritedTheme.fonts.typeLabelDefaultXLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeLabelDefaultLarge() throws {
        #expect(inheritedTheme.fonts.typeLabelDefaultLarge != abstractTheme.fonts.typeLabelDefaultLarge)
        #expect(inheritedTheme.fonts.typeLabelDefaultLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeLabelDefaultMedium() throws {
        #expect(inheritedTheme.fonts.typeLabelDefaultMedium != abstractTheme.fonts.typeLabelDefaultMedium)
        #expect(inheritedTheme.fonts.typeLabelDefaultMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeLabelDefaultSmall() throws {
        #expect(inheritedTheme.fonts.typeLabelDefaultSmall != abstractTheme.fonts.typeLabelDefaultSmall)
        #expect(inheritedTheme.fonts.typeLabelDefaultSmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeLabelStrongXLarge() throws {
        #expect(inheritedTheme.fonts.typeLabelStrongXLarge != abstractTheme.fonts.typeLabelStrongXLarge)
        #expect(inheritedTheme.fonts.typeLabelStrongXLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeLabelStrongLarge() throws {
        #expect(inheritedTheme.fonts.typeLabelStrongLarge != abstractTheme.fonts.typeLabelStrongLarge)
        #expect(inheritedTheme.fonts.typeLabelStrongLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeLabelStrongMedium() throws {
        #expect(inheritedTheme.fonts.typeLabelStrongMedium != abstractTheme.fonts.typeLabelStrongMedium)
        #expect(inheritedTheme.fonts.typeLabelStrongMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeLabelStrongSmall() throws {
        #expect(inheritedTheme.fonts.typeLabelStrongSmall != abstractTheme.fonts.typeLabelStrongSmall)
        #expect(inheritedTheme.fonts.typeLabelStrongSmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    // MARK: - Semantic tokens - Typography - Composites - Code

    @Test func inheritedThemeCanOverrideSemanticTokenTypeCodeMedium() throws {
        #expect(inheritedTheme.fonts.typeCodeMedium != abstractTheme.fonts.typeCodeMedium)
        #expect(inheritedTheme.fonts.typeCodeMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeCodeSmall() throws {
        #expect(inheritedTheme.fonts.typeCodeSmall != abstractTheme.fonts.typeCodeSmall)
        #expect(inheritedTheme.fonts.typeCodeSmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }
}

// swiftlint:enable type_name
