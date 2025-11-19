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

@testable import OUDSThemesSosh
import Testing

// swiftlint:disable type_name

/// Check if the component tokens provider under tests has the default semantic token providers with the expected types.
struct SoshThemeBarComponentTokensProviderTests {

    private var provider: SoshThemeBarComponentTokensProvider

    init() {
        provider = SoshThemeBarComponentTokensProvider()
    }

    // MARK: - Tests

    @Test func defaultSizesSemanticTokensProvider() throws {
        #expect(provider.sizes is SoshThemeSizeSemanticTokensProvider)
    }

    @Test func defaultBordersSemanticTokensProvider() throws {
        #expect(provider.borders is SoshThemeBorderSemanticTokensProvider)
    }

    @Test func defaultColorsSemanticTokensProvider() throws {
        #expect(provider.colors is SoshThemeColorSemanticTokensProvider)
    }

    @Test func defaultOpacitiesSemanticTokensProvider() throws {
        #expect(provider.opacities is SoshThemeOpacitySemanticTokensProvider)
    }

    @Test func defaultEffectsSemanticTokensProvider() throws {
        #expect(provider.effects is SoshThemeEffectSemanticTokensProvider)
    }
}

// swiftlint:enable type_name
