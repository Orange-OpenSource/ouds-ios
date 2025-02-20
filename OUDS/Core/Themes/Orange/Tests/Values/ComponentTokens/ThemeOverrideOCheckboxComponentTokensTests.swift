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

struct ThemeOverrideOCheckboxComponentTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Sizes

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenSizeMinWidth() throws {
        #expect(inheritedTheme.checkbox.checkboxSizeMinWidth != abstractTheme.checkbox.checkboxSizeMinWidth)
        #expect(inheritedTheme.checkbox.checkboxSizeMinWidth == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxSize)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenSizeMaxHeight() throws {
        #expect(inheritedTheme.checkbox.checkboxSizeMaxHeight != abstractTheme.checkbox.checkboxSizeMaxHeight)
        #expect(inheritedTheme.checkbox.checkboxSizeMaxHeight == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxSize)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenSizeMinHeight() throws {
        #expect(inheritedTheme.checkbox.checkboxSizeMinHeight != abstractTheme.checkbox.checkboxSizeMinHeight)
        #expect(inheritedTheme.checkbox.checkboxSizeMinHeight == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxSize)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenSizeIndicatorInnerIcon() throws {
        #expect(inheritedTheme.checkbox.checkboxSizeIndicatorInnerIcon != abstractTheme.checkbox.checkboxSizeIndicatorInnerIcon)
        #expect(inheritedTheme.checkbox.checkboxSizeIndicatorInnerIcon == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxSize)
    }

    // MARK: - Borders

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenBorderRadius() throws {
        #expect(inheritedTheme.checkbox.checkboxBorderRadius != abstractTheme.checkbox.checkboxBorderRadius)
        #expect(inheritedTheme.checkbox.checkboxBorderRadius == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxBorderRadius)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenBorderWidthSelected() throws {
        #expect(inheritedTheme.checkbox.checkboxBorderWidthSelected != abstractTheme.checkbox.checkboxBorderWidthSelected)
        #expect(inheritedTheme.checkbox.checkboxBorderWidthSelected == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxBorderWidth)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenBorderWidthSelectedHover() throws {
        #expect(inheritedTheme.checkbox.checkboxBorderWidthSelectedHover != abstractTheme.checkbox.checkboxBorderWidthSelectedHover)
        #expect(inheritedTheme.checkbox.checkboxBorderWidthSelectedHover == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxBorderWidth)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenBorderWidthSelectedPressed() throws {
        #expect(inheritedTheme.checkbox.checkboxBorderWidthSelectedPressed != abstractTheme.checkbox.checkboxBorderWidthSelectedPressed)
        #expect(inheritedTheme.checkbox.checkboxBorderWidthSelectedPressed == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxBorderWidth)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenBorderWidthSelectedFocus() throws {
        #expect(inheritedTheme.checkbox.checkboxBorderWidthSelectedFocus != abstractTheme.checkbox.checkboxBorderWidthSelectedFocus)
        #expect(inheritedTheme.checkbox.checkboxBorderWidthSelectedFocus == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxBorderWidth)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenBorderWidthUnselected() throws {
        #expect(inheritedTheme.checkbox.checkboxBorderWidthUnselected != abstractTheme.checkbox.checkboxBorderWidthUnselected)
        #expect(inheritedTheme.checkbox.checkboxBorderWidthUnselected == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxBorderWidth)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenBorderWidthUnselectedHover() throws {
        #expect(inheritedTheme.checkbox.checkboxBorderWidthUnselectedHover != abstractTheme.checkbox.checkboxBorderWidthUnselectedHover)
        #expect(inheritedTheme.checkbox.checkboxBorderWidthUnselectedHover == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxBorderWidth)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenBorderWidthUnselectedPressed() throws {
        #expect(inheritedTheme.checkbox.checkboxBorderWidthUnselectedPressed != abstractTheme.checkbox.checkboxBorderWidthUnselectedPressed)
        #expect(inheritedTheme.checkbox.checkboxBorderWidthUnselectedPressed == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxBorderWidth)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenBorderWidthUnselectedFocus() throws {
        #expect(inheritedTheme.checkbox.checkboxBorderWidthUnselectedFocus != abstractTheme.checkbox.checkboxBorderWidthUnselectedFocus)
        #expect(inheritedTheme.checkbox.checkboxBorderWidthUnselectedFocus == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxBorderWidth)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenOpacityBgSelected() throws {
        #expect(inheritedTheme.checkbox.checkboxOpacityBgSelected != abstractTheme.checkbox.checkboxOpacityBgSelected)
        #expect(inheritedTheme.checkbox.checkboxOpacityBgSelected == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxOpacity)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenOpacityBgUnselected() throws {
        #expect(inheritedTheme.checkbox.checkboxOpacityBgUnselected != abstractTheme.checkbox.checkboxOpacityBgUnselected)
        #expect(inheritedTheme.checkbox.checkboxOpacityBgUnselected == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxOpacity)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenOpacityBgSelectedHover() throws {
        #expect(inheritedTheme.checkbox.checkboxOpacityBgSelectedHover != abstractTheme.checkbox.checkboxOpacityBgSelectedHover)
        #expect(inheritedTheme.checkbox.checkboxOpacityBgSelectedHover == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxOpacity)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenOpacityBgUnselectedHover() throws {
        #expect(inheritedTheme.checkbox.checkboxOpacityBgUnselectedHover != abstractTheme.checkbox.checkboxOpacityBgUnselectedHover)
        #expect(inheritedTheme.checkbox.checkboxOpacityBgUnselectedHover == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxOpacity)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenOpacityBgSelectedPressed() throws {
        #expect(inheritedTheme.checkbox.checkboxOpacityBgSelectedPressed != abstractTheme.checkbox.checkboxOpacityBgSelectedPressed)
        #expect(inheritedTheme.checkbox.checkboxOpacityBgSelectedPressed == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxOpacity)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenOpacityBgUnselectedPressed() throws {
        #expect(inheritedTheme.checkbox.checkboxOpacityBgUnselectedPressed != abstractTheme.checkbox.checkboxOpacityBgUnselectedPressed)
        #expect(inheritedTheme.checkbox.checkboxOpacityBgUnselectedPressed == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxOpacity)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenOpacityBgSelectedFocus() throws {
        #expect(inheritedTheme.checkbox.checkboxOpacityBgSelectedFocus != abstractTheme.checkbox.checkboxOpacityBgSelectedFocus)
        #expect(inheritedTheme.checkbox.checkboxOpacityBgSelectedFocus == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxOpacity)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenOpacityBgUnselectedFocus() throws {
        #expect(inheritedTheme.checkbox.checkboxOpacityBgUnselectedFocus != abstractTheme.checkbox.checkboxOpacityBgUnselectedFocus)
        #expect(inheritedTheme.checkbox.checkboxOpacityBgUnselectedFocus == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxOpacity)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenSizeIndicator() throws {
        #expect(inheritedTheme.checkbox.checkboxSizeIndicator != abstractTheme.checkbox.checkboxSizeIndicator)
        #expect(inheritedTheme.checkbox.checkboxSizeIndicator == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxSize)
    }

    // MARK: - Colors

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenColorContentSelected() throws {
        #expect(inheritedTheme.checkbox.checkboxColorContentSelected != abstractTheme.checkbox.checkboxColorContentSelected)
        #expect(inheritedTheme.checkbox.checkboxColorContentSelected == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxColor)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenColorContentEnabled() throws {
        #expect(inheritedTheme.checkbox.checkboxColorContentEnabled != abstractTheme.checkbox.checkboxColorContentEnabled)
        #expect(inheritedTheme.checkbox.checkboxColorContentEnabled == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxColor)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenColorContentHover() throws {
        #expect(inheritedTheme.checkbox.checkboxColorContentHover != abstractTheme.checkbox.checkboxColorContentHover)
        #expect(inheritedTheme.checkbox.checkboxColorContentHover == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxColor)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenColorContentPressed() throws {
        #expect(inheritedTheme.checkbox.checkboxColorContentPressed != abstractTheme.checkbox.checkboxColorContentPressed)
        #expect(inheritedTheme.checkbox.checkboxColorContentPressed == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxColor)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenColorContentDisabled() throws {
        #expect(inheritedTheme.checkbox.checkboxColorContentDisabled != abstractTheme.checkbox.checkboxColorContentDisabled)
        #expect(inheritedTheme.checkbox.checkboxColorContentDisabled == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxColor)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenColorContentFocus() throws {
        #expect(inheritedTheme.checkbox.checkboxColorContentFocus != abstractTheme.checkbox.checkboxColorContentFocus)
        #expect(inheritedTheme.checkbox.checkboxColorContentFocus == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxColor)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenColorContentErrorEnabled() throws {
        #expect(inheritedTheme.checkbox.checkboxColorContentErrorEnabled != abstractTheme.checkbox.checkboxColorContentErrorEnabled)
        #expect(inheritedTheme.checkbox.checkboxColorContentErrorEnabled == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxColor)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenColorContentErrorHover() throws {
        #expect(inheritedTheme.checkbox.checkboxColorContentErrorHover != abstractTheme.checkbox.checkboxColorContentErrorHover)
        #expect(inheritedTheme.checkbox.checkboxColorContentErrorHover == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxColor)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenColorContentErrorPressed() throws {
        #expect(inheritedTheme.checkbox.checkboxColorContentErrorPressed != abstractTheme.checkbox.checkboxColorContentErrorPressed)
        #expect(inheritedTheme.checkbox.checkboxColorContentErrorPressed == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxColor)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenColorContentErrorFocus() throws {
        #expect(inheritedTheme.checkbox.checkboxColorContentErrorFocus != abstractTheme.checkbox.checkboxColorContentErrorFocus)
        #expect(inheritedTheme.checkbox.checkboxColorContentErrorFocus == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxColor)
    }
}

// swiftlint:enable type_name
