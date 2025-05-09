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

/// A class which wraps all **font semantic tokens**, *multiple*, *composite* or not, and expose them.
/// This provider should be integrated as a `AllFontSemanticTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
///
/// ```swift
///     // Define your own provider for font semantic tokens
///     class CustomFontTokensProvider: OrangeThemeFontSemanticTokensProvider {
///
///         // Then override the font semantic tokens you want, using the font raw tokens available
///
///         override var typeDisplayLarge: MultipleFontCompositeRawTokens {
///             MultipleFontCompositeRawTokens(compact: FontRawTokens.typeRegular150, regular: FontRawTokens.typeRegular150)
///         }
///         
///         override var typeCodeMedium: MultipleFontCompositeRawTokens {
///             MultipleFontCompositeRawTokens(FontRawTokens.typeBold300)
///         }
/// }
/// ```
///
/// Then, you can give this `CustomFontTokensProvider` to your own theme implementation:
///
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(fonts: CustomFontTokensProvider())
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(fonts: CustomFontTokensProvider())
/// ```
///
/// - Since: 0.8.0
open class OrangeThemeFontSemanticTokensProvider: AllFontSemanticTokensProvider {

    /// Intializes the provider
    public init() {
        OL.debug("Init of OrangeThemeFontSemanticTokensProvider")
    }

    deinit{ }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of FontSemanticTokens, FontCompositeSemanticTokens, FontMultipleSemanticTokens are not here
    // but in Core/Themes/Orange/Values/SemanticTokens/OrangeTheme+FontSemanticTokens.swift,
    // in Core/Themes/Orange/Values/SemanticTokens/OrangeTheme+FontCompositeSemanticTokens.swift,
    // and in Core/Themes/Orange/Values/SemanticTokens/OrangeTheme+FontMultipleSemanticTokens.swift,
    // This declaration of OUDSFontSemanticTokensProvider is here to allow to write documentation.
}
