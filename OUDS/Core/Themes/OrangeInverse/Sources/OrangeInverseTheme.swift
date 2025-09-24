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
/// - Since: 0.17.0
public final class OrangeInverseTheme: OUDSTheme, @unchecked Sendable {

    /// Flag to avoid to register severals the fonts making some errors happen
    private nonisolated(unsafe) static var fontsAlreadyRegistered: Bool = false

    // MARK: - Initializers

    /// Constructor of the `OrangeInverse` theme with its own providers of tokens.
    ///
    /// - Parameter tuning: A set of configurations to tune a theme, by default `Tuning.default`
    public init(tuning: Tuning = Tuning.default) {
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
        let tagInput = OrangeInverseThemeTagInputComponentTokensProvider(borders: borders, colors: colors)
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
                   tagInput: tagInput,
                   textArea: textArea,
                   textInput: textInput,
                   resourcesBundle: Bundle.OrangeInverseTheme,
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
