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

/// This Wireframe theme is a theme for some specific usages, like for prototyping and design of journeys with non-Orange charted themes.
/// This is an override of the default basic `OUDSTheme` for some usages.
/// It can override any properties from its superclass, and but cannot be derived ; this is not allowed.
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
/// ## Tokens versions
///
/// - Core OUDS version: 1.11.0
/// - Core Wireframe version: 1.5.0
/// - Brand Wireframe version: 2.7.0
///
/// - Since: 0.17.0
open class WireframeTheme: OUDSTheme, @unchecked Sendable {

    /// The theme name ("Wireframe")
    public static let name = "Wireframe"

    /// Flag to avoid to register severals the fonts making some errors happen
    nonisolated(unsafe) private static var fontsAlreadyRegistered: Bool = false

    // MARK: - Initializers

    /// Constructor of the `Wireframe` theme with its own providers of tokens.
    ///
    /// - Parameters:
    ///    - colors: All tokens of colors to apply. If nil, `WireframeThemeColorSemanticTokensProvider` will be used
    ///    - colorsCharts: All tokens of colors to apply for charts and dataviz. Default set to `nil`.
    ///    - colorsDecorative: All tokens of decorative colors. Default set to `nil`.
    ///    - fonts: All tokens of fonts. Default set to nil. If so, `WireframeThemeFontSemanticTokensProvider` will be used instead.
    ///    - name: A name to give to the theme. If nil, `WireframeTheme.name` wil be used.
    ///    - fontFamily: The font family to apply for this theme. If empty, `WireframeBrandFontRawTokens.familyDefault` will be used.
    ///    - tuning: The `Tuning` to apply to the theme, e.g. to define rounded corners. If nil, `Tuning.Wireframe` will be used.
    public init(colors: AllColorSemanticTokensProvider? = nil,
                colorsCharts: AllColorChartSemanticTokensProvider? = nil,
                colorsDecorative: AllColorDecorativeSemanticTokensProvider? = nil,
                fonts: AllFontSemanticTokensProvider? = nil,
                name: String? = nil,
                fontFamily: String = "",
                tuning: Tuning? = nil)
    {

        let borders = WireframeThemeBorderSemanticTokensProvider()
        let colors = (colors ?? WireframeThemeColorSemanticTokensProvider())
        let colorModes = WireframeThemeColorModeSemanticTokensProvider(colors: colors)
        let effects = WireframeThemeEffectSemanticTokensProvider()
        let elevations = WireframeThemeElevationSemanticTokensProvider()
        let fonts = (fonts ?? WireframeThemeFontSemanticTokensProvider())
        let grids = WireframeThemeGridSemanticTokensProvider()
        let opacities = WireframeThemeOpacitySemanticTokensProvider()
        let dimensions = WireframeThemeDimensionSemanticTokensProvider()
        let sizes = WireframeThemeSizeSemanticTokensProvider(dimensions: dimensions)
        let spaces = WireframeThemeSpaceSemanticTokensProvider(dimensions: dimensions)

        let accordion = WireframeThemeAccordionComponentTokensProvider(sizes: sizes, spaces: spaces)
        let alert = WireframeThemeAlertComponentTokensProvider(sizes: sizes, borders: borders, spaces: spaces)
        let alertMessage = WireframeThemeAlertMessageComponentTokensProvider(borders: borders, spaces: spaces)
        let badge = WireframeThemeBadgeComponentTokensProvider(spaces: spaces, dimensions: dimensions)
        let bar = WireframeThemeBarComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, opacities: opacities, effects: effects)
        let button = WireframeThemeButtonComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces)
        let bulletList = WireframeThemeBulletListComponentTokensProvider(spaces: spaces)
        let categoricalTag = WireframeThemeCategoricalTagComponentTokensProvider(colors: colors)
        let checkbox = WireframeThemeCheckboxComponentTokensProvider(sizes: sizes, borders: borders)
        let chip = WireframeThemeChipComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, dimensions: dimensions)
        let divider = WireframeThemeDividerComponentTokensProvider(borders: borders)
        let icon = WireframeThemeIconComponentTokensProvider(colors: colors)
        let link = WireframeThemeLinkComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces, dimensions: dimensions)
        let listItem = WireframeThemeListItemComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, dimensions: dimensions)
        let pinCodeInput = WireframeThemePinCodeInputComponentTokensProvider(spaces: spaces, dimensions: dimensions)
        let progressIndicator = WireframeThemeProgressIndicatorComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, dimensions: dimensions)
        let quantityInput = WireframeThemeQuantityInputComponentTokensProvider(sizes: sizes, spaces: spaces)
        let radioButton = WireframeThemeRadioButtonComponentTokensProvider(sizes: sizes, borders: borders)
        let selectInput = WireframeThemeSelectInputComponentTokensProvider(dimensions: dimensions)
        let skeleton = WireframeThemeSkeletonComponentTokensProvider(colors: colors)
        let `switch` = WireframeThemeSwitchComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, opacities: opacities, dimensions: dimensions)
        let tag = WireframeThemeTagComponentTokensProvider(sizes: sizes, borders: borders, spaces: spaces, dimensions: dimensions)
        let inputTag = WireframeThemeInputTagComponentTokensProvider(borders: borders, colors: colors)
        let textArea = WireframeThemeTextAreaComponentTokensProvider(sizes: sizes, spaces: spaces)
        let textInput = WireframeThemeTextInputComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, dimensions: dimensions)
        let toast = WireframeThemeToastComponentTokensProvider(borders: borders, dimensions: dimensions, sizes: sizes)
        let typography = WireframeThemeTypographyComponentTokensProvider(spaces: spaces)

        let name = (name ?? WireframeTheme.name)
        let fontFamily = (fontFamily.isEmpty ? WireframeBrandFontRawTokens.familyDefault : fontFamily)
        let tuning = (tuning ?? Tuning.Wireframe)

        super.init(borders: borders,
                   colors: colors,
                   colorModes: colorModes,
                   colorsCharts: colorsCharts,
                   colorsDecorative: colorsDecorative,
                   effects: effects,
                   elevations: elevations,
                   fonts: fonts,
                   grids: grids,
                   opacities: opacities,
                   dimensions: dimensions,
                   sizes: sizes,
                   spaces: spaces,
                   accordion: accordion,
                   alert: alert,
                   alertMessage: alertMessage,
                   badge: badge,
                   bar: bar,
                   bulletList: bulletList,
                   button: button,
                   categoricalTag: categoricalTag,
                   checkbox: checkbox,
                   chip: chip,
                   divider: divider,
                   icon: icon,
                   link: link,
                   listItem: listItem,
                   pinCodeInput: pinCodeInput,
                   progressIndicator: progressIndicator,
                   quantityInput: quantityInput,
                   radioButton: radioButton,
                   selectInput: selectInput,
                   skeleton: skeleton,
                   switch: `switch`,
                   tag: tag,
                   inputTag: inputTag,
                   textArea: textArea,
                   textInput: textInput,
                   toast: toast,
                   typography: typography,
                   resourcesBundle: Bundle.WireframeTheme,
                   name: name,
                   fontFamily: fontFamily,
                   tuning: tuning)

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

// MARK: - Predefined tunings

extension Tuning {

    /// The theme tuning for *Sosh* contains **square corners for buttons**,
    /// **square corners for text / PIN code / password / text area inputs** and **list items**;
    /// and **rounded corners for alert messages** and **progress indicators**.
    public static let Wireframe = Tuning(hasRoundedButtons: false,
                                         hasRoundedTextInputs: false,
                                         hasRoundedAlertMessages: true,
                                         hasRoundedProgressIndicators: true,
                                         hasRoundedListItems: false)
}

// swiftlint:enable function_body_length
