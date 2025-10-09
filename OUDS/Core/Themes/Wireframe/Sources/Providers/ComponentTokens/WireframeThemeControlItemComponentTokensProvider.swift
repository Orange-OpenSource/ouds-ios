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

/// A class which wraps all **component  tokens** for components with a *control item* layout like `OUDSSwitch`, `OUDSRadioButton` and `OUDSCheckboItem`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllControlItemComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// It implements also the protocol `ControlItemComponentTokens` so as to expose the component tokens for control-item-layout-basded components through any `OUDSTheme`.
/// Such components tokens are defined with raw and semantic tokens of sizes (from `SizeSemanticTokensProvider`),
/// borders (from `AllBorderSemanticTokensProvider`),  colors (from `AllColorSemanticTokensProvider`)  and spaces (from `AllSpaceSemanticTokensProvider`).
///
///
/// - Since: 0.14.0
final class WireframeThemeControlItemComponentTokensProvider: AllControlItemComponentTokensProvider {

    /// Provider of size semantic tokens to use for control-item-layout-based sizes
    let sizes: AllSizeSemanticTokensProvider

    /// Provider of border semantic tokens to use for button borders
    let borders: AllBorderSemanticTokensProvider

    /// Provider of color semantic tokens to use for control-item-layout-based  colors
    let colors: AllColorSemanticTokensProvider

    /// Provider of spaces semantic tokens to use for control-item-layout-based  spaces
    let spaces: AllSpaceSemanticTokensProvider

    #if DEBUG
    private nonisolated(unsafe) static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to control-item-layout-based components.
    /// - Parameters:
    ///    - sizes: Provider for size semantic tokens. If nil, a default one will be used (``WireframeThemeSizeSemanticTokensProvider``)
    ///    - borders: Provider for border semantic tokens. If nil, a default one will be used (``WireframeThemeBorderSemanticTokensProvider``)
    ///    - colors: Provider for color semantic tokens. If nil, a default one will be used (``WireframeThemeColorSemanticTokensProvider``)
    ///    - spaces: Provider for space semantic tokens. If nil, a default one will be used (``WireframeThemeSpaceSemanticTokensProvider``)
    init(sizes: AllSizeSemanticTokensProvider? = nil,
         borders: AllBorderSemanticTokensProvider? = nil,
         colors: AllColorSemanticTokensProvider? = nil,
         spaces: AllSpaceSemanticTokensProvider? = nil)
    {
        OL.debug("Init of WireframeThemeControlItemComponentTokensProvider")
        self.sizes = (sizes ?? WireframeThemeSizeSemanticTokensProvider())
        self.borders = (borders ?? WireframeThemeBorderSemanticTokensProvider())
        self.colors = (colors ?? WireframeThemeColorSemanticTokensProvider())
        self.spaces = (spaces ?? WireframeThemeSpaceSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "WireframeThemeControlItemComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }
    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of ControlItemComponentTokens is not here but in Core/Themes/Wireframe/Values/ComponentTokens/WireframeTheme+ControlItemComponentTokens.swift
    // This declaration of WireframeThemeControlItemComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
