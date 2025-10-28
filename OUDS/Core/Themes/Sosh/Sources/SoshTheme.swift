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
///     import OUDSThemesSosh // To get SoshTheme
///     import SwiftUI
///
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
    private nonisolated(unsafe) static var fontsAlreadyRegistered: Bool = false

    // MARK: - Initializers

    /// Constructor of the Sosh theme with its own providers of tokens.
    public init() {
        let borders = SoshThemeBorderSemanticTokensProvider()
        let colors = SoshThemeColorSemanticTokensProvider()
        let colorModes = SoshThemeColorModeSemanticTokensProvider(colors: colors)
        let elevations = SoshThemeElevationSemanticTokensProvider()
        let fonts = SoshThemeFontSemanticTokensProvider()
        let grids = SoshThemeGridSemanticTokensProvider()
        let opacities = SoshThemeOpacitySemanticTokensProvider()
        let _s = SoshThemeDimensionSemanticTokensProvider()
        let sizes = SoshThemeSizeSemanticTokensProvider(_s: _s)
        let spaces = SoshThemeSpaceSemanticTokensProvider(_s: _s)

        let badge = SoshThemeBadgeComponentTokensProvider(spaces: spaces, _s: _s)
        let button = SoshThemeButtonComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces)
        let bulletList = SoshThemeBulletListComponentTokensProvider(spaces: spaces)
        let checkbox = SoshThemeCheckboxComponentTokensProvider(sizes: sizes, borders: borders)
        let chip = SoshThemeChipComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, _s: _s)
        let controlItem = SoshThemeControlItemComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces)
        let divider = SoshThemeDividerComponentTokensProvider(borders: borders)
        let icon = SoshThemeIconComponentTokensProvider(colors: colors)
        let link = SoshThemeLinkComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces)
        let pinCodeInput = SoshThemePinCodeInputComponentTokensProvider(spaces: spaces, _s: _s)
        let quantityInput = SoshThemeQuantityInputComponentTokensProvider(sizes: sizes, spaces: spaces)
        let radioButton = SoshThemeRadioButtonComponentTokensProvider(sizes: sizes, borders: borders)
        let selectInput = SoshThemeSelectInputComponentTokensProvider(_s: _s)
        let skeleton = SoshThemeSkeletonComponentTokensProvider(colors: colors)
        let `switch` = SoshThemeSwitchComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, opacities: opacities, _s: _s)
        let tag = SoshThemeTagComponentTokensProvider(sizes: sizes, borders: borders, spaces: spaces, _s: _s)
        let inputTag = SoshThemeInputTagComponentTokensProvider(borders: borders, colors: colors)
        let textArea = SoshThemeTextAreaComponentTokensProvider(sizes: sizes, spaces: spaces)
        let textInput = SoshThemeTextInputComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, _s: _s)

        super.init(borders: borders,
                   colors: colors,
                   colorModes: colorModes,
                   elevations: elevations,
                   fonts: fonts,
                   grids: grids,
                   opacities: opacities,
                   _s: _s,
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
