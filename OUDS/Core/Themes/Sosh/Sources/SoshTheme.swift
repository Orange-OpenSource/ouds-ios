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

import OUDS
import OUDSTokensSemantic

/// This is an override of the default basic `OUDSTheme` for the **Sosh brand theme**
/// It can override any properties from its superclass, and but cannot be derived ; this is not allowed.
///
/// To use this theme, inject it to your view using `OUDSThemeableView` and get it through environment variable.
///
/// ```swift
///     import OUDS                 // To get OUDSThemeableView
///     import OUDSThemeSosh       // To get SoshTheme
///     import SwiftUI
///
///     @main
///     struct YourApp: App {
///         var body: some Scene {
///             WindowGroup {
///                 OUDSThemeableView(theme: SoshTheme) {
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
public final class SoshTheme: OUDSTheme, @unchecked Sendable {

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
        let dimensions = SoshThemeDimensionSemanticTokensProvider()
        let sizes = SoshThemeSizeSemanticTokensProvider(dimensions: dimensions)
        let spaces = SoshThemeSpaceSemanticTokensProvider(dimensions: dimensions)

        let badge = SoshThemeBadgeComponentTokensProvider(sizes: sizes, spaces: spaces, dimensions: dimensions)
        let button = SoshThemeButtonComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces)
        let bulletList = SoshThemeBulletListComponentTokensProvider(spaces: spaces)
        let checkbox = SoshThemeCheckboxComponentTokensProvider(sizes: sizes, borders: borders)
        let chip = SoshThemeChipComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, dimensions: dimensions)
        let controlItem = SoshThemeControlItemComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces)
        let divider = SoshThemeDividerComponentTokensProvider(borders: borders)
        let inputText = SoshThemeInputTextComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces)
        let link = SoshThemeLinkComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces)
        let listItem = SoshThemeListItemComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces)
        let radioButton = SoshThemeRadioButtonComponentTokensProvider(sizes: sizes, borders: borders)
        let select = SoshThemeSelectComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces)
        let skeleton = SoshThemeSkeletonComponentTokensProvider(colors: colors)
        let `switch` = SoshThemeSwitchComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, opacities: opacities, dimensions: dimensions)
        let tag = SoshThemeTagComponentTokensProvider(sizes: sizes, borders: borders, spaces: spaces, dimensions: dimensions)

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
                   inputText: inputText,
                   listItem: listItem,
                   link: link,
                   radioButton: radioButton,
                   select: select,
                   skeleton: skeleton,
                   switch: `switch`,
                   tag: tag)
    }

    deinit {}
}
