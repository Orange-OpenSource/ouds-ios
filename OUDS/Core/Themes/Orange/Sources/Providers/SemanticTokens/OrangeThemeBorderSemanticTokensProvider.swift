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

/// A class which wraps all **border semantic tokens** and expose them.
/// This provider should be integrated as a `AllBorderSemanticTokensProvider` implementation inside some `OUDSTheme` so as to provide
/// all tokens to the users. It helps also users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
///
/// ```swift
///     // Define your own provider for border semantic tokens if needed
///     class CustomBorderTokensProvider: OrangeThemeBorderSemanticTokensProvider {
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
///         super.init(tokensProviders: [ CustomBorderTokensProvider(), ... ])
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(tokensProviders: [ CustomBorderTokensProvider(), ... ])
/// ```
///
/// - Since: 0.8.0
open class OrangeThemeBorderSemanticTokensProvider: AllBorderSemanticTokensProvider {

    /// Intializes the provider
    public init() {
        OUDSLogger.debug("Init of OrangeThemeBorderSemanticTokensProvider")
    }

    deinit{ }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of BorderSemanticTokens is not here but in Core/Themes/Orange/Values/SemanticTokens/OrangeTheme+BorderSemanticTokens.swift
    // This declaration of OrangeThemeBorderSemanticTokensProvider is here to allow to write documentation.
}
