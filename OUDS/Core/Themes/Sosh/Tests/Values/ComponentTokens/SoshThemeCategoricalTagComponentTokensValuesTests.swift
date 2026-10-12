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

import OUDSThemesSosh
import OUDSTokensRaw
import Testing

// swiftlint:disable type_name

/// Because the `OUDSCategoricalTag` component is an `OUDSTag` in the end but with very specific set of colors,
/// could be interesting to have an eye on the values to be sure they don't change.
struct SoshThemeCategoricalTagComponentTokensValuesTests {

    private var theme: SoshTheme

    init() {
        theme = SoshTheme()
    }

    // MARK: - Colors

    @Test func colorBgCategory1() throws {
        #expect(theme.categoricalTag.colorBgCategory1.light == theme.colors.surfaceBrandPrimary.light)
        #expect(theme.categoricalTag.colorBgCategory1.dark == theme.colors.surfaceBrandPrimary.dark)
    }

    @Test func colorBgCategory2() throws {
        #expect(theme.categoricalTag.colorBgCategory2.light == theme.colors.surfaceBrandPrimary.light)
        #expect(theme.categoricalTag.colorBgCategory2.dark == theme.colors.surfaceBrandPrimary.dark)
    }

    @Test func colorBgCategory3() throws {
        #expect(theme.categoricalTag.colorBgCategory3.light == theme.colors.surfaceBrandPrimary.light)
        #expect(theme.categoricalTag.colorBgCategory3.dark == theme.colors.surfaceBrandPrimary.dark)
    }

    @Test func colorBgCategory4() throws {
        #expect(theme.categoricalTag.colorBgCategory4.light == theme.colors.surfaceBrandPrimary.light)
        #expect(theme.categoricalTag.colorBgCategory4.dark == theme.colors.surfaceBrandPrimary.dark)
    }

    @Test func colorBgCategory5() throws {
        #expect(theme.categoricalTag.colorBgCategory5.light == theme.colors.surfaceBrandPrimary.light)
        #expect(theme.categoricalTag.colorBgCategory5.dark == theme.colors.surfaceBrandPrimary.dark)
    }

    @Test func colorContent() throws {
        #expect(theme.categoricalTag.colorContent.light == ColorRawTokens.functionalWhite)
        #expect(theme.categoricalTag.colorContent.dark == SoshBrandColorRawTokens.colorLochmaraDark960)
    }
}

// swiftlint:enable type_name
