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
        #expect(inheritedTheme.radioButton.sizeMaxHeight != abstractTheme.radioButton.sizeMaxHeight)
        #expect(inheritedTheme.radioButton.sizeMaxHeight == MockThemeRadioButtonComponentTokenProvider.mockThemeRadioButtonSize)
    }

    @Test func inheritedThemeCanOverrideRadioButtonSizeMinHeight() throws {
        #expect(inheritedTheme.radioButton.sizeMinHeight != abstractTheme.radioButton.sizeMinHeight)
        #expect(inheritedTheme.radioButton.sizeMinHeight == MockThemeRadioButtonComponentTokenProvider.mockThemeRadioButtonSize)
    }

    @Test func inheritedThemeCanOverrideRadioButtonSizeIndicator() throws {
        #expect(inheritedTheme.radioButton.sizeIndicator != abstractTheme.radioButton.sizeIndicator)
        #expect(inheritedTheme.radioButton.sizeIndicator == MockThemeRadioButtonComponentTokenProvider.mockThemeRadioButtonSize)
    }

    @Test func inheritedThemeCanOverrideRadioButtonSizeMinWidth() throws {
        #expect(inheritedTheme.radioButton.sizeMinWidth != abstractTheme.radioButton.sizeMinWidth)
        #expect(inheritedTheme.radioButton.sizeMinWidth == MockThemeRadioButtonComponentTokenProvider.mockThemeRadioButtonSize)
    }

    // MARK: - Borders

    @Test func inheritedThemeCanOverrideRadioButtonBorderRadius() throws {
        #expect(inheritedTheme.radioButton.borderRadius != abstractTheme.radioButton.borderRadius)
        #expect(inheritedTheme.radioButton.borderRadius == MockThemeRadioButtonComponentTokenProvider.mockThemeRadioButtonBorderRadius)
    }

    @Test func inheritedThemeCanOverrideRadioButtonBorderWidthSelected() throws {
        #expect(inheritedTheme.radioButton.borderWidthSelected != abstractTheme.radioButton.borderWidthSelected)
        #expect(inheritedTheme.radioButton.borderWidthSelected == MockThemeRadioButtonComponentTokenProvider.mockThemeRadioButtonBorderWidth)
    }

    @Test func inheritedThemeCanOverrideRadioButtonBorderWidthSelectedFocus() throws {
        #expect(inheritedTheme.radioButton.borderWidthSelectedFocus != abstractTheme.radioButton.borderWidthSelectedFocus)
        #expect(inheritedTheme.radioButton.borderWidthSelectedFocus == MockThemeRadioButtonComponentTokenProvider.mockThemeRadioButtonBorderWidth)
    }

    @Test func inheritedThemeCanOverrideRadioButtonBorderWidthSelectedHover() throws {
        #expect(inheritedTheme.radioButton.borderWidthSelectedHover != abstractTheme.radioButton.borderWidthSelectedHover)
        #expect(inheritedTheme.radioButton.borderWidthSelectedHover == MockThemeRadioButtonComponentTokenProvider.mockThemeRadioButtonBorderWidth)
    }

    @Test func inheritedThemeCanOverrideRadioButtonBorderWidthSelectedPressed() throws {
        #expect(inheritedTheme.radioButton.borderWidthSelectedPressed != abstractTheme.radioButton.borderWidthSelectedPressed)
        #expect(inheritedTheme.radioButton.borderWidthSelectedPressed == MockThemeRadioButtonComponentTokenProvider.mockThemeRadioButtonBorderWidth)
    }

    @Test func inheritedThemeCanOverrideRadioButtonBorderWidthUnselected() throws {
        #expect(inheritedTheme.radioButton.borderWidthUnselected != abstractTheme.radioButton.borderWidthUnselected)
        #expect(inheritedTheme.radioButton.borderWidthUnselected == MockThemeRadioButtonComponentTokenProvider.mockThemeRadioButtonBorderWidth)
    }

    @Test func inheritedThemeCanOverrideRadioButtonBorderWidthUnselectedFocus() throws {
        #expect(inheritedTheme.radioButton.borderWidthUnselectedFocus != abstractTheme.radioButton.borderWidthUnselectedFocus)
        #expect(inheritedTheme.radioButton.borderWidthUnselectedFocus == MockThemeRadioButtonComponentTokenProvider.mockThemeRadioButtonBorderWidth)
    }

    @Test func inheritedThemeCanOverrideRadioButtonBorderWidthUnselectedHover() throws {
        #expect(inheritedTheme.radioButton.borderWidthUnselectedHover != abstractTheme.radioButton.borderWidthUnselectedHover)
        #expect(inheritedTheme.radioButton.borderWidthUnselectedHover == MockThemeRadioButtonComponentTokenProvider.mockThemeRadioButtonBorderWidth)
    }

    @Test func inheritedThemeCanOverrideRadioButtonBorderWidthUnselectedPressed() throws {
        #expect(inheritedTheme.radioButton.borderWidthUnselectedPressed != abstractTheme.radioButton.borderWidthUnselectedPressed)
        #expect(inheritedTheme.radioButton.borderWidthUnselectedPressed == MockThemeRadioButtonComponentTokenProvider.mockThemeRadioButtonBorderWidth)
    }
}

// swiftlint:enable type_name
