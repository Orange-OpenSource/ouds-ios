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

struct ThemeOverrideOfInputTagComponentTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Borders

    @Test func inheritedThemeCanOverrideInputTagBorderWidthDefault() throws {
        #expect(inheritedTheme.inputTag.inputTagBorderWidthDefault != abstractTheme.inputTag.inputTagBorderWidthDefault)
        #expect(inheritedTheme.inputTag.inputTagBorderWidthDefault == MockThemeInputTagComponentTokenProvider.mockThemeInputTagBorderWidth)
    }

    @Test func inheritedThemeCanOverrideInputTagBorderWidthDefaultInteraction() throws {
        #expect(inheritedTheme.inputTag.inputTagBorderWidthDefaultInteraction != abstractTheme.inputTag.inputTagBorderWidthDefaultInteraction)
        #expect(inheritedTheme.inputTag.inputTagBorderWidthDefaultInteraction == MockThemeInputTagComponentTokenProvider.mockThemeInputTagBorderWidth)
    }

    // MARK: - Colors

    @Test func inheritedThemeCanOverrideInputTagColorBgEnabled() throws {
        #expect(inheritedTheme.inputTag.inputTagColorBgEnabled != abstractTheme.inputTag.inputTagColorBgEnabled)
        #expect(inheritedTheme.inputTag.inputTagColorBgEnabled == MockThemeInputTagComponentTokenProvider.mockThemeInputTagColor)
    }

    @Test func inheritedThemeCanOverrideInputTagColorBgHover() throws {
        #expect(inheritedTheme.inputTag.inputTagColorBgHover != abstractTheme.inputTag.inputTagColorBgHover)
        #expect(inheritedTheme.inputTag.inputTagColorBgHover == MockThemeInputTagComponentTokenProvider.mockThemeInputTagColor)
    }

    @Test func inheritedThemeCanOverrideInputTagColorBgFocus() throws {
        #expect(inheritedTheme.inputTag.inputTagColorBgFocus != abstractTheme.inputTag.inputTagColorBgFocus)
        #expect(inheritedTheme.inputTag.inputTagColorBgFocus == MockThemeInputTagComponentTokenProvider.mockThemeInputTagColor)
    }

    @Test func inheritedThemeCanOverrideInputTagColorContentEnabled() throws {
        #expect(inheritedTheme.inputTag.inputTagColorContentEnabled != abstractTheme.inputTag.inputTagColorContentEnabled)
        #expect(inheritedTheme.inputTag.inputTagColorContentEnabled == MockThemeInputTagComponentTokenProvider.mockThemeInputTagColor)
    }

    @Test func inheritedThemeCanOverrideInputTagColorContentHover() throws {
        #expect(inheritedTheme.inputTag.inputTagColorContentHover != abstractTheme.inputTag.inputTagColorContentHover)
        #expect(inheritedTheme.inputTag.inputTagColorContentHover == MockThemeInputTagComponentTokenProvider.mockThemeInputTagColor)
    }

    @Test func inheritedThemeCanOverrideInputTagColorContentPressed() throws {
        #expect(inheritedTheme.inputTag.inputTagColorContentPressed != abstractTheme.inputTag.inputTagColorContentPressed)
        #expect(inheritedTheme.inputTag.inputTagColorContentPressed == MockThemeInputTagComponentTokenProvider.mockThemeInputTagColor)
    }

    @Test func inheritedThemeCanOverrideInputTagColorContentFocus() throws {
        #expect(inheritedTheme.inputTag.inputTagColorContentFocus != abstractTheme.inputTag.inputTagColorContentFocus)
        #expect(inheritedTheme.inputTag.inputTagColorContentFocus == MockThemeInputTagComponentTokenProvider.mockThemeInputTagColor)
    }

    @Test func inheritedThemeCanOverrideInputTagColorBorderEnabled() throws {
        #expect(inheritedTheme.inputTag.inputTagColorBorderEnabled != abstractTheme.inputTag.inputTagColorBorderEnabled)
        #expect(inheritedTheme.inputTag.inputTagColorBorderEnabled == MockThemeInputTagComponentTokenProvider.mockThemeInputTagColor)
    }

    @Test func inheritedThemeCanOverrideInputTagColorBorderHover() throws {
        #expect(inheritedTheme.inputTag.inputTagColorBorderHover != abstractTheme.inputTag.inputTagColorBorderHover)
        #expect(inheritedTheme.inputTag.inputTagColorBorderHover == MockThemeInputTagComponentTokenProvider.mockThemeInputTagColor)
    }

    @Test func inheritedThemeCanOverrideInputTagColorBorderPressed() throws {
        #expect(inheritedTheme.inputTag.inputTagColorBorderPressed != abstractTheme.inputTag.inputTagColorBorderPressed)
        #expect(inheritedTheme.inputTag.inputTagColorBorderPressed == MockThemeInputTagComponentTokenProvider.mockThemeInputTagColor)
    }

    @Test func inheritedThemeCanOverrideInputTagColorBorderFocus() throws {
        #expect(inheritedTheme.inputTag.inputTagColorBorderFocus != abstractTheme.inputTag.inputTagColorBorderFocus)
        #expect(inheritedTheme.inputTag.inputTagColorBorderFocus == MockThemeInputTagComponentTokenProvider.mockThemeInputTagColor)
    }
}

// swiftlint:enable type_name
