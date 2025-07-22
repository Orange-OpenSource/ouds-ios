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

/// A class which wraps all **component  tokens of quantity input** objects like `OUDSQuantityInput`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllQuantityInputComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
///
/// - Since: 0.17.0
final class OrangeInverseThemeQuantityInputComponentTokensProvider: AllQuantityInputComponentTokensProvider {

    /// Provider of size semantic tokens to use for quantity input component
    public let sizes: AllSizeSemanticTokensProvider

    /// Provider of space semantic tokens to use for quantity input component
    public let spaces: AllSpaceSemanticTokensProvider

    #if DEBUG
    private nonisolated(unsafe) static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `OUDSTagInput`
    /// - Parameters:
    ///    - sizes: Provider for borders semantic tokens. If nil, a default one will be used (``OrangeInverseThemeSizeSemanticTokensProvider``)
    ///    - spaces: Provider for dimension semantic tokens. If nil, a default one will be used (``OrangeInverseThemeSpaceSemanticTokensProvider``)
    public init(sizes: AllSizeSemanticTokensProvider? = nil,
                spaces: AllSpaceSemanticTokensProvider? = nil)
    {
        OL.debug("Init of OrangeInverseThemeQuantityInputComponentTokensProvider")
        self.sizes = (sizes ?? OrangeInverseThemeSizeSemanticTokensProvider())
        self.spaces = (spaces ?? OrangeInverseThemeSpaceSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeInverseThemeQuantityInputComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of TagInputComponentTokens is not here but in Core/Themes/OrangeInverse/Values/ComponentTokens/OrangeInverseTheme+QuantityInputComponentTokens.swift
    // This declaration of OrangeInverseThemeQuantityInputComponentTokensProvider is here also to allow to write documentation.
}
