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
import OUDSFoundations
import OUDSTokensComponent
import OUDSTokensSemantic

/// This is an override of the default basic `OUDSTheme` and **must be seen as the default theme for the OUDS library**.
/// It can override any properties from its superclass, and can be derived too.
/// The `InverseTheme` inherits from this `OrangeTheme`.
///
/// To use this theme, inject it to your view using `OUDSThemeableView` and get it through environment variable.
///
/// ```swift
///     import OUDS                 // To get OUDSThemeableView
///     import OUDSThemeOrange      // To get OrangeTheme
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
///    // YOu can override all providers, or only some, or just keep the theme as is.
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
    ///    - elevations: All semantic tokens of elevations
    ///    - fonts: All semantic tokens of fonts
    ///    - grids: All semantic tokens of grids
    ///    - opacities: All semantic tokens of opacity
    ///    - sizes: All semantic tokens of sizes
    ///    - spaces: All semantic tokens of spaces
    ///    - badge: All component tokens for badge
    ///    - bulletList: All component tokens for bullet list
    ///    - button: All component tokens for button
    ///    - checkbox: All component tokens for checkbox
    ///    - chip: All component tokens for chip
    ///    - controlItem: All component tokens for control item
    ///    - divider: All component tokens for divider
    ///    - inputText: All component tokens for input text
    ///    - link: All component tokens for link
    ///    - listItem: All component tokens for list item
    ///    - radioButton: All component tokens for radio buttons
    ///    - select: All component tokens for select
    ///    - skeleton: All component tokens for skeleton
    ///    - switch: All component tokens for switch
    ///    - tag: All component tokens for tag
    ///    - fontFamily: Set `nil` if system font to use, otherwise use the `FontFamilySemanticToken` you want to apply
    override public init(borders: AllBorderSemanticTokensProvider? = nil,
                         colors: AllColorSemanticTokensProvider? = nil,
                         elevations: AllElevationSemanticTokensProvider? = nil,
                         fonts: AllFontSemanticTokensProvider? = nil,
                         grids: AllGridSemanticTokensProvider? = nil,
                         opacities: AllOpacitySemanticTokensProvider? = nil,
                         sizes: AllSizeSemanticTokensProvider? = nil,
                         spaces: AllSpaceSemanticTokensProvider? = nil,
                         badge: AllBadgeComponentTokensProvider? = nil,
                         bulletList: AllBulletListComponentTokensProvider? = nil,
                         button: AllButtonComponentTokensProvider? = nil,
                         checkbox: AllCheckboxComponentTokensProvider? = nil,
                         chip: AllChipComponentTokensProvider? = nil,
                         controlItem: AllControlItemComponentTokensProvider? = nil,
                         divider: AllDividerComponentTokensProvider? = nil,
                         inputText: AllInputTextComponentTokensProvider? = nil,
                         listItem: AllListItemComponentTokensProvider? = nil,
                         link: AllLinkComponentTokensProvider? = nil,
                         radioButton: AllRadioButtonComponentTokensProvider? = nil,
                         select: AllSelectComponentTokensProvider? = nil,
                         skeleton: AllSkeletonComponentTokensProvider? = nil,
                         switch: AllSwitchComponentTokensProvider? = nil,
                         tag: AllTagComponentTokensProvider? = nil,
                         fontFamily: FontFamilySemanticToken? = nil) {

        let borders = (borders ?? OrangeThemeBorderSemanticTokensProvider())
        let colors = (colors ?? OrangeThemeColorSemanticTokensProvider())
        let elevations = (elevations ?? OrangeThemeElevationSemanticTokensProvider())
        let fonts = (fonts ?? OrangeThemeFontSemanticTokensProvider())
        let grids = (grids ?? OrangeThemeGridSemanticTokensProvider())
        let opacities = (opacities ?? OrangeThemeOpacitySemanticTokensProvider())
        let sizes = (sizes ?? OrangeThemeSizeSemanticTokensProvider())
        let spaces = (spaces ?? OrangeThemeSpaceSemanticTokensProvider())

        let badge = (badge ?? OrangeThemeBadgeComponentTokensProvider(sizes: sizes, borders: borders, spaces: spaces))
        let button = (button ?? OrangeThemeButtonComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces))
        let bulletList = (bulletList ?? OrangeThemeBulletListComponentTokensProvider(spaces: spaces))
        let checkbox = (checkbox ?? OrangeThemeCheckboxComponentTokensProvider(sizes: sizes, borders: borders))
        let chip = (chip ?? OrangeThemeChipComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces))
        let controlItem = (controlItem ?? OrangeThemeControlItemComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces))
        let divider = (divider ?? OrangeThemeDividerComponentTokensProvider(borders: borders))
        let inputText = (inputText ?? OrangeThemeInputTextComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces))
        let link = (link ?? OrangeThemeLinkComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces))
        let listItem = (`listItem` ?? OrangeThemeListItemComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces))
        let radioButton = (radioButton ?? OrangeThemeRadioButtonComponentTokensProvider(sizes: sizes, borders: borders))
        let select = (select ?? OrangeThemeSelectComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces))
        let skeleton = (skeleton ?? OrangeThemeSkeletonComponentTokensProvider(colors: colors))
        let `switch` = (`switch` ?? OrangeThemeSwitchComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, opacities: opacities))
        let tag = (tag ?? OrangeThemeTagComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces))

        super.init(borders: borders,
                   colors: colors,
                   elevations: elevations,
                   fonts: fonts,
                   grids: grids,
                   opacities: opacities,
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
                   tag: tag,
                   fontFamily: fontFamily)
        }

    deinit { }
}
