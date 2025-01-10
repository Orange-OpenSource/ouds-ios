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

/// TODO
public typealias TokensProviders = [TokensProvider]

extension Array where Element == TokensProvider {

    func get<T>() -> T {
        for item in self {
            if let castedItem = item as? T {
                return castedItem
            }
        }
        fatalError("Tokens provider of type '\(T.self)' not found!")
    }

    // swiftlint:disable cyclomatic_complexity
    // Mandatory to disable cyclomatic_complexity, lot of checks...
    /// Checks if some tokens providers are missing and return their names
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

        return missingProviders
    }
    // swiftlint:enable cyclomatic_complexity

    private func assertAvailability<T>(of type: T.Type) -> Bool {
        self.contains(where: { provider in provider is T })
    }
}

// MARK: - Root

/// TODO
public protocol TokensProvider { }

// MARK: - Semantic tokens providers

/// TODO
public protocol AllBorderSemanticTokensProvider: TokensProvider, BorderSemanticTokens { }

/// TODO
public protocol AllColorSemanticTokensProvider: TokensProvider, ColorSemanticTokens, ColorMultipleSemanticTokens { }

/// TODO
public protocol AllElevationSemanticTokensProvider: TokensProvider, ElevationSemanticTokens, ElevationCompositeSemanticTokens, ElevationMultipleSemanticTokens { }

/// TODO
public protocol AllFontSemanticTokensProvider: TokensProvider, FontSemanticTokens, FontCompositeSemanticTokens, FontMultipleSemanticTokens { }

/// TODO
public protocol AllGridSemanticTokensProvider: TokensProvider, GridSemanticTokens { }

/// TODO
public protocol AllOpacitySemanticTokensProvider: TokensProvider, OpacitySemanticTokens { }

/// TODO
public protocol AllSizeSemanticTokensProvider: TokensProvider, SizeSemanticTokens, SizeMultipleSemanticTokens { }

/// TODO
public protocol AllSpaceSemanticTokensProvider: TokensProvider, SpaceSemanticTokens, SpaceMultipleSemanticTokens { }

// MARK: - Component tokens providers

/// TODO
public protocol AllButtonComponentTokensProvider: TokensProvider, ButtonComponentTokens { }

/// TODO
public protocol AllLinkComponentTokensProvider: TokensProvider, LinkComponentTokens { }

/// TODO
public protocol AllSelectComponentTokensProvider: TokensProvider, SelectComponentTokens { }

/// TODO
public protocol AllSkeletonComponentTokensProvider: TokensProvider, SkeletonComponentTokens { }

/// TODO
public protocol AllTagComponentTokensProvider: TokensProvider, TagComponentTokens { }
