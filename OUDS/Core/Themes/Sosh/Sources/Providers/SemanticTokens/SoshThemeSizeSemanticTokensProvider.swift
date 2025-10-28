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

/// A class which wraps all **size semantic tokens**, *multiple* or not, and expose them.
/// This provider should be integrated as a `AllSizeSemanticTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users.
/// Closed tokens of _s (`AllDimensionSemanticTokensProvider`) are used so as to keep consistancy between Figma specifications and library for developers.
///
/// - Since: 0.17.0
final class SoshThemeSizeSemanticTokensProvider: AllSizeSemanticTokensProvider {

    /// Provider of _ semantic tokens to use for spaces as the Swift package exposes "closed" tokens of Figma
    let _s: AllDimensionSemanticTokensProvider

    #if DEBUG
    private nonisolated(unsafe) static var instanceCount: Int = 0
    #endif

    /// Intializes the provider
    /// - Parameter _s: Provider for _ semantic tokens. If nil, a default one will be used (``SoshThemeDimensionSemanticTokensProvider``)
    init(_s: AllDimensionSemanticTokensProvider? = nil) {
        OL.debug("Init of SoshThemeSizeSemanticTokensProvider")
        self._s = (_s ?? SoshThemeDimensionSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "SoshThemeSizeSemanticTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of SizeSemanticTokens and SizeMultipleSemanticTokens are not here
    // but in Core/Themes/Sosh/Values/SemanticTokens/SoshTheme+SizeSemanticTokens.swift
    // and in Core/Themes/Sosh/Values/SemanticTokens/SoshTheme+SizeMultipleSemanticTokens.swift
    // This declaration of SoshThemeSizeSemanticTokensProvider is here to allow to write documentation.
}
