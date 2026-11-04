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
/// Custom themes can subclass ``OrangeThemeLineTabsComponentTokensProvider`` to override individual tokens.
///
/// ```swift
/// class CustomLineTabsComponentTokensProvider: OrangeThemeLineTabsComponentTokensProvider {
///     override var borderRadiusTopTab: BorderRadiusSemanticToken { borders.radiusDefault }
/// }
///
/// let theme = OrangeTheme(lineTabs: CustomLineTabsComponentTokensProvider())
/// ```
///
/// - Since: 3.3.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
open class OrangeThemeLineTabsComponentTokensProvider: AllLineTabsComponentTokensProvider {

    /// Provider of border semantic tokens to use for line tabs borders
    public let borders: AllBorderSemanticTokensProvider

    /// Provider of color semantic tokens to use for line tabs colors
    public let colors: AllColorSemanticTokensProvider

    /// Provider of opacity semantic tokens to use for line tabs opacities
    public let opacities: AllOpacitySemanticTokensProvider

    /// Provider of dimension semantic tokens to use for line tabs dimensions
    public let dimensions: AllDimensionSemanticTokensProvider

    /// Provider of space semantic tokens to use for line tabs spaces
    public let spaces: AllSpaceSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to line tabs.
    /// - Parameters:
    ///    - borders: Provider for border semantic tokens. If nil, uses ``OrangeThemeBorderSemanticTokensProvider``.
    ///    - colors: Provider for color semantic tokens. If nil, uses ``OrangeThemeColorSemanticTokensProvider``.
    ///    - opacities: Provider for opacity semantic tokens. If nil, uses ``OrangeThemeOpacitySemanticTokensProvider``.
    ///    - dimensions: Provider for dimension semantic tokens. If nil, uses ``OrangeThemeDimensionSemanticTokensProvider``.
    ///    - spaces: Provider for space semantic tokens. If nil, uses ``OrangeThemeSpaceSemanticTokensProvider``.
    public init(borders: AllBorderSemanticTokensProvider? = nil,
                colors: AllColorSemanticTokensProvider? = nil,
                opacities: AllOpacitySemanticTokensProvider? = nil,
                dimensions: AllDimensionSemanticTokensProvider? = nil,
                spaces: AllSpaceSemanticTokensProvider? = nil)
    {
        OL.debug("Init of OrangeThemeLineTabsComponentTokensProvider")
        self.borders = (borders ?? OrangeThemeBorderSemanticTokensProvider())
        self.colors = (colors ?? OrangeThemeColorSemanticTokensProvider())
        self.opacities = (opacities ?? OrangeThemeOpacitySemanticTokensProvider())
        self.dimensions = (dimensions ?? OrangeThemeDimensionSemanticTokensProvider())
        self.spaces = (spaces ?? OrangeThemeSpaceSemanticTokensProvider(dimensions: self.dimensions))
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeThemeLineTabsComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of LineTabsComponentTokens is not here but in Core/Themes/Orange/Values/ComponentTokens/OrangeTheme+LineTabsComponentTokens.swift
    // This declaration of OrangeThemeLineTabsComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
