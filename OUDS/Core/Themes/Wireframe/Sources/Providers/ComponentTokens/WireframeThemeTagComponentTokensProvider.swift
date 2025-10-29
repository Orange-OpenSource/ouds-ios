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
import OUDSFoundations

/// A class which wraps all **component  tokens of tag** for *tag* objects like `OUDSTag`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllTagComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// It implements also the protocol `TagComponentTokens` so as to expose the component tokens for *tags* through any `OUDSTheme`.
/// *Tags* components tokens are defined with semantic tokens of dimensions (`AllDimensionSemanticTokensProvider`) ,
/// spaces (from `AllSpaceSemanticTokensProvider`),  sizes (from `AllSizeSemanticTokensProvider`)
/// and borders (from `AllBorderSemanticTokensProvider`).
///
/// - Since: 0.17.0
final class WireframeThemeTagComponentTokensProvider: AllTagComponentTokensProvider {

    /// Provider of size semantic tokens to use for tag sizes
    let sizes: AllSizeSemanticTokensProvider

    /// Provider of border semantic tokens to use for tag borders
    let borders: AllBorderSemanticTokensProvider

    /// Provider of space semantic tokens to use for tag spaces
    let spaces: AllSpaceSemanticTokensProvider

    /// Provider of _ semantic tokens to use for spaces as the Swift package exposes "closed" tokens of Figma
    let dimensions: AllDimensionSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `OUDSTag`
    /// - Parameters:
    ///    - sizes: Provider for sizes semantic tokens. If nil, a default one will be used (``WireframeThemeSizeSemanticTokensProvider``)
    ///    - borders: Provider for borders semantic tokens. If nil, a default one will be used (``WireframeThemeBorderSemanticTokensProvider``)
    ///    - spaces: Provider for spaces semantic tokens. If nil, a default one will be used (``WireframeThemeSpaceSemanticTokensProvider``)
    ///    - dimensions: Provider for _ semantic tokens. If nil, a default one will be used (``WireframeThemeDimensionSemanticTokensProvider``)
    init(sizes: AllSizeSemanticTokensProvider? = nil,
         borders: AllBorderSemanticTokensProvider? = nil,
         spaces: AllSpaceSemanticTokensProvider? = nil,
         dimensions: AllDimensionSemanticTokensProvider? = nil)
    {
        OL.debug("Init of WireframeThemeTagComponentTokensProvider")
        self.sizes = (sizes ?? WireframeThemeSizeSemanticTokensProvider())
        self.borders = (borders ?? WireframeThemeBorderSemanticTokensProvider())
        self.spaces = (spaces ?? WireframeThemeSpaceSemanticTokensProvider())
        self.dimensions = (dimensions ?? WireframeThemeDimensionSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "WireframeThemeTagComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of TagComponentTokens is not here but in Core/Themes/Wireframe/Values/ComponentTokens/WireframeTheme+TagComponentTokens.swift
    // This declaration of WireframeThemeTagComponentTokensProvider is here also to allow to write documentation.
}
