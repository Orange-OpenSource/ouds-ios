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
struct OrangeCompactThemeAlertComponentTokensProviderTests {

    private var provider: OrangeCompactThemeAlertComponentTokensProvider

    init() {
        provider = OrangeCompactThemeAlertComponentTokensProvider()
    }

    // MARK: - Tests

    @Test func defaultSpaceSemanticTokensProvider() throws {
        #expect(provider.spaces is OrangeCompactThemeSpaceSemanticTokensProvider)
    }

    @Test func defaultBorderSemanticTokensProvider() throws {
        #expect(provider.borders is OrangeCompactThemeBorderSemanticTokensProvider)
    }

    @Test func defaultSizeSemanticTokensProvider() throws {
        #expect(provider.sizes is OrangeCompactThemeSizeSemanticTokensProvider)
    }
}

// swiftlint:enable type_name
