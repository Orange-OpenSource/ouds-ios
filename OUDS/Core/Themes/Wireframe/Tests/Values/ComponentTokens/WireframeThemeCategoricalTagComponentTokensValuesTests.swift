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

import OUDSThemesWireframe
import Testing

// swiftlint:disable type_name

/// Because the `OUDSCategoricalTag` component is an `OUDSTag` in the end but with very specific set of colors,
/// could be interesting to have an eye on the values to be sure they don't change.
struct WireframeThemeCategoricalTagComponentTokensValuesTests {

    private var theme: WireframeTheme

    init() {
        theme = WireframeTheme()
    }

    // MARK: - Colors

    @Test func colorBgCategory1() throws {
        #expect(theme.categoricalTag.colorBgCategory1.light == WireframeBrandColorRawTokens.royalBlue500)
        #expect(theme.categoricalTag.colorBgCategory1.dark == WireframeBrandColorRawTokens.royalBlue300)
    }

    @Test func colorBgCategory2() throws {
        #expect(theme.categoricalTag.colorBgCategory2.light == WireframeBrandColorRawTokens.flame500)
        #expect(theme.categoricalTag.colorBgCategory2.dark == WireframeBrandColorRawTokens.flame300)
    }

    @Test func colorBgCategory3() throws {
        #expect(theme.categoricalTag.colorBgCategory3.light == WireframeBrandColorRawTokens.colorMountainMeadow600)
        #expect(theme.categoricalTag.colorBgCategory3.dark == WireframeBrandColorRawTokens.colorMountainMeadow400)
    }

    @Test func colorBgCategory4() throws {
        #expect(theme.categoricalTag.colorBgCategory4.light == WireframeBrandColorRawTokens.colorGoldTips500)
        #expect(theme.categoricalTag.colorBgCategory4.dark == WireframeBrandColorRawTokens.colorGoldTips400)
    }

    @Test func colorBgCategory5() throws {
        #expect(theme.categoricalTag.colorBgCategory5.light == WireframeBrandColorRawTokens.colorLightIndigo500)
        #expect(theme.categoricalTag.colorBgCategory5.dark == WireframeBrandColorRawTokens.colorLightIndigo300)
    }

    @Test func colorContent() throws {
        #expect(theme.categoricalTag.colorContent.light == WireframeBrandColorRawTokens.functionalGrayDark960)
        #expect(theme.categoricalTag.colorContent.dark == WireframeBrandColorRawTokens.functionalGrayDark960)
    }
}

// swiftlint:enable type_name
