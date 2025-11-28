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

/// A class which wraps all **effect semantic tokens**, and expose them.
/// This provider should be integrated as a `AllEffectSemanticTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users.
///
/// - Since: 0.22.0
final class SoshThemeEffectSemanticTokensProvider: AllEffectSemanticTokensProvider {

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Intializes the provider
    init() {
        OL.debug("Init of SoshThemeEffectSemanticTokensProvider")
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "SoshThemeEffectSemanticTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of DimensionSemanticTokens is not here
    // but in Core/Themes/Sosh/Values/Semanticokens/SoshTheme+EffectSemanticTokens.swift
    // This declaration of SoshThemeEffectSemanticTokensProvider is here to allow to write documentation.
}
