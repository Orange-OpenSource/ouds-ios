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
// swiftlint:disable line_length

/// The Orange Business Tools theme is an Orange theme but ftailors for some productd with heavy UI.
/// This is an override of the default basic `OUDSTheme` for the **Orange Business Tools theme**
/// It can override any properties from its superclass, and but cannot be derived ; this is not allowed.
///
/// ## Usages
///
/// Some products may have heavy and very rich user interfaces with a lot of components and elements to displays and
/// with which users can interact. Thus for such products there are specific constraints of spaces and sizes, even if
/// thes products must be Orange flavored.
/// That is the reason why this team is created: a kind of `OrangeTheme` but wih adjustments on some tokens like spacings and sizings.
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
/// Then get it:
/// ```swift
///     import OUDS
///
///     @Environment(\.theme) var theme
/// ```
///
/// - Since: 0.17.0
public final class OrangeBusinessToolsTheme: OUDSTheme, @unchecked Sendable {

    /// Flag to avoid to register severals the fonts making some errors happen
    private nonisolated(unsafe) static var fontsAlreadyRegistered: Bool = false

    // MARK: - Initializers

    /// Constructor of the OrangeBusinessTools theme with its own providers of tokens.
    /// It uses also the providers of charts colors from Orange theme (`OrangeThemeColorChartSemanticTokensProvider`).
    public init() {
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

        let badge = OrangeBusinessToolsThemeBadgeComponentTokensProvider(sizes: sizes, spaces: spaces, dimensions: dimensions)
        let button = OrangeBusinessToolsThemeButtonComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces)
        let bulletList = OrangeBusinessToolsThemeBulletListComponentTokensProvider(spaces: spaces)
        let checkbox = OrangeBusinessToolsThemeCheckboxComponentTokensProvider(sizes: sizes, borders: borders)
        let chip = OrangeBusinessToolsThemeChipComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, dimensions: dimensions)
        let controlItem = OrangeBusinessToolsThemeControlItemComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces)
        let divider = OrangeBusinessToolsThemeDividerComponentTokensProvider(borders: borders)
        let link = OrangeBusinessToolsThemeLinkComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces)
        let listItem = OrangeBusinessToolsThemeListItemComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces)
        let pinCodeInput = OrangeBusinessToolsThemePinCodeInputComponentTokensProvider(sizes: sizes, spaces: spaces)
        let quantityInput = OrangeBusinessToolsThemeQuantityInputComponentTokensProvider(sizes: sizes, spaces: spaces)
        let radioButton = OrangeBusinessToolsThemeRadioButtonComponentTokensProvider(sizes: sizes, borders: borders)
        let selectInput = OrangeBusinessToolsThemeSelectInputComponentTokensProvider(sizes: sizes)
        let skeleton = OrangeBusinessToolsThemeSkeletonComponentTokensProvider(colors: colors)
        let `switch` = OrangeBusinessToolsThemeSwitchComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, opacities: opacities, dimensions: dimensions)
        let tag = OrangeBusinessToolsThemeTagComponentTokensProvider(sizes: sizes, borders: borders, spaces: spaces, dimensions: dimensions)
        let tagInput = OrangeBusinessToolsThemeTagInputComponentTokensProvider(borders: borders, colors: colors)
        let textArea = OrangeBusinessToolsThemeTextAreaComponentTokensProvider(sizes: sizes, spaces: spaces)
        let textInput = OrangeBusinessToolsThemeTextInputComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces)

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
                   listItem: listItem,
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
                   fontFamily: nil)
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
