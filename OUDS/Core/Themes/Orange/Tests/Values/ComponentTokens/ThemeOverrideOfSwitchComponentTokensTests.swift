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

struct ThemeOverrideOfSwitchComponentTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Colors

    @Test func inheritedThemeCanOverrideSwitchComponentTokenColorCheck() throws {
        #expect(inheritedTheme.switch.switchColorCheck != abstractTheme.switch.switchColorCheck)
        #expect(inheritedTheme.switch.switchColorCheck == MockThemeSwitchComponentTokenProvider.mockThemeSwitchColor)
    }

    @Test func inheritedThemeCanOverrideSwitchComponentTokenColorCursor() throws {
        #expect(inheritedTheme.switch.switchColorCursor != abstractTheme.switch.switchColorCursor)
        #expect(inheritedTheme.switch.switchColorCursor == MockThemeSwitchComponentTokenProvider.mockThemeSwitchColor)
    }

    @Test func inheritedThemeCanOverrideSwitchComponentTokenColorTrackFalse() throws {
        #expect(inheritedTheme.switch.switchColorTrackFalse != abstractTheme.switch.switchColorTrackFalse)
        #expect(inheritedTheme.switch.switchColorTrackFalse == MockThemeSwitchComponentTokenProvider.mockThemeSwitchColor)
    }

    @Test func inheritedThemeCanOverrideSwitchComponentTokenColorTrackFalseInteraction() throws {
        #expect(inheritedTheme.switch.switchColorTrackFalseInteraction != abstractTheme.switch.switchColorTrackFalseInteraction)
        #expect(inheritedTheme.switch.switchColorTrackFalseInteraction == MockThemeSwitchComponentTokenProvider.mockThemeSwitchColor)
    }

    @Test func inheritedThemeCanOverrideSwitchComponentTokenColorTrackTrue() throws {
        #expect(inheritedTheme.switch.switchColorTrackTrue != abstractTheme.switch.switchColorTrackTrue)
        #expect(inheritedTheme.switch.switchColorTrackTrue == MockThemeSwitchComponentTokenProvider.mockThemeSwitchColor)
    }

    @Test func inheritedThemeCanOverrideSwitchComponentTokenColorTrackTrueInteraction() throws {
        #expect(inheritedTheme.switch.switchColorTrackTrueInteraction != abstractTheme.switch.switchColorTrackTrueInteraction)
        #expect(inheritedTheme.switch.switchColorTrackTrueInteraction == MockThemeSwitchComponentTokenProvider.mockThemeSwitchColor)
    }

    // MARK: - Spaces

    @Test func inheritedThemeCanOverrideSwitchComponentTokenSpacePaddingInlineFalse() throws {
        #expect(inheritedTheme.switch.switchSpacePaddingInlineFalse != abstractTheme.switch.switchSpacePaddingInlineFalse)
        #expect(inheritedTheme.switch.switchSpacePaddingInlineFalse == MockThemeSwitchComponentTokenProvider.mockThemeSwitchSpace)
    }

    @Test func inheritedThemeCanOverrideSwitchComponentTokenSpacePaddingInlineTrue() throws {
        #expect(inheritedTheme.switch.switchSpacePaddingInlineTrue != abstractTheme.switch.switchSpacePaddingInlineTrue)
        #expect(inheritedTheme.switch.switchSpacePaddingInlineTrue == MockThemeSwitchComponentTokenProvider.mockThemeSwitchSpace)
    }

    // MARK: - Sizes

    @Test func inheritedThemeCanOverrideSwitchComponentTokenSize() throws {
        #expect(inheritedTheme.switch.switchSize != abstractTheme.switch.switchSize)
        #expect(inheritedTheme.switch.switchSize == MockThemeSwitchComponentTokenProvider.mockThemeSwitchSize)
    }
}
