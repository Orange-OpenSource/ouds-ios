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

/// A class which wraps all **component  tokens of select** for *select* objects like `OUDSSelect`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllSelectComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// Custom themes can use subclass of ``OrangeThemeSelectComponentTokensProvider`` and apply the provider they need.
/// It implements also the protocol `SelectComponentTokens` so as to expose the component tokens for *select* through any `OUDSTheme`.
/// *Select* components tokens are defined with raw and semantic tokens of sizes (from `AllSizeSemanticTokensProvider`),
/// colors (from `AllColorSemanticTokensProvider`) and spaces (from `AllSpaceSemanticTokensProvider`).
///
/// ```swift
///     // Define your own provider for select component tokens
///     // by inheriting from existing provider
///     class CustomSelectComponentTokensProvider: OrangeThemeSelectComponentTokensProvider {
///
///         // Then override the button component tokens you want.
///
///         override var selectSizeMaxHeightContainerIcon: SizeSemanticToken { DimensionRawTokens.dimension600 }
///
///         override var selectColorBorderHover: MultipleColorSemanticTokens { colors.colorRepositoryOpacityBlackHigher }
///
///         override var selectSpaceColumnGap: SpaceSemanticToken { spaces.spacePaddingInlineSpacious }
///
///         // ...
///     }
///
///     // Or define your own provider from scratch
///     class CustomSelectComponentTokensProvider: LinkComponentTokens {
///
///         // And implement hunders of tokens.
///         // You are allowed to give semantic tokens providers if you want to define values.
///     }
/// ```
///
/// Then, you can give this `CustomSelectComponentTokensProvider` to your own theme implementation:
///
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(tokensProviders: [ CustomSelectComponentTokensProvider(), ... ])
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(tokensProviders: [ CustomSelectComponentTokensProvider(), ... ])
/// ```
///
/// - Since: 0.9.0
open class OrangeThemeSelectComponentTokensProvider: AllSelectComponentTokensProvider {

    /// Provider of size semantic tokens to use for link sizes
    public let sizes: AllSizeSemanticTokensProvider

    /// Provider of color semantic tokens to use for link colors
    public let colors: AllColorSemanticTokensProvider

    /// Provider of spaces semantic tokens to use for link spaces
    public let spaces: AllSpaceSemanticTokensProvider

    /// Defines a provider of component tokens dedicated to `OUDSSelect`
    /// - Parameters:
    ///    - sizes: Provider for size semantic tokens
    ///    - colors: Provider for color semantic tokens
    ///    - spaces: Provider for space semantic tokens
    public init(sizes: AllSizeSemanticTokensProvider,
                colors: AllColorSemanticTokensProvider,
                spaces: AllSpaceSemanticTokensProvider) {
        OL.debug("Init of OrangeThemeSelectComponentTokensProvider")
        self.sizes = sizes
        self.colors = colors
        self.spaces = spaces
    }

    deinit { }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of SelectComponentTokens is not here but in Core/Themes/Orange/Values/ComponentTokens/OrangeTheme+SelectComponentTokens.swift
    // This declaration of OrangeThemeSelectComponentTokensProvider is here also to allow to write documentation.
}
