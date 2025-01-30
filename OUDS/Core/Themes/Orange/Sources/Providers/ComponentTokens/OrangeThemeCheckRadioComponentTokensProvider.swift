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
import OUDSTokensSemantic

// swiftlint:disable type_name

/// A class which wraps all **component  tokens of check radio** for *radio button* and *checkboxes* objects
/// like `OUDSRadioButton` or `OUDSCheckbox`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllCheckRadioComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// Custom themes can use subclass of ``OrangeThemeCheckRadioComponentTokensProvider`` and apply the provider they need.
/// It implements also the protocol `CheckRadioComponentTokens` so as to expose the component tokens for *radio button*
/// and *checkboxes* through any `OUDSTheme`.
/// *Radio button* and *checkboxes* components tokens are defined with raw and semantic tokens of sizes (from `AllSizeSemanticTokensProvider`),
/// and dimensions (`DimensionRawTokens`). These components share the same type of tokens which are all gather here.
///
/// ```swift
///     // Define your own provider for radio / check component tokens
///     // by inheriting from existing provider
///     class CustomCheckRadioComponentTokensProvider: OrangeThemeCheckRadioComponentTokensProvider {
///
///         // Then override the radio / check component tokens you want.
///
///         override var checkRadioSizeSelector: SizeSemanticToken { sizes.sizeIconWithLabelLargeSizeXl }
///
///         override var checkRadioSizeMaxHeightAssetsContainer: DimensionRawToken { DimensionRawTokens.dimension1000 }
///
///         // ...
///     }
///
///     // Or define your own provider from scratch
///     class CustomCheckRadioComponentTokensProvider: CheckRadioComponentTokens {
///
///         // And implement hunders of tokens.
///         // You are allowed to give semantic tokens providers if you want to define values.
///     }
/// ```
///
/// Then, you can give this `CustomCheckRadioComponentTokensProvider` to your own theme implementation:
///
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(tokensProviders: [ CustomCheckRadioComponentTokensProvider(), ... ])
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(tokensProviders: [ CustomCheckRadioComponentTokensProvider(), ... ])
/// ```
///
/// - Since: 0.10.0
open class OrangeThemeCheckRadioComponentTokensProvider: AllCheckRadioComponentTokensProvider {

    /// Provider of size semantic tokens to use for check / radio sizes
    public let sizes: AllSizeSemanticTokensProvider

    /// Defines a provider of component tokens dedicated to `OUDSChip`
    /// - Parameter sizes: Provider for size semantic tokens
    public init(sizes: AllSizeSemanticTokensProvider) {
        OL.debug("Init of OrangeThemeCheckRadioComponentTokensProvider")
        self.sizes = sizes
    }

    deinit { }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of CheckRadioComponentTokens is not here but in Core/Themes/Orange/Values/ComponentTokens/OrangeTheme+CheckRadioComponentTokens.swift
    // This declaration of OrangeThemeCheckRadioComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
