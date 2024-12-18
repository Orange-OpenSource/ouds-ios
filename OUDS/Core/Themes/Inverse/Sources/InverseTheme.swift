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

import OUDSFoundations
import OUDSThemesOrange
import OUDSTokensSemantic

/// This is an override of the default basic `OrangeTheme` with some inverted colors.
/// It can overrides any properties from its superclass, but is not derivable.
///
/// To use this theme, inject it to your view using `OUDSThemeableView` and get it through environement variable.
///
/// ```swift
///     import OUDS                 // To get OUDSThemeableView
///     import OUDSThemeInverse     // To get InverseTheme
///     import SwiftUI
///
///     @main
///     struct YourApp: App {
///         var body: some Scene {
///             WindowGroup {
///                 OUDSThemeableView(theme: InverseTheme()) {
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
public final class InverseTheme: OrangeTheme, @unchecked Sendable {

    // MARK: - Initializers

    /// Initializes the `InverseTheme`
    public init() {
        OUDSLogger.debug("Init of InverseTheme")
        super.init(colors: InverseThemeColorSemanticTokensProvider())
    }

    deinit { }
}
