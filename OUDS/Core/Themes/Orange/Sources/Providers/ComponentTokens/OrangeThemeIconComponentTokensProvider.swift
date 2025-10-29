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

/// A class which wraps all **component  tokens of icons** for *icons* used in some components like `OUDSTag`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllIconComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// Custom themes can use subclass of ``OrangeThemeIconComponentTokensProvider`` and apply the provider they need.
/// It implements also the protocol `IconomponentTokens` so as to expose the component tokens for *icons* through any `OUDSTheme`.
/// *Icons* components tokens are defined with raw and semantic tokens of colors (from `AllColorSemanticTokensProvider`).
///
/// ```swift
///     // Define your own provider for icons component tokens
///     // by inheriting from existing provider
///     class CustomIconComponentTokensProvider: OrangeThemeIconComponentTokensProvider {
///
///         // Then override the icon component tokens you want.
///
///         override var colorContentStatusWarningExternalShape: MultipleColorSemanticTokens { colors.repositoryOpacityBlackHigher }
///
///         // ...
///     }
///
///     // Or define your own provider from scratch
///     class CustomIconComponentTokensProvider: IconComponentTokens {
///
///         // And implement hunders of tokens.
///         // You are allowed to give semantic tokens providers if you want to define values.
///     }
/// ```
///
/// Then, you can give this `CustomIconComponentTokensProvider` to your own theme implementation:
///
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(icon: CustomIconComponentTokensProvider())
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(icon: CustomIconComponentTokensProvider())
/// ```
///
/// It is also possible to use your own semantic tokens providers for this component tokens providers:
///
/// ```swift
///     // Uses by default here:
///     // - OrangeThemeColorSemanticTokensProvider for colors
///     let iconComponentTokensProvider = OrangeThemeIconComponentTokensProvider()
///
///     // Or use your color semantic tokens providers (or only some)
///     let iconComponentTokensProvider = OrangeThemeIconComponentTokensProvider(
///                                                 colors: CustomColorSemanticTokensProvider())
/// ```
///
/// - Since: 0.20.0
open class OrangeThemeIconComponentTokensProvider: AllIconComponentTokensProvider {

    /// Provider of color semantic tokens to use for link colors
    public let colors: AllColorSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to icons
    /// - Parameters:
    ///    - colors: Provider for color semantic tokens. If nil, a default one will be used (``OrangeThemeColorSemanticTokensProvider``)
    public init(colors: AllColorSemanticTokensProvider? = nil) {
        OL.debug("Init of OrangeThemeIconComponentTokensProvider")
        self.colors = (colors ?? OrangeThemeColorSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeThemeIconComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of IconComponentTokens is not here but in Core/Themes/Orange/Values/ComponentTokens/OrangeTheme+IconComponentTokens.swift
    // This declaration of OrangeThemeIconComponentTokensProvider is here also to allow to write documentation.
}
