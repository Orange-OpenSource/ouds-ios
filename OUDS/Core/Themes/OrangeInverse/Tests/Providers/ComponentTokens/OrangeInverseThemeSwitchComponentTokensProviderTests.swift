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

@testable import OUDSThemesOrangeInverse
import Testing

// swiftlint:disable type_name

/// Check if the component tokens provider under testsh as the default semantic token providers with the expected types.
struct OrangeInverseThemeSwitchComponentTokensProviderTests {

    private var provider: OrangeInverseThemeSwitchComponentTokensProvider

    init() {
        provider = OrangeInverseThemeSwitchComponentTokensProvider()
    }

    // MARK: - Tests

    @Test func defaultSizeSemanticTokensProvider() throws {
        #expect(provider.sizes is OrangeInverseThemeSizeSemanticTokensProvider)
    }

    @Test func defaultBorderSemanticTokensProvider() throws {
        #expect(provider.borders is OrangeInverseThemeBorderSemanticTokensProvider)
    }

    @Test func defaultColorSemanticTokensProvider() throws {
        #expect(provider.colors is OrangeInverseThemeColorSemanticTokensProvider)
    }

    @Test func defaultSpaceSemanticTokensProvider() throws {
        #expect(provider.spaces is OrangeInverseThemeSpaceSemanticTokensProvider)
    }

    @Test func defaultOpacitySemanticTokensProvider() throws {
        #expect(provider.opacities is OrangeInverseThemeOpacitySemanticTokensProvider)
    }

    @Test func defaultDimensionsSemanticTokensProvider() throws {
        #expect(provider.dimensions is OrangeInverseThemeDimensionSemanticTokensProvider)
    }
}

// swiftlint:enable type_name
