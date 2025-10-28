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

// swiftlint:disable type_name

/// A class which wraps all **component  tokens of quantity input** objects like `OUDSQuantityInput`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllQuantityInputComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// Custom themes can use subclass of ``OrangeThemeQuantityInputComponentTokensProvider`` and apply the provider they need.
/// It implements also the protocol `QuantityInputComponentTokens` so as to expose the component tokens for *tag inputs* through any `OUDSTheme`.
/// *Quantity inputs* components tokens are defined with semantic tokens of sizes (from `AllSizeSemanticTokensProvider`),
/// and spaces (from `AllSpaceSemanticTokensProvider`).
///
/// ```swift
///     // Define your own provider for quantity input component tokens
///     // by inheriting from existing provider
///     class CustomQuantityInputComponentTokensProvider: OrangeThemeQuantityInputComponentTokensProvider {
///
///         // Then override the tag component tokens you want.
///
///         override var quantityInputSpaceColumnGapQuantitySelector: SpaceSemanticToken { spaces.spaceColumnGap2Xs }
///
///         override var quantityInputSizeMinWidth: SizeSemanticToken { DimensionRawTokens._3000 }
///
///         // ...
///     }
///
///     // Or define your own provider from scratch
///     class CustomQuantityInputComponentTokensProvider: QuantityInputComponentTokens {
///
///         // And implement maybe hundreds of tokens.
///         // You are allowed to use semantic tokens providers if you want to define values.
///     }
/// ```
///
/// Then, you can give this `CustomQuantityInputComponentTokensProvider` to your own theme implementation:
///
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(quantityInput: CustomQuantityInputComponentTokensProvider())
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(quantityInput: CustomQuantityInputComponentTokensProvider())
/// ```
///
/// It is also possible to use your own semantic tokens providers for this component tokens providers:
///
/// ```swift
///     // Uses by default here:
///     // - OrangeThemeSizeSemanticTokensProvider for sizes
///     // - OrangeThemeSpaceSemanticTokensProvider for spaces
///     let quantityInputComponentTokensProvider = OrangeThemeQuantityInputComponentTokensProvider()
///
///     // Or use your own space, size and border semantic tokens providers (or only some)
///     let quantityInputComponentTokensProvider = OrangeThemeQuantityInputComponentTokensProvider(
///                                             sizes: CustomSizesSemanticTokensProvider(),
///                                             spaces: CustomSpacesSemanticTokensProvider())
/// ```
///
/// - Since: 0.17.0
open class OrangeThemeQuantityInputComponentTokensProvider: AllQuantityInputComponentTokensProvider {

    /// Provider of size semantic tokens to use for quantity input component
    public let sizes: AllSizeSemanticTokensProvider

    /// Provider of space semantic tokens to use for quantity input component
    public let spaces: AllSpaceSemanticTokensProvider

    #if DEBUG
    private nonisolated(unsafe) static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `OUDSQuantityInput`
    /// - Parameters:
    ///    - sizes: Provider for borders semantic tokens. If nil, a default one will be used (``OrangeThemeSizeSemanticTokensProvider``)
    ///    - spaces: Provider for _ semantic tokens. If nil, a default one will be used (``OrangeThemeSpaceSemanticTokensProvider``)
    public init(sizes: AllSizeSemanticTokensProvider? = nil,
                spaces: AllSpaceSemanticTokensProvider? = nil)
    {
        OL.debug("Init of OrangeThemeQuantityInputComponentTokensProvider")
        self.sizes = (sizes ?? OrangeThemeSizeSemanticTokensProvider())
        self.spaces = (spaces ?? OrangeThemeSpaceSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeThemeQuantityInputComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of QuantityInputComponentTokens is not here but in Core/Themes/Orange/Values/ComponentTokens/OrangeTheme+QuantityInputComponentTokens.swift
    // This declaration of OrangeThemeQuantityInputComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
