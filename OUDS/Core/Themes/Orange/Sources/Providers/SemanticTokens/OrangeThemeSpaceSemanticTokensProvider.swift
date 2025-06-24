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

/// A class which wraps all **space semantic tokens**, *multiple* or not, and expose them.
/// This provider should be integrated as a `AllSpaceSemanticTokens` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
///
/// ```swift
///     // Define your own provider for space semantic tokens
///     class CustomSpaceTokensProvider: OrangeThemeSpaceSemanticTokensProvider {
///
///         // Then override the space semantic tokens you want, using the dimension raw tokens available
///
///         override var spaceFixedMd: SpaceSemanticToken {
///             DimensionRawTokens.dimension400
///         }
///
///         override var spaceScaledSm: MultipleSpaceSemanticTokens {
///             MultipleSpaceSemanticTokens(compact: spaceFixed5xl, regular: spaceFixed5xl)
///         }
/// }
/// ```
///
/// Then, you can give this `CustomSpaceTokensProvider` to your own theme implementation:
///
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(spaces: CustomSpaceTokensProvider())
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(spaces: CustomSpaceTokensProvider())
/// ```
///
/// - Since: 0.8.0
open class OrangeThemeSpaceSemanticTokensProvider: AllSpaceSemanticTokensProvider {

    /// Intializes the provider
    public init() {
        OL.debug("Init of OrangeThemeSpaceSemanticTokensProvider")
    }

    deinit {}

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of SpaceSemanticTokens and SpaceMultipleSemanticTokens are not here
    // but in Core/Themes/Orange/Values/SemanticTokens/OrangeTheme+SpaceSemanticTokens.swift
    // and in Core/Themes/Orange/Values/SemanticTokens/OrangeTheme+SpaceMultipleSemanticTokens.swift
    // This declaration of OrangeThemeSpaceSemanticTokensProvider is here to allow to write documentation.
}
