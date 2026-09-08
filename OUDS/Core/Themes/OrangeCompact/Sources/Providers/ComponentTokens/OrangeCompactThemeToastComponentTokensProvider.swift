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

/// A class which wraps all **component  tokens of toast** for *toast* objects like `OUDSToast`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllToastComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// It implements also the protocol `ToastComponentTokens` so as to expose the component tokens for *toast* through any `OUDSTheme`.
/// *Toast* components tokens are defined with semantic tokens of borders (`AllBorderSemanticTokensProvider`),
/// dimensions (`AllDimensionSemanticTokensProvider`) and sizes (from `AllSizeSemanticTokensProvider`).
///
/// - Since: 3.0.0
final class OrangeCompactThemeToastComponentTokensProvider: AllToastComponentTokensProvider {

    /// Provider of borders semantic tokens to use for toast borders
    let borders: AllBorderSemanticTokensProvider

    /// Provider of _dimensions_ semantic tokens to use for sizes as the Swift package exposes "closed" tokens of Figma
    let dimensions: AllDimensionSemanticTokensProvider

    /// Provider of sizes semantic tokens to use for toast sizes
    let sizes: AllSizeSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `OUDSToast`
    /// - Parameters:
    ///    - borders: Provider for border semantic tokens, if nil, a default one will be used (``OrangeCompactThemeBorderSemanticTokensProvider``)
    ///    - dimensions: Provider for dimension semantic tokens, if nil, default one will be used ( ``OrangeCompactThemeDimensionSemanticTokensProvider``)
    ///    - sizes: Provider for size semantic tokens, if nil, default one will be used ( ``OrangeCompactThemeSizeSemanticTokensProvider``)
    init(borders: AllBorderSemanticTokensProvider? = nil,
         dimensions: AllDimensionSemanticTokensProvider? = nil,
         sizes: AllSizeSemanticTokensProvider? = nil)
    {
        OL.debug("Init of OrangeCompactThemeToastComponentTokensProvider")
        self.borders = (borders ?? OrangeCompactThemeBorderSemanticTokensProvider())
        self.dimensions = (dimensions ?? OrangeCompactThemeDimensionSemanticTokensProvider())
        self.sizes = (sizes ?? OrangeCompactThemeSizeSemanticTokensProvider(dimensions: self.dimensions))
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeCompactThemeToastComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of ToastComponentTokens is not here but in Core/Themes/OrangeCompact/Values/ComponentTokens/OrangeCompactTheme+ToastComponentTokens.swift
    // This declaration of OrangeCompactThemeToastComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
