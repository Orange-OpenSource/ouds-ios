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

@testable import OUDSThemesOrangeBusinessTools
import Testing

// swiftlint:disable type_name

/// Check if the component tokens provider under testsh as the default semantic token providers with the expected types.
struct OrangeBusinessToolsThemeSkeletonComponentTokensProviderTests {

    private var provider: OrangeBusinessToolsThemeSkeletonComponentTokensProvider

    init() {
        provider = OrangeBusinessToolsThemeSkeletonComponentTokensProvider()
    }

    // MARK: - Tests

    @Test func defaultColorSemanticTokensProvider() throws {
        #expect(provider.colors is OrangeBusinessToolsThemeColorSemanticTokensProvider)
    }
}

// swiftlint:enable type_name
