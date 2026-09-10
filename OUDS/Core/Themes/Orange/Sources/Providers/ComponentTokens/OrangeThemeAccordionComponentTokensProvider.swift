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

/// A class which wraps all **component  tokens of accordions** for *accordions* components.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllAccordionComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// Custom themes can use subclass of ``OrangeThemeAccordionComponentTokensProvider`` and apply the provider they need.
/// It implements also the protocol `AccordionComponentTokens` and `AccordionFaqComponentTokens`
/// so as to expose the component tokens for *accordions* through any `OUDSTheme`.
/// *Accordions* components tokens are defined with semantic tokens spaces (from `AllSpaceSemanticTokensProvider`)
/// and sizes (from `AllSizeSemanticTokensProvider`).
///
/// ```swift
///     // Define your own provider for accordion component tokens
///     // by inheriting from existing provider
///     class CustomAccordionComponentTokensProvider: OrangeThemeAccordionComponentTokensProvider {
///
///         // Then override the accordion component tokens you want.
///
///         override var spacePaddingBlockBottomExpandContainerDefault: SpaceSemanticToken { DimensionRawTokens._100 }
///
///         // ...
///     }
///
///     // Or define your own provider from scratch
///     class CustomAccordionComponentTokensProvider: AllAccordionComponentTokens {
///
///         // And implement hundreds of tokens.
///         // You are allowed to give semantic tokens providers if you want to define values.
///     }
/// ```
///
/// Then, you can give this `CustomAccordionComponentTokensProvider` to your own theme implementation:
///
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(accordion: CustomAccordionComponentTokensProvider())
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(accordion: CustomAccordionComponentTokensProvider())
/// ```
///
/// It is also possible to use your own semantic tokens providers for this component tokens providers:
///
/// ```swift
///     // Uses by default here:
///     // - OrangeThemeSizeSemanticTokensProvider for sizes
///     // - OrangeThemeSpaceSemanticTokensProvider for spaces
///     let accordionComponentTokensProvider = OrangeThemeAccordionComponentTokensProvider()
///
///     // Or use your own semantic tokens providers
///     let accordionComponentTokensProvider = OrangeThemeAccordionComponentTokensProvider(
///                     sizes: CustomSizeSemanticTokensProvider(),
///                     spaces: CustomSpaceSemanticTokensProvider())
/// ```
///
/// - Since: 3.0.0
open class OrangeThemeAccordionComponentTokensProvider: AllAccordionComponentTokensProvider {

    /// Provider of sizes semantic tokens to use for alert sizes
    public let sizes: AllSizeSemanticTokensProvider

    /// Provider of spaces semantic tokens to use for alert spaces
    public let spaces: AllSpaceSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to accordions.
    /// - Parameters:
    ///    - sizes: Provider for size semantic tokens, if nil, a default one will be used (``OrangeThemeSizeSemanticTokensProvider``)
    ///    - spaces: Provider for space semantic tokens, if nil, a default one will be used (``OrangeThemeSpaceSemanticTokensProvider``)
    public init(sizes: AllSizeSemanticTokensProvider? = nil,
                spaces: AllSpaceSemanticTokensProvider? = nil)
    {
        OL.debug("Init of OrangeThemeAccordionComponentTokensProvider")
        self.sizes = (sizes ?? OrangeThemeSizeSemanticTokensProvider())
        self.spaces = (spaces ?? OrangeThemeSpaceSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeThemeAccordionComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of AccordionComponentTokens is not here but in Core/Themes/Orange/Values/ComponentTokens/OrangeTheme+AccordionComponentTokens.swift
    // This declaration of OrangeThemeAccordionComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
