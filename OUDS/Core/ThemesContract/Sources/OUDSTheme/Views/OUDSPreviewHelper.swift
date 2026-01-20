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

import SwiftUI

// MARK: - OUDS Preview Macro

/// A macro to simplify the use of OUDS components in Xcode previews.
///
/// This macro wraps your preview content in an `OUDSThemeableView` with the specified theme,
/// eliminating boilerplate and ensuring proper theme injection.
///
/// ## Usage
///
/// Instead of manually wrapping your preview content:
/// ```swift
/// #Preview {
///     OUDSThemeableView(theme: OrangeTheme()) {
///         YourView()
///     }
/// }
/// ```
///
/// You can use the `#OUDSPreview` macro:
/// ```swift
/// #Preview {
///     #OUDSPreview(theme: OrangeTheme()) {
///         YourView()
///     }
/// }
/// ```
///
/// The macro automatically expands to wrap your view in `OUDSThemeableView` with the theme.
///
/// - Parameters:
///   - theme: The OUDS theme to apply. Must be a concrete instance of `OUDSTheme`.
///   - content: A trailing closure containing the view content to preview.
///
/// - Returns: A view wrapped with the OUDS theme environment.
///
/// - Since: 0.14.0
/// - Note: This macro requires one of the OUDS theme modules to be imported
///         (e.g., `OUDSThemesOrange`, `OUDSThemesSosh`, etc.) to provide a concrete theme instance.
@freestanding(expression)
public macro OUDSPreview<Content>(
    theme: OUDSTheme,
    @ViewBuilder content: () -> Content
) -> some View = #externalMacro(module: "OUDSMacros", type: "OUDSPreviewMacro")
