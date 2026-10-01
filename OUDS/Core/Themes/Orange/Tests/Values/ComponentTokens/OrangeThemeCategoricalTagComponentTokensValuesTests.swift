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

import OUDSThemesOrange
import OUDSTokensRaw
import Testing

// swiftlint:disable type_name

/// Because the `OUDSCategoricalTag` component is an `OUDSTag` in the end but with very specific set of colors,
/// could be interesting to have an eye on the values to be sure they don't change.
struct OrangeThemeCategoricalTagComponentTokensValuesTests {

    private var theme: OrangeTheme

    init() {
        theme = OrangeTheme()
    }

    // MARK: - Colors

    @Test func colorBgCategory1() throws {
        #expect(theme.categoricalTag.colorBgCategory1.light == OrangeBrandColorRawTokens.colorDecorativeEmerald500)
        #expect(theme.categoricalTag.colorBgCategory1.dark == OrangeBrandColorRawTokens.colorDecorativeEmerald400)
    }

    @Test func colorBgCategory2() throws {
        #expect(theme.categoricalTag.colorBgCategory2.light == OrangeBrandColorRawTokens.colorDecorativeSky400)
        #expect(theme.categoricalTag.colorBgCategory2.dark == OrangeBrandColorRawTokens.colorDecorativeSky300)
    }

    @Test func colorBgCategory3() throws {
        #expect(theme.categoricalTag.colorBgCategory3.light == OrangeBrandColorRawTokens.colorDecorativeAmber500)
        #expect(theme.categoricalTag.colorBgCategory3.dark == OrangeBrandColorRawTokens.colorDecorativeAmber300)
    }

    @Test func colorBgCategory4() throws {
        #expect(theme.categoricalTag.colorBgCategory4.light == OrangeBrandColorRawTokens.colorDecorativeAmethyst400)
        #expect(theme.categoricalTag.colorBgCategory4.dark == OrangeBrandColorRawTokens.colorDecorativeAmethyst300)
    }

    @Test func colorBgCategory5() throws {
        #expect(theme.categoricalTag.colorBgCategory5.light == OrangeBrandColorRawTokens.colorDecorativeShockingPink200)
        #expect(theme.categoricalTag.colorBgCategory5.dark == OrangeBrandColorRawTokens.colorDecorativeShockingPink200)
    }

    @Test func colorContent() throws {
        #expect(theme.categoricalTag.colorContent.light == ColorRawTokens.functionalBlack)
        #expect(theme.categoricalTag.colorContent.dark == ColorRawTokens.functionalBlack)
    }
}

// swiftlint:enable type_name
