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
/// It implements also the protocol `AccordionComponentTokens` and `AccordionFaqComponentTokens`
/// so as to expose the component tokens for *accordions* through any `OUDSTheme`.
/// *Accordions* components tokens are defined with semantic tokens spaces (from `AllSpaceSemanticTokensProvider`)
/// and sizes (from `AllSizeSemanticTokensProvider`).
///
/// - Since: 3.0.0
final class WireframeThemeAccordionComponentTokensProvider: AllAccordionComponentTokensProvider {

    /// Provider of sizes semantic tokens to use for alert sizes
    let sizes: AllSizeSemanticTokensProvider

    /// Provider of spaces semantic tokens to use for alert spaces
    let spaces: AllSpaceSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to accordions.
    /// - Parameters:
    ///    - sizes: Provider for size semantic tokens, if nil, a default one will be used (``WireframeThemeSizeSemanticTokensProvider``)
    ///    - spaces: Provider for space semantic tokens, if nil, a default one will be used (``WireframeThemeSpaceSemanticTokensProvider``)
    init(sizes: AllSizeSemanticTokensProvider? = nil,
         spaces: AllSpaceSemanticTokensProvider? = nil)
    {
        OL.debug("Init of WireframeThemeAccordionComponentTokensProvider")
        self.sizes = (sizes ?? WireframeThemeSizeSemanticTokensProvider())
        self.spaces = (spaces ?? WireframeThemeSpaceSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "WireframeThemeAccordionComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of AccordionComponentTokens is not here but in Core/Themes/Wireframe/Values/ComponentTokens/WireframeTheme+AccordionComponentTokens.swift
    // This declaration of WireframeThemeAccordionComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
