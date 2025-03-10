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

/// Ensures an inherited theme is able to override any component tokens of checkbox inherited from its superclass (here `OrangeTheme`).
struct ThemeOverrideOfCheckboxComponentTokensTests {

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

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenSizeIndicator() throws {
        #expect(inheritedTheme.checkbox.checkboxSizeIndicator != abstractTheme.checkbox.checkboxSizeIndicator)
        #expect(inheritedTheme.checkbox.checkboxSizeIndicator == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxSize)
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
}

// swiftlint:enable type_name
