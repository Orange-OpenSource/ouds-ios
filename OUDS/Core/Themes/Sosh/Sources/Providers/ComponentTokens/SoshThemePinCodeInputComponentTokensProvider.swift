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

/// A class which wraps all **component  tokens of pin code input** like `OUDSPinCodeInput`;
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllPinCodeInputComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// It implements also the protocol `PinCodeInputComponentTokens` so as to expose the component tokens for *pin code input* through any `OUDSTheme`.
/// *Pint code input* components tokens are defined with semantic tokens of _ (from `AllDimensionSemanticTokensProvider`),
/// ans spaces (from `AllSpaceSemanticTokensProvider`).
///
/// - Since: 0.17.0
final class SoshThemePinCodeInputComponentTokensProvider: AllPinCodeInputComponentTokensProvider {

    /// Provider of spaces semantic tokens to use for pin code input spaces
    let spaces: AllSpaceSemanticTokensProvider

    /// Provider of _dimensions_  semantic tokens to use for pin code input dimensions
    let dimensions: AllDimensionSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `OUDSPinCodeInput`
    /// - Parameters:
    ///    - spaces: Provider for space semantic tokens. If nil, a default one will be used (``SoshThemeSpaceSemanticTokensProvider``)
    ///    - dimensions: Provider for dimension semantic tokens. If nil, a default one will be used (``SoshThemeDimensionSemanticTokensProvider``)
    init(spaces: AllSpaceSemanticTokensProvider? = nil,
         dimensions: AllDimensionSemanticTokensProvider? = nil)
    {
        OL.debug("Init of SoshsThemePinCodeInputComponentTokensProvider")
        self.spaces = (spaces ?? SoshThemeSpaceSemanticTokensProvider())
        self.dimensions = (dimensions ?? SoshThemeDimensionSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "SoshsThemePinCodeInputComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of PinCodeInputComponentTokens is not here but in Core/Themes/Sosh/Values/ComponentTokens/SoshTheme+PinCodeInputComponentTokens.swift
    // This declaration of SoshThemePinCodeInputComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
