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

/// A class which wraps all **component  tokens of text area** objects like `OUDSTextArea`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// It implements also the protocol `TextAreaComponentTokens` so as to expose the component tokens for *text area* through any `OUDSTheme`.
/// *Text area* components tokens are defined with semantic tokens of sizes (from `AllSizesSemanticTokensProvider`),
/// and spaces (from `AllSpacesSemanticTokensProvider`).
///
/// - Since: 0.17.0
final class OrangeBusinessToolsThemeTextAreaComponentTokensProvider: AllTextAreaComponentTokensProvider {

    /// Provider of sizes semantic tokens to use for text area sizes
    let sizes: AllSizeSemanticTokensProvider

    /// Provider of space semantic tokens to use for text area spaces
    let spaces: AllSpaceSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `OUDSTextArea`
    /// - Parameters:
    ///    - sizes: Provider for borders semantic tokens. If nil, a default one will be used (``OrangeBusinessToolsThemeSizeSemanticTokensProvider``)
    ///    - spaces: Provider for _ semantic tokens. If nil, a default one will be used (``OrangeBusinessToolsThemeSpaceSemanticTokensProvider``)
    init(sizes: AllSizeSemanticTokensProvider? = nil,
         spaces: AllSpaceSemanticTokensProvider? = nil)
    {
        OL.debug("Init of OrangeBusinessToolsThemeTextAreaComponentTokensProvider")
        self.sizes = (sizes ?? OrangeBusinessToolsThemeSizeSemanticTokensProvider())
        self.spaces = (spaces ?? OrangeBusinessToolsThemeSpaceSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeBusinessToolsThemeTextAreaComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of TextAreaComponentTokens is not here but in Core/Themes/OrangeBusinessTools/Values/ComponentTokens/OrangeBusinessToolsTheme+TextAreaComponentTokens.swift
    // This declaration of OrangeBusinessToolsThemeTextAreaComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
