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

/// A class which wraps all **color mode semantic tokens**, *multiple* or not, and expose them.
/// This provider should be integrated as a `AllColorModeSemanticTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users.
///
/// - Since: 0.17.0
final class OrangeBusinessToolsThemeColorModeSemanticTokensProvider: AllColorModeSemanticTokensProvider {

    /// Provider of color semantic tokens to use for depending to some color modes
    let colors: AllColorSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of color mode semantic tokens
    /// - Parameter colors: Provider for color semantic tokens. If nil, a default one will be used (``OrangeBusinessToolsThemeColorSemanticTokensProvider``)
    init(colors: AllColorSemanticTokensProvider? = nil) {
        OL.debug("Init of OrangeBusinessToolsThemeColorModeSemanticTokensProvider")
        self.colors = (colors ?? OrangeBusinessToolsThemeColorSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeBusinessToolsThemeColorModeSemanticTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of ColorModeSemanticTokens and ColorModeMultipleSemanticTokens are not here
    // but in Core/Themes/OrangeBusinessTools/Values/SemanticTokens/OrangeBusinessToolsTheme+ColorModeMultipleSemanticTokens.swift
    // and in Core/Themes/OrangeBusinessTools/Values/SemanticTokens/OrangeBusinessToolsTheme+ColorModeSemanticTokens.swift
    // This declaration of OrangeBusinessToolsThemeColorModeSemanticTokensProvider is here to allow to write documentation.
}

// swiftlint:enable type_name
