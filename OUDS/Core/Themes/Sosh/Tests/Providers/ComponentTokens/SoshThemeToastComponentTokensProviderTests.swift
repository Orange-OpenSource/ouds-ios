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
struct SoshThemeToastComponentTokensProviderTests {

    private var provider: SoshThemeToastComponentTokensProvider

    init() {
        provider = SoshThemeToastComponentTokensProvider()
    }

    // MARK: - Tests

    @Test func defaultBordersSemanticTokensProvider() throws {
        #expect(provider.borders is SoshThemeBorderSemanticTokensProvider)
    }

    @Test func defaultDimensionsSemanticTokensProvider() throws {
        #expect(provider.dimensions is SoshThemeDimensionSemanticTokensProvider)
    }

    @Test func defaultSizesSemanticTokensProvider() throws {
        #expect(provider.sizes is SoshThemeSizeSemanticTokensProvider)
    }
}

// swiftlint:enable type_name
