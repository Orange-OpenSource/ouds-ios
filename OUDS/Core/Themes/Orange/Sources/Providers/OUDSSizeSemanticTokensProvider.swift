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

/// A class which wraps all **size semantic tokens**, *multiple* or not, and expose them.
/// This provider should be integrated as a ``AllSizeSemanticTokensProvider`` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
///
/// ```swift
///     // Define your own provider for size semantic tokens
///     class CustomSizeTokensProvider: OUDSSizeSemanticTokensProvider {
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
///         super.init(sizes: CustomSizeTokensProvider(),
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(sizes: CustomSizeTokensProvider())
/// ```
open class OUDSSizeSemanticTokensProvider {

    /// Intializes the provider
    public init() {
        OUDSLogger.debug("Init of OUDSSizeSemanticTokensProvider")
    }

    deinit{ }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of SizeSemanticTokens and SizeMultipleSemanticTokens are not here
    // but in OUDS/OUDSTheme/OUDSTheme+SemanticTokens/OUDSTheme+SizeSemanticTokens.swift
    // and in OUDS/OUDSTheme/OUDSTheme+SemanticTokens/OUDSTheme+SizeMultipleSemanticTokens.swift.
    // This declaration of OUDSSizeSemanticTokensProvider is here to allow to write documentation.
}
