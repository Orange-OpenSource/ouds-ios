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

@testable import OUDSThemesOrangeCompact
import Testing

// swiftlint:disable type_name

/// Check if the component tokens provider under tests has the default semantic token providers with the expected types.
struct OrangeCompactThemeBarComponentTokensProviderTests {

    private var provider: OrangeCompactThemeBarComponentTokensProvider

    init() {
        provider = OrangeCompactThemeBarComponentTokensProvider()
    }

    // MARK: - Tests

    @Test func defaultSizesSemanticTokensProvider() throws {
        #expect(provider.sizes is OrangeCompactThemeSizeSemanticTokensProvider)
    }

    @Test func defaultBordersSemanticTokensProvider() throws {
        #expect(provider.borders is OrangeCompactThemeBorderSemanticTokensProvider)
    }

    @Test func defaultColorsSemanticTokensProvider() throws {
        #expect(provider.colors is OrangeCompactThemeColorSemanticTokensProvider)
    }

    @Test func defaultOpacitiesSemanticTokensProvider() throws {
        #expect(provider.opacities is OrangeCompactThemeOpacitySemanticTokensProvider)
    }

    @Test func defaultEffectsSemanticTokensProvider() throws {
        #expect(provider.effects is OrangeCompactThemeEffectSemanticTokensProvider)
    }
}

// swiftlint:enable type_name
