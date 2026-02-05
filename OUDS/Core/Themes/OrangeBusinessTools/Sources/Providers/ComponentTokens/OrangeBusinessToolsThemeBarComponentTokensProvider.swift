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

// swiftlint:disable type_name

/// A class which wraps all **component  tokens of bar**.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllBarComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users.
/// It implements also the protocol `BarComponentTokens` so as to expose the component tokens for *bar* through any `OUDSTheme`.
/// *Bar* components tokens are defined with semantic tokens of colors (`AllColorSemanticTokensProviders`),
/// sizes (from `AllSizeSemanticTokensProvider`), borders (from `AllBorderSemanticTokensProvider`)
/// and effects (from `AllEffectSemanticTokensProvider`).
///
/// - Since: 0.22.0
final class OrangeBusinessToolsThemeBarComponentTokensProvider: AllBarComponentTokensProvider {

    /// Provider of sizes semantic tokens to use for bar sizes
    let sizes: AllSizeSemanticTokensProvider

    /// Provider of borders semantic tokens to use for bar borders
    let borders: AllBorderSemanticTokensProvider

    /// Provider of colors semantic tokens to use for bar colors
    let colors: AllColorSemanticTokensProvider

    /// Provider of opacities semantic tokens to use for bar opacities
    let opacities: AllOpacitySemanticTokensProvider

    /// Provider of effects semantic tokens to use for bar effects
    let effects: AllEffectSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to bars components
    ///
    /// - Parameters:
    ///    - sizes: Provider for sizes semantic tokens, if nil, a default one will be used (``OrangeBusinessToolsThemeSizeSemanticTokensProvider``)
    ///    - borders: Provider for borders semantic tokens, if nil, a default one will be used (``OrangeTBusinessToolshemeBordersSemanticTokensProvider``)
    ///    - colors: Provider for colors semantic tokens, if nil, a default one will be used (``OrangeBusinessToolsThemeColorsSemanticTokensProvider``)
    ///    - opacities: Provider for opacities semantic tokens, if nil, a default one will be used (``OrangeBusinessToolsThemeOpacitiesSemanticTokensProvider``)
    ///    - effects: Provider for effects semantic tokens, if nil, a default one will be used (``OrangeBusinessToolsThemeEffectsSemanticTokensProvider``)
    init(sizes: AllSizeSemanticTokensProvider? = nil,
         borders: AllBorderSemanticTokensProvider? = nil,
         colors: AllColorSemanticTokensProvider? = nil,
         opacities: AllOpacitySemanticTokensProvider? = nil,
         effects: AllEffectSemanticTokensProvider? = nil)
    {
        OL.debug("Init of OrangeBusinessToolsBarComponentTokensProvider")
        self.sizes = (sizes ?? OrangeBusinessToolsThemeSizeSemanticTokensProvider())
        self.borders = (borders ?? OrangeBusinessToolsThemeBorderSemanticTokensProvider())
        self.colors = (colors ?? OrangeBusinessToolsThemeColorSemanticTokensProvider())
        self.opacities = (opacities ?? OrangeBusinessToolsThemeOpacitySemanticTokensProvider())
        self.effects = (effects ?? OrangeBusinessToolsThemeEffectSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeBusinessToolsBarComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of BarComponentTokens is not here but in Core/Themes/OrangeBusinessTools/Values/ComponentTokens/OrangeBusinessToolsTheme+BarComponentTokens.swift
    // This declaration of OrangeBusinessToolsThemeBarComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
