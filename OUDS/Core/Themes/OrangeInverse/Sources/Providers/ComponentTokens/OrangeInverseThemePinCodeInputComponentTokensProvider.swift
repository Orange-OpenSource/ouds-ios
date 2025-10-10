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

/// A class which wraps all **component  tokens of pin code input** like `OUDSPinCodeInput`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllPinCodeInputComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// It implements also the protocol `PinCodeInputComponentTokens` so as to expose the component tokens for *pin code input* through any `OUDSTheme`.
/// *Pint code input* components tokens are defined with semantic tokens of dimensions (from `AllDimensionSemanticTokensProvider`),
/// ans spaces (from `AllSpaceSemanticTokensProvider`).
///
/// - Since: 0.17.0
final class OrangeInverseThemePinCodeInputComponentTokensProvider: AllPinCodeInputComponentTokensProvider {

    /// Provider of spaces semantic tokens to use for pin code input  spaces
    let spaces: AllSpaceSemanticTokensProvider

    /// Provider of dimensions semantic tokens to use for pin code input dimensions
    let dimensions: AllDimensionSemanticTokensProvider

    #if DEBUG
    private nonisolated(unsafe) static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `OUDSPinCodeInput`
    /// - Parameters:
    ///    - spaces: Provider for space semantic tokens. If nil, a default one will be used (``OrangeInverseThemeSpaceSemanticTokensProvider``)
    ///    - dimensions: Provider for dimension semantic tokens. If nil, a default one will be used (``OrangeInverseThemeDimensionSemanticTokensProvider``)
    init(spaces: AllSpaceSemanticTokensProvider? = nil,
         dimensions: AllDimensionSemanticTokensProvider? = nil)
    {
        OL.debug("Init of OrangeInverseThemePinCodeInputComponentTokensProvider")
        self.spaces = (spaces ?? OrangeInverseThemeSpaceSemanticTokensProvider())
        self.dimensions = (dimensions ?? OrangeInverseThemeDimensionSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeInverseThemePinCodeInputComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of PinCodeInputComponentTokens is not here but in Core/Themes/OrangeInverse/Values/ComponentTokens/OrangeInverseTheme+PinCodeInputComponentTokens.swift
    // This declaration of OrangeInverseThemePinCodeInputComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
