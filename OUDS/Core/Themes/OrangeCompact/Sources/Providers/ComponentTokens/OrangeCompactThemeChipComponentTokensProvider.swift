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

/// A class which wraps all **component  tokens of chip** for *chip* objects like `OUDSFilterChip` and `OUDSSuggestionChip``.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllChipComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// It implements also the protocol `ChipComponentTokens` so as to expose the component tokens for *chip* through any `OUDSTheme`.
/// *Chip* components tokens are defined with raw and semantic tokens of colors (from `AllColorSemanticTokensProvider`) ,
/// spaces (from `AllSpaceSemanticTokensProvider`), dimensions (`AllDimensionSemanticTokensProvider`)
/// border  (from `AllBorderSemanticTokensProvider`) and sizes  (from `AllSizeSemanticTokensProvider`).
///
/// - Since: 0.17.0
final class OrangeCompactThemeChipComponentTokensProvider: AllChipComponentTokensProvider {

    /// Provider of sizes semantic tokens to use for chip sizes
    let sizes: AllSizeSemanticTokensProvider

    /// Provider of border semantic tokens to use for chip borders
    let borders: AllBorderSemanticTokensProvider

    /// Provider of color semantic tokens to use for chip colors
    let colors: AllColorSemanticTokensProvider

    /// Provider of spaces semantic tokens to use for chip spaces
    let spaces: AllSpaceSemanticTokensProvider

    /// Provider of _dimensions_  semantic tokens to use for spaces as the Swift package exposes "closed" tokens of Figma
    let dimensions: AllDimensionSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `OUDSFilterChip` and `OUDSSuggestionChip`
    /// `
    /// - Parameters:
    ///    - sizes: Provider for sizes semantic tokens. If nil, a default one will be used (``OrangeCompactThemeSizeSemanticTokensProvider``)
    ///    - borders: Provider for border semantic tokens. If nil, a default one will be used (``OrangeCompactThemeBorderSemanticTokensProvider``)
    ///    - colors: Provider for color semantic tokens. If nil, a default one will be used (``OrangeCompactThemeColorSemanticTokensProvider``)
    ///    - spaces: Provider for space semantic tokens. If nil, a default one will be used (``OrangeCompactThemeSpaceSemanticTokensProvider``)
    ///    - dimensions: Provider for dimension semantic tokens. If nil, a default one will be used (``OrangeCompactThemeDimensionSemanticTokensProvider``)
    init(sizes: AllSizeSemanticTokensProvider? = nil,
         borders: AllBorderSemanticTokensProvider? = nil,
         colors: AllColorSemanticTokensProvider? = nil,
         spaces: AllSpaceSemanticTokensProvider? = nil,
         dimensions: AllDimensionSemanticTokensProvider? = nil)
    {
        OL.debug("Init of OrangeCompactThemeChipComponentTokensProvider")
        self.sizes = (sizes ?? OrangeCompactThemeSizeSemanticTokensProvider())
        self.borders = (borders ?? OrangeCompactThemeBorderSemanticTokensProvider())
        self.colors = (colors ?? OrangeCompactThemeColorSemanticTokensProvider())
        self.spaces = (spaces ?? OrangeCompactThemeSpaceSemanticTokensProvider())
        self.dimensions = (dimensions ?? OrangeCompactThemeDimensionSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeCompactThemeChipComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }
    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of ChipComponentTokens is not here but in Core/Themes/OrangeCompact/Values/ComponentTokens/OrangeCompactTheme+ChipComponentTokens.swift
    // This declaration of OrangeCompactThemeChipComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
