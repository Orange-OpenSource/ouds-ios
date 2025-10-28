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

/// A class which wraps all **component  tokens of input text** for *input text* objects like `OUDSTextInput`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllTextInputComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// It implements also the protocol `InouttextComponentTokens` so as to expose the component tokens for *input text* through any `OUDSTheme`.
/// *Inout text* components tokens are defined with raw and semantic tokens of sizes (from `AllSizeSemanticTokensProvider`), colors (`AllColorSemanticTokensProvider`)
/// and spaces (from `AllSpaceSemanticTokensProvider`).
///
/// - Since: 0.17.0
final class WireframeThemeTextInputComponentTokensProvider: AllTextInputComponentTokensProvider {

    /// Provider of size semantic tokens to use for text input sizes
    let sizes: AllSizeSemanticTokensProvider

    /// Provider of border semantic tokens to use for text input sborders
    let borders: AllBorderSemanticTokensProvider

    /// Provider of color semantic tokens to use for  text input colors
    let colors: AllColorSemanticTokensProvider

    /// Provider of spaces semantic tokens to use for  text input spaces
    let spaces: AllSpaceSemanticTokensProvider

    /// Provider of dimensions semantic tokens to use for  text input dimensions
    let dimensions: AllDimensionSemanticTokensProvider

    #if DEBUG
    private nonisolated(unsafe) static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `OUDSButton`
    /// - Parameters:
    ///    - sizes: Provider for size semantic tokens. If nil, a default one will be used (`WireframeThemeSizeSemanticTokensProvider`)
    ///    - borders: Provider for borders semantic tokens. If nil, a default one will be used (`WireframeThemeBorderSemanticTokensProvider`)
    ///    - colors: Provider for color semantic tokens. If nil, a default one will be used (`WireframeThemeColorSemanticTokensProvider`)
    ///    - spaces: Provider for space semantic tokens. If nil, a default one will be used (`WireframeThemeSpaceSemanticTokensProvider`)
    ///    - dimensions: Provider for _ semantic tokens. If nil, a default one will be used (`WireframeThemeDimensionSemanticTokensProvider`)
    init(sizes: AllSizeSemanticTokensProvider? = nil,
         borders: AllBorderSemanticTokensProvider? = nil,
         colors: AllColorSemanticTokensProvider? = nil,
         spaces: AllSpaceSemanticTokensProvider? = nil,
         dimensions: AllDimensionSemanticTokensProvider? = nil)
    {
        OL.debug("Init of WireframeThemeTextInputComponentTokensProvider")
        self.sizes = (sizes ?? WireframeThemeSizeSemanticTokensProvider())
        self.borders = (borders ?? WireframeThemeBorderSemanticTokensProvider())
        self.colors = (colors ?? WireframeThemeColorSemanticTokensProvider())
        self.spaces = (spaces ?? WireframeThemeSpaceSemanticTokensProvider())
        self.dimensions = (dimensions ?? WireframeThemeDimensionSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "WireframeThemeTextInputComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of TextInputComponentTokens is not here but in Core/Themes/Wireframe/Values/ComponentTokens/WireframeTheme+TextInputComponentTokens.swift
    // This declaration of WireframeThemeTextInputComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
