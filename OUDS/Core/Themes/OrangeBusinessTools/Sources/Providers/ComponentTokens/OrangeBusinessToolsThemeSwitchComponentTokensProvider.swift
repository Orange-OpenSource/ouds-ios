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

/// A class which wraps all **component  tokens of switch** for *switch / toggle* objects like `OUDSSwitch`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllSwitchComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// It implements also the protocol `SwitchComponentTokens` so as to expose the component tokens for *switch / toggle* through any `OUDSTheme`.
/// *Switch* components tokens are defined with semantic tokens of colors (from `AllColorSemanticTokensProvider`),
/// spaces (from `AllSpacesSemanticTokensProvider`) , dimensions (`AllDimensionSemanticTokensProvider`),
/// borders (`AllBorderSemanticTokensProvider`), opacities (`AllOpacitySemanticTokensProvider`)
/// and sizes (`AllSizesSemanticTokensProvider`).
///
/// - Since: 0.17.0
final class OrangeBusinessToolsThemeSwitchComponentTokensProvider: AllSwitchComponentTokensProvider {

    /// Provider of size semantic tokens to use for switch sizes
    let sizes: AllSizeSemanticTokensProvider

    /// Provider of borders semantic tokens to use for switch borders
    let borders: AllBorderSemanticTokensProvider

    /// Provider of color semantic tokens to use for switch colors
    let colors: AllColorSemanticTokensProvider

    /// Provider of spaces semantic tokens to use for switch spaces
    let spaces: AllSpaceSemanticTokensProvider

    /// Provider of opacities semantic tokens to use for switch spaces
    let opacities: AllOpacitySemanticTokensProvider

    /// Provider of _ semantic tokens to use for spaces as the Swift package exposes "closed" tokens of Figma
    let dimensions: AllDimensionSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `OUDSSwitch`  and `OUDSSwitchItem`
    /// - Parameters:
    ///    - sizes: Provider for sizes semantic tokens. If nil, a default one will be used (``OrangeBusinessToolsThemeSizeSemanticTokensProvider``)
    ///    - borders: Provider for border semantic tokens. If nil, a default one will be used (``OrangeBusinessToolsThemeBorderSemanticTokensProvider``)
    ///    - colors: Provider for color semantic tokens. If nil, a default one will be used (``OrangeBusinessToolsThemeColorSemanticTokensProvider``)
    ///    - spaces: Provider for space semantic tokens. If nil, a default one will be used (``OrangeBusinessToolsThemeSpaceSemanticTokensProvider``)
    ///    - opacities: Provider for opacity semantic tokens. If nil a default one will be used (``OrangeBusinessToolsThemeOpacitySemanticTokensProvider``)
    ///    - dimensions: Provider for dimension semantic tokens. If nil, a default one will be used (``OrangeBusinessToolsThemeDimensionSemanticTokensProvider``)
    init(sizes: AllSizeSemanticTokensProvider? = nil,
         borders: AllBorderSemanticTokensProvider? = nil,
         colors: AllColorSemanticTokensProvider? = nil,
         spaces: AllSpaceSemanticTokensProvider? = nil,
         opacities: AllOpacitySemanticTokensProvider? = nil,
         dimensions: AllDimensionSemanticTokensProvider? = nil)
    {
        OL.debug("Init of OrangeBusinessToolsThemeSwitchComponentTokensProvider")
        self.sizes = (sizes ?? OrangeBusinessToolsThemeSizeSemanticTokensProvider())
        self.borders = (borders ?? OrangeBusinessToolsThemeBorderSemanticTokensProvider())
        self.colors = (colors ?? OrangeBusinessToolsThemeColorSemanticTokensProvider())
        self.spaces = (spaces ?? OrangeBusinessToolsThemeSpaceSemanticTokensProvider())
        self.opacities = (opacities ?? OrangeBusinessToolsThemeOpacitySemanticTokensProvider())
        self.dimensions = (dimensions ?? OrangeBusinessToolsThemeDimensionSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeBusinessToolsThemeSwitchComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of SwitchComponentTokens is not here but in Core/Themes/OrangeBusinessTools/Values/ComponentTokens/OrangeBusinessToolsTheme+SwitchComponentTokens.swift
    // This declaration of OrangeBusinessToolsThemeSwitchComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
