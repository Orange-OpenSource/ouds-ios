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
        #expect(inheritedTheme.fonts.displayLarge != abstractTheme.fonts.displayLarge)
        #expect(inheritedTheme.fonts.displayLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeDisplayMedium() throws {
        #expect(inheritedTheme.fonts.displayMedium != abstractTheme.fonts.displayMedium)
        #expect(inheritedTheme.fonts.displayMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeDisplaySmall() throws {
        #expect(inheritedTheme.fonts.displaySmall != abstractTheme.fonts.displaySmall)
        #expect(inheritedTheme.fonts.displaySmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    // MARK: - Semantic tokens - Typography - Composites - Heading

    @Test func inheritedThemeCanOverrideSemanticTokenTypeHeadingXLarge() throws {
        #expect(inheritedTheme.fonts.headingXLarge != abstractTheme.fonts.headingXLarge)
        #expect(inheritedTheme.fonts.headingXLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeHeadingLarge() throws {
        #expect(inheritedTheme.fonts.headingLarge != abstractTheme.fonts.headingLarge)
        #expect(inheritedTheme.fonts.headingLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeHeadingMedium() throws {
        #expect(inheritedTheme.fonts.headingMedium != abstractTheme.fonts.headingMedium)
        #expect(inheritedTheme.fonts.headingMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeHeadingSmall() throws {
        #expect(inheritedTheme.fonts.headingSmall != abstractTheme.fonts.headingSmall)
        #expect(inheritedTheme.fonts.headingSmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    // MARK: - Semantic tokens - Typography - Composites - Body

    @Test func inheritedThemeCanOverrideSemanticTokenTypeDefaultLarge() throws {
        #expect(inheritedTheme.fonts.bodyDefaultLarge != abstractTheme.fonts.bodyDefaultLarge)
        #expect(inheritedTheme.fonts.bodyDefaultLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeDefaultMedium() throws {
        #expect(inheritedTheme.fonts.bodyDefaultMedium != abstractTheme.fonts.bodyDefaultMedium)
        #expect(inheritedTheme.fonts.bodyDefaultMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeDefaultSmall() throws {
        #expect(inheritedTheme.fonts.bodyDefaultSmall != abstractTheme.fonts.bodyDefaultSmall)
        #expect(inheritedTheme.fonts.bodyDefaultSmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeModerateLarge() throws {
        #expect(inheritedTheme.fonts.bodyModerateLarge != abstractTheme.fonts.bodyModerateLarge)
        #expect(inheritedTheme.fonts.bodyModerateLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeModerateMedium() throws {
        #expect(inheritedTheme.fonts.bodyModerateMedium != abstractTheme.fonts.bodyModerateMedium)
        #expect(inheritedTheme.fonts.bodyModerateMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeModerateSmall() throws {
        #expect(inheritedTheme.fonts.bodyModerateSmall != abstractTheme.fonts.bodyModerateSmall)
        #expect(inheritedTheme.fonts.bodyModerateSmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeStrongLarge() throws {
        #expect(inheritedTheme.fonts.bodyStrongLarge != abstractTheme.fonts.bodyStrongLarge)
        #expect(inheritedTheme.fonts.bodyStrongLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeStrongMedium() throws {
        #expect(inheritedTheme.fonts.bodyStrongMedium != abstractTheme.fonts.bodyStrongMedium)
        #expect(inheritedTheme.fonts.bodyStrongMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeStrongSmall() throws {
        #expect(inheritedTheme.fonts.bodyStrongSmall != abstractTheme.fonts.bodyStrongSmall)
        #expect(inheritedTheme.fonts.bodyStrongSmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    // MARK: - Semantic tokens - Typography - Composites - Label

    @Test func inheritedThemeCanOverrideSemanticTokenTypeLabelDefaultXLarge() throws {
        #expect(inheritedTheme.fonts.labelDefaultXLarge != abstractTheme.fonts.labelDefaultXLarge)
        #expect(inheritedTheme.fonts.labelDefaultXLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeLabelDefaultLarge() throws {
        #expect(inheritedTheme.fonts.labelDefaultLarge != abstractTheme.fonts.labelDefaultLarge)
        #expect(inheritedTheme.fonts.labelDefaultLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeLabelDefaultMedium() throws {
        #expect(inheritedTheme.fonts.labelDefaultMedium != abstractTheme.fonts.labelDefaultMedium)
        #expect(inheritedTheme.fonts.labelDefaultMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeLabelDefaultSmall() throws {
        #expect(inheritedTheme.fonts.labelDefaultSmall != abstractTheme.fonts.labelDefaultSmall)
        #expect(inheritedTheme.fonts.labelDefaultSmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeLabeModerateXLarge() throws {
        #expect(inheritedTheme.fonts.labelModerateXLarge != abstractTheme.fonts.labelModerateXLarge)
        #expect(inheritedTheme.fonts.labelModerateXLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeLabelModerateLarge() throws {
        #expect(inheritedTheme.fonts.labelModerateLarge != abstractTheme.fonts.labelModerateLarge)
        #expect(inheritedTheme.fonts.labelModerateLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeLabelModerateMedium() throws {
        #expect(inheritedTheme.fonts.labelModerateMedium != abstractTheme.fonts.labelModerateMedium)
        #expect(inheritedTheme.fonts.labelModerateMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeLabelModerateSmall() throws {
        #expect(inheritedTheme.fonts.labelModerateSmall != abstractTheme.fonts.labelModerateSmall)
        #expect(inheritedTheme.fonts.labelModerateSmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeLabelStrongXLarge() throws {
        #expect(inheritedTheme.fonts.labelStrongXLarge != abstractTheme.fonts.labelStrongXLarge)
        #expect(inheritedTheme.fonts.labelStrongXLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeLabelStrongLarge() throws {
        #expect(inheritedTheme.fonts.labelStrongLarge != abstractTheme.fonts.labelStrongLarge)
        #expect(inheritedTheme.fonts.labelStrongLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeLabelStrongMedium() throws {
        #expect(inheritedTheme.fonts.labelStrongMedium != abstractTheme.fonts.labelStrongMedium)
        #expect(inheritedTheme.fonts.labelStrongMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeLabelStrongSmall() throws {
        #expect(inheritedTheme.fonts.labelStrongSmall != abstractTheme.fonts.labelStrongSmall)
        #expect(inheritedTheme.fonts.labelStrongSmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    // MARK: - Semantic tokens - Typography - Composites - Code

    @Test func inheritedThemeCanOverrideSemanticTokenTypeCodeMedium() throws {
        #expect(inheritedTheme.fonts.codeMedium != abstractTheme.fonts.codeMedium)
        #expect(inheritedTheme.fonts.codeMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeCodeSmall() throws {
        #expect(inheritedTheme.fonts.codeSmall != abstractTheme.fonts.codeSmall)
        #expect(inheritedTheme.fonts.codeSmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }
}

// swiftlint:enable type_name
