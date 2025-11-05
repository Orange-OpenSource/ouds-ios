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

/// A class which wraps all **component  tokens of icons** for *icons* used in some components like `OUDSTag`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllIconComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users.
/// It implements also the protocol `IconomponentTokens` so as to expose the component tokens for *icons* through any `OUDSTheme`.
/// *Icons* components tokens are defined with raw and semantic tokens of colors (from `AllColorSemanticTokensProvider`).
///
/// - Since: 0.20.0
final class OrangeBusinessToolsThemeIconComponentTokensProvider: AllIconComponentTokensProvider {

    /// Provider of color semantic tokens to use for link colors
    let colors: AllColorSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to icons
    /// - Parameters:
    ///    - colors: Provider for color semantic tokens. If nil, a default one will be used (``OrangeBusinessToolsThemeColorSemanticTokensProvider``)
    init(colors: AllColorSemanticTokensProvider? = nil) {
        OL.debug("Init of OrangeBusinessToolsThemeIconComponentTokensProvider")
        self.colors = (colors ?? OrangeBusinessToolsThemeColorSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeBusinessToolsThemeIconComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of IconComponentTokens is not here but in Core/Themes/OrangeBusinessTools/Values/ComponentTokens/OrangeBusinessToolsTheme+IconComponentTokens.swift
    // This declaration of OrangeBusinessToolsThemeIconComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
