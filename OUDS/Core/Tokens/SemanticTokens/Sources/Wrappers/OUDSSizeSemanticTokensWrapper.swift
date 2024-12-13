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

/// A class which wraps all **size semantic tokens**, *multiple* or not, and expose them.
/// This wrapper should be integrated as a ``AllSizeSemanticTokens`` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users.
open class OUDSSizeSemanticTokensWrapper {

    /// Intializes the wrapper
    public init() {
        OUDSLogger.debug("Init of OUDSSizeSemanticTokensWrapper")
    }

    deinit{ }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of SizeSemanticTokens and SizeMultipleSemanticTokens are not here
    // but in OUDS/OUDSTheme/OUDSTheme+SemanticTokens/OUDSTheme+SizeSemanticTokens.swift
    // and in OUDS/OUDSTheme/OUDSTheme+SemanticTokens/OUDSTheme+SizeMultipleSemanticTokens.swift.
    // This declaration of OUDSSizeSemanticTokensWrapper is here to allow to write documentation.
}
