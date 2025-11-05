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

@testable import OUDSThemesWireframe
import Testing

// swiftlint:disable type_name

/// Check if the semantic tokens provider for size tokens under test as the good rules implementations
struct WireframeThemeSizeSemanticTokensProviderTests {

    private var provider: WireframeThemeSizeSemanticTokensProvider

    init() {
        provider = WireframeThemeSizeSemanticTokensProvider()
    }

    // MARK: - Tests

    @Test func defaultDimensionsSemanticTokensProvider() throws {
        #expect(provider.dimensions is WireframeThemeDimensionSemanticTokensProvider)
    }
}

// swiftlint:enable type_name
