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
import OUDSThemesOrange
import OUDSTokensSemantic
import SwiftUI

// swiftlint:disable function_body_length
// swiftlint:disable line_length

/// The `Orange Compact` theme is an Orange theme but tailored for some products with heavy UI.
///
/// ## Usages
///
/// Some products may have heavy and very rich user interfaces with a lot of components and elements to displays and
/// with which users can interact. Thus for such products there are specific constraints of spaces and sizes, even if
/// these products must be Orange flavored.
/// That is the reason why this team is created: a kind of `OrangeTheme` but wih adjustments on some tokens like spacings and sizings.
///
/// To get the theme:
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
///                 OUDSThemeableView(theme: OrangeCompactTheme()) {
///                     // Your root view
///                 }
///             }
///         }
///     }
/// ```
///
/// ## Theme tuning
///
/// The theme can be customized a bit for more flexibility thanks to `Tuning` object.
/// You just need to give a predefined tuning configuration at theme init to build the one you need.
///
/// To apply the tuning:
///
/// ```swift
///     // Define your theme tuning
///     let tuning = Tuning(hasRoundedButtons: true, hasRoundedTextInputs: true)
///
///     // Apply it to your theme
///     let theme = OrangeCompactTheme(tuning: tuning)
///     // Or in one line
///     let theme = OrangeCompactTheme(tuning: Tuning(hasRoundedButtons: true, hasRoundedTextInputs: true))
///
///     // Or apply predefined tunings
///     let orangeFranceTheme = OrangeCompactTheme(tuning: Tuning.OrangeFrance)
///     let orangeBusinessTheme = OrangeCompactTheme(tuning: Tuning.OrangeBusiness)
///     let maxitTheme = OrangeCompactTheme(tuning: Tuning.MaxIt)
/// ```
///
/// ## Typography
///
/// ### Helvetica Neue
///
/// The Orange brand strongly relies on the *Helvetica Neue* font family. Thus each Orange brand should, or must, use it.
/// For iOS the *Helvetica Neue* font family is available at system level, so it is not needed to get it through external assets.
/// By default an instance of `OrangeCompactTheme` uses as font family the token `OrangeBrandFontRawTokens.familyBrandDefault`, which is today *Helvetica Neue*.
/// If you want to use another font family, you will have to send the suitable token or the suitable font family.
/// However, beware, iOS API relies also on the PostScript name of the font.
/// To be sure of the value to use, look at the font book of your device.
/// It is recommended to use the font raw tokens.
///
/// ```swift
///     // The following instanciations work
///     let orangeTheme = OrangeCompactTheme()
///     let orangeTheme = OrangeCompactTheme(fontFamily: OrangeBrandFontRawTokens.familyBrandDefault)
///     let orangeTheme = OrangeCompactTheme(fontFamily: "HelveticaNeue") // Which is PostScript name of the font
///     let orangeTheme = OrangeCompactTheme(fontFamily: "Helvetica Neue")
/// ```
///
/// ### Helvetica Neue Arabic
///
/// Because the *Helvetica Neue* font family does not manage arabic alphabet but latin one, it is possible apply another font family to the theme like the
/// *Helvetica Neue Arabic*. This font family assets can be retrieved through the [Orange Brand website (authentication needed)](https://brand.orange.com/en/brand-basics/typography).
/// PostScript name management has been implemented for this font family, thus the weight are managed and it is only needed to add the font assets to the project,
/// register them and define the font family name to use.
///
/// ```swift
///     let orangeTheme = OrangeCompactTheme(fontFamily: "Helvetica Neue Arabic")
/// ```
///
/// ## Tokens versions
///
/// - Core OUDS version: 1.9.0
/// - Core Orange version: 1.2.0
/// - Brand Orange Compact version: 2.3.0
///
/// - Since: 0.17.0
public final class OrangeCompactTheme: OUDSTheme, @unchecked Sendable {

    // MARK: - Initializers

