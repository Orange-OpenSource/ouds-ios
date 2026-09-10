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

/// A class which wraps all **component  tokens of progress indicators** for *circular progress*  and *linear progress*components.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllProgressIndicatorComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// Custom themes can use subclass of ``OrangeThemeProgressIndicatorComponentTokensProvider`` and apply the provider they need.
/// It implements also the protocol `ProgressIndicatorComponentTokens` so as to expose the component tokens for *progress indicators* through any `OUDSTheme`.
/// *Progress indicators* components tokens are defined with semantic tokens spaces (from `AllSpaceSemanticTokensProvider`), sizes (from `AllSizeSemanticTokensProvider`),
/// borders (from `AllBorderSemanticTokensProvider`), colors (from `AllColorSemanticTokensProvider`) and dimensions
/// (from `AllDimensionSemanticTokensProvider`).
///
/// ```swift
///     // Define your own provider for progress indicator component tokens
///     // by inheriting from existing provider
///     class CustomProgressIndicatorComponentTokensProvider: OrangeThemeProgressIndicatorComponentTokensProvider {
///
///         // Then override the accordion component tokens you want.
///
///         override var spacePaddingBlockBottomExpandContainerDefault: SpaceSemanticToken { DimensionRawTokens._100 }
///
///         // ...
///     }
///
///     // Or define your own provider from scratch
///     class CustomProgressIndicatorComponentTokensProvider: AllProgressIndicatorComponentTokens {
///
///         // And implement hundreds of tokens.
///         // You are allowed to give semantic tokens providers if you want to define values.
///     }
/// ```
///
/// Then, you can give this `CustomProgressIndicatorComponentTokensProvider` to your own theme implementation:
///
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(progressIndicator: CustomProgressIndicatorComponentTokensProvider())
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(progressIndicator: CustomProgressIndicatorComponentTokensProvider())
/// ```
///
/// It is also possible to use your own semantic tokens providers for this component tokens providers:
///
/// ```swift
///     // Uses by default here:
///     // - OrangeThemeSizeSemanticTokensProvider for sizes
///     // - OrangeThemeBorderSemanticTokensProvider for borders
///     // - OrangeThemeColorSemanticTokensProvider for colors
///     // - OrangeThemeSpaceSemanticTokensProvider for spaces
///     // - OrangeThemeDimensionSemanticTokensProvider for dimensions
///     let progressIndicatorComponentTokensProvider = OrangeThemeProgressIndicatorComponentTokensProvider()
///
///     // Or use your own semantic tokens providers
///     let progressIndicatorComponentTokensProvider = OrangeThemeProgressIndicatorComponentTokensProvider(
///                     sizes: CustomSizeSemanticTokensProvider(),
///                     spaces: CustomSpaceSemanticTokensProvider())
/// ```
///
/// - Since: 3.0.0
open class OrangeThemeProgressIndicatorComponentTokensProvider: AllProgressIndicatorComponentTokensProvider {

    /// Provider of size semantic tokens to use for progress indicator sizes
    public let sizes: AllSizeSemanticTokensProvider

    /// Provider of border semantic tokens to use for progress indicator borders
    public let borders: AllBorderSemanticTokensProvider

    /// Provider of color semantic tokens to use for progress indicator colors
    public let colors: AllColorSemanticTokensProvider

    /// Provider of spaces semantic tokens to use for progress indicator spaces
    public let spaces: AllSpaceSemanticTokensProvider

    /// Provider of dimensions semantic tokens to use for progress indicator dimensions
    public let dimensions: AllDimensionSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to progress indicators.
    ///
    /// - Parameters:
    ///    - sizes: Provider for size semantic tokens, if nil, a default one will be used (``OrangeThemeSizeSemanticTokensProvider``)
    ///    - borders: Provider for border semantic tokens, if nil, a default one will be used (``OrangeThemeBorderSemanticTokensProvider``)
    ///    - colors: Provider for color semantic tokens, if nil, a default one will be used (``OrangeThemeColorSemanticTokensProvider``)
    ///    - spaces: Provider for space semantic tokens, if nil, a default one will be used (``OrangeThemeSpaceSemanticTokensProvider``)
    ///    - dimensions: Provider for dimension semantic tokens, if nil, a default one will be used (``OrangeThemeDimensionSemanticTokensProvider``)
    public init(sizes: AllSizeSemanticTokensProvider? = nil,
                borders: AllBorderSemanticTokensProvider? = nil,
                colors: AllColorSemanticTokensProvider? = nil,
                spaces: AllSpaceSemanticTokensProvider? = nil,
                dimensions: AllDimensionSemanticTokensProvider? = nil)
    {
        OL.debug("Init of OrangeThemeProgressIndicatorComponentTokensProvider")
        self.sizes = (sizes ?? OrangeThemeSizeSemanticTokensProvider())
        self.borders = (borders ?? OrangeThemeBorderSemanticTokensProvider())
        self.colors = (colors ?? OrangeThemeColorSemanticTokensProvider())
        self.spaces = (spaces ?? OrangeThemeSpaceSemanticTokensProvider())
        self.dimensions = (dimensions ?? OrangeThemeDimensionSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeThemeProgressIndicatorComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of AllProgressIndicatorComponentTokensProvider is not here but in Core/Themes/Orange/Values/ComponentTokens/OrangeTheme+ProgressIndicatorComponentTokens.swift
    // This declaration of OrangeThemeProgressIndicatorComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
// swiftlint:enable line_length
