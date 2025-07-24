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
import OUDSTokensSemantic

// swiftlint:disable function_body_length
// swiftlint:disable line_length

/// The Orange theme is the bsic, default, theme for any Orange products.
/// This is an override of the abtract `OUDSTheme` and **must be seen as the default theme for the OUDS library**.
/// It can override any properties from its superclass, and can be derived too.
///
/// # Usages
///
/// Any Orange products must use this theme. It provides core and Orange colors and any elements for sizings, spacings and dimensions.
/// The system font families are used; no *Helevetica* font fmaily is embeded nor provider by OUDS.
/// This theme also provides colros charts charts.
///
/// ## Integration
///
/// To use this theme, inject it to your view using `OUDSThemeableView` and get it through environment variable.
///
/// ```swift
///     import OUDS                 // To get OUDSThemeableView
///     import OUDSThemesOrange    // To get OrangeTheme
///     import SwiftUI
///
///     @main
///     struct YourApp: App {
///         var body: some Scene {
///             WindowGroup {
///                 OUDSThemeableView(theme: OrangeTheme()) {
///                     // Your root view
///                 }
///             }
///         }
///     }
/// ```
///
/// You can also use some tokens providers defined in your side, but they must match the same type as the one used on the themes (see `OUDSTheme`).
/// For example:
///
/// ```swift
///
///    // Use some already defined providers
///    let borders = OrangeThemeBorderSemanticTokensProvider()
///    let sizes = OrangeThemeSizeSemanticTokensProvider()
///    let spaces = OrangeThemeSpaceSemanticTokensProvider()
///
///    // For example, use your own provider of color semantic tokens
///    // It must inherit from OrangeThemeBorderSemanticTokensProvider (which is instance of AllColorSemanticTokensProvider) or directly implement AllColorSemanticTokensProvider
///    let colors = YourOwnColorSemanticTokensProvider()
///
///    // Some providers need other providers to use their tokens
///    let button = OrangeThemeButtonComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces)
///
///    // But you can also use the providers as they are without assigning semantic tokens providers
///    // and just use the default ones
///    let badge = OrangeThemeBadgeComponentTokensProvider()
///
///    // Define in the end your theme by overriding some providers.
///    // You can override all providers, or only some, or just keep the theme as is.
///    // However you should uses thhese providers in a dedicated Orange theme subclass for clarity reasons.
///    let yourOwnOrangeTheme = OrangeTheme(colors: colors, borders: borders, sizes: sizes, spaces: spaces, button: button, badge: badge)
///
/// ```
///
/// Then get it:
/// ```swift
///     import OUDS
///
///     @Environment(\.theme) var theme
/// ```
///
/// - Since: 0.8.0
open class OrangeTheme: OUDSTheme, @unchecked Sendable {

    // MARK: - Initializers

