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

/// A class which wraps all **component tokens of contained tabs**.
/// Contains references to semantic tokens providers to define the component tokens.
/// This provider implements `AllContainedTabsComponentTokensProvider` and `ContainedTabsComponentTokens`
/// to expose contained tabs tokens through `OUDSTheme`.
///
/// - Since: 3.3.0
final class SoshThemeContainedTabsComponentTokensProvider: AllContainedTabsComponentTokensProvider {

    /// Provider of border semantic tokens to use for contained tabs borders
    let borders: AllBorderSemanticTokensProvider

    /// Provider of color semantic tokens to use for contained tabs colors
    let colors: AllColorSemanticTokensProvider

    /// Provider of opacity semantic tokens to use for contained tabs opacities
    let opacities: AllOpacitySemanticTokensProvider

    /// Provider of dimension semantic tokens to use for contained tabs dimensions
    let dimensions: AllDimensionSemanticTokensProvider

    /// Provider of space semantic tokens to use for contained tabs spaces
    let spaces: AllSpaceSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to contained tabs.
    /// - Parameters:
    ///    - borders: Provider for border semantic tokens. If nil, uses ``SoshThemeBorderSemanticTokensProvider``.
    ///    - colors: Provider for color semantic tokens. If nil, uses ``SoshThemeColorSemanticTokensProvider``.
    ///    - opacities: Provider for opacity semantic tokens. If nil, uses ``SoshThemeOpacitySemanticTokensProvider``.
    ///    - dimensions: Provider for dimension semantic tokens. If nil, uses ``SoshThemeDimensionSemanticTokensProvider``.
    ///    - spaces: Provider for space semantic tokens. If nil, uses ``SoshThemeSpaceSemanticTokensProvider``.
    init(borders: AllBorderSemanticTokensProvider? = nil,
         colors: AllColorSemanticTokensProvider? = nil,
         opacities: AllOpacitySemanticTokensProvider? = nil,
         dimensions: AllDimensionSemanticTokensProvider? = nil,
         spaces: AllSpaceSemanticTokensProvider? = nil)
    {
        OL.debug("Init of SoshThemeContainedTabsComponentTokensProvider")
        self.borders = (borders ?? SoshThemeBorderSemanticTokensProvider())
        self.colors = (colors ?? SoshThemeColorSemanticTokensProvider())
        self.opacities = (opacities ?? SoshThemeOpacitySemanticTokensProvider())
        self.dimensions = (dimensions ?? SoshThemeDimensionSemanticTokensProvider())
        self.spaces = (spaces ?? SoshThemeSpaceSemanticTokensProvider(dimensions: self.dimensions))
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "SoshThemeContainedTabsComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of ContainedTabsComponentTokens is not here but in Core/Themes/Sosh/Values/ComponentTokens/SoshTheme+ContainedTabsComponentTokens.swift
    // This declaration of SoshThemeContainedTabsComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
