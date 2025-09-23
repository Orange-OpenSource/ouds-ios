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
// swiftlint:disable line_length

/// The `Orange Business Tools`` theme is an Orange theme but tailored for some products with heavy UI.
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
///     import OUDS                            // To get OUDSThemeableView
///     import OUDSThemesOrangeBusinessTools  // To get OrangeBusinessToolsTheme
///     import SwiftUI
///
///     @main
///     struct YourApp: App {
///         var body: some Scene {
///             WindowGroup {
///                 OUDSThemeableView(theme: OrangeBusinessToolsTheme()) {
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
///     let theme = OrangeBusinessToolsTheme(tuning: tuning)
///     // Or in one line
///     let theme = OrangeBusinessToolsTheme(tuning: Tuning(hasRoundedButtons: true, hasRoundedTextInputs: true))
///
///     // Or apply predefined tunings
///     let orangeFranceTheme = OrangeBusinessToolsTheme(tuning: Tuning.OrangeFrance)
///     let orangeBusinessTheme = OrangeBusinessToolsTheme(tuning: Tuning.OrangeBusiness)
///     let maxitTheme = OrangeBusinessToolsTheme(tuning: Tuning.MaxIt)
/// ```
///
/// ## Typography
///
/// The Orange brand strongly relies on the *Helvetica Neue* font family. Thus each Orange brand should, or must, use it.
/// For iOS the *Helvetica Neue* font family is available at system level, so it is not needed to get it through external assets.
/// By default an instance of `OrangeBusinessToolsTheme` uses as font family the token `OrangeBrandFontRawTokens.fontFamilyBrandDefault`, which is today *Helvetica Neue*.
/// If you want to use another font family, you will have to send the suitable token or the suitable font family.
/// However, beware, iOS API relies also on the PostScript name of the font.
/// To be sure of the value to use, look at the font book of your device.
/// It is recommended to use the font raw tokens.
///
/// ```swift
///     // The three following instanciations are the same
///     let orangeTheme = OrangeBusinessToolsTheme()
///     let orangeTheme = OrangeBusinessToolsTheme(fontFamily: OrangeBrandFontRawTokens.fontFamilyBrandDefault)
///     let orangeTheme = OrangeBusinessToolsTheme(fontFamily: "HelveticaNeue") // Which is PostScript name of the font
///
///     // This instanciation won't work as the font family is not recognised
///     let orangeTheme = OrangeBusinessToolsTheme(fontFamily: "Helvetica Neue")
/// ```
///
/// - Since: 0.17.0
public final class OrangeBusinessToolsTheme: OUDSTheme, @unchecked Sendable {

    /// Flag to avoid to register severals the fonts making some errors happen
    private nonisolated(unsafe) static var fontsAlreadyRegistered: Bool = false

    // MARK: - Initializers

    /// Constructor of the OrangeBusinessTools theme with its own providers of tokens.
    /// It uses also the providers of charts colors from Orange theme (`OrangeThemeColorChartSemanticTokensProvider`).
    ///
    /// - Parameters:
    ///    - fontFamily: The font family to apply, by default `OrangeBrandFontRawTokens.fontFamilyBrandDefault`
    ///    - tuning: The `Tuning` to apply to the theme, by default `Tuning.default`
    public init(fontFamily: FontFamilySemanticToken? = OrangeBrandFontRawTokens.fontFamilyBrandDefault,
                tuning: Tuning = Tuning.default)
    {
        let borders = OrangeBusinessToolsThemeBorderSemanticTokensProvider()
        let colors = OrangeBusinessToolsThemeColorSemanticTokensProvider()
        let colorModes = OrangeBusinessToolsThemeColorModeSemanticTokensProvider(colors: colors)
        let colorCharts = OrangeBusinessToolsThemeColorChartSemanticTokensProvider()
        let elevations = OrangeBusinessToolsThemeElevationSemanticTokensProvider()
        let fonts = OrangeBusinessToolsThemeFontSemanticTokensProvider()
        let grids = OrangeBusinessToolsThemeGridSemanticTokensProvider()
        let opacities = OrangeBusinessToolsThemeOpacitySemanticTokensProvider()
        let dimensions = OrangeBusinessToolsThemeDimensionSemanticTokensProvider()
        let sizes = OrangeBusinessToolsThemeSizeSemanticTokensProvider(dimensions: dimensions)
        let spaces = OrangeBusinessToolsThemeSpaceSemanticTokensProvider(dimensions: dimensions)

        let badge = OrangeBusinessToolsThemeBadgeComponentTokensProvider(spaces: spaces, dimensions: dimensions)
        let button = OrangeBusinessToolsThemeButtonComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces)
        let bulletList = OrangeBusinessToolsThemeBulletListComponentTokensProvider(spaces: spaces)
        let checkbox = OrangeBusinessToolsThemeCheckboxComponentTokensProvider(sizes: sizes, borders: borders)
        let chip = OrangeBusinessToolsThemeChipComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, dimensions: dimensions)
        let controlItem = OrangeBusinessToolsThemeControlItemComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces)
        let divider = OrangeBusinessToolsThemeDividerComponentTokensProvider(borders: borders)
        let link = OrangeBusinessToolsThemeLinkComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces)

        let pinCodeInput = OrangeBusinessToolsThemePinCodeInputComponentTokensProvider(sizes: sizes, spaces: spaces, dimensions: dimensions)
        let quantityInput = OrangeBusinessToolsThemeQuantityInputComponentTokensProvider(sizes: sizes, spaces: spaces)
        let radioButton = OrangeBusinessToolsThemeRadioButtonComponentTokensProvider(sizes: sizes, borders: borders)
        let selectInput = OrangeBusinessToolsThemeSelectInputComponentTokensProvider(sizes: sizes, dimensions: dimensions)
        let skeleton = OrangeBusinessToolsThemeSkeletonComponentTokensProvider(colors: colors)
        let `switch` = OrangeBusinessToolsThemeSwitchComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, opacities: opacities, dimensions: dimensions)
        let tag = OrangeBusinessToolsThemeTagComponentTokensProvider(sizes: sizes, borders: borders, spaces: spaces, dimensions: dimensions)
        let tagInput = OrangeBusinessToolsThemeTagInputComponentTokensProvider(borders: borders, colors: colors)
        let textArea = OrangeBusinessToolsThemeTextAreaComponentTokensProvider(sizes: sizes, spaces: spaces)
        let textInput = OrangeBusinessToolsThemeTextInputComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, dimensions: dimensions)

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
                   tagInput: tagInput,
                   textArea: textArea,
                   textInput: textInput,
                   resourcesBundle: Bundle.OrangeBusinessToolsTheme,
                   fontFamily: fontFamily,
                   tuning: tuning)
    }

    deinit {}
}

// swiftlint:enable function_body_length
// swiftlint:enable line_length

// MARK: - Extension of Bundle

extension Bundle {

    /// The OrangeBusinessTools theme bundle, useful to find resources
    public static let OrangeBusinessToolsTheme = Bundle.OrangeTheme
}
