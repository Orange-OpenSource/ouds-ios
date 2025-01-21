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

import OUDSFoundations
import OUDSTokensComponent
import OUDSTokensSemantic

// MARK: - Tokens Providers Wrapper

/// A set of `TokenProvider` to give to theme (in ``OUDSTheme`` init) to as to extract individually the providers
public typealias TokensProviders = [TokensProvider]

extension Array where Element == TokensProvider {

    func get<T>() -> T {
        for item in self {
            if let castedItem = item as? T {
                return castedItem
            }
        }
        OL.fatal("Tokens provider of type '\(T.self)' not found!")
    }

    // swiftlint:disable cyclomatic_complexity
    // Mandatory to disable cyclomatic_complexity, lot of checks...
    /// Checks if some tokens providers are missing and return their names in case of.
    /// - Returns: Empty array if no missing provider, otherwise the name of the providers not found in this ``TokensProviders``
    public func missingProviders() -> [String] {
        var missingProviders = [String]()

        // Check we have all the expected semantic tokens providers

        if !assertAvailability(of: AllBorderSemanticTokensProvider.self) {
            missingProviders.append("AllBorderSemanticTokensProvider")
        }

        if !assertAvailability(of: AllColorSemanticTokensProvider.self) {
            missingProviders.append("AllColorSemanticTokensProvider")
        }

        if !assertAvailability(of: AllElevationSemanticTokensProvider.self) {
            missingProviders.append("AllElevationSemanticTokensProvider")
        }

        if !assertAvailability(of: AllFontSemanticTokensProvider.self) {
            missingProviders.append("AllFontSemanticTokensProvider")
        }

        if !assertAvailability(of: AllGridSemanticTokensProvider.self) {
            missingProviders.append("AllGridSemanticTokensProvider")
        }

        if !assertAvailability(of: AllOpacitySemanticTokensProvider.self) {
            missingProviders.append("AllOpacitySemanticTokensProvider")
        }

        if !assertAvailability(of: AllSizeSemanticTokensProvider.self) {
            missingProviders.append("AllSizeSemanticTokensProvider")
        }

        if !assertAvailability(of: AllSpaceSemanticTokensProvider.self) {
            missingProviders.append("AllSpaceSemanticTokensProvider")
        }

        // Check we have all the expected component tokens providers

        if !assertAvailability(of: AllButtonComponentTokensProvider.self) {
            missingProviders.append("AllButtonComponentTokensProvider")
        }

        if !assertAvailability(of: AllLinkComponentTokensProvider.self) {
            missingProviders.append("AllLinkComponentTokensProvider")
        }

        if !assertAvailability(of: AllSelectComponentTokensProvider.self) {
            missingProviders.append("AllSelectComponentTokensProvider")
        }

        if !assertAvailability(of: AllSkeletonComponentTokensProvider.self) {
            missingProviders.append("AllSkeletonComponentTokensProvider")
        }

        if !assertAvailability(of: AllTagComponentTokensProvider.self) {
            missingProviders.append("AllTagComponentTokensProvider")
        }

        // NOTE: Add new component tokens providers here if mandatory
        return missingProviders
    }
    // swiftlint:enable cyclomatic_complexity

    private func assertAvailability<T>(of type: T.Type) -> Bool {
        self.contains(where: { provider in provider is T })
    }
}

// MARK: - Root

/// Protocol to add to any semantic or component tokens provider so as to be gather with all providers and given to the theme for initialization
public protocol TokensProvider { }

// MARK: - Semantic tokens providers

/// Something which provides all semantic tokens of border
public protocol AllBorderSemanticTokensProvider: TokensProvider, BorderSemanticTokens { }

/// Something which provides all semantic tokens of colors
public protocol AllColorSemanticTokensProvider: TokensProvider, ColorSemanticTokens, ColorMultipleSemanticTokens { }

/// Something which provides all semantic tokens of elevation
public protocol AllElevationSemanticTokensProvider: TokensProvider, ElevationSemanticTokens, ElevationCompositeSemanticTokens, ElevationMultipleSemanticTokens { }

/// Something which provides all semantic tokens of font
public protocol AllFontSemanticTokensProvider: TokensProvider, FontSemanticTokens, FontCompositeSemanticTokens, FontMultipleSemanticTokens { }

/// Something which provides all semantic tokens of grid
public protocol AllGridSemanticTokensProvider: TokensProvider, GridSemanticTokens { }

/// Something which provides all semantic tokens of opacity
public protocol AllOpacitySemanticTokensProvider: TokensProvider, OpacitySemanticTokens { }

/// Something which provides all semantic tokens of size
public protocol AllSizeSemanticTokensProvider: TokensProvider, SizeSemanticTokens, SizeMultipleSemanticTokens { }

/// Something which provides all semantic tokens of space
public protocol AllSpaceSemanticTokensProvider: TokensProvider, SpaceSemanticTokens, SpaceMultipleSemanticTokens { }

// MARK: - Component tokens providers

/// Something which provides all component tokens of button
public protocol AllButtonComponentTokensProvider: TokensProvider, ButtonComponentTokens { }

/// Something which provides all component tokens of link
public protocol AllLinkComponentTokensProvider: TokensProvider, LinkComponentTokens { }

/// Something which provides all component tokens of select
public protocol AllSelectComponentTokensProvider: TokensProvider, SelectComponentTokens { }

/// Something which provides all component tokens of skeleton
public protocol AllSkeletonComponentTokensProvider: TokensProvider, SkeletonComponentTokens { }

/// Something which provides all component tokens of tag
public protocol AllTagComponentTokensProvider: TokensProvider, TagComponentTokens { }

// NOTE: Add new definitions of protocols here
