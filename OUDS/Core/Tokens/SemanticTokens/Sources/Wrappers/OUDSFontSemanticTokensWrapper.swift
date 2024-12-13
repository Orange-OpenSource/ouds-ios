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

/// A class which wraps all **font semantic tokens**, *multiple*, *composite* or not, and expose them.
/// This wrapper should be integrated as a ``AllFontSemanticTokens`` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users.
open class OUDSFontSemanticTokensWrapper {

    /// Intializes the wrapper
    public init() { }

    deinit{ }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of FontSemanticTokens, FontCompositeSemanticTokens, FontMultipleSemanticTokens are not here
    // but in OUDS/OUDSTheme/OUDSTheme+SemanticTokens/OUDSTheme+FontSemanticTokens.swift,
    // in OUDS/OUDSTheme/OUDSTheme+SemanticTokens/OUDSTheme+FontCompositeSemanticTokens.swift,
    // and in OUDS/OUDSTheme/OUDSTheme+SemanticTokens/OUDSTheme+FontMultipleSemanticTokens.swift.
    // This declaration of OUDSFontSemanticTokensWrapper is here to allow to write documentation.
}
