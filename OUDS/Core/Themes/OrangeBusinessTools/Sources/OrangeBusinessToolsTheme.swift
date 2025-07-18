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
import SwiftUI

// swiftlint:disable function_body_length
// swiftlint:disable line_length

/// This is an override of the default basic `OUDSTheme` for the **Orange Business Tools theme**
/// It can override any properties from its superclass, and but cannot be derived ; this is not allowed.
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
    public init() {
        let borders = OrangeBusinessToolsThemeBorderSemanticTokensProvider()
        let colors = OrangeBusinessToolsThemeColorSemanticTokensProvider()
        let colorModes = OrangeBusinessToolsThemeColorModeSemanticTokensProvider(colors: colors)
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
        let inputText = OrangeBusinessToolsThemeInputTextComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces)
        let link = OrangeBusinessToolsThemeLinkComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces)
        let listItem = OrangeBusinessToolsThemeListItemComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces)
        let radioButton = OrangeBusinessToolsThemeRadioButtonComponentTokensProvider(sizes: sizes, borders: borders)
        let select = OrangeBusinessToolsThemeSelectComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces)
        let skeleton = OrangeBusinessToolsThemeSkeletonComponentTokensProvider(colors: colors)
        let `switch` = OrangeBusinessToolsThemeSwitchComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, opacities: opacities, dimensions: dimensions)
        let tag = OrangeBusinessToolsThemeTagComponentTokensProvider(sizes: sizes, borders: borders, spaces: spaces, dimensions: dimensions)

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
                   tag: tag,
                   resourcesBundle: Bundle.OrangeBusinessToolsTheme,
                   fontFamily: OrangeBusinessToolsBrandFontRawTokens.fontFamilyDefault)

        registerFonts()
    }

    deinit {}

    /// Fonts are defined in Resources/Fonts in TTF files
    func registerFonts() {
        if !OrangeBusinessToolsTheme.fontsAlreadyRegistered {
            let fonts = Bundle.module.urls(forResourcesWithExtension: "ttf", subdirectory: nil)
            fonts?.forEach { CTFontManagerRegisterFontsForURL($0 as CFURL, .process, nil) }
            OrangeBusinessToolsTheme.fontsAlreadyRegistered = true
        }
    }
}

// swiftlint:enable function_body_length
// swiftlint:enable line_length

// MARK: - Extension of Bundle

extension Bundle {

    /// The OrangeBusinessTools theme bundle, useful to find resources
    static let OrangeBusinessToolsTheme = Bundle.module
}
