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
        #expect(inheritedTheme.fonts.displayLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeDisplayMedium() throws {
        #expect(inheritedTheme.fonts.displayMedium != abstractTheme.fonts.displayMedium)
        #expect(inheritedTheme.fonts.displayMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeDisplaySmall() throws {
        #expect(inheritedTheme.fonts.displaySmall != abstractTheme.fonts.displaySmall)
        #expect(inheritedTheme.fonts.displaySmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeSemanticTokens)
    }

    // MARK: - Semantic tokens - Typography - Composites - Heading

    @Test func inheritedThemeCanOverrideSemanticTokenTypeHeadingXLarge() throws {
        #expect(inheritedTheme.fonts.headingXLarge != abstractTheme.fonts.headingXLarge)
        #expect(inheritedTheme.fonts.headingXLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeHeadingLarge() throws {
        #expect(inheritedTheme.fonts.headingLarge != abstractTheme.fonts.headingLarge)
        #expect(inheritedTheme.fonts.headingLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeHeadingMedium() throws {
        #expect(inheritedTheme.fonts.headingMedium != abstractTheme.fonts.headingMedium)
        #expect(inheritedTheme.fonts.headingMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeHeadingSmall() throws {
        #expect(inheritedTheme.fonts.headingSmall != abstractTheme.fonts.headingSmall)
        #expect(inheritedTheme.fonts.headingSmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeSemanticTokens)
    }

    // MARK: - Semantic tokens - Typography - Composites - Body

    @Test func inheritedThemeCanOverrideSemanticTokenTypeDefaultLarge() throws {
        #expect(inheritedTheme.fonts.bodyDefaultLarge != abstractTheme.fonts.bodyDefaultLarge)
        #expect(inheritedTheme.fonts.bodyDefaultLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeDefaultMedium() throws {
        #expect(inheritedTheme.fonts.bodyDefaultMedium != abstractTheme.fonts.bodyDefaultMedium)
        #expect(inheritedTheme.fonts.bodyDefaultMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeDefaultSmall() throws {
        #expect(inheritedTheme.fonts.bodyDefaultSmall != abstractTheme.fonts.bodyDefaultSmall)
        #expect(inheritedTheme.fonts.bodyDefaultSmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeModerateLarge() throws {
        #expect(inheritedTheme.fonts.bodyModerateLarge != abstractTheme.fonts.bodyModerateLarge)
        #expect(inheritedTheme.fonts.bodyModerateLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeModerateMedium() throws {
        #expect(inheritedTheme.fonts.bodyModerateMedium != abstractTheme.fonts.bodyModerateMedium)
        #expect(inheritedTheme.fonts.bodyModerateMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeModerateSmall() throws {
        #expect(inheritedTheme.fonts.bodyModerateSmall != abstractTheme.fonts.bodyModerateSmall)
        #expect(inheritedTheme.fonts.bodyModerateSmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeStrongLarge() throws {
        #expect(inheritedTheme.fonts.bodyStrongLarge != abstractTheme.fonts.bodyStrongLarge)
        #expect(inheritedTheme.fonts.bodyStrongLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeStrongMedium() throws {
        #expect(inheritedTheme.fonts.bodyStrongMedium != abstractTheme.fonts.bodyStrongMedium)
        #expect(inheritedTheme.fonts.bodyStrongMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeStrongSmall() throws {
        #expect(inheritedTheme.fonts.bodyStrongSmall != abstractTheme.fonts.bodyStrongSmall)
        #expect(inheritedTheme.fonts.bodyStrongSmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeSemanticTokens)
    }

    // MARK: - Semantic tokens - Typography - Composites - Label

    @Test func inheritedThemeCanOverrideSemanticTokenTypeLabelDefaultXLarge() throws {
        #expect(inheritedTheme.fonts.labelDefaultXLarge != abstractTheme.fonts.labelDefaultXLarge)
        #expect(inheritedTheme.fonts.labelDefaultXLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeLabelDefaultLarge() throws {
        #expect(inheritedTheme.fonts.labelDefaultLarge != abstractTheme.fonts.labelDefaultLarge)
        #expect(inheritedTheme.fonts.labelDefaultLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeLabelDefaultMedium() throws {
        #expect(inheritedTheme.fonts.labelDefaultMedium != abstractTheme.fonts.labelDefaultMedium)
        #expect(inheritedTheme.fonts.labelDefaultMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeLabelDefaultSmall() throws {
        #expect(inheritedTheme.fonts.labelDefaultSmall != abstractTheme.fonts.labelDefaultSmall)
        #expect(inheritedTheme.fonts.labelDefaultSmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeLabeModerateXLarge() throws {
        #expect(inheritedTheme.fonts.labelModerateXLarge != abstractTheme.fonts.labelModerateXLarge)
        #expect(inheritedTheme.fonts.labelModerateXLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeLabelModerateLarge() throws {
        #expect(inheritedTheme.fonts.labelModerateLarge != abstractTheme.fonts.labelModerateLarge)
        #expect(inheritedTheme.fonts.labelModerateLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeLabelModerateMedium() throws {
        #expect(inheritedTheme.fonts.labelModerateMedium != abstractTheme.fonts.labelModerateMedium)
        #expect(inheritedTheme.fonts.labelModerateMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeLabelModerateSmall() throws {
        #expect(inheritedTheme.fonts.labelModerateSmall != abstractTheme.fonts.labelModerateSmall)
        #expect(inheritedTheme.fonts.labelModerateSmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeLabelStrongXLarge() throws {
        #expect(inheritedTheme.fonts.labelStrongXLarge != abstractTheme.fonts.labelStrongXLarge)
        #expect(inheritedTheme.fonts.labelStrongXLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeLabelStrongLarge() throws {
        #expect(inheritedTheme.fonts.labelStrongLarge != abstractTheme.fonts.labelStrongLarge)
        #expect(inheritedTheme.fonts.labelStrongLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeLabelStrongMedium() throws {
        #expect(inheritedTheme.fonts.labelStrongMedium != abstractTheme.fonts.labelStrongMedium)
        #expect(inheritedTheme.fonts.labelStrongMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeLabelStrongSmall() throws {
        #expect(inheritedTheme.fonts.labelStrongSmall != abstractTheme.fonts.labelStrongSmall)
        #expect(inheritedTheme.fonts.labelStrongSmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeSemanticTokens)
    }

    // MARK: - Semantic tokens - Typography - Composites - Code

    @Test func inheritedThemeCanOverrideSemanticTokenTypeCodeMedium() throws {
        #expect(inheritedTheme.fonts.codeMedium != abstractTheme.fonts.codeMedium)
        #expect(inheritedTheme.fonts.codeMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeSemanticTokens)
    }
}

// swiftlint:enable type_name
