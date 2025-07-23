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

/// A class which wraps all **component  tokens of tag** for *tag* objects like `OUDSTag`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllTagComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// Custom themes can use subclass of ``OrangeThemeTagComponentTokensProvider`` and apply the provider they need.
/// It implements also the protocol `TagComponentTokens` so as to expose the component tokens for *tags* through any `OUDSTheme`.
/// *Tags* components tokens are defined with semantic tokens of dimensions (`AllDimensionSemanticTokensProvider`) ,
/// spaces (from `AllSpaceSemanticTokensProvider`) , sizes (from `AllSizesSemanticTokensProvider`)
/// and borders (from `AllBorderSemanticTokensProvider`).
///
/// ```swift
///     // Define your own provider for tag component tokens
///     // by inheriting from existing provider
///     class CustomTagComponentTokensProvider: OrangeThemeTagComponentTokensProvider {
///
///         // Then override the tag component tokens you want.
///
///         override var tagBorderRadius: BorderRadiusSemanticToken  { borders.borderRadiusNone }
///
///         override var tagSizeMinWidthMedium: SizeSemanticToken { DimensionRawTokens.dimension500 }
///
///         override var tagSpacePaddingInlineIconStartSmall: SpaceSemanticToken { spaces.spacePaddingInlineMd }
///
///         // ...
///     }
///
///     // Or define your own provider from scratch
///     class CustomTagComponentTokensProvider: TagComponentTokens {
///
///         // And implement maybe hundreds of tokens.
///         // You are allowed to use semantic tokens providers if you want to define values.
///     }
/// ```
///
/// Then, you can give this `CustomTagComponentTokensProvider` to your own theme implementation:
///
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(tag: CustomTagComponentTokensProvider())
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(tag: CustomTagComponentTokensProvider())
/// ```
///
/// It is also possible to use your own semantic tokens providers for this component tokens providers:
///
/// ```swift
///     // Uses by default here:
///     // - OrangeThemeSizeSemanticTokensProvider for sizes
///     // - OrangeThemeBorderSemanticTokensProvider for borders
///     // - OrangeThemeDimensionSemanticTokensProvider for dimensions
///     // - OrangeThemeSpaceSemanticTokensProvider for spaces
///     let tagComponentTokensProvider = OrangeThemeTagComponentTokensProvider()
///
///     // Or use your own size, space, dimension and border semantic tokens providers (or only some)
///     let tagComponentTokensProvider = OrangeThemeTagComponentTokensProvider(
///                                             sizes: CustomSizeSemanticTokensProvider(),
///                                             borders: CustomBorderSemanticTokensProvider(),
///                                             spaces: CustomSpaceSemanticTokensProvider,
///                                             dimensions: CustomDimensionSemanticTokensProvider())
/// ```
///
/// - Since: 0.9.0
open class OrangeThemeTagComponentTokensProvider: AllTagComponentTokensProvider {

    /// Provider of size semantic tokens to use for tag sizes
    public let sizes: AllSizeSemanticTokensProvider

    /// Provider of border semantic tokens to use for tag borders
    public let borders: AllBorderSemanticTokensProvider

    /// Provider of space semantic tokens to use for tag spaces
    public let spaces: AllSpaceSemanticTokensProvider

    /// Provider of dimension semantic tokens to use for spaces as the Swift package exposes "closed" tokens of Figma
    public let dimensions: AllDimensionSemanticTokensProvider

    #if DEBUG
    private nonisolated(unsafe) static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `OUDSTag`
    /// - Parameters:
    ///    - sizes: Provider for sizes semantic tokens. If nil, a default one will be used (``OrangeThemeSizeSemanticTokensProvider``)
    ///    - borders: Provider for borders semantic tokens. If nil, a default one will be used (``OrangeThemeBorderSemanticTokensProvider``)
    ///    - spaces: Provider for spaces semantic tokens. If nil, a default one will be used (``OrangeThemeSpaceSemanticTokensProvider``)
    ///    - dimensions: Provider for dimension semantic tokens. If nil, a default one will be used (``OrangeThemeDimensionSemanticTokensProvider``)
    public init(sizes: AllSizeSemanticTokensProvider? = nil,
                borders: AllBorderSemanticTokensProvider? = nil,
                spaces: AllSpaceSemanticTokensProvider? = nil,
                dimensions: AllDimensionSemanticTokensProvider? = nil)
    {
        OL.debug("Init of OrangeThemeTagComponentTokensProvider")
        self.sizes = (sizes ?? OrangeThemeSizeSemanticTokensProvider())
        self.borders = (borders ?? OrangeThemeBorderSemanticTokensProvider())
        self.spaces = (spaces ?? OrangeThemeSpaceSemanticTokensProvider())
        self.dimensions = (dimensions ?? OrangeThemeDimensionSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeThemeTagComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of TagComponentTokens is not here but in Core/Themes/Orange/Values/ComponentTokens/OrangeTheme+TagComponentTokens.swift
    // This declaration of OrangeThemeTagComponentTokensProvider is here also to allow to write documentation.
}
