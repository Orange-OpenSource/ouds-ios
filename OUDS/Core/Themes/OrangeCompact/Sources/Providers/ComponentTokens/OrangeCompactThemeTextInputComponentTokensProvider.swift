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
// swiftlint:disable line_length

/// A class which wraps all **component  tokens of input text** for *input text* objects like `OUDSTextInput`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllTextInputComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// It implements also the protocol `TextInputComponentTOkens` so as to expose the component tokens for *input text* through any `OUDSTheme`.
/// *Inout text* components tokens are defined with raw and semantic tokens of sizes (from `AllSizeSemanticTokensProvider`), colors (`AllColorSemanticTokensProvider`), borders (from `AllBorderSemanticTokensProvider`),
/// spaces (from `AllSpaceSemanticTokensProvider`) and dimensions (from `AllDimensionSemanticTokensProvider`).
///
/// - Since: 0.17.0
final class OrangeCompactThemeTextInputComponentTokensProvider: AllTextInputComponentTokensProvider {

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
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `OUDSTextInput`
    /// - Parameters:
    ///    - sizes: Provider for size semantic tokens. If nil, a default one will be used (`OrangeCompactThemeSizeSemanticTokensProvider`)
    ///    - borders: Provider for size semantic tokens. If nil, a default one will be used (`OrangeCompactThemeBorderSemanticTokensProvider`)
    ///    - colors: Provider for color semantic tokens. If nil, a default one will be used (`OrangeCompactThemeColorSemanticTokensProvider`)
    ///    - spaces: Provider for space semantic tokens. If nil, a default one will be used (`OrangeCompactThemeSpaceSemanticTokensProvider`)
    ///    - dimensions: Provider for dimension semantic tokens. If nil, a default one will be used (`OrangeCompactThemeDimensionSemanticTokensProvider`)
    init(sizes: AllSizeSemanticTokensProvider? = nil,
         borders: AllBorderSemanticTokensProvider? = nil,
         colors: AllColorSemanticTokensProvider? = nil,
         spaces: AllSpaceSemanticTokensProvider? = nil,
         dimensions: AllDimensionSemanticTokensProvider? = nil)
    {
        OL.debug("Init of OrangeCompactThemeTextInputComponentTokensProvider")
        self.sizes = (sizes ?? OrangeCompactThemeSizeSemanticTokensProvider())
        self.borders = (borders ?? OrangeCompactThemeBorderSemanticTokensProvider())
        self.colors = (colors ?? OrangeCompactThemeColorSemanticTokensProvider())
        self.spaces = (spaces ?? OrangeCompactThemeSpaceSemanticTokensProvider())
        self.dimensions = (dimensions ?? OrangeCompactThemeDimensionSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeCompactThemeTextInputComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of TextInputComponentTokens is not here but in Core/Themes/OrangeCompact/Values/ComponentTokens/OrangeCompactTheme+TextInputComponentTokens.swift
    // This declaration of OrangeCompactThemeTextInputComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
// swiftlint:enable line_length
