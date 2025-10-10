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
import OUDSThemesOrange
import OUDSTokensSemantic
import SwiftUI

// swiftlint:disable function_body_length

/// The `Orange Inverse` theme is liked an _inversed* mode Orange theme, i.e. with a particular color palette
/// for edge uses cases/
///
/// ## Usages
///
/// This *inverse* theme is based on the Orange theme by definition in Figma side, and is dedicated to some B2B or very specific uses cases.
/// In fact some products may need to use some colors palette because of very specific uses cases (dark environement, uses always on their screens, mobilities, etc.).
///
/// To get the theme:
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
///     import OUDSThemesOrangeInverse // To get OrangeInverseTheme
///     import SwiftUI
///
///     @main
///     struct YourApp: App {
///         var body: some Scene {
///             WindowGroup {
///                 OUDSThemeableView(theme: OrangeInverseTheme()) {
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
/// You just need to give a predefined tuning configuration at theme init build the one you need.
/// To apply the tuning:
///
/// ```swift
///     // Define your theme tuning
///     let tuning = Tuning(hasRoundedButtons: true, hasRoundedTextInputs: true)
///
///     // Apply it to your theme
///     let theme = OrangeInverseTheme(tuning: tuning)
///     // Or in one line
///     let theme = OrangeInverseTheme(tuning: Tuning(hasRoundedButtons: true, hasRoundedTextInputs: true))
///
///     // Or apply predefined tunings
///     let orangeFranceTheme = OrangeInverseTheme(tuning: Tuning.OrangeFrance)
///     let orangeBusinessTheme = OrangeInverseTheme(tuning: Tuning.OrangeBusiness)
///     let maxitTheme = OrangeInverseTheme(tuning: Tuning.MaxIt)
/// ```
///
/// ## Typography
///
/// ### Helvetica Neue
///
/// The Orange brand strongly relies on the *Helvetica Neue* font family. Thus each Orange brand should, or must, use it.
/// For iOS the *Helvetica Neue* font family is available at system level, so it is not needed to get it through external assets.
/// By default an instance of `OrangeInverseTheme` uses as font family the token `OrangeBrandFontRawTokens.fontFamilyBrandDefault`, which is today *Helvetica Neue*.
/// If you want to use another font family, you will have to send the suitable token or the suitable font family.
/// However, beware, iOS API relies also on the PostScript name of the font.
/// To be sure of the value to use, look at the font book of your device.
/// It is recommended to use the font raw tokens.
///
/// ```swift
///     // The three following instanciations are the same
///     let orangeTheme = OrangeInverseTheme()
///     let orangeTheme = OrangeInverseTheme(fontFamily: OrangeBrandFontRawTokens.fontFamilyBrandDefault)
///     let orangeTheme = OrangeInverseTheme(fontFamily: "HelveticaNeue") // Which is PostScript name of the font
///
///     // This instanciation won't work as the font family is not recognised
///     let orangeTheme = OrangeInverseTheme(fontFamily: "Helvetica Neue")
/// ```
///
/// ### Helvetica Neue Arabic
///
/// Because the *Helvetica Neue* font family does not manage arabic alphabet but latin one, it is possible apply another font family to the theme like the
/// *Helvetica Neue Arabic*.
/// This font family assets can be retrieved through the [Orange Brand website (authentication needed)](https://brand.orange.com/en/brand-basics/typography).
/// PostScript name management has been implemented for this font family, thus the weight are managed and it is only needed to add the font assets to the project,
/// register them and define the font family name to use.
///
/// ```swift
///     let orangeTheme = OrangeInverseTheme(fontFamily: "Helvetica Neue Arabic")
/// ```
///
/// - Since: 0.17.0
public final class OrangeInverseTheme: OUDSTheme, @unchecked Sendable {

    // MARK: - Initializers

    /// Constructor of the `OrangeInverse` theme with its own providers of tokens.
    ///
    /// - Parameters:
    ///    - fontFamily: The font family to apply, by default `OrangeBrandFontRawTokens.fontFamilyBrandDefault`
    ///    - tuning: The `Tuning` to apply to the theme, by default `Tuning.default`
    public init(
        fontFamily: FontFamilySemanticToken? = OrangeBrandFontRawTokens.fontFamilyBrandDefault,
        tuning: Tuning = Tuning.default)
    {
        let borders = OrangeInverseThemeBorderSemanticTokensProvider()
        let colors = OrangeInverseThemeColorSemanticTokensProvider()
        let colorModes = OrangeInverseThemeColorModeSemanticTokensProvider(colors: colors)
        let colorCharts = OrangeInverseThemeColorChartSemanticTokensProvider()
        let elevations = OrangeInverseThemeElevationSemanticTokensProvider()
        let fonts = OrangeInverseThemeFontSemanticTokensProvider()
        let grids = OrangeInverseThemeGridSemanticTokensProvider()
        let opacities = OrangeInverseThemeOpacitySemanticTokensProvider()
        let dimensions = OrangeInverseThemeDimensionSemanticTokensProvider()
        let sizes = OrangeInverseThemeSizeSemanticTokensProvider(dimensions: dimensions)
        let spaces = OrangeInverseThemeSpaceSemanticTokensProvider(dimensions: dimensions)

        let badge = OrangeInverseThemeBadgeComponentTokensProvider(spaces: spaces, dimensions: dimensions)
        let button = OrangeInverseThemeButtonComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces)
        let bulletList = OrangeInverseThemeBulletListComponentTokensProvider(spaces: spaces)
        let checkbox = OrangeInverseThemeCheckboxComponentTokensProvider(sizes: sizes, borders: borders)
        let chip = OrangeInverseThemeChipComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, dimensions: dimensions)
        let controlItem = OrangeInverseThemeControlItemComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces)
        let divider = OrangeInverseThemeDividerComponentTokensProvider(borders: borders)
        let link = OrangeInverseThemeLinkComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces)
        let pinCodeInput = OrangeInverseThemePinCodeInputComponentTokensProvider(spaces: spaces, dimensions: dimensions)
        let quantityInput = OrangeInverseThemeQuantityInputComponentTokensProvider(sizes: sizes, spaces: spaces)
        let radioButton = OrangeInverseThemeRadioButtonComponentTokensProvider(sizes: sizes, borders: borders)
        let selectInput = OrangeInverseThemeSelectInputComponentTokensProvider(dimensions: dimensions)
        let skeleton = OrangeInverseThemeSkeletonComponentTokensProvider(colors: colors)
        let `switch` = OrangeInverseThemeSwitchComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, opacities: opacities, dimensions: dimensions)
        let tag = OrangeInverseThemeTagComponentTokensProvider(sizes: sizes, borders: borders, spaces: spaces, dimensions: dimensions)
        let inputTag = OrangeInverseThemeInputTagComponentTokensProvider(borders: borders, colors: colors)
        let textArea = OrangeInverseThemeTextAreaComponentTokensProvider(sizes: sizes, spaces: spaces)
        let textInput = OrangeInverseThemeTextInputComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, dimensions: dimensions)

        super.init(borders: borders,
                   colors: colors,
                   colorModes: colorModes,
                   colorCharts: colorCharts,
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
                   resourcesBundle: Bundle.OrangeInverseTheme,
                   fontFamily: fontFamily,
                   tuning: tuning)
    }

    deinit {}
}

// swiftlint:enable function_body_length

// MARK: - Extension of Bundle

extension Bundle {

    /// The `OrangeInverse` theme bundle, useful to find resources, using the `OrangeTheme` bundle.
    static let OrangeInverseTheme = Bundle.OrangeTheme
}
