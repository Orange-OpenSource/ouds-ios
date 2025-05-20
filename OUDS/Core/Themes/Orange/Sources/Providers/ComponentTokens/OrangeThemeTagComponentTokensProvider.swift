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

/// A class which wraps all **component  tokens of tag** for *tag* objects like `OUDSTag`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllTagComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// Custom themes can use subclass of ``OrangeThemeTagComponentTokensProvider`` and apply the provider they need.
/// It implements also the protocol `TagComponentTokens` so as to expose the component tokens for *tags* through any `OUDSTheme`.
/// *Tags* components tokens are defined with semantic tokens of colors (from `AllColorSemanticTokensProvider`),
/// sizes (from `AllSizeSemanticTokensProvider`), spaces (from `AllSpaceSemanticTokensProvider`) and borders
/// (from `AllBorderSemanticTokensProvider`).
///
/// ```swift
///     // Define your own provider for tag component tokens
///     // by inheriting from existing provider
///     class CustomTagComponentTokensProvider: OrangeThemeTagComponentTokensProvider {
///
///         // Then override the tag component tokens you want.
///
///         override var tagColorBgReminder: MultipleColorSemanticTokens { colors.colorOpacityLower }
///
///         override var tagBorderWidthDefault: BorderWidthSemanticToken { borders.borderWidthMedium }
///
///         override var tagSizeMinWidthMedium: SizeSemanticToken { DimensionRawTokens.dimension500 }
///
///         override var tagSpacePaddingInlineIconStartSmall: SpaceSemanticToken { spaces.spacePaddingInlineMedium }
///
///         // ...
///     }
///
///     // Or define your own provider from scratch
///     class CustomTagComponentTokensProvider: TagComponentTokens {
///
///         // And implement maybe hundreds of tokens.
///         // You are allowed to use semantic tokens providers if you want to define values.
///     }
/// ```
///
/// Then, you can give this `CustomTagComponentTokensProvider` to your own theme implementation:
///
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(tag: CustomTagComponentTokensProvider())
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(tag: CustomTagComponentTokensProvider())
/// ```
///
/// It is also possible to use your own semantic tokens providers for this component tokens providers:
///
/// ```swift
///     // Uses by default here:
///     // - OrangeThemeColorSemanticTokensProvider for colors
///     // - OrangeThemeBorderSemanticTokensProvider for borders
///     // - OrangeThemeSizeSemanticTokensProvider for sizes
///     // - OrangeThemeSpaceSemanticTokensProvider for spaces
///     let tagComponentTokensProvider = OrangeThemeTagComponentTokensProvider()
///
///     // Or use your own color, space, size and border semantic tokens providers (or only some)
///     let tagComponentTokensProvider = OrangeThemeTagComponentTokensProvider(
///                                             sizes: CustomSizeSemanticTokensProvider(),
///                                             borders: CustomBorderSemanticTokensProvider(),
///                                             colors: CustomColorSemanticTokensProvider(),
///                                             spaces: CustomSpaceSemanticTokensProvider)
/// ```
///
/// - Since: 0.9.0
open class OrangeThemeTagComponentTokensProvider: AllTagComponentTokensProvider {

    /// Provider of size semantic tokens to use for tag suzes
    public let sizes: AllSizeSemanticTokensProvider

    /// Provider of border semantic tokens to use for tag borders
    public let borders: AllBorderSemanticTokensProvider

    /// Provider of color semantic tokens to use for tag colors
    public let colors: AllColorSemanticTokensProvider

    /// Provider of space semantic tokens to use for tag spaces
    public let spaces: AllSpaceSemanticTokensProvider

    /// Defines a provider of component tokens dedicated to `OUDSTag`
    /// - Parameters:
    ///    - sizes: Provider for size semantic tokens. If nil, a default one will be used (``OrangeThemeSizeSemanticTokensProvider``)
    ///    - borders: Provider for borders semantic tokens. If nil, a default one will be used (``OrangeThemeBorderSemanticTokensProvider``)
    ///    - colors: Provider for colors semantic tokens. If nil, a default one will be used (``OrangeThemeColorSemanticTokensProvider``)
    ///    - spaces: Provider for spaces semantic tokens. If nil, a default one will be used (``OrangeThemeSpaceSemanticTokensProvider``)
    public init(sizes: AllSizeSemanticTokensProvider? = nil,
                borders: AllBorderSemanticTokensProvider? = nil,
                colors: AllColorSemanticTokensProvider? = nil,
                spaces: AllSpaceSemanticTokensProvider? = nil)
    {
        OL.debug("Init of OrangeThemeTagComponentTokensProvider")
        self.sizes = (sizes ?? OrangeThemeSizeSemanticTokensProvider())
        self.borders = (borders ?? OrangeThemeBorderSemanticTokensProvider())
        self.colors = (colors ?? OrangeThemeColorSemanticTokensProvider())
        self.spaces = (spaces ?? OrangeThemeSpaceSemanticTokensProvider())
    }

    deinit {}

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of TagComponentTokens is not here but in Core/Themes/Orange/Values/ComponentTokens/OrangeTheme+TagComponentTokens.swift
    // This declaration of OrangeThemeTagComponentTokensProvider is here also to allow to write documentation.
}
