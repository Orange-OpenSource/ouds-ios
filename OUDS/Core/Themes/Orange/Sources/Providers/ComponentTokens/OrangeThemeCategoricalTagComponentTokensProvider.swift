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

/// A class which wraps all **component  tokens of categorical tag** for *tag* objects like `OUDSCategoricalTag`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllCategoricalTagComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// Custom themes can use subclass of ``OrangeThemeCategoricalTagComponentTokensProvider`` and apply the provider they need.
/// It implements also the protocol `CategoricalTagComponentTokens` so as to expose the component tokens for *categorical tags* through any `OUDSTheme`.
/// *Categorical tags* components tokens are defined with semantic tokens of colors (`AllColorSemanticTokensProvider`)
///
/// ```swift
///     // Define your own provider for categorical tag component tokens
///     // by inheriting from existing provider
///     class CustomCategoricalTagComponentTokensProvider: OrangeThemeCategoricalTagComponentTokensProvider {
///
///         // Then override the categorical tag component tokens you want.
///         override var colorContent: MultipleColorSemanticToken { MultipleColorSemanticToken(colors.repositoryNeutralEmphasizedBlack) }
///
///         // ...
///     }
///
///     // Or define your own provider from scratch
///     class CustomCategoricalTagComponentTokensProvider: CategoricaTagComponentTokens {
///
///         // And implement maybe hundreds of tokens.
///         // You are allowed to use semantic tokens providers if you want to define values.
///     }
/// ```
///
/// Then, you can give this `CustomCategoricalTagComponentTokensProvider` to your own theme implementation:
///
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(categoricalTag: CustomCategoricalTagComponentTokensProvider())
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(categoricalTag: CustomCategoricalTagComponentTokensProvider())
/// ```
///
/// It is also possible to use your own semantic tokens providers for this component tokens providers:
///
/// ```swift
///     // Uses by default here:
///     // - OrangeThemeColorSemanticTokensProvider for colors
///     let categoricalTagComponentTokensProvider = OrangeThemeCategoricalTagComponentTokensProvider()
///
///     // Or use your own color semantic tokens providers (or only some)
///     let categoricaTagComponentTokensProvider = OrangeThemeCategoricalTagComponentTokensProvider(
///                                             colors: CustomColorSemanticTokensProvider())
/// ```
///
/// - Since: 3.0.0
open class OrangeThemeCategoricalTagComponentTokensProvider: AllCategoricalTagComponentTokensProvider {

    /// Provider of color semantic tokens to use
    public let colors: AllColorSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `OUDSCategoricalTag`
    /// - Parameter colors: Provider for color semantic tokens. If nil, a default one will be used (``OrangeThemeColorSemanticTokensProvider``)
    public init(colors: AllColorSemanticTokensProvider? = nil) {
        OL.debug("Init of OrangeThemeCategoricalTagComponentTokensProvider")
        self.colors = (colors ?? OrangeThemeColorSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeThemeCategoricalTagComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of CategoricalTagComponentTokens is not here but in Core/Themes/Orange/Values/ComponentTokens/OrangeTheme+CategoricalTagComponentTokens.swift
    // This declaration of OrangeThemeCategoricalTagComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