    /// Constructor of the OrangeCompact theme with its own providers of tokens.
    /// It uses also the providers of charts colors from Orange theme (`OrangeThemeColorChartSemanticTokensProvider`).
    ///
    /// - Parameters:
    ///    - fontFamily: The font family to apply, by default `OrangeBrandFontRawTokens.familyBrandDefault`
    ///    - tuning: The `Tuning` to apply to the theme, by default `Tuning.default`
    public init(fontFamily: FontFamilySemanticToken? = OrangeBrandFontRawTokens.familyBrandDefault,
                tuning: Tuning = Tuning.default)
    {
        let borders = OrangeCompactThemeBorderSemanticTokensProvider()
        let colors = OrangeCompactThemeColorSemanticTokensProvider()
        let colorModes = OrangeCompactThemeColorModeSemanticTokensProvider(colors: colors)
        let charts = OrangeCompactThemeColorChartSemanticTokensProvider()
        let effects = OrangeCompactThemeEffectSemanticTokensProvider()
        let elevations = OrangeCompactThemeElevationSemanticTokensProvider()
        let fonts = OrangeCompactThemeFontSemanticTokensProvider()
        let grids = OrangeCompactThemeGridSemanticTokensProvider()
        let opacities = OrangeCompactThemeOpacitySemanticTokensProvider()
        let dimensions = OrangeCompactThemeDimensionSemanticTokensProvider()
        let sizes = OrangeCompactThemeSizeSemanticTokensProvider(dimensions: dimensions)
        let spaces = OrangeCompactThemeSpaceSemanticTokensProvider(dimensions: dimensions)

        let alert = OrangeCompactThemeAlertComponentTokensProvider(sizes: sizes, borders: borders, spaces: spaces)
        let badge = OrangeCompactThemeBadgeComponentTokensProvider(spaces: spaces, dimensions: dimensions)
        let bar = OrangeCompactThemeBarComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, opacities: opacities, effects: effects)
        let button = OrangeCompactThemeButtonComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces)
        let bulletList = OrangeCompactThemeBulletListComponentTokensProvider(spaces: spaces)
        let checkbox = OrangeCompactThemeCheckboxComponentTokensProvider(sizes: sizes, borders: borders)
        let chip = OrangeCompactThemeChipComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, dimensions: dimensions)
        let controlItem = OrangeCompactThemeControlItemComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces)
        let divider = OrangeCompactThemeDividerComponentTokensProvider(borders: borders)
        let icon = OrangeCompactThemeIconComponentTokensProvider(colors: colors)
        let link = OrangeCompactThemeLinkComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces)
        let pinCodeInput = OrangeCompactThemePinCodeInputComponentTokensProvider(sizes: sizes, spaces: spaces, dimensions: dimensions)
        let quantityInput = OrangeCompactThemeQuantityInputComponentTokensProvider(sizes: sizes, spaces: spaces)
        let radioButton = OrangeCompactThemeRadioButtonComponentTokensProvider(sizes: sizes, borders: borders)
        let selectInput = OrangeCompactThemeSelectInputComponentTokensProvider(sizes: sizes, dimensions: dimensions)
        let skeleton = OrangeCompactThemeSkeletonComponentTokensProvider(colors: colors)
        let `switch` = OrangeCompactThemeSwitchComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, opacities: opacities, dimensions: dimensions)
        let tag = OrangeCompactThemeTagComponentTokensProvider(sizes: sizes, borders: borders, spaces: spaces, dimensions: dimensions)
        let inputTag = OrangeCompactThemeInputTagComponentTokensProvider(borders: borders, colors: colors)
        let textArea = OrangeCompactThemeTextAreaComponentTokensProvider(sizes: sizes, spaces: spaces)
        let textInput = OrangeCompactThemeTextInputComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, dimensions: dimensions)

        super.init(borders: borders,
                   colors: colors,
                   colorModes: colorModes,
                   charts: charts,
                   effects: effects,
                   elevations: elevations,
                   fonts: fonts,
                   grids: grids,
                   opacities: opacities,
                   dimensions: dimensions,
                   sizes: sizes,
                   spaces: spaces,
                   alert: alert,
                   badge: badge,
                   bar: bar,
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
                   resourcesBundle: Bundle.OrangeCompactTheme,
                   name: "Orange Compact",
                   fontFamily: fontFamily,
                   tuning: tuning)
    }

    deinit {}
}

// swiftlint:enable function_body_length
// swiftlint:enable line_length
