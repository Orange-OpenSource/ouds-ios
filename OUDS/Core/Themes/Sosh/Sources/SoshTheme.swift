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
import OUDSThemesContract
import SwiftUI

// swiftlint:disable function_body_length

/// This is the theme for Sosh brand?
/// This is an override of the default basic `OUDSTheme` for the **Sosh brand theme**
/// It can override any properties from its superclass, and but cannot be derived ; this is not allowed.
///
/// ## Usages
///
/// Sosh products must use this Sosh theme. It provides all Sosh brand colors and also the Sosh fonts
///
/// To get it:
/// ```swift
///     @Environment(\.theme) var theme
/// ```
///
/// ## Integration
///
/// To use this theme, inject it to your view using `OUDSThemeableView` and get it through environment variable.
///
/// ```swift
///     @main
///     struct YourApp: App {
///         var body: some Scene {
///             WindowGroup {
///                 OUDSThemeableView(theme: SoshTheme()) {
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
public final class SoshTheme: OUDSTheme, @unchecked Sendable {

    /// Flag to avoid to register severals the fonts making some errors happen
    nonisolated(unsafe) private static var fontsAlreadyRegistered: Bool = false

    // MARK: - Initializers

    /// Constructor of the Sosh theme with its own providers of tokens.
    public init() {
        let borders = SoshThemeBorderSemanticTokensProvider()
        let colors = SoshThemeColorSemanticTokensProvider()
        let colorModes = SoshThemeColorModeSemanticTokensProvider(colors: colors)
        let effects = SoshThemeEffectSemanticTokensProvider()
        let elevations = SoshThemeElevationSemanticTokensProvider()
        let fonts = SoshThemeFontSemanticTokensProvider()
        let grids = SoshThemeGridSemanticTokensProvider()
        let opacities = SoshThemeOpacitySemanticTokensProvider()
        let dimensions = SoshThemeDimensionSemanticTokensProvider()
        let sizes = SoshThemeSizeSemanticTokensProvider(dimensions: dimensions)
        let spaces = SoshThemeSpaceSemanticTokensProvider(dimensions: dimensions)

        let badge = SoshThemeBadgeComponentTokensProvider(spaces: spaces, dimensions: dimensions)
        let button = SoshThemeButtonComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces)
        let bulletList = SoshThemeBulletListComponentTokensProvider(spaces: spaces)
        let checkbox = SoshThemeCheckboxComponentTokensProvider(sizes: sizes, borders: borders)
        let chip = SoshThemeChipComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, dimensions: dimensions)
        let controlItem = SoshThemeControlItemComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces)
        let divider = SoshThemeDividerComponentTokensProvider(borders: borders)
        let icon = SoshThemeIconComponentTokensProvider(colors: colors)
        let link = SoshThemeLinkComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces)
        let pinCodeInput = SoshThemePinCodeInputComponentTokensProvider(spaces: spaces, dimensions: dimensions)
        let quantityInput = SoshThemeQuantityInputComponentTokensProvider(sizes: sizes, spaces: spaces)
        let radioButton = SoshThemeRadioButtonComponentTokensProvider(sizes: sizes, borders: borders)
        let selectInput = SoshThemeSelectInputComponentTokensProvider(dimensions: dimensions)
        let skeleton = SoshThemeSkeletonComponentTokensProvider(colors: colors)
        let `switch` = SoshThemeSwitchComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, opacities: opacities, dimensions: dimensions)
        let tag = SoshThemeTagComponentTokensProvider(sizes: sizes, borders: borders, spaces: spaces, dimensions: dimensions)
        let inputTag = SoshThemeInputTagComponentTokensProvider(borders: borders, colors: colors)
        let textArea = SoshThemeTextAreaComponentTokensProvider(sizes: sizes, spaces: spaces)
        let textInput = SoshThemeTextInputComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, dimensions: dimensions)

        super.init(borders: borders,
                   colors: colors,
                   colorModes: colorModes,
                   effects: effects,
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
                   resourcesBundle: Bundle.SoshTheme,
                   name: "Sosh",
                   family: SoshBrandFontRawTokens.familyDefault)

        registerFonts()
    }

    deinit {}

    /// Fonts are defined in Resources/Fonts in TTF files
    private func registerFonts() {
        if !SoshTheme.fontsAlreadyRegistered {
            let fonts = Bundle.SoshTheme.urls(forResourcesWithExtension: "ttf", subdirectory: nil)
            fonts?.forEach { CTFontManagerRegisterFontsForURL($0 as CFURL, .process, nil) }
            SoshTheme.fontsAlreadyRegistered = true
        }
    }
}

// swiftlint:enable function_body_length

// MARK: - Extension of Bundle

extension Bundle {

    /// The Sosh theme bundle, useful to find resources
    static let SoshTheme = Bundle.module
}
