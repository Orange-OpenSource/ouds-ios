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

/// A class which wraps all **color semantic tokens**, *multiple* or not, and expose them.
/// This provider should be integrated as a ``AllColorSemanticTokensProvider`` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
///
/// ```swift
///     // Define your own provider for color semantic tokens
///     class CustomColorTokensProviderr: OUDSColorSemanticTokensProvider {
///
///         // Then override the color semantic tokens you want, using the color raw tokens available
///
///         override var colorBgSecondary: MultipleColorSemanticTokens {
///             MultipleColorSemanticTokens(light: ColorRawTokens.colorDecorativeAmber500, dark: OrangeBrandColorRawTokens.colorOrange900)
///         }
///
///         override var colorActionEnabled: MultipleColorSemanticTokens {
///             MultipleColorSemanticTokens(light: ColorRawTokens.colorDecorativeShockingPink100, dark: ColorRawTokens.colorFunctionalScarlet600)
///         }
/// }
/// ```
///
/// Then, you can give this `CustomColorTokensProvider` to your own theme implementation:
///
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(colors: CustomColorTokensProvider(),
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(colors: CustomColorTokensProvider())
/// ```
open class OUDSColorSemanticTokensProvider {

    /// Intializes the provider
    public init() {
        OUDSLogger.debug("Init of OUDSColorSemanticTokensProvider")
    }

    deinit{ }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of ColorSemanticTokens and ColorMultipleSemanticTokens are not here but in OUDS/OUDSTheme/OUDSTheme+SemanticTokens/OUDSTheme+ColorSemanticTokens.swift
    // and OUDS/OUDSTheme/OUDSTheme+SemanticTokens/OUDSTheme+ColorMultipleSemanticTokens.swift
    // This declaration of OUDSColorSemanticTokensProvider is here to allow to write documentation.
}
