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

// swiftlint:disable line_length
// swiftlint:disable type_name

/// A class which wraps all **component  tokens of select input** for objects like `OUDSSelectInput`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllSelectComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// It implements also the protocol `SelectInputComponentTokens` so as to expose the component tokens for *select input* through any `OUDSTheme`.
/// *Select input* components tokens are defined with semantic tokens of sizes (from `AllSizeSemanticTokensProvider`).
///
/// - Since: 0.17.0
final class OrangeBusinessToolsThemeSelectInputComponentTokensProvider: AllSelectInputComponentTokensProvider {

    /// Provider of size semantic tokens to use for select input sizes
    let sizes: AllSizeSemanticTokensProvider

    /// Provider of _ semantic tokens to use for select input dimensions
    let dimensions: AllDimensionSemanticTokensProvider

    #if DEBUG
    private nonisolated(unsafe) static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `OUDSSelect`
    /// - Parameters:
    ///    - sizes: Provider for size semantic tokens. If nil, a default one will be used (``OrangeBusinessToolsThemeSizeSemanticTokensProvider``)
    ///    - dimensions: Provider for dimensions semantic tokens. If nil, a default one will be used (``OrangeBusinessToolsThemeDimensionSemanticTokensProvider``)
    init(sizes: AllSizeSemanticTokensProvider? = nil,
         dimensions: AllDimensionSemanticTokensProvider? = nil)
    {
        OL.debug("Init of OrangeBusinessToolsThemeSelectInputComponentTokensProvider")
        self.sizes = (sizes ?? OrangeBusinessToolsThemeSizeSemanticTokensProvider())
        self.dimensions = (dimensions ?? OrangeBusinessToolsThemeDimensionSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeBusinessToolsThemeSelectInputComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of SelectInputComponentTokens is not here but in Core/Themes/OrangeBusinessTools/Values/ComponentTokens/OrangeBusinessToolsTheme+SelectInputComponentTokens.swift
    // This declaration of OrangeBusinessToolsThemeSelectInputComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable line_length
// swiftlint:enable type_name
