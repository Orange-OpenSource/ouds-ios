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

/// A class which wraps all **font semantic tokens**, *multiple*, *composite* or not, and expose them.
/// This provider should be integrated as a `AllFontSemanticTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users.
///
/// - Since: 0.17.0
final class OrangeCompactThemeFontSemanticTokensProvider: AllFontSemanticTokensProvider {

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Intializes the provider
    init() {
        OL.debug("Init of OrangeCompactThemeFontSemanticTokensProvider")
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeCompactThemeFontSemanticTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of FontSemanticTokens, FontCompositeSemanticTokens, FontMultipleSemanticTokens are not here
    // but in Core/Themes/OrangeCompact/Values/SemanticTokens/OrangeCompactTheme+FontSemanticTokens.swift,
    // in Core/Themes/OrangeCompact/Values/SemanticTokens/OrangeCompactTheme+FontCompositeSemanticTokens.swift,
    // and in Core/Themes/OrangeCompact/Values/SemanticTokens/OrangeCompactTheme+FontMultipleSemanticTokens.swift,
    // This declaration of OUDSFontSemanticTokensProvider is here to allow to write documentation.
}

// swiftlint:enable type_name
