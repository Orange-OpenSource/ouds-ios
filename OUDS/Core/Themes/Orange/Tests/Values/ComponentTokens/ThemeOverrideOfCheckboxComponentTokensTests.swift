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
        #expect(inheritedTheme.checkbox.sizeMinWidth != abstractTheme.checkbox.sizeMinWidth)
        #expect(inheritedTheme.checkbox.sizeMinWidth == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxSize)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenSizeMaxHeight() throws {
        #expect(inheritedTheme.checkbox.sizeMaxHeight != abstractTheme.checkbox.sizeMaxHeight)
        #expect(inheritedTheme.checkbox.sizeMaxHeight == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxSize)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenSizeMinHeight() throws {
        #expect(inheritedTheme.checkbox.sizeMinHeight != abstractTheme.checkbox.sizeMinHeight)
        #expect(inheritedTheme.checkbox.sizeMinHeight == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxSize)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenSizeIndicator() throws {
        #expect(inheritedTheme.checkbox.sizeIndicator != abstractTheme.checkbox.sizeIndicator)
        #expect(inheritedTheme.checkbox.sizeIndicator == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxSize)
    }

    // MARK: - Borders

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenBorderRadius() throws {
        #expect(inheritedTheme.checkbox.borderRadius != abstractTheme.checkbox.borderRadius)
        #expect(inheritedTheme.checkbox.borderRadius == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxBorderRadius)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenBorderWidthSelected() throws {
        #expect(inheritedTheme.checkbox.borderWidthSelected != abstractTheme.checkbox.borderWidthSelected)
        #expect(inheritedTheme.checkbox.borderWidthSelected == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxBorderWidth)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenBorderWidthSelectedHover() throws {
        #expect(inheritedTheme.checkbox.borderWidthSelectedHover != abstractTheme.checkbox.borderWidthSelectedHover)
        #expect(inheritedTheme.checkbox.borderWidthSelectedHover == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxBorderWidth)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenBorderWidthSelectedPressed() throws {
        #expect(inheritedTheme.checkbox.borderWidthSelectedPressed != abstractTheme.checkbox.borderWidthSelectedPressed)
        #expect(inheritedTheme.checkbox.borderWidthSelectedPressed == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxBorderWidth)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenBorderWidthSelectedFocus() throws {
        #expect(inheritedTheme.checkbox.borderWidthSelectedFocus != abstractTheme.checkbox.borderWidthSelectedFocus)
        #expect(inheritedTheme.checkbox.borderWidthSelectedFocus == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxBorderWidth)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenBorderWidthUnselected() throws {
        #expect(inheritedTheme.checkbox.borderWidthUnselected != abstractTheme.checkbox.borderWidthUnselected)
        #expect(inheritedTheme.checkbox.borderWidthUnselected == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxBorderWidth)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenBorderWidthUnselectedHover() throws {
        #expect(inheritedTheme.checkbox.borderWidthUnselectedHover != abstractTheme.checkbox.borderWidthUnselectedHover)
        #expect(inheritedTheme.checkbox.borderWidthUnselectedHover == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxBorderWidth)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenBorderWidthUnselectedPressed() throws {
        #expect(inheritedTheme.checkbox.borderWidthUnselectedPressed != abstractTheme.checkbox.borderWidthUnselectedPressed)
        #expect(inheritedTheme.checkbox.borderWidthUnselectedPressed == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxBorderWidth)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenBorderWidthUnselectedFocus() throws {
        #expect(inheritedTheme.checkbox.borderWidthUnselectedFocus != abstractTheme.checkbox.borderWidthUnselectedFocus)
        #expect(inheritedTheme.checkbox.borderWidthUnselectedFocus == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxBorderWidth)
    }
}

// swiftlint:enable type_name
