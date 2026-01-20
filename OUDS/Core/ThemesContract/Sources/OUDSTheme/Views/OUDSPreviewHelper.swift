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

/// A macro to create Xcode previews with OUDS theme support.
///
/// This macro replaces the standard `#Preview` macro and automatically wraps your preview
/// content in an `OUDSThemeableView` with the specified theme, eliminating boilerplate
/// and ensuring proper theme injection.
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
/// You can use the `#OUDSPreview` macro directly:
/// ```swift
/// #OUDSPreview(theme: OrangeTheme()) {
///     YourView()
/// }
/// ```
///
/// The macro automatically expands to create a complete preview declaration with theme support.
///
/// - Parameters:
///   - theme: The OUDS theme to apply. Must be a concrete instance of `OUDSTheme`.
///   - content: A trailing closure containing the view content to preview.
///
/// - Since: 0.14.0
/// - Note: This macro requires one of the OUDS theme modules to be imported
///         (e.g., `OUDSThemesOrange`, `OUDSThemesSosh`, etc.) to provide a concrete theme instance.
@freestanding(declaration)
public macro OUDSPreview<Content>(
    theme: OUDSTheme,
    @ViewBuilder content: () -> Content
) = #externalMacro(module: "OUDSMacros", type: "OUDSPreviewMacro")
