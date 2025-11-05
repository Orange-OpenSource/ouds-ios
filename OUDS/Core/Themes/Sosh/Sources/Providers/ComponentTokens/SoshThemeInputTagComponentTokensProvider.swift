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

/// A class which wraps all **component  tokens of tag input** objects like `OUDSInputTag`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// It implements also the protocol `InputTagComponentTokens` so as to expose the component tokens for *tag inputs* through any `OUDSTheme`.
/// *Tag inputs* components tokens are defined with semantic tokens of colors (from `AllColorSemanticTokensProvider`),
/// and borders (from `AllBorderSemanticTokensProvider`).
///
/// - Since: 0.17.0
final class SoshThemeInputTagComponentTokensProvider: AllInputTagComponentTokensProvider {

    /// Provider of border semantic tokens to use for tag input borders
    let borders: AllBorderSemanticTokensProvider

    /// Provider of space semantic tokens to use for tag input colors
    let colors: AllColorSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `OUDSInputTag`
    /// - Parameters:
    ///    - borders: Provider for borders semantic tokens. If nil, a default one will be used (``SoshThemeBorderSemanticTokensProvider``)
    ///    - colors: Provider for _ semantic tokens. If nil, a default one will be used (``SoshThemeColorSemanticTokensProvider``)
    init(borders: AllBorderSemanticTokensProvider? = nil,
         colors: AllColorSemanticTokensProvider? = nil)
    {
        OL.debug("Init of SoshThemeInputTagComponentTokensProvider")
        self.borders = (borders ?? SoshThemeBorderSemanticTokensProvider())
        self.colors = (colors ?? SoshThemeColorSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "SoshThemeInputTagComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of InputTagComponentTokens is not here but in Core/Themes/Sosh/Values/ComponentTokens/SoshTheme+InputTagComponentTokens.swift
    // This declaration of SoshThemeInputTagComponentTokensProvider is here also to allow to write documentation.
}
