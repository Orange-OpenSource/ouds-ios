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

/// A class which wraps all **component tokens of line tabs**.
/// Contains references to semantic tokens providers to define the component tokens.
/// This provider implements `AllLineTabsComponentTokensProvider` and `LineTabsComponentTokens`
/// to expose line tabs tokens through `OUDSTheme`.
///
/// - Since: 3.3.0
final class OrangeCompactThemeLineTabsComponentTokensProvider: AllLineTabsComponentTokensProvider {

    /// Provider of border semantic tokens to use for line tabs borders
    let borders: AllBorderSemanticTokensProvider

    /// Provider of color semantic tokens to use for line tabs colors
    let colors: AllColorSemanticTokensProvider

    /// Provider of opacity semantic tokens to use for line tabs opacities
    let opacities: AllOpacitySemanticTokensProvider

    /// Provider of dimension semantic tokens to use for line tabs dimensions
    let dimensions: AllDimensionSemanticTokensProvider

    /// Provider of space semantic tokens to use for line tabs spaces
    let spaces: AllSpaceSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to line tabs.
    /// - Parameters:
    ///    - borders: Provider for border semantic tokens. If nil, uses ``OrangeCompactThemeBorderSemanticTokensProvider``.
    ///    - colors: Provider for color semantic tokens. If nil, uses ``OrangeCompactThemeColorSemanticTokensProvider``.
    ///    - opacities: Provider for opacity semantic tokens. If nil, uses ``OrangeCompactThemeOpacitySemanticTokensProvider``.
    ///    - dimensions: Provider for dimension semantic tokens. If nil, uses ``OrangeCompactThemeDimensionSemanticTokensProvider``.
    ///    - spaces: Provider for space semantic tokens. If nil, uses ``OrangeCompactThemeSpaceSemanticTokensProvider``.
    init(borders: AllBorderSemanticTokensProvider? = nil,
         colors: AllColorSemanticTokensProvider? = nil,
         opacities: AllOpacitySemanticTokensProvider? = nil,
         dimensions: AllDimensionSemanticTokensProvider? = nil,
         spaces: AllSpaceSemanticTokensProvider? = nil)
    {
        OL.debug("Init of OrangeCompactThemeLineTabsComponentTokensProvider")
        self.borders = (borders ?? OrangeCompactThemeBorderSemanticTokensProvider())
        self.colors = (colors ?? OrangeCompactThemeColorSemanticTokensProvider())
        self.opacities = (opacities ?? OrangeCompactThemeOpacitySemanticTokensProvider())
        self.dimensions = (dimensions ?? OrangeCompactThemeDimensionSemanticTokensProvider())
        self.spaces = (spaces ?? OrangeCompactThemeSpaceSemanticTokensProvider(dimensions: self.dimensions))
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeCompactThemeLineTabsComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of LineTabsComponentTokens is not here but in Core/Themes/OrangeCompact/Values/ComponentTokens/OrangeCompactTheme+LineTabsComponentTokens.swift
    // This declaration of OrangeCompactThemeLineTabsComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
