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
/// To use this theme, inject it to your view using `OUDSThemeableView` and get it through environement variable.
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
///    // It must inherit from OrangeThemeBorderSemanticTokensProvider (which is instance of AllColorSemanticTokensProvider) or directly from AllColorSemanticTokensProvider
///    let colors = YourOwnColorSemanticTokensProvider()
///
///    let allTheNeededTokensProviders: TokensProviders = [
///         // List all the needed tokens providers
///         // Do not miss any of them as it will crash
///
///         OrangeThemeElevationSemanticTokensProvider(),
///         OrangeThemeFontSemanticTokensProvider(),
///         colors,
///         borders,
///         sizes,
///         spaces,
///         OrangeThemeButtonComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces),
///
///         // Etc.
///    ]
///
///    let yourOwnOrangeTheme = OrangeTheme(tokensProviders: allTheNeededTokensProviders)
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

    /// Constructor of the `OrangeTheme` for the specific subclass `InverseTheme`
    ///
    /// - Parameters:
    ///    - colors: Color semantic tokens provider specific to the `InverseTheme`
    ///    - fontFamily: Set `nil` if system font to use, otherwise use the `FontFamilySemanticToken` you want to apply
    public init(
        colors: AllColorSemanticTokensProvider,
        fontFamily: FontFamilySemanticToken? = nil) {

        let borders = OrangeThemeBorderSemanticTokensProvider()
        let sizes = OrangeThemeSizeSemanticTokensProvider()
        let spaces = OrangeThemeSpaceSemanticTokensProvider()
        let opacities = OrangeThemeOpacitySemanticTokensProvider()

        let tokensProviders: TokensProviders = [

            // Semantic tokens

            colors,
            borders,
            OrangeThemeElevationSemanticTokensProvider(),
            OrangeThemeFontSemanticTokensProvider(),
            OrangeThemeGridSemanticTokensProvider(),
            opacities,
            sizes,
            spaces,

            // Component tokens

            OrangeThemeButtonComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces),
            OrangeThemeLinkComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces),
            OrangeThemeSelectComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces),
            OrangeThemeSkeletonComponentTokensProvider(colors: colors),
            OrangeThemeTagComponentTokensProvider(colors: colors),
            OrangeThemeSwitchComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces),
            OrangeThemeListItemComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces),
            OrangeThemeChipComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces),
            OrangeThemeBreadcrumbComponentTokensProvider(sizes: sizes, spaces: spaces),
            OrangeThemeBulletListComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces),
            OrangeThemeInputTextComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces),
            OrangeThemeBadgeComponentTokensProvider(sizes: sizes),
            OrangeThemeControlItemComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces),
            OrangeThemeCheckboxComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, opacities: opacities),

            // NOTE: Add here new component tokens providers
        ]

        super.init(tokensProviders: tokensProviders, fontFamily: fontFamily)
    }

    /// Initializes the `OrangeTheme`
    ///
    /// - Parameter fontFamily: Set `nil` if system font to use, otherwise use the `FontFamilySemanticToken` you want to apply
    public convenience init(fontFamily: FontFamilySemanticToken? = nil) {

        let borders = OrangeThemeBorderSemanticTokensProvider()
        let colors = OrangeThemeColorSemanticTokensProvider()
        let sizes = OrangeThemeSizeSemanticTokensProvider()
        let spaces = OrangeThemeSpaceSemanticTokensProvider()
        let opacities = OrangeThemeOpacitySemanticTokensProvider()

        let tokensProviders: TokensProviders = [

            // Semantic tokens

            colors,
            borders,
            OrangeThemeElevationSemanticTokensProvider(),
            OrangeThemeFontSemanticTokensProvider(),
            OrangeThemeGridSemanticTokensProvider(),
            opacities,
            sizes,
            spaces,

            // Component tokens

            OrangeThemeButtonComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces),
            OrangeThemeLinkComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces),
            OrangeThemeSelectComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces),
            OrangeThemeSkeletonComponentTokensProvider(colors: colors),
            OrangeThemeTagComponentTokensProvider(colors: colors),
            OrangeThemeSwitchComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces),
            OrangeThemeListItemComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces),
            OrangeThemeChipComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces),
            OrangeThemeBreadcrumbComponentTokensProvider(sizes: sizes, spaces: spaces),
            OrangeThemeBulletListComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces),
            OrangeThemeInputTextComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces),
            OrangeThemeBadgeComponentTokensProvider(sizes: sizes),
            OrangeThemeControlItemComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces),
            OrangeThemeCheckboxComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, opacities: opacities),

            // NOTE: Add here new component tokens providers
        ]

        self.init(tokensProviders: tokensProviders, fontFamily: fontFamily)
    }

    /// Initializes the `OrangeTheme` and lets children classes to user their own tokens implementations
    ///
    /// - Parameters:
    ///    - tokensProviders: All the semantic and component tokens providers
    ///    - fontFamily: Set `nil` if system font to use, otherwise use the `FontFamilySemanticToken` you want to apply
    override public init(tokensProviders: TokensProviders,
                         fontFamily: FontFamilySemanticToken? = nil) {
        super.init(tokensProviders: tokensProviders, fontFamily: fontFamily)
    }

    deinit { }
}
