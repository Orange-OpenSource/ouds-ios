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
import OUDSThemesContract
import OUDSThemesWireframe
import SwiftUI

/// This White Label theme is a specific theme. It has been designed to let users have their own theme to update like a grey label theme, or to keep as is like a white label theme.
///
/// The White Label theme is based on the Wireframe theme which is dedicated to mockups and prototypes.
/// However is is possible to override the semantic tokens of colors, change the tuning and choose the font family to apply.
///
/// To get it:
/// ```swift
///     @Environment(\.theme) var theme
/// ```
///
/// ## Integration
///
/// To use this theme, inject it to your view using `OUDSThemeableView` and get it through environment variable.
///
/// ```swift
///     @main
///     struct YourApp: App {
///         var body: some Scene {
///             WindowGroup {
///                 OUDSThemeableView(theme: WhiteLabelTheme()) {
///                     // Your root view
///                 }
///             }
///         }
///     }
/// ```
///
/// # Theme tuning
///
/// By default the theme uses `Tuning.Wireframe`, but it can be changed.
///
/// To apply the tuning:
///
/// ```swift
///     // Define your theme tuning, here everything rounded
///     let tuning = Tuning(hasRoundedButtons: true,
///                         hasRoundedTextInputs: true,
///                         hasRoundedAlertMessages: true,
///                         hasRoundedProgressIndicators: true,
///                         hasRoundedListItems: true)
///
///     // Apply it to your theme
///     let theme = WhiteLabelTheme(tuning: tuning)
/// ```
///
/// ## Tokens versions
///
/// See the tokens version from `WireframeTheme`.
///
/// - Since: 3.1.0
open class WhiteLabelTheme: WireframeTheme, @unchecked Sendable {

    // MARK: - Initializers

    /// Constructor of the `WhiteLabelTheme` theme, based on `WireframeTheme` but with small flexibilities.
    ///
    /// - Parameters:
    ///    - colors: The provider of tokens of colors, where some tokens can be overriden. If nil, `WireframeThemeColorSemanticTokensProvider` will be used.
    ///    - colorsCharts: All tokens of colors to apply for charts and dataviz. Default set to `nil`.
    ///    - colorsDecorative: All tokens of decorative colors. Default set to `nil`.
    ///    - name: A name to give to the theme, used for debugging for example. If nil, "WhiteLabel" will be used.
    ///    - fontFamily: The font family to apply for this theme. If empty, the system will use instead the one from the device.
    ///    - tuning: The `Tuning` to apply to the theme, e.g. to define rounded corners. If nil, `Tuning.Wireframe` will be used.
    public init(colors: AllColorSemanticTokensProvider? = nil,
                colorsCharts: AllColorChartSemanticTokensProvider? = nil,
                colorsDecorative: AllColorDecorativeSemanticTokensProvider? = nil,
                name: String? = nil,
                fontFamily: String = "",
                tuning: Tuning? = nil)
    {
        let colors = (colors ?? WireframeThemeColorSemanticTokensProvider())
        let name = (name ?? "WhiteLabel")
        let tuning = (tuning ?? Tuning.Wireframe)

        let fonts = WhiteLabelThemeFontSemanticTokensProvider(fontFamily: fontFamily)
        super.init(colors: colors,
                   colorsCharts: colorsCharts,
                   colorsDecorative: colorsDecorative,
                   fonts: fonts,
                   name: name,
                   fontFamily: fontFamily,
                   tuning: tuning)
    }

    deinit {}
}
