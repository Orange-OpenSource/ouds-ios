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

struct ThemeOverrideOfBarComponentTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Colors

    @Test func inheritedThemeCanOverrideBarComponentTokenColorBgOpaque() throws {
        #expect(inheritedTheme.bar.colorBgOpaque != abstractTheme.bar.colorBgOpaque)
        #expect(inheritedTheme.bar.colorBgOpaque == MockThemeBarComponentTokenProvider.mockThemeBarColor)
    }

    @Test func inheritedThemeCanOverrideBarComponentTokenColorBgTranslucent() throws {
        #expect(inheritedTheme.bar.colorBgTranslucent != abstractTheme.bar.colorBgTranslucent)
        #expect(inheritedTheme.bar.colorBgTranslucent == MockThemeBarComponentTokenProvider.mockThemeBarColor)
    }

    @Test func inheritedThemeCanOverrideBarComponentTokenColorContentSelectedEnabled() throws {
        #expect(inheritedTheme.bar.colorContentSelectedEnabled != abstractTheme.bar.colorContentSelectedEnabled)
        #expect(inheritedTheme.bar.colorContentSelectedEnabled == MockThemeBarComponentTokenProvider.mockThemeBarColor)
    }

    @Test func inheritedThemeCanOverrideBarComponentTokenColorContentSelectedHover() throws {
        #expect(inheritedTheme.bar.colorContentSelectedHover != abstractTheme.bar.colorContentSelectedHover)
        #expect(inheritedTheme.bar.colorContentSelectedHover == MockThemeBarComponentTokenProvider.mockThemeBarColor)
    }

    @Test func inheritedThemeCanOverrideBarComponentTokenColorContentSelectedPressed() throws {
        #expect(inheritedTheme.bar.colorContentSelectedPressed != abstractTheme.bar.colorContentSelectedPressed)
        #expect(inheritedTheme.bar.colorContentSelectedPressed == MockThemeBarComponentTokenProvider.mockThemeBarColor)
    }

    @Test func inheritedThemeCanOverrideBarComponentTokenColorContentSelectedFocus() throws {
        #expect(inheritedTheme.bar.colorContentSelectedFocus != abstractTheme.bar.colorContentSelectedFocus)
        #expect(inheritedTheme.bar.colorContentSelectedFocus == MockThemeBarComponentTokenProvider.mockThemeBarColor)
    }

    @Test func inheritedThemeCanOverrideBarComponentTokenColorContentUnselectedEnabled() throws {
        #expect(inheritedTheme.bar.colorContentUnselectedEnabled != abstractTheme.bar.colorContentUnselectedEnabled)
        #expect(inheritedTheme.bar.colorContentUnselectedEnabled == MockThemeBarComponentTokenProvider.mockThemeBarColor)
    }

    @Test func inheritedThemeCanOverrideBarComponentTokenColorContentUnselectedHover() throws {
        #expect(inheritedTheme.bar.colorContentUnselectedHover != abstractTheme.bar.colorContentUnselectedHover)
        #expect(inheritedTheme.bar.colorContentUnselectedHover == MockThemeBarComponentTokenProvider.mockThemeBarColor)
    }

    @Test func inheritedThemeCanOverrideBarComponentTokenColorContentUnselectedPressed() throws {
        #expect(inheritedTheme.bar.colorContentUnselectedPressed != abstractTheme.bar.colorContentUnselectedPressed)
        #expect(inheritedTheme.bar.colorContentUnselectedPressed == MockThemeBarComponentTokenProvider.mockThemeBarColor)
    }

    @Test func inheritedThemeCanOverrideBarComponentTokenColorContentUnselectedFocus() throws {
        #expect(inheritedTheme.bar.colorContentUnselectedFocus != abstractTheme.bar.colorContentUnselectedFocus)
        #expect(inheritedTheme.bar.colorContentUnselectedFocus == MockThemeBarComponentTokenProvider.mockThemeBarColor)
    }

    @Test func inheritedThemeCanOverrideBarComponentTokenColorContentOnAccent() throws {
        #expect(inheritedTheme.bar.colorContentOnAccent != abstractTheme.bar.colorContentOnAccent)
        #expect(inheritedTheme.bar.colorContentOnAccent == MockThemeBarComponentTokenProvider.mockThemeBarColor)
    }

    @Test func inheritedThemeCanOverrideBarComponentTokenColorBorderBadge() throws {
        #expect(inheritedTheme.bar.colorBorderBadge != abstractTheme.bar.colorBorderBadge)
        #expect(inheritedTheme.bar.colorBorderBadge == MockThemeBarComponentTokenProvider.mockThemeBarColor)
    }

    @Test func inheritedThemeCanOverrideBarComponentTokenColorCurrentIndicatorCustomSelectedEnabled() throws {
        #expect(inheritedTheme.bar.colorCurrentIndicatorCustomSelectedEnabled != abstractTheme.bar.colorCurrentIndicatorCustomSelectedEnabled)
        #expect(inheritedTheme.bar.colorCurrentIndicatorCustomSelectedEnabled == MockThemeBarComponentTokenProvider.mockThemeBarColor)
    }

    @Test func inheritedThemeCanOverrideBarComponentTokenColorCurrentIndicatorCustomSelectedHover() throws {
        #expect(inheritedTheme.bar.colorCurrentIndicatorCustomSelectedHover != abstractTheme.bar.colorCurrentIndicatorCustomSelectedHover)
        #expect(inheritedTheme.bar.colorCurrentIndicatorCustomSelectedHover == MockThemeBarComponentTokenProvider.mockThemeBarColor)
    }

    @Test func inheritedThemeCanOverrideBarComponentTokenColorCurrentIndicatorCustomSelectedPressed() throws {
        #expect(inheritedTheme.bar.colorCurrentIndicatorCustomSelectedPressed != abstractTheme.bar.colorCurrentIndicatorCustomSelectedPressed)
        #expect(inheritedTheme.bar.colorCurrentIndicatorCustomSelectedPressed == MockThemeBarComponentTokenProvider.mockThemeBarColor)
    }

    @Test func inheritedThemeCanOverrideBarComponentTokenColorCurrentIndicatorCustomSelectedFocus() throws {
        #expect(inheritedTheme.bar.colorCurrentIndicatorCustomSelectedFocus != abstractTheme.bar.colorCurrentIndicatorCustomSelectedFocus)
        #expect(inheritedTheme.bar.colorCurrentIndicatorCustomSelectedFocus == MockThemeBarComponentTokenProvider.mockThemeBarColor)
    }

    // MARK: - Opacities

    @Test func inheritedThemeCanOverrideBarComponentTokenOpacityCurrentIndicatorCustom() throws {
        #expect(inheritedTheme.bar.opacityCurrentIndicatorCustom != abstractTheme.bar.opacityCurrentIndicatorCustom)
        #expect(inheritedTheme.bar.opacityCurrentIndicatorCustom == MockThemeBarComponentTokenProvider.mockThemeBarOpacitiy)
    }

    // MARK: - Effects

    @Test func inheritedThemeCanOverrideBarComponentTokenEffectBgBlur() throws {
        #expect(inheritedTheme.bar.effectBgBlur != abstractTheme.bar.effectBgBlur)
        #expect(inheritedTheme.bar.effectBgBlur == MockThemeBarComponentTokenProvider.mockThemeBarEffect)
    }

    // MARK: - Borders

    @Test func inheritedThemeCanOverrideBarComponentTokenBorderRadiusCurrentIndicatorCustomTop() throws {
        #expect(inheritedTheme.bar.borderRadiusCurrentIndicatorCustomTop != abstractTheme.bar.borderRadiusCurrentIndicatorCustomTop)
        #expect(inheritedTheme.bar.borderRadiusCurrentIndicatorCustomTop == MockThemeBarComponentTokenProvider.mockThemeBarBorderRadius)
    }

    @Test func inheritedThemeCanOverrideBarComponentTokenBorderRadiusCurrentIndicatorCustomBottom() throws {
        #expect(inheritedTheme.bar.borderRadiusCurrentIndicatorCustomBottom != abstractTheme.bar.borderRadiusCurrentIndicatorCustomBottom)
        #expect(inheritedTheme.bar.borderRadiusCurrentIndicatorCustomBottom == MockThemeBarComponentTokenProvider.mockThemeBarBorderRadius)
    }

    // MARK: - Sizes

    @Test func inheritedThemeCanOverrideBarComponentTokenSizeWidthCurrentIndicatorCustomTop() throws {
        #expect(inheritedTheme.bar.sizeWidthCurrentIndicatorCustomTop != abstractTheme.bar.sizeWidthCurrentIndicatorCustomTop)
        #expect(inheritedTheme.bar.sizeWidthCurrentIndicatorCustomTop == MockThemeBarComponentTokenProvider.mockThemeBarSize)
    }

    @Test func inheritedThemeCanOverrideBarComponentTokenSizeWidthCurrentIndicatorCustomBottom() throws {
        #expect(inheritedTheme.bar.sizeWidthCurrentIndicatorCustomBottom != abstractTheme.bar.sizeWidthCurrentIndicatorCustomBottom)
        #expect(inheritedTheme.bar.sizeWidthCurrentIndicatorCustomBottom == MockThemeBarComponentTokenProvider.mockThemeBarSize)
    }

    @Test func inheritedThemeCanOverrideBarComponentTokenSizeHeightCurrentIndicatorCustom() throws {
        #expect(inheritedTheme.bar.sizeHeightCurrentIndicatorCustom != abstractTheme.bar.sizeHeightCurrentIndicatorCustom)
        #expect(inheritedTheme.bar.sizeHeightCurrentIndicatorCustom == MockThemeBarComponentTokenProvider.mockThemeBarSize)
    }
}
