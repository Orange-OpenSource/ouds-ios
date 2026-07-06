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

/// A class which wraps all **component  tokens of typography** for *typography* components like `OUDSText`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllTypographyComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// Custom themes can use subclass of ``OrangeThemeTypographyComponentTokensProvider`` and apply the provider they need.
/// It implements also the protocol `TypographyComponentTokens` so as to expose the component tokens for *typography* through any `OUDSTheme`.
/// *Typography* components tokens are defined with semantic tokens of spaces (from `AllSpaceSemanticTokensProvider`).
///
/// ```swift
///     // Define your own provider for typography component tokens
///     // by inheriting from existing provider
///     class CustomTypographyComponentTokensProvider: OrangeThemeTypographyComponentTokensProvider {
///
///         // Then override the accordion component tokens you want.
///
///         override var spacePaddingBlockBottomExpandContainerDefault: SpaceSemanticToken { DimensionRawTokens._100 }
///
///         // ...
///     }
///
///     // Or define your own provider from scratch
///     class CustomTypographyComponentTokensProvider: AllTypographyComponentTokens {
///
///         // And implement hundreds of tokens.
///         // You are allowed to give semantic tokens providers if you want to define values.
///     }
/// ```
///
/// Then, you can give this `CustomTypographyComponentTokensProvider` to your own theme implementation:
///
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(typography: CustomTypographyComponentTokensProvider())
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(typography: CustomTypographyComponentTokensProvider())
/// ```
///
/// It is also possible to use your own semantic tokens providers for this component tokens providers:
///
/// ```swift
///     // Uses by default here:
///     // - OrangeThemeSpaceSemanticTokensProvider for spaces
///     let typographyComponentTokensProvider = OrangeThemeTypographyComponentTokensProvider()
///
///     // Or use your own semantic tokens providers
///     let typographyComponentTokensProvider = OrangeThemeTypographyComponentTokensProvider(
///                     spaces: CustomSpaceSemanticTokensProvider())
/// ```
///
/// - Since: 3.0.0
open class OrangeThemeTypographyComponentTokensProvider: AllTypographyComponentTokensProvider {

    /// Provider of spaces semantic tokens to use for button spaces
    public let spaces: AllSpaceSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to progress indicators.
    ///
    /// - Parameter spaces: Provider for space semantic tokens, if nil, a default one will be used (``OrangeThemeSpaceSemanticTokensProvider``)
    public init(spaces: AllSpaceSemanticTokensProvider? = nil) {
        OL.debug("Init of OrangeThemeTypographyComponentTokensProvider")
        self.spaces = (spaces ?? OrangeThemeSpaceSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeThemeTypographyComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of TypographyComponentTokens is not here but in Core/Themes/Orange/Values/ComponentTokens/OrangeTheme+TypographyComponentTokens.swift
    // This declaration of OrangeThemeTypographyComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
