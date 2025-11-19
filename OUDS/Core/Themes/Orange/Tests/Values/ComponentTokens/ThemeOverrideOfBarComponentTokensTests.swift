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

    @Test func inheritedThemeCanOverrideBarComponentTokenColorActiveIndicatorCustomSelectedEnabled() throws {
        #expect(inheritedTheme.bar.colorActiveIndicatorCustomSelectedEnabled != abstractTheme.bar.colorActiveIndicatorCustomSelectedEnabled)
        #expect(inheritedTheme.bar.colorActiveIndicatorCustomSelectedEnabled == MockThemeBarComponentTokenProvider.mockThemeBarColor)
    }

    @Test func inheritedThemeCanOverrideBarComponentTokenColorActiveIndicatorCustomSelectedHover() throws {
        #expect(inheritedTheme.bar.colorActiveIndicatorCustomSelectedHover != abstractTheme.bar.colorActiveIndicatorCustomSelectedHover)
        #expect(inheritedTheme.bar.colorActiveIndicatorCustomSelectedHover == MockThemeBarComponentTokenProvider.mockThemeBarColor)
    }

    @Test func inheritedThemeCanOverrideBarComponentTokenColorActiveIndicatorCustomSelectedPressed() throws {
        #expect(inheritedTheme.bar.colorActiveIndicatorCustomSelectedPressed != abstractTheme.bar.colorActiveIndicatorCustomSelectedPressed)
        #expect(inheritedTheme.bar.colorActiveIndicatorCustomSelectedPressed == MockThemeBarComponentTokenProvider.mockThemeBarColor)
    }

    @Test func inheritedThemeCanOverrideBarComponentTokenColorActiveIndicatorCustomSelectedFocus() throws {
        #expect(inheritedTheme.bar.colorActiveIndicatorCustomSelectedFocus != abstractTheme.bar.colorActiveIndicatorCustomSelectedFocus)
        #expect(inheritedTheme.bar.colorActiveIndicatorCustomSelectedFocus == MockThemeBarComponentTokenProvider.mockThemeBarColor)
    }

    // MARK: - Opacities

    @Test func inheritedThemeCanOverrideBarComponentTokenOpacityActiveIndicatorCustom() throws {
        #expect(inheritedTheme.bar.opacityActiveIndicatorCustom != abstractTheme.bar.opacityActiveIndicatorCustom)
        #expect(inheritedTheme.bar.opacityActiveIndicatorCustom == MockThemeBarComponentTokenProvider.mockThemeBarOpacitiy)
    }

    // MARK: - Effects

    @Test func inheritedThemeCanOverrideBarComponentTokenEffectBgBlur() throws {
        #expect(inheritedTheme.bar.effectBgBlur != abstractTheme.bar.effectBgBlur)
        #expect(inheritedTheme.bar.effectBgBlur == MockThemeBarComponentTokenProvider.mockThemeBarEffect)
    }

    // MARK: - Borders

    @Test func inheritedThemeCanOverrideBarComponentTokenBorderRadiusActiveIndicatorCustomTop() throws {
        #expect(inheritedTheme.bar.borderRadiusActiveIndicatorCustomTop != abstractTheme.bar.borderRadiusActiveIndicatorCustomTop)
        #expect(inheritedTheme.bar.borderRadiusActiveIndicatorCustomTop == MockThemeBarComponentTokenProvider.mockThemeBarBorderRadius)
    }

    @Test func inheritedThemeCanOverrideBarComponentTokenBorderRadiusActiveIndicatorCustomBottom() throws {
        #expect(inheritedTheme.bar.borderRadiusActiveIndicatorCustomBottom != abstractTheme.bar.borderRadiusActiveIndicatorCustomBottom)
        #expect(inheritedTheme.bar.borderRadiusActiveIndicatorCustomBottom == MockThemeBarComponentTokenProvider.mockThemeBarBorderRadius)
    }

    // MARK: - Sizes

    @Test func inheritedThemeCanOverrideBarComponentTokenSizeWidthActiveIndicatorCustomTop() throws {
        #expect(inheritedTheme.bar.sizeWidthActiveIndicatorCustomTop != abstractTheme.bar.sizeWidthActiveIndicatorCustomTop)
        #expect(inheritedTheme.bar.sizeWidthActiveIndicatorCustomTop == MockThemeBarComponentTokenProvider.mockThemeBarSize)
    }

    @Test func inheritedThemeCanOverrideBarComponentTokenSizeWidthActiveIndicatorCustomBottom() throws {
        #expect(inheritedTheme.bar.sizeWidthActiveIndicatorCustomBottom != abstractTheme.bar.sizeWidthActiveIndicatorCustomBottom)
        #expect(inheritedTheme.bar.sizeWidthActiveIndicatorCustomBottom == MockThemeBarComponentTokenProvider.mockThemeBarSize)
    }

    @Test func inheritedThemeCanOverrideBarComponentTokenSizeHeightActiveIndicatorCustom() throws {
        #expect(inheritedTheme.bar.sizeHeightActiveIndicatorCustom != abstractTheme.bar.sizeHeightActiveIndicatorCustom)
        #expect(inheritedTheme.bar.sizeHeightActiveIndicatorCustom == MockThemeBarComponentTokenProvider.mockThemeBarSize)
    }
}
