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

// swiftlint:disable type_name

/// A class which wraps all **component  tokens of breadcrumb** for *breadcrumb* objects like `OUDSBreadcrumb`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllBreadcrumbComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// Custom themes can use subclass of ``OrangeThemeBreadcrumbComponentTokensProvider`` and apply the provider they need.
/// It implements also the protocol `BreadcrumbComponentTokens` so as to expose the component tokens for *breadcrumb* through any `OUDSTheme`.
/// *Breadcrumb* components tokens are defined with raw and semantic tokens of sizes (from `AllSizeSemanticTokensProvider`)  and spaces (from `AllSpaceSemanticTokensProvider`).
///
/// ```swift
///     // Define your own provider for breadcrumb component tokens
///     // by inheriting from existing provider
///     class CustomBreadcrumbComponentTokensProvider: OrangeThemeBreadcrumbComponentTokensProvider {
///
///         // Then override the breadcrumb component tokens you want.
///
///         override var breadcrumbSizeArrow: SizeSemanticToken { DimensionRawTokens.dimension550 }
///
///         override var breadcrumbSpaceColumnGapArrow: SpaceSemanticToken { spaces.spaceColumnGapShorter }
///
///         // ...
///     }
///
///     // Or define your own provider from scratch
///     class CustomBreadcrumbComponentTokensProvider: BreadcrumbComponentTokens {
///
///         // And implement hunders of tokens.
///         // You are allowed to give semantic tokens providers if you want to define values.
///     }
/// ```
///
/// Then, you can give this `CustomLinkComponentTokensProvider` to your own theme implementation:
///
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(tokensProviders: [ CustomBreadcrumbComponentTokensProvider(), ... ])
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(tokensProviders: [ CustomBreadcrumbComponentTokensProvider(), ... ])
/// ```
///
/// - Since: 0.10.0
open class OrangeThemeBreadcrumbComponentTokensProvider: AllBreadcrumbComponentTokensProvider {

    /// Provider of size semantic tokens to use for link sizes
    public let sizes: AllSizeSemanticTokensProvider

    /// Provider of spaces semantic tokens to use for link spaces
    public let spaces: AllSpaceSemanticTokensProvider

    /// Defines a provider of component tokens dedicated to `OUDSLink`
    /// - Parameters:
    ///    - sizes: Provider for size semantic tokens
    ///    - spaces: Provider for space semantic tokens
    public init(sizes: AllSizeSemanticTokensProvider,
                spaces: AllSpaceSemanticTokensProvider) {
        OL.debug("Init of OrangeThemeBreadcrumbComponentTokensProvider")
        self.sizes = sizes
        self.spaces = spaces
    }

    deinit { }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of BreadcrumbComponentTokens is not here but in Core/Themes/Orange/Values/ComponentTokens/OrangeTheme+BreadcrumbComponentTokens.swift
    // This declaration of OrangeThemeBreadcrumbComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
