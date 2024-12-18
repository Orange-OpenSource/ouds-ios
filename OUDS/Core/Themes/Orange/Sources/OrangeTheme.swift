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
/// Then get it:
/// ```swift
///     import OUDS
///
///     @Environment(\.theme) var theme
/// ```
open class OrangeTheme: OUDSTheme, @unchecked Sendable {

    // MARK: - Initializers

    /// Initializes the `OrangeTheme` with its `OrangeThemeColorSemanticTokensProvider` for colors token management
    public init() {
        OUDSLogger.debug("Init of OrangeTheme")
        super.init(colors: OrangeThemeColorSemanticTokensProvider())
    }

    /// Initializes the `OrangeTheme` and lets children classes to user their own tokens implementations.
    /// This constructor is defined for `InverseTheme`.
    /// - Parameters:
    ///    - colors: An object providing all the color semantic tokens, as `AllColorSemanticTokens` implementation
    public init(colors: AllColorSemanticTokensProvider) {
        // Not init log here as constructor used for `InverseTheme` and not for `OrangeTheme`
        super.init(colors: colors)
    }

    /// Initializes the `OrangeTheme` and lets children classes to user their own tokens implementations
    /// - Parameters:
    ///    - colors: An object providing all the color semantic tokens, as `AllColorSemanticTokens` implementation, default set to ``OrangeThemeColorSemanticTokensProvider``
    ///    - borders: An object providing all the border semantic tokens, as `AllBorderSemanticTokensProvider` implementation, default set to `OUDSBorderSemanticTokensProvider``
    ///    - elevations: An object providing all the elevation semantic tokens, by default `AllElevationSemanticTokensProvider`, default set to `OrangeThemeElevationSemanticTokensProvider`
    ///    - fonts: An object providing all the font semantic tokens, by default `AllFontemanticTokens`, default set to `OrangeThemeFontSemanticTokensProvider`
    ///    - grids: An object providing all the grid semantic tokens, by default `AllGridSemanticTokensProvider`, default set to `OrangeThemeGridSemanticTokensProvider`
    ///    - opacities: An object providing all the opacity semantic tokens, as `AllOpacitySemanticTokensProvider` implementation, default set to `OrangeThemeOpacitySemanticTokensProvider`
    ///    - sizes: An object providing all the size semantic tokens, as `AllSizeSemanticTokensProvider` implementation, default set to `OrangeThemeSizeSemanticTokensProvider`
    ///    - spaces: An object providing all the space semantic tokens, as `AllSpaceSemanticTokensProvider` implementation, default set to `OUDSSpaceSemanticTokensProvider`
    override public init(colors: AllColorSemanticTokensProvider = OrangeThemeColorSemanticTokensProvider(),
                         borders: AllBorderSemanticTokensProvider = OrangeThemeBorderSemanticTokensProvider(),
                         elevations: AllElevationSemanticTokensProvider = OrangeThemeElevationSemanticTokensProvider(),
                         fonts: AllFontSemanticTokensProvider = OrangeThemeFontSemanticTokensProvider(),
                         grids: AllGridSemanticTokensProvider = OrangeThemeGridSemanticTokensProvider(),
                         opacities: AllOpacitySemanticTokensProvider = OrangeThemeOpacitySemanticTokensProvider(),
                         sizes: AllSizeSemanticTokensProvider = OrangeThemeSizeSemanticTokensProvider(),
                         spaces: AllSpaceSemanticTokensProvider = OUDSSpaceSemanticTokensProvider()) {
        OUDSLogger.debug("Init of OrangeTheme")
        super.init(colors: colors,
                   borders: borders,
                   elevations: elevations,
                   fonts: fonts,
                   grids: grids,
                   opacities: opacities,
                   sizes: sizes,
                   spaces: spaces)
    }

    deinit { }
}
