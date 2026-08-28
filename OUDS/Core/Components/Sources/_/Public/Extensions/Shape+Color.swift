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

import OUDSTokensSemantic
import SwiftUI

// MARK: - Extension of Shape

extension Shape {

    /// Fills the shape with the color resolved from the given token, respecting the current color scheme.
    ///
    /// This helper avoids manually calling `color(for:)` on a `MultipleColorSemanticToken`.
    /// The color scheme is read from the environment so the correct light or dark variant
    /// is automatically applied.
    ///
    /// ```swift
    /// @Environment(\.theme) private var theme
    ///
    /// // Fill a shape with a token-based color
    /// Circle()
    ///     .fill(theme.colors.actionEnabled)
    ///
    /// // Fill with a custom fill style
    /// RoundedRectangle(cornerRadius: 8)
    ///     .fill(theme.colors.bgPrimary, style: FillStyle(eoFill: true))
    /// ```
    ///
    /// - Parameters:
    ///   - color: The token from which the fill color must be extracted
    ///   - style: The style options for filling the shape (default: `FillStyle()`)
    /// - Returns: A view with the shape filled with the resolved color
    public func fill(_ color: MultipleColorSemanticToken, style: FillStyle = FillStyle()) -> some View {
        ColorSchemeBasedShapeFill(shape: self, color: color, style: style)
    }
}

// MARK: - Color Scheme Based Shape Fill

/// Depending to the current color scheme, will load the expected `ColorSemanticToken` from the given
/// `MultipleColorSemanticToken` object and applies it as **fill color** on the calling `Shape`.
private struct ColorSchemeBasedShapeFill<S: Shape>: View {

    let shape: S
    let color: MultipleColorSemanticToken
    let style: FillStyle

    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        shape.fill(color.color(for: colorScheme), style: style)
    }
}
