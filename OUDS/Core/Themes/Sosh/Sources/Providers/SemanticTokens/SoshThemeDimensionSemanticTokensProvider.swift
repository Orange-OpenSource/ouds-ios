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

/// A class which wraps all **dimension semantic tokens**, and expose them.
/// This provider should be integrated as a `AllDimensionSemanticTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users.
///
/// These dimension semantic tokens are not overridable by design.
/// They are considered as "closed" tokens but still defined in this library so as to keep consistancy between Figma specifications
/// and library. The tokens are not hidden from developers.
///
/// - Since: 0.17.0
final class SoshThemeDimensionSemanticTokensProvider: AllDimensionSemanticTokensProvider {

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Intializes the provider
    init() {
        OL.debug("Init of SoshThemeDimensionSemanticTokensProvider")
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "SoshThemeDimensionSemanticTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of DimensionSemanticTokens is not here
    // but in Core/Themes/Sosh/Values/SemanticTokens/SoshTheme+DimensionSemanticTokens.swift
    // This declaration of SoshThemeDimensionSemanticTokensProvider is here to allow to write documentation.
}
