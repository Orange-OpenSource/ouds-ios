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

struct ThemeOverrideOfCategoricalTagComponentTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Colors

    @Test func inheritedThemeCanOverrideCategoricalTagComponentTokenColorBgCategory1() throws {
        #expect(inheritedTheme.categoricalTag.colorBgCategory1 != abstractTheme.categoricalTag.colorBgCategory1)
        #expect(inheritedTheme.categoricalTag.colorBgCategory1 == MockThemeCategoricalTagComponentTokenProvider.mockThemeCategoricalTagColor)
    }

    @Test func inheritedThemeCanOverrideCategoricalTagComponentTokenColorBgCategory2() throws {
        #expect(inheritedTheme.categoricalTag.colorBgCategory2 != abstractTheme.categoricalTag.colorBgCategory2)
        #expect(inheritedTheme.categoricalTag.colorBgCategory2 == MockThemeCategoricalTagComponentTokenProvider.mockThemeCategoricalTagColor)
    }

    @Test func inheritedThemeCanOverrideCategoricalTagComponentTokenColorBgCategory3() throws {
        #expect(inheritedTheme.categoricalTag.colorBgCategory3 != abstractTheme.categoricalTag.colorBgCategory3)
        #expect(inheritedTheme.categoricalTag.colorBgCategory3 == MockThemeCategoricalTagComponentTokenProvider.mockThemeCategoricalTagColor)
    }

    @Test func inheritedThemeCanOverrideCategoricalTagComponentTokenColorBgCategory4() throws {
        #expect(inheritedTheme.categoricalTag.colorBgCategory4 != abstractTheme.categoricalTag.colorBgCategory4)
        #expect(inheritedTheme.categoricalTag.colorBgCategory4 == MockThemeCategoricalTagComponentTokenProvider.mockThemeCategoricalTagColor)
    }

    @Test func inheritedThemeCanOverrideCategoricalTagComponentTokenColorBgCategory5() throws {
        #expect(inheritedTheme.categoricalTag.colorBgCategory5 != abstractTheme.categoricalTag.colorBgCategory5)
        #expect(inheritedTheme.categoricalTag.colorBgCategory5 == MockThemeCategoricalTagComponentTokenProvider.mockThemeCategoricalTagColor)
    }

    @Test func inheritedThemeCanOverrideCategoricalTagComponentTokenColorContent() throws {
        #expect(inheritedTheme.categoricalTag.colorContent != abstractTheme.categoricalTag.colorContent)
        #expect(inheritedTheme.categoricalTag.colorContent == MockThemeCategoricalTagComponentTokenProvider.mockThemeCategoricalTagColor)
    }
}

// swiftlint:enable type_name
