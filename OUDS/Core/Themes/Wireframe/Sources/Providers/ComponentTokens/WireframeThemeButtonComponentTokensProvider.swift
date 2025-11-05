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
import OUDSThemesContract

// swiftlint:disable type_name

/// A class which wraps all **component  tokens of buttons** for *button* objects like `OUDSButton`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllButtonComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// It implements also the protocol `ButtonComponentTokens` so as to expose the component tokens for *buttons* through any `OUDSTheme`.
/// *Button* components tokens are defined with raw and semantic tokens of sizes (from `AllSizeSemanticTokensProvider`), borders
/// spaces (from `AllSpaceSemanticTokensProvider`).
///
/// - Since: 0.17.0
final class WireframeThemeButtonComponentTokensProvider: AllButtonComponentTokensProvider {

    /// Provider of size semantic tokens to use for button sizes
    let sizes: AllSizeSemanticTokensProvider

    /// Provider of border semantic tokens to use for button borders
    let borders: AllBorderSemanticTokensProvider

    /// Provider of color semantic tokens to use for button colors
    let colors: AllColorSemanticTokensProvider

    /// Provider of spaces semantic tokens to use for button spaces
    let spaces: AllSpaceSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `OUDSButton`
    /// - Parameters:
    ///    - sizes: Provider for size semantic tokens. If nil, a default one will be used (``WireframeThemeSizeSemanticTokensProvider``)
    ///    - borders: Provider for border semantic tokens. If nil, a default one will be used (``WireframeThemeBorderSemanticTokensProvider``)
    ///    - colors: Provider for color semantic tokens. If nil, a default one will be used (``WireframeThemeColorSemanticTokensProvider``)
    ///    - spaces: Provider for space semantic tokens. If nil, a default one will be used (``WireframeThemeSpaceSemanticTokensProvider``)
    init(sizes: AllSizeSemanticTokensProvider? = nil,
         borders: AllBorderSemanticTokensProvider? = nil,
         colors: AllColorSemanticTokensProvider? = nil,
         spaces: AllSpaceSemanticTokensProvider? = nil)
    {
        OL.debug("Init of WireframeThemeButtonComponentTokensProvider")
        self.sizes = (sizes ?? WireframeThemeSizeSemanticTokensProvider())
        self.borders = (borders ?? WireframeThemeBorderSemanticTokensProvider())
        self.colors = (colors ?? WireframeThemeColorSemanticTokensProvider())
        self.spaces = (spaces ?? WireframeThemeSpaceSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "WireframeThemeButtonComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of ButtonComponentTokens is not here but in Core/Themes/Wireframe/Values/ComponentTokens/WireframeTheme+ButtonComponentTokens.swift
    // This declaration of WireframeThemeButtonComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
