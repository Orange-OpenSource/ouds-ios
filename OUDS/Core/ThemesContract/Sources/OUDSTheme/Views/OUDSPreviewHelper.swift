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

// MARK: - Preview Helper

/// A helper function to wrap views with OUDS theme for use in Xcode previews.
///
/// This function simplifies the use of OUDS components in Xcode `#Preview` macros by
/// automatically wrapping your view with `OUDSThemeableView` and injecting the specified theme.
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
/// You can use the helper function:
/// ```swift
/// #Preview {
///     oudsPreview(theme: OrangeTheme()) {
///         YourView()
///     }
/// }
/// ```
///
/// Or using the default Orange theme:
/// ```swift
/// #Preview {
///     oudsPreview {
///         YourView()
///     }
/// }
/// ```
///
/// - Parameters:
///   - theme: The OUDS theme to apply. Must be a concrete instance of `OUDSTheme`.
///   - content: A view builder that provides the content to preview.
/// - Returns: A view wrapped with the OUDS theme.
///
/// - Since: 0.14.0
/// - Note: This function requires one of the OUDS theme modules to be imported 
///         (e.g., `OUDSThemesOrange`, `OUDSThemesSosh`, etc.) to provide a concrete theme instance.
public func oudsPreview<Content: View>(
    theme: OUDSTheme,
    @ViewBuilder content: @escaping () -> Content
) -> some View {
    OUDSThemeableView(theme: theme, content: content)
}

// MARK: - View Extension for Preview

/// Extension to add OUDS theme support to any view, useful for previews.
///
/// This extension provides a convenient modifier to wrap any view with an OUDS theme,
/// making it easy to use OUDS components in Xcode previews.
///
/// ## Usage
///
/// ```swift
/// #Preview {
///     YourView()
///         .withOUDS(theme: OrangeTheme())
/// }
/// ```
///
/// - Since: 0.14.0
public extension View {
    
    /// Wraps the view with an OUDS theme, enabling the use of OUDS components in previews.
    ///
    /// - Parameter theme: The OUDS theme to apply to this view and its descendants.
    /// - Returns: A view wrapped with the OUDS theme environment.
    func withOUDS(theme: OUDSTheme) -> some View {
        OUDSThemeableView(theme: theme) {
            self
        }
    }
}
