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

/// A class which wraps all **component  tokens of alert** for *alert* objects like `OUDSAlert`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllAlertComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// Custom themes can use subclass of ``OrangeThemeAlertComponentTokensProvider`` and apply the provider they need.
/// It implements also the protocol `AlertComponentTokens` so as to expose the component tokens for *alert* through any `OUDSTheme`.
/// *Alert* components tokens are defined with semantic tokens of borders (`AllBorderSemanticTokensProviders`),
/// spaces (from `AllSpaceSemanticTokensProvider`) and sizes (from `AllSizeSemanticTokensProvider`).
///
/// ```swift
///     // Define your own provider for alert component tokens
///     // by inheriting from existing provider
///     class CustomAlertComponentTokensProvider: OrangeThemeAlertComponentTokensProvider {
///
///         // Then override the alert component tokens you want.
///
///         override var sizeIcon: SizeSemanticToken { DimensionRawTokens._100 }
///
///         override var spacePaddingBlock: SpaceSemanticToken { DimensionRawTokens.outOfSystem75 }
///
///         // ...
///     }
///
///     // Or define your own provider from scratch
///     class CustomAlertComponentTokensProvider: AlertComponentTokens {
///
///         // And implement hundreds of tokens.
///         // You are allowed to give semantic tokens providers if you want to define values.
///     }
/// ```
///
/// Then, you can give this `CustomAlertComponentTokensProvider` to your own theme implementation:
///
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(alert: CustomAlertComponentTokensProvider())
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(alert: CustomAlertComponentTokensProvider())
/// ```
///
/// It is also possible to use your own semantic tokens providers for this component tokens providers:
///
/// ```swift
///     // Uses by default here:
///     // - OrangeThemeSizeSemanticTokensProvider for sizes
///     // - OrangeThemeSpaceSemanticTokensProvider for sizes
///     // - OrangeThemeBorderSemanticTokensProvider for sizes
///     let alertComponentTokensProvider = OrangeThemeAlertComponentTokensProvider()
///
///     // Or use your own semantic tokens providers
///     let alertComponentTokensProvider = OrangeThemeAlertComponentTokensProvider(
///                     sizes: CustomSizeSemanticTokensProvider(),
///                     borders: CustomBorderSemanticTokensProvider(),
///                     spaces: CustomSpaceSemanticTokensProvider())
/// ```
///
/// - Since: 1.2.0
open class OrangeThemeAlertComponentTokensProvider: AllAlertComponentTokensProvider {

    /// Provider of sizes semantic tokens to use for alert sizes
    public let sizes: AllSizeSemanticTokensProvider

    /// Provider of borders semantic tokens to use for alert borders
    public let borders: AllBorderSemanticTokensProvider

    /// Provider of spaces semantic tokens to use for alert spaces
    public let spaces: AllSpaceSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `OUDSAlert`
    /// - Parameters:
    ///    - sizes: Provider for size semantic tokens, if nil, a default one will be used (``OrangeThemeSizeSemanticTokensProvider``)
    ///    - borders: Provider for border semantic tokens, if nil, default one will be used ( ``OrangeThemeBorderSemanticTokensProvider``)
    ///    - spaces: Provider for space semantic tokens, if nil, a default one will be used (``OrangeThemeSpaceSemanticTokensProvider``)
    public init(sizes: AllSizeSemanticTokensProvider? = nil,
                borders: AllBorderSemanticTokensProvider? = nil,
                spaces: AllSpaceSemanticTokensProvider? = nil)
    {
        OL.debug("Init of OrangeThemeAlertComponentTokensProvider")
        self.sizes = (sizes ?? OrangeThemeSizeSemanticTokensProvider())
        self.borders = (borders ?? OrangeThemeBorderSemanticTokensProvider())
        self.spaces = (spaces ?? OrangeThemeSpaceSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeThemeAlertComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of AlertComponentTokens is not here but in Core/Themes/Orange/Values/ComponentTokens/OrangeTheme+AlertComponentTokens.swift
    // This declaration of OrangeThemeAlertComponentTokensProvider is here also to allow to write documentation.
}
