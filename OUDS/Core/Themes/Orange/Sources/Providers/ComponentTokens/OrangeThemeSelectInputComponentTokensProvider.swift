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

// swiftlint:disable type_name

/// A class which wraps all **component  tokens of select input** for objects like `OUDSSelectInput`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllSelectInputComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// Custom themes can use subclass of ``OrangeThemeSelectInputComponentTokensProvider`` and apply the provider they need.
/// It implements also the protocol `SelectInputComponentTokens` so as to expose the component tokens for *select input* through any `OUDSTheme`.
/// *Select input* components tokens are defined with semantic tokens of _s (from `AllDimensionSemanticTokensProvider`)
///
/// ```swift
///     // Define your own provider for select input component tokens
///     // by inheriting from existing provider
///     class CustomSelectInputComponentTokensProvider: OrangeThemeSelectInputComponentTokensProvider {
///
///         // Then override the select input component tokens you want.
///
///         override var selectSizeMaxHeightContainerIcon: SizeSemanticToken { DimensionRawTokens._600 }
///
///         // ...
///     }
///
///     // Or define your own provider from scratch
///     class CustomSelectInoutComponentTokensProvider: SelectInputComponentTokens {
///
///         // And implement hunders of tokens.
///         // You are allowed to give semantic tokens providers if you want to define values.
///     }
/// ```
///
/// Then, you can give this `CustomSelectInputComponentTokensProvider` to your own theme implementation:
///
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(selectInput: CustomSelectInputComponentTokensProvider())
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(selectInput: CustomSelectInputComponentTokensProvider())
/// ```
///
/// It is also possible to use your own semantic tokens providers for this component tokens providers:
///
/// ```swift
///     // Uses by default here:
///     // - OrangeThemeDimensionSemanticTokensProvider for _
///     let selectInputComponentTokensProvider = OrangeThemeSelectInputComponentTokensProvider()
///
///     // Or use your own _ semantic tokens providers (or only some)
///     let selectInputComponentTokensProvider = OrangeThemeSelectInputComponentTokensProvider(
///                                                 _s: CustomDimensionSemanticTokensProvider())
/// ```
///
/// - Since: 0.17.0
open class OrangeThemeSelectInputComponentTokensProvider: AllSelectInputComponentTokensProvider {

    /// Provider of _s semantic tokens to use for text input _s
    public let _s: AllDimensionSemanticTokensProvider

    #if DEBUG
    private nonisolated(unsafe) static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `OUDSSelectInput`
    /// - Parameter _s: Provider for _ semantic tokens. If nil, a default one will be used (``OrangeThemeDimensionSemanticTokensProvider``)
    public init(_s: AllDimensionSemanticTokensProvider? = nil) {
        OL.debug("Init of OrangeThemeSelectInputComponentTokensProvider")
        self._s = (_s ?? OrangeThemeDimensionSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeThemeSelectInputComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of SelectComponentTokens is not here but in Core/Themes/Orange/Values/ComponentTokens/OrangeTheme+SelectInputComponentTokens.swift
    // This declaration of OrangeThemeSelectInputComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
