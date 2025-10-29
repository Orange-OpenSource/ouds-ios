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
///         override var sizeMaxHeightIconOnly: SizeSemanticToken { DimensionRawTokens._600 }
///
///         override var buttonBorderWidthDefault: BorderWidthSemanticToken { borders.widthThicker }
///
///         override var buttonBorderRadius: BorderRadiusSemanticToken { borders.radiusMd }
///
///         override var colorBgDefaultPressedMono: MultipleColorSemanticTokens { colors.repositoryOpacityBlackHigher }
///
///         override var spacePaddingBlock: SpaceSemanticToken { spaces.paddingInlineSpacious }
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
///         super.init(button: CustomButtonComponentTokensProvider())
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(button: CustomButtonComponentTokensProvider())
/// ```
///
/// It is also possible to use your own semantic tokens providers for this component tokens providers:
///
/// ```swift
///     // Uses by default here:
///     // - OrangeThemeSizeSemanticTokensProvider for sizes
///     // - OrangeThemeBorderSemanticTokensProvider for borders
///     // - OrangeThemeColorSemanticTokensProvider for colors
///     // - OrangeThemeSpaceSemanticTokensProvider for spaces
///     let buttonComponentTokensProvider = OrangeThemeButtonComponentTokensProvider()
///
///     // Or use your own size, borders, colors and space semantic tokens providers (or only some)
///     let buttonComponentTokensProvider = OrangeThemeButtonComponentTokensProvider(
///                                                 sizes: CustomSizeSemanticTokensProvider(),
///                                                 borders: CustomBorderSemanticTokensProvider
///                                                 colors: CustomColorSemanticTokensProvider
///                                                 spaces: CustomSpaceSemanticTokensProvider())
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

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `OUDSButton`
    /// - Parameters:
    ///    - sizes: Provider for size semantic tokens. If nil, a default one will be used (``OrangeThemeSizeSemanticTokensProvider``)
    ///    - borders: Provider for border semantic tokens. If nil, a default one will be used (``OrangeThemeBorderSemanticTokensProvider``)
    ///    - colors: Provider for color semantic tokens. If nil, a default one will be used (``OrangeThemeColorSemanticTokensProvider``)
    ///    - spaces: Provider for space semantic tokens. If nil, a default one will be used (``OrangeThemeSpaceSemanticTokensProvider``)
    public init(sizes: AllSizeSemanticTokensProvider? = nil,
                borders: AllBorderSemanticTokensProvider? = nil,
                colors: AllColorSemanticTokensProvider? = nil,
                spaces: AllSpaceSemanticTokensProvider? = nil)
    {
        OL.debug("Init of OrangeThemeButtonComponentTokensProvider")
        self.sizes = (sizes ?? OrangeThemeSizeSemanticTokensProvider())
        self.borders = (borders ?? OrangeThemeBorderSemanticTokensProvider())
        self.colors = (colors ?? OrangeThemeColorSemanticTokensProvider())
        self.spaces = (spaces ?? OrangeThemeSpaceSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeThemeButtonComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of ButtonComponentTokens is not here but in Core/Themes/Orange/Values/ComponentTokens/OrangeTheme+ButtonComponentTokens.swift
    // This declaration of OrangeThemeButtonComponentTokensProvider is here also to allow to write documentation.
}
