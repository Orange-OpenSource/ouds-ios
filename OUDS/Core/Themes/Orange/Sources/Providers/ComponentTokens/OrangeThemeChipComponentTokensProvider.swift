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

/// A class which wraps all **component  tokens of chip** for *chip* objects like `OUDSFilterChip` and `OUDSSuggestionChip`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllChipComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// Custom themes can use subclass of ``OrangeThemeChipComponentTokensProvider`` and apply the provider they need.
/// It implements also the protocol `ChipComponentTokens` so as to expose the component tokens for *chip* through any `OUDSTheme`.
/// *Chip* components tokens are defined with semantic tokens of colors (from `AllColorSemanticTokensProvider`) ,
/// spaces (from `AllSpaceSemanticTokensProvider`), dimensions (`AllDimensionSemanticTokensProvider`)
/// and border  (from `AllBorderSemanticTokensProvider`).
///
/// ```swift
///     // Define your own provider for chip component tokens
///     // by inheriting from existing provider
///     class CustomChipComponentTokensProvider: OrangeThemeChipComponentTokensProvider {
///
///         // Then override the chip component tokens you want.
///
///         override var sizeMinHeight: SizeSemanticToken { DimensionRawTokens._500 }
///
///         override var borderWidthDefault: BorderWidthSemanticToken { borders.widthmediumt }
///
///         override var colorBgFocus: MultipleColorSemanticTokens { colors.contentDefault }
///
///         override var spaceInsetIconOnly: SpaceSemanticToken { spaces.paddingInlineTall }
///
///         // ...
///     }
///
///     // Or define your own provider from scratch
///     class CustomChipComponentTokensProvider: ChipComponentTokens {
///
///         // And implement hunders of tokens.
///         // You are allowed to give semantic tokens providers if you want to define values.
///     }
/// ```
///
/// Then, you can give this `CustomChipComponentTokensProvider` to your own theme implementation:
///
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(chip: CustomChipComponentTokensProvider())
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(chip: CustomChipComponentTokensProvider())
/// ```
///
/// It is also possible to use your own semantic tokens providers for this component tokens providers:
///
/// ```swift
///     // Uses by default here:
///     // - OrangeThemeBorderSemanticTokensProvider for borders
///     // - OrangeThemeColorSemanticTokensProvider for colors
///     // - OrangeThemeSpaceSemanticTokensProvider for spaces
///     // - OrangeThemeDimensionSemanticTokensProvider for dimensions
///     let chipComponentTokensProvider = OrangeThemeChipComponentTokensProvider()
///
///     // Or use your own _, border, color and space semantic tokens providers (or only some)
///     let chipComponentTokensProvider = OrangeThemeChipComponentTokensProvider(
///                                                 borders: CustomBorderSemanticTokensProvider(),
///                                                 colors: CustomColorSemanticTokensProvider(),
///                                                 space: CustomSpaceSemanticTokensProvider(),
///                                                 dimensions: CustomDimensionSemanticTokensProvider())
/// ```
///
/// - Since: 0.10.0
open class OrangeThemeChipComponentTokensProvider: AllChipComponentTokensProvider {

    /// Provider of size semantic tokens to use for chip sizes
    public let sizes: AllSizeSemanticTokensProvider

    /// Provider of border semantic tokens to use for chip borders
    public let borders: AllBorderSemanticTokensProvider

    /// Provider of color semantic tokens to use for chip colors
    public let colors: AllColorSemanticTokensProvider

    /// Provider of spaces semantic tokens to use for chip spaces
    public let spaces: AllSpaceSemanticTokensProvider

    /// Provider of _ semantic tokens to use for spaces as the Swift package exposes "closed" tokens of Figma
    public let dimensions: AllDimensionSemanticTokensProvider

    #if DEBUG
    private nonisolated(unsafe) static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `OUDSChip`
    /// - Parameters:
    ///    - sizes: Provider for size semantic tokens. If nil, a default one will be used (``OrangeThemeSizeSemanticTokensProvider``)
    ///    - borders: Provider for border semantic tokens. If nil, a default one will be used (``OrangeThemeBorderSemanticTokensProvider``)
    ///    - colors: Provider for color semantic tokens. If nil, a default one will be used (``OrangeThemeColorSemanticTokensProvider``)
    ///    - spaces: Provider for space semantic tokens. If nil, a default one will be used (``OrangeThemeSpaceSemanticTokensProvider``)
    ///    - dimensions: Provider for _ semantic tokens. If nil, a default one will be used (``OrangeThemeDimensionSemanticTokensProvider``)
    public init(sizes: AllSizeSemanticTokensProvider? = nil,
                borders: AllBorderSemanticTokensProvider? = nil,
                colors: AllColorSemanticTokensProvider? = nil,
                spaces: AllSpaceSemanticTokensProvider? = nil,
                dimensions: AllDimensionSemanticTokensProvider? = nil)
    {
        OL.debug("Init of OrangeThemeChipComponentTokensProvider")
        self.sizes = (sizes ?? OrangeThemeSizeSemanticTokensProvider())
        self.borders = (borders ?? OrangeThemeBorderSemanticTokensProvider())
        self.colors = (colors ?? OrangeThemeColorSemanticTokensProvider())
        self.spaces = (spaces ?? OrangeThemeSpaceSemanticTokensProvider())
        self.dimensions = (dimensions ?? OrangeThemeDimensionSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeThemeChipComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }
    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of ChipComponentTokens is not here but in Core/Themes/Orange/Values/ComponentTokens/OrangeTheme+ChipComponentTokens.swift
    // This declaration of OrangeThemeChipComponentTokensProvider is here also to allow to write documentation.
}
