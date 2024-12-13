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

/// A class which wraps all **elevation semantic tokens**, *multiple*, *composite* or not, and expose them.
/// This wrapper should be integrated as a ``AllElevationSemanticTokens`` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users.
open class OUDSElevationSemanticTokensWrapper {

    /// Intializes the wrapper
    public init() { }

    deinit{ }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of ElevationSemanticTokens, ElevationCompositeSemanticTokens, ElevationMultipleSemanticTokens are not here
    // but in OUDS/OUDSTheme/OUDSTheme+SemanticTokens/OUDSTheme+ElevationSemanticTokens.swift,
    // in OUDS/OUDSTheme/OUDSTheme+SemanticTokens/OUDSTheme+ElevationCompositeSemanticTokens.swift,
    // and in OUDS/OUDSTheme/OUDSTheme+SemanticTokens/OUDSTheme+ElevationMultipleSemanticTokens.swift.
    // This declaration of OUDSElevationSemanticTokensWrapper is here to allow to write documentation.
}
