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

    /// Initializes the `OrangeTheme` with its `OrangeThemeColorSemanticTokensWrapper` for colors token management
    public init() {
        OUDSLogger.debug("Init of OrangeTheme")
        super.init(colors: OrangeThemeColorSemanticTokensWrapper())
    }

    /// Initializes the `OrangeTheme` and lets children classes to user their own tokens implementations.
    /// This constructor is defined for `InverseTheme`.
    /// - Parameters:
    ///    - colors: An object providing all the color semantic tokens, as `AllColorSemanticTokens` implementation
    public init(colors: AllColorSemanticTokens) {
        // Not init log here as constructor used for `InverseTheme` and not for `OrangeTheme`
        super.init(colors: colors)
    }

    /// Initializes the `OrangeTheme` and lets children classes to user their own tokens implementations
    /// - Parameters:
    ///    - colors: An object providing all the color semantic tokens, as `AllColorSemanticTokens` implementation, default set to `OrangeThemeColorSemanticTokensWrapper`
    ///    - borders: An object providing all the border semantic tokens, as `BorderSemanticTokens` implementation, default set to `OUDSBorderSemanticTokensProvider`
    ///    - elevations: An object providing all the elevation semantic tokens, by default `AllElevationSemanticTokens`, default set to `OUDSElevationSemanticTokensProvider`
    ///    - fonts: An object providing all the font semantic tokens, by default `AllFontemanticTokens`, default set to `OUDSFontSemanticTokensProvider`
    ///    - grids: An object providing all the grid semantic tokens, by default `AllGridSemanticTokens`, default set to `OUDSGridSemanticTokensProvider`
    ///    - opacities: An object providing all the opacity semantic tokens, as `OpacitySemanticTokens` implementation, default set to `OUDSOpacitySemanticTokensProvider`
    ///    - sizes: An object providing all the size semantic tokens, as `AllSizeSemanticTokens` implementation, default set to `OUDSSizeSemanticTokensWrapper`
    ///    - spaces: An object providing all the space semantic tokens, as `AllSpaceSemanticTokens` implementation, default set to `OUDSSpaceSemanticTokensWrapper`
    override public init(colors: AllColorSemanticTokens = OrangeThemeColorSemanticTokensWrapper(),
                         borders: AllBorderSemanticTokens = OUDSBorderSemanticTokensProvider(),
                         elevations: AllElevationSemanticTokens = OUDSElevationSemanticTokensProvider(),
                         fonts: AllFontSemanticTokens = OUDSFontSemanticTokensProvider(),
                         grids: AllGridSemanticTokens = OUDSGridSemanticTokensProvider(),
                         opacities: AllOpacitySemanticTokens = OUDSOpacitySemanticTokensProvider(),
                         sizes: AllSizeSemanticTokens = OUDSSizeSemanticTokensWrapper(),
                         spaces: AllSpaceSemanticTokens = OUDSSpaceSemanticTokensWrapper()) {
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
