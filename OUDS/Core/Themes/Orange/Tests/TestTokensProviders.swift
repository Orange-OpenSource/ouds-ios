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

import OUDS
import OUDSThemesOrange
import OUDSTokensSemantic
import XCTest

// swiftlint:disable required_deinit

/// Allows to test the `TokensProviders` ad helper functions checking wether a provider is missing or not
final class TestTokensProviders: XCTestCase {

    // MARK: - Tests cases

    func testMissingTokensProviderAreFound() {

        // Semantic tokens providers

        assertMissingTokensProviderIsFound(byType: AllBorderSemanticTokensProvider.self, "AllBorderSemanticTokensProvider")
        assertMissingTokensProviderIsFound(byType: AllColorSemanticTokensProvider.self, "AllColorSemanticTokensProvider")
        assertMissingTokensProviderIsFound(byType: AllElevationSemanticTokensProvider.self, "AllElevationSemanticTokensProvider")
        assertMissingTokensProviderIsFound(byType: AllFontSemanticTokensProvider.self, "AllFontSemanticTokensProvider")
        assertMissingTokensProviderIsFound(byType: AllGridSemanticTokensProvider.self, "AllGridSemanticTokensProvider")
        assertMissingTokensProviderIsFound(byType: AllOpacitySemanticTokensProvider.self, "AllOpacitySemanticTokensProvider")
        assertMissingTokensProviderIsFound(byType: AllSizeSemanticTokensProvider.self, "AllSizeSemanticTokensProvider")
        assertMissingTokensProviderIsFound(byType: AllSpaceSemanticTokensProvider.self, "AllSpaceSemanticTokensProvider")

        // Component tokens providers

        assertMissingTokensProviderIsFound(byType: AllButtonComponentTokensProvider.self, "AllButtonComponentTokensProvider")
        assertMissingTokensProviderIsFound(byType: AllLinkComponentTokensProvider.self, "AllLinkComponentTokensProvider")
        assertMissingTokensProviderIsFound(byType: AllSelectComponentTokensProvider.self, "AllSelectComponentTokensProvider")
        assertMissingTokensProviderIsFound(byType: AllSkeletonComponentTokensProvider.self, "AllSkeletonComponentTokensProvider")
        assertMissingTokensProviderIsFound(byType: AllTagComponentTokensProvider.self, "AllTagComponentTokensProvider")
        assertMissingTokensProviderIsFound(byType: AllSwitchComponentTokensProvider.self, "AllSwitchComponentTokensProvider")
        assertMissingTokensProviderIsFound(byType: AllListItemComponentTokensProvider.self, "AllListItemComponentTokensProvider")
        assertMissingTokensProviderIsFound(byType: AllChipComponentTokensProvider.self, "AllChipComponentTokensProvider")
        assertMissingTokensProviderIsFound(byType: AllBreadcrumbComponentTokensProvider.self, "AllBreadcrumbComponentTokensProvider")
        assertMissingTokensProviderIsFound(byType: AllBulletListComponentTokensProvider.self, "AllBulletListComponentTokensProvider")
        assertMissingTokensProviderIsFound(byType: AllInputTextComponentTokensProvider.self, "AllInputTextComponentTokensProvider")
        assertMissingTokensProviderIsFound(byType: AllBadgeComponentTokensProvider.self, "AllBadgeComponentTokensProvider")
        assertMissingTokensProviderIsFound(byType: AllCheckRadioComponentTokensProvider.self, "AllCheckRadioComponentTokensProvider")

        // NOTE: Add tests for new component tokens provider here
    }

    // MARK: - Helper

    private func assertMissingTokensProviderIsFound<T>(byType: T.Type, _ debugName: String) {
        print("🧪 Testing type \(T.self) / \(debugName)")

        // Given
        let tokensProviders: TokensProviders = allTokensProviders(except: T.self)

        // When
        let missingProviders = tokensProviders.missingProviders() // The function to test

        // Then
        XCTAssertTrue(missingProviders.count == 1)
        XCTAssertEqual(missingProviders[0], debugName)
    }

    /// Forges all the providers of tokens the theme must have (don't care about implementation, jut just type)
    private func allTokensProviders<T>(except: T.Type) -> TokensProviders {

        // Prepare all tokens providers

        let borders = OrangeThemeBorderSemanticTokensProvider()
        let sizes = OrangeThemeSizeSemanticTokensProvider()
        let spaces = OrangeThemeSpaceSemanticTokensProvider()
        let colors = OrangeThemeColorSemanticTokensProvider()
        let opacities = OrangeThemeOpacitySemanticTokensProvider()

        let allTokensProviders: TokensProviders = [
            colors,
            borders,
            OrangeThemeElevationSemanticTokensProvider(),
            OrangeThemeFontSemanticTokensProvider(),
            OrangeThemeGridSemanticTokensProvider(),
            opacities,
            sizes,
            spaces,
            OrangeThemeButtonComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces),
            OrangeThemeLinkComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces),
            OrangeThemeSelectComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces),
            OrangeThemeSkeletonComponentTokensProvider(colors: colors),
            OrangeThemeTagComponentTokensProvider(colors: colors),
            OrangeThemeSwitchComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces),
            OrangeThemeListItemComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces),
            OrangeThemeChipComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces),
            OrangeThemeBreadcrumbComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces),
            OrangeThemeBulletListComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces),
            OrangeThemeInputTextComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces),
            OrangeThemeBadgeComponentTokensProvider(sizes: sizes),
            OrangeThemeCheckRadioComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, opacities: opacities),

            // NOTE: Add new component tokens providers here
        ]

        // But remove the one we don't want
        return allTokensProviders.filter { p in !(p is T) }
    }
}

// swiftlint:enable required_deinit