    /// Constructor of the Orange theme.
    /// It needs several tokens providers for semantic tokens and component tokens.
    /// If a nil token provider is given, the default version associated fo the theme is used.
    ///
    /// - Parameters:
    ///    - borders: All semantic tokens of borders
    ///    - colors: All semantic tokens of colors
    ///    - colorModes: All semantic tokens of color modes
    ///    - colorCharts: All semantic tokens of color charts
    ///    - elevations: All semantic tokens of elevations
    ///    - fonts: All semantic tokens of fonts
    ///    - grids: All semantic tokens of grids
    ///    - opacities: All semantic tokens of opacity
    ///    - dimensions: All semantic tokens of dimension
    ///    - sizes: All semantic tokens of sizes
    ///    - spaces: All semantic tokens of spaces
    ///    - badge: All component tokens for badge
    ///    - bulletList: All component tokens for bullet list
    ///    - button: All component tokens for button
    ///    - checkbox: All component tokens for checkbox
    ///    - chip: All component tokens for chip
    ///    - controlItem: All component tokens for control item
    ///    - divider: All component tokens for divider
    ///    - link: All component tokens for link
    ///    - pinCodeInput: All component tokens for pin code input
    ///    - quantityInput: All component tokens for quantity input
    ///    - radioButton: All component tokens for radio buttons
    ///    - selectInput: All component tokens for select input
    ///    - skeleton: All component tokens for skeleton
    ///    - switch: All component tokens for switch
    ///    - tag: All component tokens for tag
    ///    - tagInput: All component tokens for tag input
    ///    - textInput: All component tokens for text input
    ///    - textArea: All component tokens for text area
    ///    - resourcesBundle: The `Bundle` of the module containing assets to laod like images
    ///    - fontFamily: Set `nil` if system font to use, otherwise use the `FontFamilySemanticToken` you want to apply
    override public init(borders: AllBorderSemanticTokensProvider? = nil,
                         colors: AllColorSemanticTokensProvider? = nil,
                         colorModes: AllColorModeSemanticTokensProvider? = nil,
                         colorCharts: AllColorChartSemanticTokensProvider? = nil,
                         elevations: AllElevationSemanticTokensProvider? = nil,
                         fonts: AllFontSemanticTokensProvider? = nil,
                         grids: AllGridSemanticTokensProvider? = nil,
                         opacities: AllOpacitySemanticTokensProvider? = nil,
                         dimensions: AllDimensionSemanticTokensProvider? = nil,
                         sizes: AllSizeSemanticTokensProvider? = nil,
                         spaces: AllSpaceSemanticTokensProvider? = nil,
                         badge: AllBadgeComponentTokensProvider? = nil,
                         bulletList: AllBulletListComponentTokensProvider? = nil,
                         button: AllButtonComponentTokensProvider? = nil,
                         checkbox: AllCheckboxComponentTokensProvider? = nil,
                         chip: AllChipComponentTokensProvider? = nil,
                         controlItem: AllControlItemComponentTokensProvider? = nil,
                         divider: AllDividerComponentTokensProvider? = nil,
                         link: AllLinkComponentTokensProvider? = nil,
                         pinCodeInput: AllPinCodeInputComponentTokensProvider? = nil,
                         quantityInput: AllQuantityInputComponentTokensProvider? = nil,
                         radioButton: AllRadioButtonComponentTokensProvider? = nil,
                         selectInput: AllSelectInputComponentTokensProvider? = nil,
                         skeleton: AllSkeletonComponentTokensProvider? = nil,
                         switch: AllSwitchComponentTokensProvider? = nil,
                         tag: AllTagComponentTokensProvider? = nil,
                         tagInput: AllTagInputComponentTokensProvider? = nil,
                         textArea: AllTextAreaComponentTokensProvider? = nil,
                         textInput: AllTextInputComponentTokensProvider? = nil,
                         resourcesBundle: Bundle = Bundle.OrangeTheme,
                         fontFamily: FontFamilySemanticToken? = nil)
    {

        let borders = (borders ?? OrangeThemeBorderSemanticTokensProvider())
        let colors = (colors ?? OrangeThemeColorSemanticTokensProvider())
        let colorModes = (colorModes ?? OrangeThemeColorModeSemanticTokensProvider(colors: colors))
        let colorCharts = (colorCharts ?? OrangeThemeColorChartSemanticTokensProvider())
        let elevations = (elevations ?? OrangeThemeElevationSemanticTokensProvider())
        let fonts = (fonts ?? OrangeThemeFontSemanticTokensProvider())
        let grids = (grids ?? OrangeThemeGridSemanticTokensProvider())
        let opacities = (opacities ?? OrangeThemeOpacitySemanticTokensProvider())
        let dimensions = (dimensions ?? OrangeThemeDimensionSemanticTokensProvider())
        let sizes = (sizes ?? OrangeThemeSizeSemanticTokensProvider(dimensions: dimensions))
        let spaces = (spaces ?? OrangeThemeSpaceSemanticTokensProvider(dimensions: dimensions))

        let badge = (badge ?? OrangeThemeBadgeComponentTokensProvider(spaces: spaces, dimensions: dimensions))
        let button = (button ?? OrangeThemeButtonComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces))
        let bulletList = (bulletList ?? OrangeThemeBulletListComponentTokensProvider(spaces: spaces))
        let checkbox = (checkbox ?? OrangeThemeCheckboxComponentTokensProvider(sizes: sizes, borders: borders))
        let chip = (chip ?? OrangeThemeChipComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, dimensions: dimensions))
        let controlItem = (controlItem ?? OrangeThemeControlItemComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces))
        let divider = (divider ?? OrangeThemeDividerComponentTokensProvider(borders: borders))
        let link = (link ?? OrangeThemeLinkComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces))
        let pinCodeInput = (pinCodeInput ?? OrangeThemePinCodeInputComponentTokensProvider(spaces: spaces, dimensions: dimensions))
        let quantityInput = (quantityInput ?? OrangeThemeQuantityInputComponentTokensProvider(sizes: sizes, spaces: spaces))
        let radioButton = (radioButton ?? OrangeThemeRadioButtonComponentTokensProvider(sizes: sizes, borders: borders))
        let selectInput = (selectInput ?? OrangeThemeSelectInputComponentTokensProvider(dimensions: dimensions))
        let skeleton = (skeleton ?? OrangeThemeSkeletonComponentTokensProvider(colors: colors))
        let `switch` = (`switch` ?? OrangeThemeSwitchComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, opacities: opacities, dimensions: dimensions))
        let tag = (tag ?? OrangeThemeTagComponentTokensProvider(sizes: sizes, borders: borders, spaces: spaces, dimensions: dimensions))
        let tagInput = (tagInput ?? OrangeThemeTagInputComponentTokensProvider(borders: borders, colors: colors))
        let textArea = (textArea ?? OrangeThemeTextAreaComponentTokensProvider(sizes: sizes, spaces: spaces))
        let textInput = (textInput ?? OrangeThemeTextInputComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, dimensions: dimensions))

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
                   resourcesBundle: Bundle.OrangeTheme,
                   fontFamily: fontFamily)
    }

    deinit {}
}

// MARK: - Extension of Bundle

extension Bundle {

    /// The Orange theme bundle, useful to find resources
    public static let OrangeTheme = Bundle.module
}

// swiftlint:enable function_body_length
// swiftlint:enable line_length
