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

/// Ensures an inherited theme is able to override any component tokens of radio buttons inherited from its superclass (here `OrangeTheme`).
struct ThemeOverrideOfRadioButtonComponentTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Sizes

    @Test func inheritedThemeCanOverrideRadioButtonSizeMaxHeight() throws {
        #expect(inheritedTheme.radioButton.radioButtonSizeMaxHeight != abstractTheme.radioButton.radioButtonSizeMaxHeight)
        #expect(inheritedTheme.radioButton.radioButtonSizeMaxHeight == MockThemeRadioButtonComponentTokenProvider.mockThemeRadioButtonSize)
    }

    @Test func inheritedThemeCanOverrideRadioButtonSizeMinHeight() throws {
        #expect(inheritedTheme.radioButton.radioButtonSizeMinHeight != abstractTheme.radioButton.radioButtonSizeMinHeight)
        #expect(inheritedTheme.radioButton.radioButtonSizeMinHeight == MockThemeRadioButtonComponentTokenProvider.mockThemeRadioButtonSize)
    }

    @Test func inheritedThemeCanOverrideRadioButtonSizeIndicator() throws {
        #expect(inheritedTheme.radioButton.radioButtonSizeIndicator != abstractTheme.radioButton.radioButtonSizeIndicator)
        #expect(inheritedTheme.radioButton.radioButtonSizeIndicator == MockThemeRadioButtonComponentTokenProvider.mockThemeRadioButtonSize)
    }

    @Test func inheritedThemeCanOverrideRadioButtonSizeMinWidth() throws {
        #expect(inheritedTheme.radioButton.radioButtonSizeMinWidth != abstractTheme.radioButton.radioButtonSizeMinWidth)
        #expect(inheritedTheme.radioButton.radioButtonSizeMinWidth == MockThemeRadioButtonComponentTokenProvider.mockThemeRadioButtonSize)
    }

    // MARK: - Borders

    @Test func inheritedThemeCanOverrideRadioButtonBorderRadius() throws {
        #expect(inheritedTheme.radioButton.radioButtonBorderRadius != abstractTheme.radioButton.radioButtonBorderRadius)
        #expect(inheritedTheme.radioButton.radioButtonBorderRadius == MockThemeRadioButtonComponentTokenProvider.mockThemeRadioButtonBorderRadius)
    }

    @Test func inheritedThemeCanOverrideRadioButtonBorderWidthSelected() throws {
        #expect(inheritedTheme.radioButton.radioButtonBorderWidthSelected != abstractTheme.radioButton.radioButtonBorderWidthSelected)
        #expect(inheritedTheme.radioButton.radioButtonBorderWidthSelected == MockThemeRadioButtonComponentTokenProvider.mockThemeRadioButtonBorderWidth)
    }

    @Test func inheritedThemeCanOverrideRadioButtonBorderWidthSelectedFocus() throws {
        #expect(inheritedTheme.radioButton.radioButtonBorderWidthSelectedFocus != abstractTheme.radioButton.radioButtonBorderWidthSelectedFocus)
        #expect(inheritedTheme.radioButton.radioButtonBorderWidthSelectedFocus == MockThemeRadioButtonComponentTokenProvider.mockThemeRadioButtonBorderWidth)
    }

    @Test func inheritedThemeCanOverrideRadioButtonBorderWidthSelectedHover() throws {
        #expect(inheritedTheme.radioButton.radioButtonBorderWidthSelectedHover != abstractTheme.radioButton.radioButtonBorderWidthSelectedHover)
        #expect(inheritedTheme.radioButton.radioButtonBorderWidthSelectedHover == MockThemeRadioButtonComponentTokenProvider.mockThemeRadioButtonBorderWidth)
    }

    @Test func inheritedThemeCanOverrideRadioButtonBorderWidthSelectedPressed() throws {
        #expect(inheritedTheme.radioButton.radioButtonBorderWidthSelectedPressed != abstractTheme.radioButton.radioButtonBorderWidthSelectedPressed)
        #expect(inheritedTheme.radioButton.radioButtonBorderWidthSelectedPressed == MockThemeRadioButtonComponentTokenProvider.mockThemeRadioButtonBorderWidth)
    }

    @Test func inheritedThemeCanOverrideRadioButtonBorderWidthUnselected() throws {
        #expect(inheritedTheme.radioButton.radioButtonBorderWidthUnselected != abstractTheme.radioButton.radioButtonBorderWidthUnselected)
        #expect(inheritedTheme.radioButton.radioButtonBorderWidthUnselected == MockThemeRadioButtonComponentTokenProvider.mockThemeRadioButtonBorderWidth)
    }

    @Test func inheritedThemeCanOverrideRadioButtonBorderWidthUnselectedFocus() throws {
        #expect(inheritedTheme.radioButton.radioButtonBorderWidthUnselectedFocus != abstractTheme.radioButton.radioButtonBorderWidthUnselectedFocus)
        #expect(inheritedTheme.radioButton.radioButtonBorderWidthUnselectedFocus == MockThemeRadioButtonComponentTokenProvider.mockThemeRadioButtonBorderWidth)
    }

    @Test func inheritedThemeCanOverrideRadioButtonBorderWidthUnselectedHover() throws {
        #expect(inheritedTheme.radioButton.radioButtonBorderWidthUnselectedHover != abstractTheme.radioButton.radioButtonBorderWidthUnselectedHover)
        #expect(inheritedTheme.radioButton.radioButtonBorderWidthUnselectedHover == MockThemeRadioButtonComponentTokenProvider.mockThemeRadioButtonBorderWidth)
    }

    @Test func inheritedThemeCanOverrideRadioButtonBorderWidthUnselectedPressed() throws {
        #expect(inheritedTheme.radioButton.radioButtonBorderWidthUnselectedPressed != abstractTheme.radioButton.radioButtonBorderWidthUnselectedPressed)
        #expect(inheritedTheme.radioButton.radioButtonBorderWidthUnselectedPressed == MockThemeRadioButtonComponentTokenProvider.mockThemeRadioButtonBorderWidth)
    }
}

// swiftlint:enable type_name
