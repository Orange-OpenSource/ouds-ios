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

/// A class which wraps all **size semantic tokens**, *multiple* or not, and expose them.
/// This provider should be integrated as a `AllSizeSemanticTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// Closed tokens of dimensions (`AllDimensionSemanticTokensProvider`) are used so as to keep consistancy beweetn Figma specifications and library for developers.
///
/// ```swift
///     // Define your own provider for size semantic tokens
///     class CustomSizeTokensProvider: OrangeThemeSizeSemanticTokensProvider {
///
///         // Then override the size semantic tokens you want, using the dimension raw tokens available
///
///         override var sizeIconDecorative2xl: SizeSemanticToken {
///             DimensionRawTokens.dimension300
///         }
///
///         override var sizeIconDecorativeMd: SizeSemanticToken {
///             DimensionRawTokens.dimension900
///         }
/// }
/// ```
///
/// Then, you can give this `CustomSizeTokensProvider` to your own theme implementation:
///
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(sizes: CustomSizeTokensProvider(dimensions: CustomDimensionSemanticTokensProvider()))
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(sizes: CustomSizeTokensProvider(dimensions: CustomDimensionSemanticTokensProvider()))
/// ```
///
/// - Since: 0.8.0
open class OrangeThemeSizeSemanticTokensProvider: AllSizeSemanticTokensProvider {

    /// Provider of dimension semantic tokens to use for spaces as the Swift package exposes "closed" tokens of Figma
    public let dimensions: AllDimensionSemanticTokensProvider

    /// Intializes the provider
    /// - Parameter dimensions: Provider for dimension semantic tokens. If nil, a default one will be used (``OrangeThemeDimensionSemanticTokensProvider``)
    public init(dimensions: AllDimensionSemanticTokensProvider? = nil) {
        OL.debug("Init of OrangeThemeSizeSemanticTokensProvider")
        self.dimensions = (dimensions ?? OrangeThemeDimensionSemanticTokensProvider())
    }

    deinit {}

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of SizeSemanticTokens and SizeMultipleSemanticTokens are not here
    // but in Core/Themes/Orange/Values/SemanticTokens/OrangeTheme+SizeSemanticTokens.swift
    // and in Core/Themes/Orange/Values/SemanticTokens/OrangeTheme+SizeMultipleSemanticTokens.swift
    // This declaration of OrangeThemeSizeSemanticTokensProvider is here to allow to write documentation.
}
