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

/// A class which wraps all **component  tokens of text area** objects like `OUDSTextArea`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// It implements also the protocol `TextAreaComponentTokens` so as to expose the component tokens for *text area* through any `OUDSTheme`.
/// *Text area* components tokens are defined with semantic tokens of sizes (from `AllSizesSemanticTokensProvider`),
/// and spaces (from `AllSpacesSemanticTokensProvider`).
///
/// - Since: 0.17.0
final class SoshThemeTextAreaComponentTokensProvider: AllTextAreaComponentTokensProvider {

    /// Provider of sizes semantic tokens to use for text area sizes
    public let sizes: AllSizeSemanticTokensProvider

    /// Provider of space semantic tokens to use for text area spaces
    public let spaces: AllSpaceSemanticTokensProvider

    #if DEBUG
    private nonisolated(unsafe) static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `OUDSTextArea`
    /// - Parameters:
    ///    - sizes: Provider for borders semantic tokens. If nil, a default one will be used (``SoshThemeSizeSemanticTokensProvider``)
    ///    - spaces: Provider for dimension semantic tokens. If nil, a default one will be used (``SoshThemeSpaceSemanticTokensProvider``)
    public init(sizes: AllSizeSemanticTokensProvider? = nil,
                spaces: AllSpaceSemanticTokensProvider? = nil)
    {
        OL.debug("Init of SoshThemeTextAreaComponentTokensProvider")
        self.sizes = (sizes ?? SoshThemeSizeSemanticTokensProvider())
        self.spaces = (spaces ?? SoshThemeSpaceSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "SoshThemeTextAreaComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of TextAreaComponentTokens is not here but in Core/Themes/Sosh/Values/ComponentTokens/SoshTheme+TextAreaComponentTokens.swift
    // This declaration of SoshThemeTextAreaComponentTokensProvider is here also to allow to write documentation.
}
