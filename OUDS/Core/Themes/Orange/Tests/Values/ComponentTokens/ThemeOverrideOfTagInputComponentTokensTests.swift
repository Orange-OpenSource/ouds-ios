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

struct ThemeOverrideOfTagInputComponentTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Borders

    @Test func inheritedThemeCanOverrideTagInputBorderWidthDefault() throws {
        #expect(inheritedTheme.tagInput.tagInputBorderWidthDefault != abstractTheme.tagInput.tagInputBorderWidthDefault)
        #expect(inheritedTheme.tagInput.tagInputBorderWidthDefault == MockThemeTagInputComponentTokenProvider.mockThemeTagInputBorderWidth)
    }

    @Test func inheritedThemeCanOverrideTagInputBorderWidthDefaultInteraction() throws {
        #expect(inheritedTheme.tagInput.tagInputBorderWidthDefaultInteraction != abstractTheme.tagInput.tagInputBorderWidthDefaultInteraction)
        #expect(inheritedTheme.tagInput.tagInputBorderWidthDefaultInteraction == MockThemeTagInputComponentTokenProvider.mockThemeTagInputBorderWidth)
    }

    // MARK: - Colors

    @Test func inheritedThemeCanOverrideTagInputColorBgEnabled() throws {
        #expect(inheritedTheme.tagInput.tagInputColorBgEnabled != abstractTheme.tagInput.tagInputColorBgEnabled)
        #expect(inheritedTheme.tagInput.tagInputColorBgEnabled == tagInputBorderWidthDefaultInteraction.mockThemeTagInputColor)
    }

    @Test func inheritedThemeCanOverrideTagInputColorBgHover() throws {
        #expect(inheritedTheme.tagInput.tagInputColorBgHover != abstractTheme.tagInput.tagInputColorBgHover)
        #expect(inheritedTheme.tagInput.tagInputColorBgHover == tagInputBorderWidthDefaultInteraction.mockThemeTagInputColor)
    }

    @Test func inheritedThemeCanOverrideTagInputColorBgFocus() throws {
        #expect(inheritedTheme.tagInput.tagInputColorBgFocus != abstractTheme.tagInput.tagInputColorBgFocus)
        #expect(inheritedTheme.tagInput.tagInputColorBgFocus == tagInputBorderWidthDefaultInteraction.mockThemeTagInputColor)
    }

    @Test func inheritedThemeCanOverrideTagInputColorContentEnabled() throws {
        #expect(inheritedTheme.tagInput.tagInputColorContentEnabled != abstractTheme.tagInput.tagInputColorContentEnabled)
        #expect(inheritedTheme.tagInput.tagInputColorContentEnabled == tagInputBorderWidthDefaultInteraction.mockThemeTagInputColor)
    }

    @Test func inheritedThemeCanOverrideTagInputColorContentHover() throws {
        #expect(inheritedTheme.tagInput.tagInputColorContentHover != abstractTheme.tagInput.tagInputColorContentHover)
        #expect(inheritedTheme.tagInput.tagInputColorContentHover == tagInputBorderWidthDefaultInteraction.mockThemeTagInputColor)
    }

    @Test func inheritedThemeCanOverrideTagInputColorContentPressed() throws {
        #expect(inheritedTheme.tagInput.tagInputColorContentPressed != abstractTheme.tagInput.tagInputColorContentPressed)
        #expect(inheritedTheme.tagInput.tagInputColorContentPressed == tagInputBorderWidthDefaultInteraction.mockThemeTagInputColor)
    }

    @Test func inheritedThemeCanOverrideTagInputColorContentFocus() throws {
        #expect(inheritedTheme.tagInput.tagInputColorContentFocus != abstractTheme.tagInput.tagInputColorContentFocus)
        #expect(inheritedTheme.tagInput.tagInputColorContentFocus == tagInputBorderWidthDefaultInteraction.mockThemeTagInputColor)
    }

    @Test func inheritedThemeCanOverrideTagInputColorBorderEnabled() throws {
        #expect(inheritedTheme.tagInput.tagInputColorBorderEnabled != abstractTheme.tagInput.tagInputColorBorderEnabled)
        #expect(inheritedTheme.tagInput.tagInputColorBorderEnabled == tagInputBorderWidthDefaultInteraction.mockThemeTagInputColor)
    }

    @Test func inheritedThemeCanOverrideTagInputColorBorderHover() throws {
        #expect(inheritedTheme.tagInput.tagInputColorBorderHover != abstractTheme.tagInput.tagInputColorBorderHover)
        #expect(inheritedTheme.tagInput.tagInputColorBorderHover == tagInputBorderWidthDefaultInteraction.mockThemeTagInputColor)
    }

    @Test func inheritedThemeCanOverrideTagInputColorBorderPressed() throws {
        #expect(inheritedTheme.tagInput.tagInputColorBorderPressed != abstractTheme.tagInput.tagInputColorBorderPressed)
        #expect(inheritedTheme.tagInput.tagInputColorBorderPressed == tagInputBorderWidthDefaultInteraction.mockThemeTagInputColor)
    }

    @Test func inheritedThemeCanOverrideTagInputColorBorderFocus() throws {
        #expect(inheritedTheme.tagInput.tagInputColorBorderFocus != abstractTheme.tagInput.tagInputColorBorderFocus)
        #expect(inheritedTheme.tagInput.tagInputColorBorderFocus == tagInputBorderWidthDefaultInteraction.mockThemeTagInputColor)
    }
}
