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
/// Custom themes can use subclass of ``OrangeThemeListItemComponentTokensProvider`` and apply the provider they need.
/// It implements also the protocol `ListItemComponentTokens` so as to expose the component tokens for list item components through any `OUDSTheme`.
/// Such component tokens are defined with raw and semantic tokens of sizes (from `AllSizeSemanticTokensProvider`),
/// borders (from `AllBorderSemanticTokensProvider`), colors (from `AllColorSemanticTokensProvider`),
/// spaces (from `AllSpaceSemanticTokensProvider`), opacities (from `AllOpacitySemanticTokensProvider`)
/// and dimensions (from `AllDimensionSemanticTokensProvider`).
///
/// ```swift
///     // Define your own provider for list item component tokens
///     // by inheriting from existing provider
///     class CustomListItemComponentTokensProvider: OrangeThemeListItemComponentTokensProvider {
///
///         // Then override the list item component tokens you want.
///
///         override var sizeMinHeightDefault: SizeSemanticToken { DimensionRawTokens._750 }
///
///         override var colorBgCurrentFocus: MultipleColorSemanticToken { colors.actionSupportFocus }
///
///         override var spaceRowGap: SpaceSemanticToken { spaces.rowGapNone }
///
///         // ...
///     }
///
///     // Or define your own provider from scratch
///     class CustomListItemComponentTokensProvider: ListItemComponentTokens {
///
///         // And implement all tokens.
///         // You are allowed to give semantic tokens providers if you want to define values.
///     }
/// ```
///
/// Then, you can give this `CustomListItemComponentTokensProvider` to your own theme implementation:
///
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(listItem: CustomListItemComponentTokensProvider())
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(listItem: CustomListItemComponentTokensProvider())
/// ```
///
/// It is also possible to use your own semantic tokens providers for this component tokens provider:
///
/// ```swift
///     // Uses by default here:
///     // - OrangeThemeSizeSemanticTokensProvider for sizes
///     // - OrangeThemeBorderSemanticTokensProvider for borders
///     // - OrangeThemeColorSemanticTokensProvider for colors
///     // - OrangeThemeSpaceSemanticTokensProvider for spaces
///     // - OrangeThemeOpacitySemanticTokensProvider for opacities
///     // - OrangeThemeDimensionSemanticTokensProvider for dimensions
///     let listItemComponentTokensProvider = OrangeThemeListItemComponentTokensProvider()
///
///     // Or use your own semantic tokens providers (or only some)
///     let listItemComponentTokensProvider = OrangeThemeListItemComponentTokensProvider(
///                                               sizes: CustomSizeSemanticTokensProvider(),
///                                               borders: CustomBorderSemanticTokensProvider(),
///                                               colors: CustomColorSemanticTokensProvider(),
///                                               spaces: CustomSpaceSemanticTokensProvider())
/// ```
///
/// - Since: 3.0.0
open class OrangeThemeListItemComponentTokensProvider: AllListItemComponentTokensProvider {

    /// Provider of size semantic tokens to use for list item sizes
    public let sizes: AllSizeSemanticTokensProvider

    /// Provider of border semantic tokens to use for list item borders
    public let borders: AllBorderSemanticTokensProvider

    /// Provider of color semantic tokens to use for list item colors
    public let colors: AllColorSemanticTokensProvider

    /// Provider of space semantic tokens to use for list item spaces
    public let spaces: AllSpaceSemanticTokensProvider

    /// Provider of opacity semantic tokens to use for list item opacities
    public let opacities: AllOpacitySemanticTokensProvider

    /// Provider of dimension semantic tokens to use for list item dimensions
    public let dimensions: AllDimensionSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to list item components.
    /// - Parameters:
    ///    - sizes: Provider for size semantic tokens. If nil, a default one will be used (``OrangeThemeSizeSemanticTokensProvider``)
    ///    - borders: Provider for border semantic tokens. If nil, a default one will be used (``OrangeThemeBorderSemanticTokensProvider``)
    ///    - colors: Provider for color semantic tokens. If nil, a default one will be used (``OrangeThemeColorSemanticTokensProvider``)
    ///    - spaces: Provider for space semantic tokens. If nil, a default one will be used (``OrangeThemeSpaceSemanticTokensProvider``)
    ///    - opacities: Provider for opacity semantic tokens. If nil, a default one will be used (``OrangeThemeOpacitySemanticTokensProvider``)
    ///    - dimensions: Provider for dimension semantic tokens. If nil, a default one will be used (``OrangeThemeDimensionSemanticTokensProvider``)
    public init(sizes: AllSizeSemanticTokensProvider? = nil,
                borders: AllBorderSemanticTokensProvider? = nil,
                colors: AllColorSemanticTokensProvider? = nil,
                spaces: AllSpaceSemanticTokensProvider? = nil,
                opacities: AllOpacitySemanticTokensProvider? = nil,
                dimensions: AllDimensionSemanticTokensProvider? = nil)
    {
        OL.debug("Init of OrangeThemeListItemComponentTokensProvider")
        self.sizes = (sizes ?? OrangeThemeSizeSemanticTokensProvider())
        self.borders = (borders ?? OrangeThemeBorderSemanticTokensProvider())
        self.colors = (colors ?? OrangeThemeColorSemanticTokensProvider())
        self.spaces = (spaces ?? OrangeThemeSpaceSemanticTokensProvider())
        self.opacities = (opacities ?? OrangeThemeOpacitySemanticTokensProvider())
        self.dimensions = (dimensions ?? OrangeThemeDimensionSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeThemeListItemComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }
    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of ListItemComponentTokens is not here but in Core/Themes/Orange/Values/ComponentTokens/OrangeTheme+ListItemComponentTokens.swift
    // This declaration of OrangeThemeListItemComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
