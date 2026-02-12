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

/// A class which wraps all **component  tokens of quantity input** objects like `OUDSQuantityInput`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllQuantityInputComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
///
/// - Since: 0.17.0
final class OrangeCompactThemeQuantityInputComponentTokensProvider: AllQuantityInputComponentTokensProvider {

    /// Provider of size semantic tokens to use for quantity input component
    let sizes: AllSizeSemanticTokensProvider

    /// Provider of space semantic tokens to use for quantity input component
    let spaces: AllSpaceSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `OUDSInputTag`
    /// - Parameters:
    ///    - sizes: Provider for borders semantic tokens. If nil, a default one will be used (``OrangeCompactThemeSizeSemanticTokensProvider``)
    ///    - spaces: Provider for _ semantic tokens. If nil, a default one will be used (``OrangeCompactThemeSpaceSemanticTokensProvider``)
    init(sizes: AllSizeSemanticTokensProvider? = nil,
         spaces: AllSpaceSemanticTokensProvider? = nil)
    {
        OL.debug("Init of OrangeCompactThemeQuantityInputComponentTokensProvider")
        self.sizes = (sizes ?? OrangeCompactThemeSizeSemanticTokensProvider())
        self.spaces = (spaces ?? OrangeCompactThemeSpaceSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeCompactThemeQuantityInputComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of QuantityInputComponentTokens is not here but in Core/Themes/OrangeCompact/Values/ComponentTokens/OrangeCompactTheme+QuantityInputComponentTokens.swift
    // This declaration of OrangeCompactThemeQuantityInputComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
