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

struct ThemeOverrideOfSwitchComponentTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Colors

    @Test func inheritedThemeCanOverrideSwitchColorCursor() throws {
        #expect(inheritedTheme.switch.colorCursor != abstractTheme.switch.colorCursor)
        #expect(inheritedTheme.switch.colorCursor == MockThemeSwitchComponentTokenProvider.mockThemeSwitchColor)
    }

    @Test func inheritedThemeCanOverrideSwitchColorTrackSelected() throws {
        #expect(inheritedTheme.switch.colorTrackSelected != abstractTheme.switch.colorTrackSelected)
        #expect(inheritedTheme.switch.colorTrackSelected == MockThemeSwitchComponentTokenProvider.mockThemeSwitchColor)
    }

    @Test func inheritedThemeCanOverrideSwitchColorTrackSelectedInteraction() throws {
        #expect(inheritedTheme.switch.colorTrackSelectedInteraction != abstractTheme.switch.colorTrackSelectedInteraction)
        #expect(inheritedTheme.switch.colorTrackSelectedInteraction == MockThemeSwitchComponentTokenProvider.mockThemeSwitchColor)
    }

    @Test func inheritedThemeCanOverrideSwitchColorTrackUnselected() throws {
        #expect(inheritedTheme.switch.colorTrackUnselected != abstractTheme.switch.colorTrackUnselected)
        #expect(inheritedTheme.switch.colorTrackUnselected == MockThemeSwitchComponentTokenProvider.mockThemeSwitchColor)
    }

    @Test func inheritedThemeCanOverrideSwitchColorTrackUnselectedInteraction() throws {
        #expect(inheritedTheme.switch.colorTrackUnselectedInteraction != abstractTheme.switch.colorTrackUnselectedInteraction)
        #expect(inheritedTheme.switch.colorTrackUnselectedInteraction == MockThemeSwitchComponentTokenProvider.mockThemeSwitchColor)
    }

    @Test func inheritedThemeCanOverrideSwitchColorCheck() throws {
        #expect(inheritedTheme.switch.colorCheck != abstractTheme.switch.colorCheck)
        #expect(inheritedTheme.switch.colorCheck == MockThemeSwitchComponentTokenProvider.mockThemeSwitchColor)
    }

    // MARK: - Spaces

    @Test func inheritedThemeCanOverrideSwitchComponentTokenSpacePaddingInlineUnselected() throws {
        #expect(inheritedTheme.switch.spacePaddingInlineUnselected != abstractTheme.switch.spacePaddingInlineUnselected)
        #expect(inheritedTheme.switch.spacePaddingInlineUnselected == MockThemeSwitchComponentTokenProvider.mockThemeSwitchSpace)
    }

    @Test func inheritedThemeCanOverrideSwitchComponentTokenSpacePaddingInlineSelected() throws {
        #expect(inheritedTheme.switch.spacePaddingInlineSelected != abstractTheme.switch.spacePaddingInlineSelected)
        #expect(inheritedTheme.switch.spacePaddingInlineSelected == MockThemeSwitchComponentTokenProvider.mockThemeSwitchSpace)
    }

    // MARK: - Sizes

    @Test func inheritedThemeCanOverrideSwitchSizeHeightCursorSelected() throws {
        #expect(inheritedTheme.switch.sizeHeightCursorSelected != abstractTheme.switch.sizeHeightCursorSelected)
        #expect(inheritedTheme.switch.sizeHeightCursorSelected == MockThemeSwitchComponentTokenProvider.mockThemeSwitchSize)
    }

    @Test func inheritedThemeCanOverrideSwitchSizeHeightCursorUnselected() throws {
        #expect(inheritedTheme.switch.sizeHeightCursorUnselected != abstractTheme.switch.sizeHeightCursorUnselected)
        #expect(inheritedTheme.switch.sizeHeightCursorUnselected == MockThemeSwitchComponentTokenProvider.mockThemeSwitchSize)
    }

    @Test func inheritedThemeCanOverrideSwitchSizeHeightTrack() throws {
        #expect(inheritedTheme.switch.sizeHeightTrack != abstractTheme.switch.sizeHeightTrack)
        #expect(inheritedTheme.switch.sizeHeightTrack == MockThemeSwitchComponentTokenProvider.mockThemeSwitchSize)
    }

    @Test func inheritedThemeCanOverrideSwitchSizeMaxHeight() throws {
        #expect(inheritedTheme.switch.sizeMaxHeight != abstractTheme.switch.sizeMaxHeight)
        #expect(inheritedTheme.switch.sizeMaxHeight == MockThemeSwitchComponentTokenProvider.mockThemeSwitchSize)
    }

    @Test func inheritedThemeCanOverrideSwitchSizeMinHeight() throws {
        #expect(inheritedTheme.switch.sizeMinHeight != abstractTheme.switch.sizeMinHeight)
        #expect(inheritedTheme.switch.sizeMinHeight == MockThemeSwitchComponentTokenProvider.mockThemeSwitchSize)
    }

    @Test func inheritedThemeCanOverrideSwitchSizeMinWidth() throws {
        #expect(inheritedTheme.switch.sizeMinWidth != abstractTheme.switch.sizeMinWidth)
        #expect(inheritedTheme.switch.sizeMinWidth == MockThemeSwitchComponentTokenProvider.mockThemeSwitchSize)
    }

    @Test func inheritedThemeCanOverrideSwitchSizeWidthCursorSelected() throws {
        #expect(inheritedTheme.switch.sizeWidthCursorSelected != abstractTheme.switch.sizeWidthCursorSelected)
        #expect(inheritedTheme.switch.sizeWidthCursorSelected == MockThemeSwitchComponentTokenProvider.mockThemeSwitchSize)
    }

    @Test func inheritedThemeCanOverrideSwitchSizeWidthCursorSelectedPressed() throws {
        #expect(inheritedTheme.switch.sizeWidthCursorSelectedPressed != abstractTheme.switch.sizeWidthCursorSelectedPressed)
        #expect(inheritedTheme.switch.sizeWidthCursorSelectedPressed == MockThemeSwitchComponentTokenProvider.mockThemeSwitchSize)
    }

    @Test func inheritedThemeCanOverrideSwitchSizeWidthCursorUnselected() throws {
        #expect(inheritedTheme.switch.sizeWidthCursorUnselected != abstractTheme.switch.sizeWidthCursorUnselected)
        #expect(inheritedTheme.switch.sizeWidthCursorUnselected == MockThemeSwitchComponentTokenProvider.mockThemeSwitchSize)
    }

    @Test func inheritedThemeCanOverrideSwitchSizeWidthCursorUnselectedPressed() throws {
        #expect(inheritedTheme.switch.sizeWidthCursorUnselectedPressed != abstractTheme.switch.sizeWidthCursorUnselectedPressed)
        #expect(inheritedTheme.switch.sizeWidthCursorUnselectedPressed == MockThemeSwitchComponentTokenProvider.mockThemeSwitchSize)
    }

    @Test func inheritedThemeCanOverrideSwitchSizeWidthTrack() throws {
        #expect(inheritedTheme.switch.sizeWidthTrack != abstractTheme.switch.sizeWidthTrack)
        #expect(inheritedTheme.switch.sizeWidthTrack == MockThemeSwitchComponentTokenProvider.mockThemeSwitchSize)
    }

    // MARK: - Borders

    @Test func inheritedThemeCanOverrideSwitchBorderRadiusCursor() throws {
        #expect(inheritedTheme.switch.borderRadiusCursor != abstractTheme.switch.borderRadiusCursor)
        #expect(inheritedTheme.switch.borderRadiusCursor == MockThemeSwitchComponentTokenProvider.mockThemeSwitchBorderRadius)
    }

    @Test func inheritedThemeCanOverrideSwitchBorderRadiusTrack() throws {
        #expect(inheritedTheme.switch.borderRadiusTrack != abstractTheme.switch.borderRadiusTrack)
        #expect(inheritedTheme.switch.borderRadiusTrack == MockThemeSwitchComponentTokenProvider.mockThemeSwitchBorderRadius)
    }

    // MARK: - Opacities

    @Test func inheritedThemeCanOverrideSwitchOpacityCheck() throws {
        #expect(inheritedTheme.switch.opacityCheck != abstractTheme.switch.opacityCheck)
        #expect(inheritedTheme.switch.opacityCheck == MockThemeSwitchComponentTokenProvider.mockThemeSwitchOpacity)
    }
}

// swiftlint:enable type_name
