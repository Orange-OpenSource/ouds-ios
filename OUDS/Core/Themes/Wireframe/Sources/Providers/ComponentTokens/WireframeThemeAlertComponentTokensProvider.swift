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

/// A class which wraps all **component  tokens of alert** for *alert* objects like `OUDSAlert`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllAlertComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users.
/// It implements also the protocol `AlertComponentTokens` so as to expose the component tokens for *alert* through any `OUDSTheme`.
/// *Alert* components tokens are defined with semantic tokens of borders (`AllBorderSemanticTokensProviders`),
/// spaces (from `AllSpaceSemanticTokensProvider`) and sizes (from `AllSizeSemanticTokensProvider`).
///
/// - Since: 1.2.0
final class WireframeThemeAlertComponentTokensProvider: AllAlertComponentTokensProvider {

    /// Provider of sizes semantic tokens to use for alert sizes
    let sizes: AllSizeSemanticTokensProvider

    /// Provider of borders semantic tokens to use for alert borders
    let borders: AllBorderSemanticTokensProvider

    /// Provider of spaces semantic tokens to use for alert spaces
    let spaces: AllSpaceSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `OUDSAlert`
    /// - Parameters:
    ///    - sizes: Provider for size semantic tokens, if nil, a default one will be used (``WireframeThemeSizeSemanticTokensProvider``)
    ///    - borders: Provider for border semantic tokens, if nil, default one will be used ( ``WireframeThemeBorderSemanticTokensProvider``)
    ///    - spaces: Provider for space semantic tokens, if nil, a default one will be used (``WireframeThemeSpaceSemanticTokensProvider``)
    init(sizes: AllSizeSemanticTokensProvider? = nil,
         borders: AllBorderSemanticTokensProvider? = nil,
         spaces: AllSpaceSemanticTokensProvider? = nil)
    {
        OL.debug("Init of WireframeThemeAlertComponentTokensProvider")
        self.sizes = (sizes ?? WireframeThemeSizeSemanticTokensProvider())
        self.borders = (borders ?? WireframeThemeBorderSemanticTokensProvider())
        self.spaces = (spaces ?? WireframeThemeSpaceSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "WireframeThemeAlertComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of AlertComponentTokens is not here but in Core/Themes/Wireframe/Values/ComponentTokens/WireframeTheme+AlertComponentTokens.swift
    // This declaration of WireframeThemeAlertComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
