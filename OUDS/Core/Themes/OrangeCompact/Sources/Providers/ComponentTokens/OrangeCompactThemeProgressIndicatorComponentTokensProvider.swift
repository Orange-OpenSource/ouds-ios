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

// swiftlint:disable line_length
// swiftlint:disable type_name

/// A class which wraps all **component  tokens of progress indicators** for *circular progress*  and *linear progress*components.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllProgressIndicatorComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// It implements also the protocol `ProgressIndicatorComponentTokens` so as to expose the component tokens for *progress indicators* through any `OUDSTheme`.
/// *Progress indicators* components tokens are defined with semantic tokens spaces (from `AllSpaceSemanticTokensProvider`), sizes (from `AllSizeSemanticTokensProvider`),
/// borders (from `AllBorderSemanticTokensProvider`) and colors (from `AllColorSemanticTokensProvider`).
///
/// - Since: 3.0.0
final class OrangeCompactThemeProgressIndicatorComponentTokensProvider: AllProgressIndicatorComponentTokensProvider {

    /// Provider of size semantic tokens to use for progress indicator  sizes
    let sizes: AllSizeSemanticTokensProvider

    /// Provider of border semantic tokens to use for progress indicator  borders
    let borders: AllBorderSemanticTokensProvider

    /// Provider of color semantic tokens to use for progress indicator  colors
    let colors: AllColorSemanticTokensProvider

    /// Provider of spaces semantic tokens to use for progress indicator  spaces
    let spaces: AllSpaceSemanticTokensProvider

    /// Provider of dimensions semantic tokens to use for progress indicator dimensions
    let dimensions: AllDimensionSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to progress indicators.
    ///
    /// - Parameters:
    ///    - sizes: Provider for size semantic tokens, if nil, a default one will be used (``OrangeCompactThemeSizeSemanticTokensProvider``)
    ///    - borders: Provider for border semantic tokens, if nil, a default one will be used (``OrangeCompactThemeBorderSemanticTokensProvider``)
    ///    - colors: Provider for color semantic tokens, if nil, a default one will be used (``OrangeCompactThemeColorSemanticTokensProvider``)
    ///    - spaces: Provider for space semantic tokens, if nil, a default one will be used (``OrangeCompactThemeSpaceSemanticTokensProvider``)
    ///    - dimensions: Provider for dimensions semantic tokens, if nil, a default one will be used (``OrangeCompactThemeDimensionSemanticTokensProvider``)
    init(sizes: AllSizeSemanticTokensProvider? = nil,
         borders: AllBorderSemanticTokensProvider? = nil,
         colors: AllColorSemanticTokensProvider? = nil,
         spaces: AllSpaceSemanticTokensProvider? = nil,
         dimensions: AllDimensionSemanticTokensProvider? = nil)
    {
        OL.debug("Init of OrangeCompactThemeProgressIndicatorComponentTokensProvider")
        self.sizes = (sizes ?? OrangeCompactThemeSizeSemanticTokensProvider())
        self.borders = (borders ?? OrangeCompactThemeBorderSemanticTokensProvider())
        self.colors = (colors ?? OrangeCompactThemeColorSemanticTokensProvider())
        self.spaces = (spaces ?? OrangeCompactThemeSpaceSemanticTokensProvider())
        self.dimensions = (dimensions ?? OrangeCompactThemeDimensionSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeCompactThemeProgressIndicatorComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of AllProgressIndicatorComponentTokensProvider is not here but in Core/Themes/OrangeCompact/Values/ComponentTokens/OrangeCompactTheme+ProgressIndicatorComponentTokens.swift
    // This declaration of OrangeCompactThemeProgressIndicatorComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable line_length
// swiftlint:enable type_name
