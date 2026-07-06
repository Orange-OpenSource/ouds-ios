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

/// A class which wraps all **component tokens** for list item components like `OUDSListItem` and `OUDSSmallListItem`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllListItemComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// It implements also the protocol `ListItemComponentTokens` so as to expose the component tokens for list item components through any `OUDSTheme`.
/// Such component tokens are defined with raw and semantic tokens of sizes (from `AllSizeSemanticTokensProvider`),
/// borders (from `AllBorderSemanticTokensProvider`), colors (from `AllColorSemanticTokensProvider`),
/// spaces (from `AllSpaceSemanticTokensProvider`), opacities (from `AllOpacitySemanticTokensProvider`)
/// and dimensions (from `AllDimensionSemanticTokensProvider`).
///
/// - Since: 3.0.0
final class OrangeCompactThemeListItemComponentTokensProvider: AllListItemComponentTokensProvider {

    /// Provider of size semantic tokens to use for list item sizes
    let sizes: AllSizeSemanticTokensProvider

    /// Provider of border semantic tokens to use for list item borders
    let borders: AllBorderSemanticTokensProvider

    /// Provider of color semantic tokens to use for list item colors
    let colors: AllColorSemanticTokensProvider

    /// Provider of space semantic tokens to use for list item spaces
    let spaces: AllSpaceSemanticTokensProvider

    /// Provider of font semantic tokens to use for list item fonts
    let fonts: AllFontSemanticTokensProvider

    /// Provider of opacity semantic tokens to use for list item opacities
    let opacities: AllOpacitySemanticTokensProvider

    /// Provider of dimension semantic tokens to use for list item dimensions
    let dimensions: AllDimensionSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to list item components.
    /// - Parameters:
    ///    - sizes: Provider for size semantic tokens. If nil, a default one will be used (``OrangeCompactThemeSizeSemanticTokensProvider``)
    ///    - borders: Provider for border semantic tokens. If nil, a default one will be used (``OrangeCompactThemeBorderSemanticTokensProvider``)
    ///    - colors: Provider for color semantic tokens. If nil, a default one will be used (``OrangeCompactThemeColorSemanticTokensProvider``)
    ///    - spaces: Provider for space semantic tokens. If nil, a default one will be used (``OrangeCompactThemeSpaceSemanticTokensProvider``)
    ///    - fonts: Provider for font semantic tokens. If nil, a default one will be used (``OrangeCompactThemeFontSemanticTokensProvider``)
    ///    - opacities: Provider for opacity semantic tokens. If nil, a default one will be used (``OrangeCompactThemeOpacitySemanticTokensProvider``)
    ///    - dimensions: Provider for dimension semantic tokens. If nil, a default one will be used (``OrangeCompactThemeDimensionSemanticTokensProvider``)
    init(sizes: AllSizeSemanticTokensProvider? = nil,
         borders: AllBorderSemanticTokensProvider? = nil,
         colors: AllColorSemanticTokensProvider? = nil,
         spaces: AllSpaceSemanticTokensProvider? = nil,
         fonts: AllFontSemanticTokensProvider? = nil,
         opacities: AllOpacitySemanticTokensProvider? = nil,
         dimensions: AllDimensionSemanticTokensProvider? = nil)
    {
        OL.debug("Init of OrangeCompactThemeListItemComponentTokensProvider")
        self.sizes = (sizes ?? OrangeCompactThemeSizeSemanticTokensProvider())
        self.borders = (borders ?? OrangeCompactThemeBorderSemanticTokensProvider())
        self.colors = (colors ?? OrangeCompactThemeColorSemanticTokensProvider())
        self.spaces = (spaces ?? OrangeCompactThemeSpaceSemanticTokensProvider())
        self.fonts = (fonts ?? OrangeCompactThemeFontSemanticTokensProvider())
        self.opacities = (opacities ?? OrangeCompactThemeOpacitySemanticTokensProvider())
        self.dimensions = (dimensions ?? OrangeCompactThemeDimensionSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeCompactThemeListItemComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }
    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of ListItemComponentTokens is not here but in Core/Themes/OrangeCompact/Values/ComponentTokens/OrangeCompactTheme+ListItemComponentTokens.swift
    // This declaration of OrangeCompactThemeListItemComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
