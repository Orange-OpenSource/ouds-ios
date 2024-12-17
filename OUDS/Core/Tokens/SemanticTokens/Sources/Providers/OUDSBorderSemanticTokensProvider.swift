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

/// A class which wraps all **border semantic tokens** and expose them.
/// This provider should be integrated as a ``AllBorderSemanticTokens`` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
///
/// ```swift
///     // Define your own provider for border semantic tokens
///     class CustomBorderTokensProvider: OUDSBorderSemanticTokensProvider {
///
///         // Then override the border semantic tokens you want, using the border raw tokens available
///
///         override var borderStyleDefault: BorderStyleSemanticToken {
///             BorderRawTokens.borderStyleDashed
///         }
///         override var borderWidthMedium: BorderWidthSemanticToken {
///             BorderRawTokens.borderWidth100
///         }
///         override var borderRadiusTall: BorderRadiusSemanticToken {
///             BorderRawTokens.borderRadius800
///         }
/// }
/// ```
///
/// Then, you can give this `CustomBorderTokensProvider` to your own theme implementation:
///
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(borders: CustomBorderTokensProvider(),
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(borders: CustomBorderTokensProvider())
/// ```
open class OUDSBorderSemanticTokensProvider {

    /// Intializes the provider
    public init() {
        OUDSLogger.debug("Init of OUDSBorderSemanticTokensProvider")
    }

    deinit{ }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of BorderSemanticTokens is not here but in OUDS/OUDSTheme/OUDSTheme+SemanticTokens/OUDSTheme+BorderSemanticTokens.swift
    // This declaration of OUDSBorderSemanticTokensProvider is here to allow to write documentation.
}
