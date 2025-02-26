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

/// A class which wraps all **component  tokens of chip** for *chip* objects like `OUDSChip`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllChipComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// Custom themes can use subclass of ``OrangeThemeChipComponentTokensProvider`` and apply the provider they need.
/// It implements also the protocol `ChipComponentTokens` so as to expose the component tokens for *chip* through any `OUDSTheme`.
/// *Chip* components tokens are defined with raw and semantic tokens of sizes (from `AllSizeSemanticTokensProvider`),
/// colors (from `AllColorSemanticTokensProvider`) , spaces (from `AllSpaceSemanticTokensProvider`)
/// and border  (from `AllBorderSemanticTokensProvider`).
///
/// ```swift
///     // Define your own provider for chip component tokens
///     // by inheriting from existing provider
///     class CustomChipComponentTokensProvider: OrangeThemeChipComponentTokensProvider {
///
///         // Then override the chip component tokens you want.
///
///         override var chipSizeMaxHeight: SizeSemanticToken { DimensionRawTokens.dimension500 }
///
///         override var chipBorderWidthDefault: BorderWidthSemanticToken { borders.borderWidthmediumt }
///
///         override var chipColorBgFocus: MultipleColorSemanticTokens { colors.colorContentDefault }
///
///         override var chipSpaceInsetIconOnly: SpaceSemanticToken { spaces.spacePaddingInlineTall }
///
///         // ...
///     }
///
///     // Or define your own provider from scratch
///     class CustomChipComponentTokensProvider: ChipComponentTokens {
///
///         // And implement hunders of tokens.
///         // You are allowed to give semantic tokens providers if you want to define values.
///     }
/// ```
///
/// Then, you can give this `CustomChipComponentTokensProvider` to your own theme implementation:
///
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(chip: CustomChipComponentTokensProvider())
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(chip: CustomChipComponentTokensProvider())
/// ```
///
/// - Since: 0.10.0
open class OrangeThemeChipComponentTokensProvider: AllChipComponentTokensProvider {

    /// Provider of size semantic tokens to use for chip sizes
    public let sizes: AllSizeSemanticTokensProvider

    /// Provider of border semantic tokens to use for chip sizes
    public let borders: AllBorderSemanticTokensProvider

    /// Provider of color semantic tokens to use for chip colors
    public let colors: AllColorSemanticTokensProvider

    /// Provider of spaces semantic tokens to use for chip spaces
    public let spaces: AllSpaceSemanticTokensProvider

    /// Defines a provider of component tokens dedicated to `OUDSChip`
    /// - Parameters:
    ///    - sizes: Provider for size semantic tokens
    ///    - borders: Provider for border semantic tokens
    ///    - colors: Provider for color semantic tokens
    ///    - spaces: Provider for space semantic tokens
    public init(sizes: AllSizeSemanticTokensProvider,
                borders: AllBorderSemanticTokensProvider,
                colors: AllColorSemanticTokensProvider,
                spaces: AllSpaceSemanticTokensProvider) {
        OL.debug("Init of OrangeThemeChipComponentTokensProvider")
        self.sizes = sizes
        self.borders = borders
        self.colors = colors
        self.spaces = spaces
    }

    deinit { }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of ChipComponentTokens is not here but in Core/Themes/Orange/Values/ComponentTokens/OrangeTheme+ChipComponentTokens.swift
    // This declaration of OrangeThemeChipComponentTokensProvider is here also to allow to write documentation.
}
