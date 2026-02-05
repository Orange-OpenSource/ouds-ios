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

/// A class which wraps all **component  tokens of select input** for objects like `OUDSSelectInput`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllSelectComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// It implements also the protocol `SelectInputComponentTokens` so as to expose the component tokens for *select input* through any `OUDSTheme`.
/// *Select input* components tokens are defined with semantic tokens of sizes (from `AllSizeSemanticTokensProvider`).
///
/// - Since: 0.17.0
final class OrangeCompactThemeSelectInputComponentTokensProvider: AllSelectInputComponentTokensProvider {

    /// Provider of size semantic tokens to use for select input sizes
    let sizes: AllSizeSemanticTokensProvider

    /// Provider of _dimensions_  semantic tokens to use for select input dimensions
    let dimensions: AllDimensionSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `OUDSSelect`
    /// - Parameters:
    ///    - sizes: Provider for size semantic tokens. If nil, a default one will be used (``OrangeCompactThemeSizeSemanticTokensProvider``)
    ///    - dimensions: Provider for dimensions semantic tokens. If nil, a default one will be used (``OrangeCompactThemeDimensionSemanticTokensProvider``)
    init(sizes: AllSizeSemanticTokensProvider? = nil,
         dimensions: AllDimensionSemanticTokensProvider? = nil)
    {
        OL.debug("Init of OrangeCompactThemeSelectInputComponentTokensProvider")
        self.sizes = (sizes ?? OrangeCompactThemeSizeSemanticTokensProvider())
        self.dimensions = (dimensions ?? OrangeCompactThemeDimensionSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeCompactThemeSelectInputComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of SelectInputComponentTokens is not here but in Core/Themes/OrangeCompact/Values/ComponentTokens/OrangeCompactTheme+SelectInputComponentTokens.swift
    // This declaration of OrangeCompactThemeSelectInputComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
