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

/// A class which wraps all **component  tokens of buttons** for *button* objects like `OUDSButton`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllButtonComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// Custom themes can use subclass of ``OrangeThemeButtonComponentTokensProvider`` and apply the provider they need.
/// It implements also the protocol `ButtonComponentTokens` so as to expose the component tokens for *buttons* through any `OUDSTheme`.
/// *Button* components tokens are defined with raw and semantic tokens of sizes (from `AllSizeSemanticTokensProvider`), borders
/// spaces (from `AllSpaceSemanticTokensProvider`).
///
/// ```swift
///     // Define your own provider for button component tokens
///     // by inheriting from existing provider
///     class CustomButtonComponentTokensProvider: OrangeThemeButtonComponentTokensProvider {
///
///         // Then override the button component tokens you want.
///
///         override var buttonSizeMaxHeight: SizeSemanticToken { DimensionRawTokens.dimension600 }
///
///         override var buttonBorderWidthDefault: BorderWidthSemanticToken { borders.borderWidthThicker }
///
///         override var buttonBorderRadius: BorderRadiusSemanticToken { borders.borderRadiusMedium }
///
///         override var buttonColorBgDefaultPressedMono: MultipleColorSemanticTokens { colors.colorRepositoryOpacityBlackHigher }
///
///         override var buttonSpacePaddingBlock: SpaceSemanticToken { spaces.spacePaddingInlineSpacious }
///
///         // ...
///     }
///
///     // Or define your own provider from scratch
///     class CustomButtonComponentTokensProvider: ButtonComponentTokens {
///
///         // And implement hunders of tokens.
///         // You are allowed to give semantic tokens providers if you want to define values.
///     }
/// ```
///
/// Then, you can give this `CustomButtonComponentTokensProvider` to your own theme implementation:
///
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(tokensProviders: [ CustomButtonComponentTokensProvider(), ... ])
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(tokensProviders: [ CustomButtonComponentTokensProvider(), ... ])
/// ```
///
/// - Since: 0.9.0
open class OrangeThemeButtonComponentTokensProvider: AllButtonComponentTokensProvider {

    /// Provider of size semantic tokens to use for button sizes
    public let sizes: AllSizeSemanticTokensProvider

    /// Provider of border semantic tokens to use for button borders
    public let borders: AllBorderSemanticTokensProvider

    /// Provider of color semantic tokens to use for button colors
    public let colors: AllColorSemanticTokensProvider

    /// Provider of spaces semantic tokens to use for button spaces
    public let spaces: AllSpaceSemanticTokensProvider

    /// Defines a provider of component tokens dedicated to `OUDSButton`
    /// - Parameters:
    ///    - sizes: Provider for size semantic tokens
    ///    - borders: Provider for border semantic tokens
    ///    - colors: Provider for color semantic tokens
    ///    - spaces: Provider for space semantic tokens
    public init(sizes: AllSizeSemanticTokensProvider,
                borders: AllBorderSemanticTokensProvider,
                colors: AllColorSemanticTokensProvider,
                spaces: AllSpaceSemanticTokensProvider) {
        OUDSLogger.debug("Init of OrangeThemeButtonComponentTokensProvider")
        self.sizes = sizes
        self.borders = borders
        self.colors = colors
        self.spaces = spaces
    }

    deinit { }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of ButtonComponentTokens is not here but in Core/Themes/Orange/Values/ComponentTokens/OrangeTheme+ButtonComponentTokens.swift
    // This declaration of OrangeThemeButtonComponentTokensProvider is here also to allow to write documentation.
}
