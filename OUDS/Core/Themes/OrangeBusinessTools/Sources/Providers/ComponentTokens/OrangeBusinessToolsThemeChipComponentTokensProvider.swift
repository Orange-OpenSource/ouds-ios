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

/// A class which wraps all **component  tokens of chip** for *chip* objects like `OUDSChip`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllChipComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// It implements also the protocol `ChipComponentTokens` so as to expose the component tokens for *chip* through any `OUDSTheme`.
/// *Chip* components tokens are defined with raw and semantic tokens of sizes (from `AllSizeSemanticTokensProvider`),
/// colors (from `AllColorSemanticTokensProvider`) , spaces (from `AllSpaceSemanticTokensProvider`),
/// dimensions (`AllDimensionSemanticTokensProvider`) and border  (from `AllBorderSemanticTokensProvider`).
///
/// - Since: 0.17.0
final class OrangeBusinessToolsThemeChipComponentTokensProvider: AllChipComponentTokensProvider {

    /// Provider of size semantic tokens to use for chip sizes
    public let sizes: AllSizeSemanticTokensProvider

    /// Provider of border semantic tokens to use for chip sizes
    public let borders: AllBorderSemanticTokensProvider

    /// Provider of color semantic tokens to use for chip colors
    public let colors: AllColorSemanticTokensProvider

    /// Provider of spaces semantic tokens to use for chip spaces
    public let spaces: AllSpaceSemanticTokensProvider

    /// Provider of dimension semantic tokens to use for spaces as the Swift package exposes "closed" tokens of Figma
    public let dimensions: AllDimensionSemanticTokensProvider

    #if DEBUG
    private nonisolated(unsafe) static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `OUDSChip`
    /// - Parameters:
    ///    - sizes: Provider for size semantic tokens. If nil, a default one will be used (``OrangeBusinessToolsThemeSizeSemanticTokensProvider``)
    ///    - borders: Provider for border semantic tokens. If nil, a default one will be used (``OrangeBusinessToolsThemeBorderSemanticTokensProvider``)
    ///    - colors: Provider for color semantic tokens. If nil, a default one will be used (``OrangeBusinessToolsThemeColorSemanticTokensProvider``)
    ///    - spaces: Provider for space semantic tokens. If nil, a default one will be used (``OrangeBusinessToolsThemeSpaceSemanticTokensProvider``)
    ///    - dimensions: Provider for dimension semantic tokens. If nil, a default one will be used (``OrangeBusinessToolsThemeDimensionSemanticTokensProvider``)
    public init(sizes: AllSizeSemanticTokensProvider? = nil,
                borders: AllBorderSemanticTokensProvider? = nil,
                colors: AllColorSemanticTokensProvider? = nil,
                spaces: AllSpaceSemanticTokensProvider? = nil,
                dimensions: AllDimensionSemanticTokensProvider? = nil)
    {
        OL.debug("Init of OrangeBusinessToolsThemeChipComponentTokensProvider")
        self.sizes = (sizes ?? OrangeBusinessToolsThemeSizeSemanticTokensProvider())
        self.borders = (borders ?? OrangeBusinessToolsThemeBorderSemanticTokensProvider())
        self.colors = (colors ?? OrangeBusinessToolsThemeColorSemanticTokensProvider())
        self.spaces = (spaces ?? OrangeBusinessToolsThemeSpaceSemanticTokensProvider())
        self.dimensions = (dimensions ?? OrangeBusinessToolsThemeDimensionSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeBusinessToolsThemeChipComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }
    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of ChipComponentTokens is not here but in Core/Themes/OrangeBusinessTools/Values/ComponentTokens/OrangeBusinessToolsTheme+ChipComponentTokens.swift
    // This declaration of OrangeBusinessToolsThemeChipComponentTokensProvider is here also to allow to write documentation.
}
