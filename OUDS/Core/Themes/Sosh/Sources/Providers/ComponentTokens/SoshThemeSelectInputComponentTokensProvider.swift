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

/// A class which wraps all **component  tokens of select input** for bjects like `OUDSSelectInput`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllSelectInputComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// It implements also the protocol `SelectInputComponentTokens` so as to expose the component tokens for *select input* through any `OUDSTheme`.
/// *Select input* components tokens are defined with  semantic tokens of sizes (from `AllDimensionSemanticTokensProvider`.
///
/// - Since: 0.17.0
final class SoshThemeSelectInputComponentTokensProvider: AllSelectInputComponentTokensProvider {

    /// Provider of dimension semantic tokens to use for pin code input dimensions
    let dimensions: AllDimensionSemanticTokensProvider

    #if DEBUG
    private nonisolated(unsafe) static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `OUDSSelectInput`
    /// - Parameters:
    ///    - dimensions: Provider for dimension semantic tokens. If nil, a default one will be used (``SoshThemeDimensionSemanticTokensProvider``)
    init(sizes: AllSizeSemanticTokensProvider? = nil,
         dimensions: AllDimensionSemanticTokensProvider? = nil)
    {
        OL.debug("Init of SoshThemeSelectInputComponentTokensProvider")
        self.dimensions = (dimensions ?? SoshThemeDimensionSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "SoshThemeSelectInputComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of SelectInputComponentTokens is not here but in Core/Themes/Sosh/Values/ComponentTokens/SoshTheme+SelectInputComponentTokens.swift
    // This declaration of SoshThemeSelectInputComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
