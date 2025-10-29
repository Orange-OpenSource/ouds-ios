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

import Foundation
import OUDS
import SwiftUI

// swiftlint:disable function_body_length

/// This Wireframe theme is a theme for some specific usages, like for prototyping and design of journeys with non-Orange charted themes.
/// This is an override of the default basic `OUDSTheme` for some usages.
/// It can override any properties from its superclass, and but cannot be derived ; this is not allowed.
///
/// To get it:
/// ```swift
///     import OUDS
///
///     @Environment(\.theme) var theme
/// ```
///
/// ## Integration
///
/// To use this theme, inject it to your view using `OUDSThemeableView` and get it through environment variable.
///
/// ```swift
///     import OUDS           // To get OUDSThemeableView
///     import OUDSThemesWireframe // To get WireframeTheme
///     import SwiftUI
///
///     @main
///     struct YourApp: App {
///         var body: some Scene {
///             WindowGroup {
///                 OUDSThemeableView(theme: WireframeTheme()) {
///                     // Your root view
///                 }
///             }
///         }
///     }
/// ```
///
/// # Theme tuning
///
/// This theme cannot be customized more.
///
/// - Since: 0.17.0
public final class WireframeTheme: OUDSTheme, @unchecked Sendable {

    /// Flag to avoid to register severals the fonts making some errors happen
    nonisolated(unsafe) private static var fontsAlreadyRegistered: Bool = false

    // MARK: - Initializers

    /// Constructor of the `Wireframe` theme with its own providers of tokens.
    public init() {
        let borders = WireframeThemeBorderSemanticTokensProvider()
        let colors = WireframeThemeColorSemanticTokensProvider()
        let colorModes = WireframeThemeColorModeSemanticTokensProvider(colors: colors)
        let elevations = WireframeThemeElevationSemanticTokensProvider()
        let fonts = WireframeThemeFontSemanticTokensProvider()
        let grids = WireframeThemeGridSemanticTokensProvider()
        let opacities = WireframeThemeOpacitySemanticTokensProvider()
        let dimensions = WireframeThemeDimensionSemanticTokensProvider()
        let sizes = WireframeThemeSizeSemanticTokensProvider(dimensions: dimensions)
        let spaces = WireframeThemeSpaceSemanticTokensProvider(dimensions: dimensions)

        let badge = WireframeThemeBadgeComponentTokensProvider(spaces: spaces, dimensions: dimensions)
        let button = WireframeThemeButtonComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces)
        let bulletList = WireframeThemeBulletListComponentTokensProvider(spaces: spaces)
        let checkbox = WireframeThemeCheckboxComponentTokensProvider(sizes: sizes, borders: borders)
        let chip = WireframeThemeChipComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, dimensions: dimensions)
        let controlItem = WireframeThemeControlItemComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces)
        let divider = WireframeThemeDividerComponentTokensProvider(borders: borders)
        let icon = WireframeThemeIconComponentTokensProvider(colors: colors)
        let link = WireframeThemeLinkComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces)
        let pinCodeInput = WireframeThemePinCodeInputComponentTokensProvider(spaces: spaces, dimensions: dimensions)
        let quantityInput = WireframeThemeQuantityInputComponentTokensProvider(sizes: sizes, spaces: spaces)
        let radioButton = WireframeThemeRadioButtonComponentTokensProvider(sizes: sizes, borders: borders)
        let selectInput = WireframeThemeSelectInputComponentTokensProvider(dimensions: dimensions)
        let skeleton = WireframeThemeSkeletonComponentTokensProvider(colors: colors)
        let `switch` = WireframeThemeSwitchComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, opacities: opacities, dimensions: dimensions)
        let tag = WireframeThemeTagComponentTokensProvider(sizes: sizes, borders: borders, spaces: spaces, dimensions: dimensions)
        let inputTag = WireframeThemeInputTagComponentTokensProvider(borders: borders, colors: colors)
        let textArea = WireframeThemeTextAreaComponentTokensProvider(sizes: sizes, spaces: spaces)
        let textInput = WireframeThemeTextInputComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, dimensions: dimensions)

        super.init(borders: borders,
                   colors: colors,
                   colorModes: colorModes,
                   elevations: elevations,
                   fonts: fonts,
                   grids: grids,
                   opacities: opacities,
                   dimensions: dimensions,
                   sizes: sizes,
                   spaces: spaces,
                   badge: badge,
                   bulletList: bulletList,
                   button: button,
                   checkbox: checkbox,
                   chip: chip,
                   controlItem: controlItem,
                   divider: divider,
                   icon: icon,
                   link: link,
                   pinCodeInput: pinCodeInput,
                   quantityInput: quantityInput,
                   radioButton: radioButton,
                   selectInput: selectInput,
                   skeleton: skeleton,
                   switch: `switch`,
                   tag: tag,
                   inputTag: inputTag,
                   textArea: textArea,
                   textInput: textInput,
                   resourcesBundle: Bundle.WireframeTheme,
                   family: WireframeBrandFontRawTokens.familyDefault)

        registerFonts()
    }

    deinit {}

    /// Fonts are defined in Resources/Fonts in TTF files
    private func registerFonts() {
        if !WireframeTheme.fontsAlreadyRegistered {
            let fonts = Bundle.WireframeTheme.urls(forResourcesWithExtension: "ttf", subdirectory: nil)
            fonts?.forEach { CTFontManagerRegisterFontsForURL($0 as CFURL, .process, nil) }
            WireframeTheme.fontsAlreadyRegistered = true
        }
    }
}

// swiftlint:enable function_body_length

// MARK: - Extension of Bundle

extension Bundle {

    /// The `Wireframe` theme bundle, useful to find resources
    static let WireframeTheme = Bundle.module
}
