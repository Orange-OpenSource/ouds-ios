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

struct ThemeOverrideOfInputTagComponentTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Borders

    @Test func inheritedThemeCanOverrideInputTagBorderWidthDefault() throws {
        #expect(inheritedTheme.inputTag.borderWidthDefault != abstractTheme.inputTag.borderWidthDefault)
        #expect(inheritedTheme.inputTag.borderWidthDefault == MockThemeInputTagComponentTokenProvider.mockThemeInputTagBorderWidth)
    }

    @Test func inheritedThemeCanOverrideInputTagBorderWidthDefaultInteraction() throws {
        #expect(inheritedTheme.inputTag.borderWidthDefaultInteraction != abstractTheme.inputTag.borderWidthDefaultInteraction)
        #expect(inheritedTheme.inputTag.borderWidthDefaultInteraction == MockThemeInputTagComponentTokenProvider.mockThemeInputTagBorderWidth)
    }

    // MARK: - Colors

    @Test func inheritedThemeCanOverrideInputTagColorBgEnabled() throws {
        #expect(inheritedTheme.inputTag.colorBgEnabled != abstractTheme.inputTag.colorBgEnabled)
        #expect(inheritedTheme.inputTag.colorBgEnabled == MockThemeInputTagComponentTokenProvider.mockThemeInputTagColor)
    }

    @Test func inheritedThemeCanOverrideInputTagColorBgHover() throws {
        #expect(inheritedTheme.inputTag.colorBgHover != abstractTheme.inputTag.colorBgHover)
        #expect(inheritedTheme.inputTag.colorBgHover == MockThemeInputTagComponentTokenProvider.mockThemeInputTagColor)
    }

    @Test func inheritedThemeCanOverrideInputTagColorBgFocus() throws {
        #expect(inheritedTheme.inputTag.colorBgFocus != abstractTheme.inputTag.colorBgFocus)
        #expect(inheritedTheme.inputTag.colorBgFocus == MockThemeInputTagComponentTokenProvider.mockThemeInputTagColor)
    }

    @Test func inheritedThemeCanOverrideInputTagColorContentEnabled() throws {
        #expect(inheritedTheme.inputTag.colorContentEnabled != abstractTheme.inputTag.colorContentEnabled)
        #expect(inheritedTheme.inputTag.colorContentEnabled == MockThemeInputTagComponentTokenProvider.mockThemeInputTagColor)
    }

    @Test func inheritedThemeCanOverrideInputTagColorContentHover() throws {
        #expect(inheritedTheme.inputTag.colorContentHover != abstractTheme.inputTag.colorContentHover)
        #expect(inheritedTheme.inputTag.colorContentHover == MockThemeInputTagComponentTokenProvider.mockThemeInputTagColor)
    }

    @Test func inheritedThemeCanOverrideInputTagColorContentPressed() throws {
        #expect(inheritedTheme.inputTag.colorContentPressed != abstractTheme.inputTag.colorContentPressed)
        #expect(inheritedTheme.inputTag.colorContentPressed == MockThemeInputTagComponentTokenProvider.mockThemeInputTagColor)
    }

    @Test func inheritedThemeCanOverrideInputTagColorContentFocus() throws {
        #expect(inheritedTheme.inputTag.colorContentFocus != abstractTheme.inputTag.colorContentFocus)
        #expect(inheritedTheme.inputTag.colorContentFocus == MockThemeInputTagComponentTokenProvider.mockThemeInputTagColor)
    }

    @Test func inheritedThemeCanOverrideInputTagColorBorderEnabled() throws {
        #expect(inheritedTheme.inputTag.colorBorderEnabled != abstractTheme.inputTag.colorBorderEnabled)
        #expect(inheritedTheme.inputTag.colorBorderEnabled == MockThemeInputTagComponentTokenProvider.mockThemeInputTagColor)
    }

    @Test func inheritedThemeCanOverrideInputTagColorBorderHover() throws {
        #expect(inheritedTheme.inputTag.colorBorderHover != abstractTheme.inputTag.colorBorderHover)
        #expect(inheritedTheme.inputTag.colorBorderHover == MockThemeInputTagComponentTokenProvider.mockThemeInputTagColor)
    }

    @Test func inheritedThemeCanOverrideInputTagColorBorderPressed() throws {
        #expect(inheritedTheme.inputTag.colorBorderPressed != abstractTheme.inputTag.colorBorderPressed)
        #expect(inheritedTheme.inputTag.colorBorderPressed == MockThemeInputTagComponentTokenProvider.mockThemeInputTagColor)
    }

    @Test func inheritedThemeCanOverrideInputTagColorBorderFocus() throws {
        #expect(inheritedTheme.inputTag.colorBorderFocus != abstractTheme.inputTag.colorBorderFocus)
        #expect(inheritedTheme.inputTag.colorBorderFocus == MockThemeInputTagComponentTokenProvider.mockThemeInputTagColor)
    }
}

// swiftlint:enable type_name
