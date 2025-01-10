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

    func verify() {
        // Check we have all the expected semantic tokens providers

        assertAvailability(of: AllBorderSemanticTokensProvider.self)
        assertAvailability(of: AllColorSemanticTokensProvider.self)
        assertAvailability(of: AllElevationSemanticTokensProvider.self)
        assertAvailability(of: AllFontSemanticTokensProvider.self)
        assertAvailability(of: AllGridSemanticTokensProvider.self)
        assertAvailability(of: AllOpacitySemanticTokensProvider.self)
        assertAvailability(of: AllSizeSemanticTokensProvider.self)
        assertAvailability(of: AllSpaceSemanticTokensProvider.self)

        // Check we have all the expected component tokens providers

        assertAvailability(of: AllButtonComponentTokensProvider.self)
        assertAvailability(of: AllLinkComponentTokensProvider.self)
        assertAvailability(of: AllSelectComponentTokensProvider.self)
        assertAvailability(of: AllSkeletonComponentTokensProvider.self)
        assertAvailability(of: AllTagComponentTokensProvider.self)
    }

    private func assertAvailability<T>(of type: T.Type) {
        if !self.contains(where: { provider in provider is T }) {
            fatalError("Tokens provider of type '\(type)' not found!")
        } else {
            OUDSLogger.debug("Tokens provider of type '\(type)' is available")
        }
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
