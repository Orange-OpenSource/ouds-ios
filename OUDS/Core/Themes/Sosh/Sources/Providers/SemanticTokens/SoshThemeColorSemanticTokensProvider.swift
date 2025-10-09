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

/// A class which wraps all **color semantic tokens**, *multiple* or not, and expose them.
/// This provider should be integrated as a `AllColorSemanticTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users.
///
/// - Since: 0.17.0
final class SoshThemeColorSemanticTokensProvider: AllColorSemanticTokensProvider {

    #if DEBUG
    private nonisolated(unsafe) static var instanceCount: Int = 0
    #endif

    /// Intializes the provider
    init() {
        OL.debug("Init of SoshThemeColorSemanticTokensProvider")
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "SoshThemeColorSemanticTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of ColorSemanticTokens and ColorMultipleSemanticTokens are not here
    // but in Core/Themes/Sosh/Values/SemanticTokens/SoshTheme+ColorMultipleSemanticTokens.swift
    // and in Core/Themes/Sosh/Values/SemanticTokens/SoshTheme+ColorSemanticTokens.swift
    // This declaration of SoshThemeColorSemanticTokensProvider is here to allow to write documentation.
}
