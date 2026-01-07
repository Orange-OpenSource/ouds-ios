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
import OUDSThemesContract

/// A class which wraps all **component  tokens of bar**.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllBarComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// Custom themes can use subclass of ``OrangeThemeBarComponentTokensProvider`` and apply the provider they need.
/// It implements also the protocol `BarComponentTokens` so as to expose the component tokens for *bar* through any `OUDSTheme`.
/// *Bar* components tokens are defined with semantic tokens of colors (`AllColorSemanticTokensProviders`),
/// sizes (from `AllSizeSemanticTokensProvider`), borders (from `AllBorderSemanticTokensProvider`)
/// and effects (from `AllEffectSemanticTokensProvider`).
///
/// ```swift
///     // Define your own provider for bar component tokens
///     // by inheriting from existing provider
///     class CustomBarComponentTokensProvider: OrangeThemeBarComponentTokensProvider {
///
///         // Then override the bar component tokens you want.
///
///         override var colorBgOpaque: MultipleColorSemanticToken { colors.bgTertiary }
///
///         override var effectBgBlur: EffectSemanticToken { EffectRawTokens.blur320 }
///
///         override var borderRadiusActiveIndicatorCustomTop: BorderRadiusSemanticToken { borders.radiusPill }
///
///         override var sizeWidthActiveIndicatorCustomBottom: SizeSemanticToken { DimensionRawTokens._650 }
///         // ...
///     }
///
///     // Or define your own provider from scratch
///     class CustomBarComponentTokensProvider: BarComponentTokens {
///
///         // And implement maybe hundreds of tokens.
///         // You are allowed to give semantic tokens providers if you want to define values.
///     }
/// ```
///
/// Then, you can give this `CustomBBarComponentTokensProvider` to your own theme implementation:
///
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(bar: CustomBarComponentTokensProvider())
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(bar: CustomBarComponentTokensProvider())
/// ```
///
/// It is also possible to use your own semantic tokens providers for this component tokens providers:
///
/// ```swift
///     // Uses by default here:
///     // - OrangeThemeSizeSemanticTokensProvider for sizes
///     // - OrangeThemeColorSemanticTokensProvider for colors
///     // - OrangeThemeBordersSemanticTokensProvider for borders
///     // - OrangeThemeEffectSemanticTokensProvider for effects
///     // - OrangeThemeOpacitiySemanticTokensProvider for opacities
///     let barComponentTokensProvider = OrangeThemeBarComponentTokensProvider()
///
///     // Or use your own providers
///     let barComponentTokensProvider = OrangeThemeBarComponentTokensProvider(
///                     sizes: CustomSizesSemanticTokensProvider(),
///                     colors: CustomColorsSemanticTokensProvider(), ...)
/// ```
///
/// - Since: 0.22.0
open class OrangeThemeBarComponentTokensProvider: AllBarComponentTokensProvider {

    /// Provider of sizes semantic tokens to use for bar sizes
    public let sizes: AllSizeSemanticTokensProvider

    /// Provider of borders semantic tokens to use for bar borders
    public let borders: AllBorderSemanticTokensProvider

    /// Provider of colors semantic tokens to use for bar colors
    public let colors: AllColorSemanticTokensProvider

    /// Provider of opacities semantic tokens to use for bar opacities
    public let opacities: AllOpacitySemanticTokensProvider

    /// Provider of effects semantic tokens to use for bar effects
    public let effects: AllEffectSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to bars components
    ///
    /// - Parameters:
    ///    - sizes: Provider for sizes semantic tokens, if nil, a default one will be used (``OrangeThemeSizeSemanticTokensProvider``)
    ///    - borders: Provider for borders semantic tokens, if nil, a default one will be used (``OrangeThemeBorderSemanticTokensProvider``)
    ///    - colors: Provider for colors semantic tokens, if nil, a default one will be used (``OrangeThemeColorSemanticTokensProvider``)
    ///    - opacities: Provider for opacities semantic tokens, if nil, a default one will be used (``OrangeThemeOpacitySemanticTokensProvider``)
    ///    - effects: Provider for effects semantic tokens, if nil, a default one will be used (``OrangeThemeEffectSemanticTokensProvider``)
    public init(sizes: AllSizeSemanticTokensProvider? = nil,
                borders: AllBorderSemanticTokensProvider? = nil,
                colors: AllColorSemanticTokensProvider? = nil,
                opacities: AllOpacitySemanticTokensProvider? = nil,
                effects: AllEffectSemanticTokensProvider? = nil)
    {
        OL.debug("Init of OrangeThemeBarComponentTokensProvider")
        self.sizes = (sizes ?? OrangeThemeSizeSemanticTokensProvider())
        self.borders = (borders ?? OrangeThemeBorderSemanticTokensProvider())
        self.colors = (colors ?? OrangeThemeColorSemanticTokensProvider())
        self.opacities = (opacities ?? OrangeThemeOpacitySemanticTokensProvider())
        self.effects = (effects ?? OrangeThemeEffectSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeThemeBarComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of BarComponentTokens is not here but in Core/Themes/Orange/Values/ComponentTokens/OrangeTheme+BarComponentTokens.swift
    // This declaration of OrangeThemeBarComponentTokensProvider is here also to allow to write documentation.
}
