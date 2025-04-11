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

struct ThemeOverrideOfSwitchComponentTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Colors

    @Test func inheritedThemeCanOverrideSwitchColorCursor() throws {
        #expect(inheritedTheme.switch.switchColorCursor != abstractTheme.switch.switchColorCursor)
        #expect(inheritedTheme.switch.switchColorCursor == MockThemeSwitchComponentTokenProvider.mockThemeSwitchColor)
    }

    @Test func inheritedThemeCanOverrideSwitchColorTrackSelected() throws {
        #expect(inheritedTheme.switch.switchColorTrackSelected != abstractTheme.switch.switchColorTrackSelected)
        #expect(inheritedTheme.switch.switchColorTrackSelected == MockThemeSwitchComponentTokenProvider.mockThemeSwitchColor)
    }

    @Test func inheritedThemeCanOverrideSwitchColorTrackSelectedInteraction() throws {
        #expect(inheritedTheme.switch.switchColorTrackSelectedInteraction != abstractTheme.switch.switchColorTrackSelectedInteraction)
        #expect(inheritedTheme.switch.switchColorTrackSelectedInteraction == MockThemeSwitchComponentTokenProvider.mockThemeSwitchColor)
    }

    @Test func inheritedThemeCanOverrideSwitchColorTrackUnselected() throws {
        #expect(inheritedTheme.switch.switchColorTrackUnselected != abstractTheme.switch.switchColorTrackUnselected)
        #expect(inheritedTheme.switch.switchColorTrackUnselected == MockThemeSwitchComponentTokenProvider.mockThemeSwitchColor)
    }

    @Test func inheritedThemeCanOverrideSwitchColorTrackUnselectedInteraction() throws {
        #expect(inheritedTheme.switch.switchColorTrackUnselectedInteraction != abstractTheme.switch.switchColorTrackUnselectedInteraction)
        #expect(inheritedTheme.switch.switchColorTrackUnselectedInteraction == MockThemeSwitchComponentTokenProvider.mockThemeSwitchColor)
    }

    @Test func inheritedThemeCanOverrideSwitchColorCheck() throws {
        #expect(inheritedTheme.switch.switchColorCheck != abstractTheme.switch.switchColorCheck)
        #expect(inheritedTheme.switch.switchColorCheck == MockThemeSwitchComponentTokenProvider.mockThemeSwitchColor)
    }

    // MARK: - Spaces

    @Test func inheritedThemeCanOverrideSwitchComponentTokenSpacePaddingInlineUnselected() throws {
        #expect(inheritedTheme.switch.switchSpacePaddingInlineUnselected != abstractTheme.switch.switchSpacePaddingInlineUnselected)
        #expect(inheritedTheme.switch.switchSpacePaddingInlineUnselected == MockThemeSwitchComponentTokenProvider.mockThemeSwitchSpace)
    }

    @Test func inheritedThemeCanOverrideSwitchComponentTokenSpacePaddingInlineSelected() throws {
        #expect(inheritedTheme.switch.switchSpacePaddingInlineSelected != abstractTheme.switch.switchSpacePaddingInlineSelected)
        #expect(inheritedTheme.switch.switchSpacePaddingInlineSelected == MockThemeSwitchComponentTokenProvider.mockThemeSwitchSpace)
    }

    // MARK: - Sizes

    @Test func inheritedThemeCanOverrideSwitchSizeHeightCursorSelected() throws {
        #expect(inheritedTheme.switch.switchSizeHeightCursorSelected != abstractTheme.switch.switchSizeHeightCursorSelected)
        #expect(inheritedTheme.switch.switchSizeHeightCursorSelected == MockThemeSwitchComponentTokenProvider.mockThemeSwitchSize)
    }

    @Test func inheritedThemeCanOverrideSwitchSizeHeightCursorUnselected() throws {
        #expect(inheritedTheme.switch.switchSizeHeightCursorUnselected != abstractTheme.switch.switchSizeHeightCursorUnselected)
        #expect(inheritedTheme.switch.switchSizeHeightCursorUnselected == MockThemeSwitchComponentTokenProvider.mockThemeSwitchSize)
    }

    @Test func inheritedThemeCanOverrideSwitchSizeHeightTrack() throws {
        #expect(inheritedTheme.switch.switchSizeHeightTrack != abstractTheme.switch.switchSizeHeightTrack)
        #expect(inheritedTheme.switch.switchSizeHeightTrack == MockThemeSwitchComponentTokenProvider.mockThemeSwitchSize)
    }

    @Test func inheritedThemeCanOverrideSwitchSizeMaxHeight() throws {
        #expect(inheritedTheme.switch.switchSizeMaxHeight != abstractTheme.switch.switchSizeMaxHeight)
        #expect(inheritedTheme.switch.switchSizeMaxHeight == MockThemeSwitchComponentTokenProvider.mockThemeSwitchSize)
    }

    @Test func inheritedThemeCanOverrideSwitchSizeMinHeight() throws {
        #expect(inheritedTheme.switch.switchSizeMinHeight != abstractTheme.switch.switchSizeMinHeight)
        #expect(inheritedTheme.switch.switchSizeMinHeight == MockThemeSwitchComponentTokenProvider.mockThemeSwitchSize)
    }

    @Test func inheritedThemeCanOverrideSwitchSizeMinWidth() throws {
        #expect(inheritedTheme.switch.switchSizeMinWidth != abstractTheme.switch.switchSizeMinWidth)
        #expect(inheritedTheme.switch.switchSizeMinWidth == MockThemeSwitchComponentTokenProvider.mockThemeSwitchSize)
    }

    @Test func inheritedThemeCanOverrideSwitchSizeWidthCursorSelected() throws {
        #expect(inheritedTheme.switch.switchSizeWidthCursorSelected != abstractTheme.switch.switchSizeWidthCursorSelected)
        #expect(inheritedTheme.switch.switchSizeWidthCursorSelected == MockThemeSwitchComponentTokenProvider.mockThemeSwitchSize)
    }

    @Test func inheritedThemeCanOverrideSwitchSizeWidthCursorSelectedPressed() throws {
        #expect(inheritedTheme.switch.switchSizeWidthCursorSelectedPressed != abstractTheme.switch.switchSizeWidthCursorSelectedPressed)
        #expect(inheritedTheme.switch.switchSizeWidthCursorSelectedPressed == MockThemeSwitchComponentTokenProvider.mockThemeSwitchSize)
    }

    @Test func inheritedThemeCanOverrideSwitchSizeWidthCursorUnselected() throws {
        #expect(inheritedTheme.switch.switchSizeWidthCursorUnselected != abstractTheme.switch.switchSizeWidthCursorUnselected)
        #expect(inheritedTheme.switch.switchSizeWidthCursorUnselected == MockThemeSwitchComponentTokenProvider.mockThemeSwitchSize)
    }

    @Test func inheritedThemeCanOverrideSwitchSizeWidthCursorUnselectedPressed() throws {
        #expect(inheritedTheme.switch.switchSizeWidthCursorUnselectedPressed != abstractTheme.switch.switchSizeWidthCursorUnselectedPressed)
        #expect(inheritedTheme.switch.switchSizeWidthCursorUnselectedPressed == MockThemeSwitchComponentTokenProvider.mockThemeSwitchSize)
    }

    @Test func inheritedThemeCanOverrideSwitchSizeWidthTrack() throws {
        #expect(inheritedTheme.switch.switchSizeWidthTrack != abstractTheme.switch.switchSizeWidthTrack)
        #expect(inheritedTheme.switch.switchSizeWidthTrack == MockThemeSwitchComponentTokenProvider.mockThemeSwitchSize)
    }

    // MARK: - Borders

    @Test func inheritedThemeCanOverrideSwitchBorderRadius() throws {
        #expect(inheritedTheme.switch.switchBorderRadius != abstractTheme.switch.switchBorderRadius)
        #expect(inheritedTheme.switch.switchBorderRadius == MockThemeSwitchComponentTokenProvider.mockThemeSwitchBorderRadius)
    }

    // MARK: - Opacities

    @Test func inheritedThemeCanOverrideSwitchOpacityCheck() throws {
        #expect(inheritedTheme.switch.switchOpacityCheck != abstractTheme.switch.switchOpacityCheck)
        #expect(inheritedTheme.switch.switchOpacityCheck == MockThemeSwitchComponentTokenProvider.mockThemeSwitchOpacity)
    }
}

// swiftlint:enable type_name
