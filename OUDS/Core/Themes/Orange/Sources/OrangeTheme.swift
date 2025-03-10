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
    ///    - colors: All semantic tokens of colors
    ///    - borders: All semantic tokens of borders
    ///    - elevations: All semantic tokens of elevations
    ///    - fonts: All semantic tokens of fonts
    ///    - grids: All semantic tokens of grids
    ///    - opacities: All semantic tokens of opacity
    ///    - sizes: All semantic tokens of sizes
    ///    - spaces: All semantic tokens of spaces
    ///    - button: All component tokens for button
    ///    - link: All component tokens for link
    ///    - select: All component tokens for select
    ///    - skeleton: All component tokens for skeleton
    ///    - tag: All component tokens for tag
    ///    - switch: All component tokens for switch
    ///    - listItem: All component tokens for list item
    ///    - chip: All component tokens for chip
    ///    - breadcrumb: All component tokens for breadcrumb
    ///    - bulletList: All component tokens for bullet list
    ///    - inputText: All component tokens for input text
    ///    - badge: All component tokens for badge
    ///    - controlItem: All component tokens for control item
    ///    - checkbox: All component tokens for checkbox
    ///    - fontFamily: Set `nil` if system font to use, otherwise use the `FontFamilySemanticToken` you want to apply
    override public init(
        colors: AllColorSemanticTokensProvider? = nil,
        borders: AllBorderSemanticTokensProvider? = nil,
        elevations: AllElevationSemanticTokensProvider? = nil,
        fonts: AllFontSemanticTokensProvider? = nil,
        grids: AllGridSemanticTokensProvider? = nil,
        opacities: AllOpacitySemanticTokensProvider? = nil,
        sizes: AllSizeSemanticTokensProvider? = nil,
        spaces: AllSpaceSemanticTokensProvider? = nil,
        button: AllButtonComponentTokensProvider? = nil,
        link: AllLinkComponentTokensProvider? = nil,
        select: AllSelectComponentTokensProvider? = nil,
        skeleton: AllSkeletonComponentTokensProvider? = nil,
        tag: AllTagComponentTokensProvider? = nil,
        switch: AllSwitchComponentTokensProvider? = nil,
        listItem: AllListItemComponentTokensProvider? = nil,
        chip: AllChipComponentTokensProvider? = nil,
        breadcrumb: AllBreadcrumbComponentTokensProvider? = nil,
        bulletList: AllBulletListComponentTokensProvider? = nil,
        inputText: AllInputTextComponentTokensProvider? = nil,
        badge: AllBadgeComponentTokensProvider? = nil,
        controlItem: AllControlItemComponentTokensProvider? = nil,
        checkbox: AllCheckboxComponentTokensProvider? = nil,
        fontFamily: FontFamilySemanticToken? = nil) {

            let colors = (colors ?? OrangeThemeColorSemanticTokensProvider())
            let borders = (borders ?? OrangeThemeBorderSemanticTokensProvider())
            let elevations = (elevations ?? OrangeThemeElevationSemanticTokensProvider())
            let fonts = (fonts ?? OrangeThemeFontSemanticTokensProvider())
            let grids = (grids ?? OrangeThemeGridSemanticTokensProvider())
            let opacities = (opacities ?? OrangeThemeOpacitySemanticTokensProvider())
            let sizes = (sizes ?? OrangeThemeSizeSemanticTokensProvider())
            let spaces = (spaces ?? OrangeThemeSpaceSemanticTokensProvider())

            let button = (button ?? OrangeThemeButtonComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces))
            let link = (link ?? OrangeThemeLinkComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces))
            let select = (select ?? OrangeThemeSelectComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces))
            let skeleton = (skeleton ?? OrangeThemeSkeletonComponentTokensProvider(colors: colors))
            let tag = (tag ?? OrangeThemeTagComponentTokensProvider(colors: colors))
            let `switch` = (`switch` ?? OrangeThemeSwitchComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces))
            let listItem = (`listItem` ?? OrangeThemeListItemComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces))
            let chip = (chip ?? OrangeThemeChipComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces))
            let breadcrumb = (breadcrumb ?? OrangeThemeBreadcrumbComponentTokensProvider(sizes: sizes, spaces: spaces))
            let bulletList = (bulletList ?? OrangeThemeBulletListComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces))
            let inputText = (inputText ?? OrangeThemeInputTextComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces))
            let badge = (badge ?? OrangeThemeBadgeComponentTokensProvider(sizes: sizes, borders: borders, spaces: spaces))
            let controlItem = (controlItem ?? OrangeThemeControlItemComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces))
            let checkbox = (checkbox ?? OrangeThemeCheckboxComponentTokensProvider(sizes: sizes, borders: borders))

            super.init(colors: colors,
                       borders: borders,
                       elevations: elevations,
                       fonts: fonts,
                       grids: grids,
                       opacities: opacities,
                       sizes: sizes,
                       spaces: spaces,
                       button: button,
                       link: link,
                       select: select,
                       skeleton: skeleton,
                       tag: tag,
                       switch: `switch`,
                       listItem: listItem,
                       chip: chip,
                       breadcrumb: breadcrumb,
                       bulletList: bulletList,
                       inputText: inputText,
                       badge: badge,
                       controlItem: controlItem,
                       checkbox: checkbox,
                       fontFamily: fontFamily)
        }

    deinit { }
}
