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
        #expect(inheritedTheme.borders.borderWidthNone != abstractTheme.borders.borderWidthNone)
        #expect(inheritedTheme.borders.borderWidthNone == MockThemeBorderSemanticTokensProvider.mockThemeBorderWidthRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenBorderWidthDefault() throws {
        #expect(inheritedTheme.borders.borderWidthDefault != abstractTheme.borders.borderWidthDefault)
        #expect(inheritedTheme.borders.borderWidthDefault == MockThemeBorderSemanticTokensProvider.mockThemeBorderWidthRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenBorderWidthThin() throws {
        #expect(inheritedTheme.borders.borderWidthThin != abstractTheme.borders.borderWidthThin)
        #expect(inheritedTheme.borders.borderWidthThin == MockThemeBorderSemanticTokensProvider.mockThemeBorderWidthRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenBorderWidthMedium() throws {
        #expect(inheritedTheme.borders.borderWidthMedium != abstractTheme.borders.borderWidthMedium)
        #expect(inheritedTheme.borders.borderWidthMedium == MockThemeBorderSemanticTokensProvider.mockThemeBorderWidthRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenBorderWidthThick() throws {
        #expect(inheritedTheme.borders.borderWidthThick != abstractTheme.borders.borderWidthThick)
        #expect(inheritedTheme.borders.borderWidthThick == MockThemeBorderSemanticTokensProvider.mockThemeBorderWidthRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenBorderWidthThicker() throws {
        #expect(inheritedTheme.borders.borderWidthThicker != abstractTheme.borders.borderWidthThicker)
        #expect(inheritedTheme.borders.borderWidthThicker == MockThemeBorderSemanticTokensProvider.mockThemeBorderWidthRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenBorderWidthFocus() throws {
        #expect(inheritedTheme.borders.borderWidthFocus != abstractTheme.borders.borderWidthFocus)
        #expect(inheritedTheme.borders.borderWidthFocus == MockThemeBorderSemanticTokensProvider.mockThemeBorderWidthRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenBorderWidthFocusInset() throws {
        #expect(inheritedTheme.borders.borderWidthFocusInset != abstractTheme.borders.borderWidthFocusInset)
        #expect(inheritedTheme.borders.borderWidthFocusInset == MockThemeBorderSemanticTokensProvider.mockThemeBorderWidthRawToken)
    }

    // MARK: - Semantic token - Border - Radius

    @Test func inheritedThemeCanOverrideSemanticTokenBorderRadiusNone() throws {
        #expect(inheritedTheme.borders.borderRadiusNone != abstractTheme.borders.borderRadiusNone)
        #expect(inheritedTheme.borders.borderRadiusNone == MockThemeBorderSemanticTokensProvider.mockThemeBorderRadiusRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenBorderRadiusDefault() throws {
        #expect(inheritedTheme.borders.borderRadiusDefault != abstractTheme.borders.borderRadiusDefault)
        #expect(inheritedTheme.borders.borderRadiusDefault == MockThemeBorderSemanticTokensProvider.mockThemeBorderRadiusRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenBorderRadiusShort() throws {
        #expect(inheritedTheme.borders.borderRadiusShort != abstractTheme.borders.borderRadiusShort)
        #expect(inheritedTheme.borders.borderRadiusShort == MockThemeBorderSemanticTokensProvider.mockThemeBorderRadiusRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenBorderRadiusMedium() throws {
        #expect(inheritedTheme.borders.borderRadiusMedium != abstractTheme.borders.borderRadiusMedium)
        #expect(inheritedTheme.borders.borderRadiusMedium == MockThemeBorderSemanticTokensProvider.mockThemeBorderRadiusRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenBorderRadiusTall() throws {
        #expect(inheritedTheme.borders.borderRadiusTall != abstractTheme.borders.borderRadiusTall)
        #expect(inheritedTheme.borders.borderRadiusTall == MockThemeBorderSemanticTokensProvider.mockThemeBorderRadiusRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenBorderRadiusPill() throws {
        #expect(inheritedTheme.borders.borderRadiusPill != abstractTheme.borders.borderRadiusPill)
        #expect(inheritedTheme.borders.borderRadiusPill == MockThemeBorderSemanticTokensProvider.mockThemeBorderRadiusRawToken)
    }

    // MARK: - Semantic token - Border - Style

    @Test func inheritedThemeCanOverrideSemanticTokenBorderStyleDefault() throws {
        #expect(inheritedTheme.borders.borderStyleDefault != abstractTheme.borders.borderStyleDefault)
        #expect(inheritedTheme.borders.borderStyleDefault == MockThemeBorderSemanticTokensProvider.mockThemeBorderStyleRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenBorderStyleDrag() throws {
        #expect(inheritedTheme.borders.borderStyleDrag != abstractTheme.borders.borderStyleDrag)
        #expect(inheritedTheme.borders.borderStyleDrag == MockThemeBorderSemanticTokensProvider.mockThemeBorderStyleRawToken)
    }
}
