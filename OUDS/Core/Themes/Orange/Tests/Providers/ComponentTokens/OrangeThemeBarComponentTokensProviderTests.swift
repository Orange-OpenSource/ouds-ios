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
import Testing

// swiftlint:disable type_name

/// Check if the component tokens provider under tests has the default semantic token providers with the expected types.
struct OrangeThemeBarComponentTokensProviderTests {

    private var provider: OrangeThemeBarComponentTokensProvider

    init() {
        provider = OrangeThemeBarComponentTokensProvider()
    }

    // MARK: - Tests

    @Test func defaultSizesSemanticTokensProvider() throws {
        #expect(provider.sizes is OrangeThemeSizeSemanticTokensProvider)
    }

    @Test func defaultBordersSemanticTokensProvider() throws {
        #expect(provider.borders is OrangeThemeBorderSemanticTokensProvider)
    }

    @Test func defaultColorsSemanticTokensProvider() throws {
        #expect(provider.colors is OrangeThemeColorSemanticTokensProvider)
    }

    @Test func defaultOpacitiesSemanticTokensProvider() throws {
        #expect(provider.opacities is OrangeThemeOpacitySemanticTokensProvider)
    }

    @Test func defaultEffectsSemanticTokensProvider() throws {
        #expect(provider.effects is OrangeThemeEffectSemanticTokensProvider)
    }
}

// swiftlint:enable type_name
