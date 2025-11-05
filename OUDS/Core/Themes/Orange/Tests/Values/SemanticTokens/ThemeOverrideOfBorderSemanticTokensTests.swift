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

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In fact the `OUDSTheme` object is a class, which can be seen as an _asbtract class_,
/// exposing through its extensions and protocols _border semantic tokens_ using a provider as `AllBorderSemanticTokensProvider`.
/// These semantic tokens should be overridable by subclasses like the ``OrangeThemeBorderSemanticTokensProvider``.
///
/// **These tests checks if any _border semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
struct ThemeOverrideOfBorderSemanticTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Semantic token - Border - Width

    @Test func inheritedThemeCanOverrideSemanticTokenBorderWidthNone() throws {
        #expect(inheritedTheme.borders.widthNone != abstractTheme.borders.widthNone)
        #expect(inheritedTheme.borders.widthNone == MockThemeBorderSemanticTokensProvider.mockThemeBorderWidthRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenBorderWidthDefault() throws {
        #expect(inheritedTheme.borders.widthDefault != abstractTheme.borders.widthDefault)
        #expect(inheritedTheme.borders.widthDefault == MockThemeBorderSemanticTokensProvider.mockThemeBorderWidthRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenBorderWidthThin() throws {
        #expect(inheritedTheme.borders.widthThin != abstractTheme.borders.widthThin)
        #expect(inheritedTheme.borders.widthThin == MockThemeBorderSemanticTokensProvider.mockThemeBorderWidthRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenBorderWidthMedium() throws {
        #expect(inheritedTheme.borders.widthMedium != abstractTheme.borders.widthMedium)
        #expect(inheritedTheme.borders.widthMedium == MockThemeBorderSemanticTokensProvider.mockThemeBorderWidthRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenBorderWidthThick() throws {
        #expect(inheritedTheme.borders.widthThick != abstractTheme.borders.widthThick)
        #expect(inheritedTheme.borders.widthThick == MockThemeBorderSemanticTokensProvider.mockThemeBorderWidthRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenBorderWidthThicker() throws {
        #expect(inheritedTheme.borders.widthThicker != abstractTheme.borders.widthThicker)
        #expect(inheritedTheme.borders.widthThicker == MockThemeBorderSemanticTokensProvider.mockThemeBorderWidthRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenBorderWidthFocus() throws {
        #expect(inheritedTheme.borders.widthFocus != abstractTheme.borders.widthFocus)
        #expect(inheritedTheme.borders.widthFocus == MockThemeBorderSemanticTokensProvider.mockThemeBorderWidthRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenBorderWidthFocusInset() throws {
        #expect(inheritedTheme.borders.widthFocusInset != abstractTheme.borders.widthFocusInset)
        #expect(inheritedTheme.borders.widthFocusInset == MockThemeBorderSemanticTokensProvider.mockThemeBorderWidthRawToken)
    }

    // MARK: - Semantic token - Border - Radius

    @Test func inheritedThemeCanOverrideSemanticTokenBorderRadiusNone() throws {
        #expect(inheritedTheme.borders.radiusNone != abstractTheme.borders.radiusNone)
        #expect(inheritedTheme.borders.radiusNone == MockThemeBorderSemanticTokensProvider.mockThemeBorderRadiusRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenBorderRadiusDefault() throws {
        #expect(inheritedTheme.borders.radiusDefault != abstractTheme.borders.radiusDefault)
        #expect(inheritedTheme.borders.radiusDefault == MockThemeBorderSemanticTokensProvider.mockThemeBorderRadiusRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenBorderRadiusSmall() throws {
        #expect(inheritedTheme.borders.radiusSmall != abstractTheme.borders.radiusSmall)
        #expect(inheritedTheme.borders.radiusSmall == MockThemeBorderSemanticTokensProvider.mockThemeBorderRadiusRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenBorderRadiusMedium() throws {
        #expect(inheritedTheme.borders.radiusMedium != abstractTheme.borders.radiusMedium)
        #expect(inheritedTheme.borders.radiusMedium == MockThemeBorderSemanticTokensProvider.mockThemeBorderRadiusRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenBorderRadiusLarge() throws {
        #expect(inheritedTheme.borders.radiusLarge != abstractTheme.borders.radiusLarge)
        #expect(inheritedTheme.borders.radiusLarge == MockThemeBorderSemanticTokensProvider.mockThemeBorderRadiusRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenBorderRadiusPill() throws {
        #expect(inheritedTheme.borders.radiusPill != abstractTheme.borders.radiusPill)
        #expect(inheritedTheme.borders.radiusPill == MockThemeBorderSemanticTokensProvider.mockThemeBorderRadiusRawToken)
    }

    // MARK: - Semantic token - Border - Style

    @Test func inheritedThemeCanOverrideSemanticTokenBorderStyleDefault() throws {
        #expect(inheritedTheme.borders.styleDefault != abstractTheme.borders.styleDefault)
        #expect(inheritedTheme.borders.styleDefault == MockThemeBorderSemanticTokensProvider.mockThemeBorderStyleRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenBorderStyleDrag() throws {
        #expect(inheritedTheme.borders.styleDrag != abstractTheme.borders.styleDrag)
        #expect(inheritedTheme.borders.styleDrag == MockThemeBorderSemanticTokensProvider.mockThemeBorderStyleRawToken)
    }
}
