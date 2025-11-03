//
// Software Name: OUDSThemesContract iOS
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

import OUDSTokensSemantic
import SwiftUI

// MARK: - Extension of View

extension View {

    /// Applies a **foreground style** on the current view by using the given tokens of colors.
    /// Uses the current color scheme so as to load the suitable color to apply in the end
    /// - Parameter color: The token from which the color to use must be extracted
    /// - Returns: The modified `View`
    public func oudsForegroundStyle(_ color: MultipleColorSemanticTokens) -> some View {
        modifier(ColorSchemeBasedForegroundStyle(color: color))
    }

    /// Applies a **foreground color** on the current view by using the given tokens of colors.
    /// Uses the current color scheme so as to load the suitable color to apply in the end
    /// - Parameter color: The token from which the color to use must be extracted
    /// - Returns: The modified `View`
    public func oudsForegroundColor(_ color: MultipleColorSemanticTokens) -> some View {
        modifier(ColorSchemeBasedForegroundColor(color: color))
    }

    /// Applies a **background** on the current view by using the given tokens of colors.
    /// Uses the current color scheme so as to load the suitable color to apply in the end
    /// - Parameter color: The token from which the color to use must be extracted
    /// - Returns: The modified `View`
    public func oudsBackground(_ color: MultipleColorSemanticTokens) -> some View {
        modifier(ColorSchemeBasedBackgroundColor(color: color))
    }

    /// Applies an **accent color** on the current view by using the given tokens of colors.
    /// Uses the current color scheme so as to load the suitable color to apply in the end
    /// - Parameter color: The token from which the color to use must be extracted
    /// - Returns: The modified `View`
    public func oudsAccentColor(_ color: MultipleColorSemanticTokens) -> some View {
        modifier(ColorSchemeBasedAccentColor(color: color))
    }
}

// MARK: - Color Scheme Based Foreground Style

/// Depending to the current color scheme, will load the expected `ColorSemanticToken` from the given
/// `MultipleColorSemanticTokens` object and applies it as **foreground style** on the calling view.
private struct ColorSchemeBasedForegroundStyle: ViewModifier {

    let color: MultipleColorSemanticTokens

    @Environment(\.colorScheme) private var colorScheme

    func body(content: Content) -> some View {
        content.foregroundStyle(color.color(for: colorScheme))
    }
}

// MARK: - Color Scheme Based Foreground Color

/// Depending to the current color scheme, will load the expected `ColorSemanticToken` from the given
/// `MultipleColorSemanticTokens` object and applies it as **foreground color** on the calling view.
private struct ColorSchemeBasedForegroundColor: ViewModifier {

    let color: MultipleColorSemanticTokens

    @Environment(\.colorScheme) private var colorScheme

    func body(content: Content) -> some View {
        content.foregroundColor(color.color(for: colorScheme))
    }
}

// MARK: - Color Scheme Based Background Color

/// Depending to the current color scheme, will load the expected `ColorSemanticToken` from the given
/// `MultipleColorSemanticTokens` object and applies it as **background color** on the calling view.
private struct ColorSchemeBasedBackgroundColor: ViewModifier {

    let color: MultipleColorSemanticTokens

    @Environment(\.colorScheme) private var colorScheme

    func body(content: Content) -> some View {
        content.background(color.color(for: colorScheme))
    }
}

// MARK: - Color Scheme Based Accent Color

/// Depending to the current color scheme, will load the expected `ColorSemanticToken` from the given
/// `MultipleColorSemanticTokens` object and applies it as **accent color** on the calling view.
private struct ColorSchemeBasedAccentColor: ViewModifier {

    let color: MultipleColorSemanticTokens

    @Environment(\.colorScheme) private var colorScheme

    func body(content: Content) -> some View {
        content.accentColor(color.color(for: colorScheme))
    }
}
