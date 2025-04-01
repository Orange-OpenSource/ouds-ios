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

import OUDSTokensRaw
import OUDSTokensSemantic
import SwiftUI

// MARK: - Extension of View

extension View {

    /// Wraps the *SwiftUI* `shadow(color:radius:x:y)` method so as to use as `radius` value
    /// the computed `radius` value of the  `MultipleElevationCompositeRawTokens` to use.
    /// This token will be choosen from the color scheme in use.
    ///
    /// - Parameter elevation: The token to give for the shadow / elevation effect depending to the color scheme
    /// - Returns `View`: The current `View` with the shadow / elevation effect
    public func oudsShadow(_ elevation: MultipleElevationCompositeRawTokens) -> some View {
        self.modifier(ColorSchemeBasedElevationViewModifier(elevation: elevation))
    }
}

// MARK: - Color Scheme Based Elevation View Modifier

/// Depending to the current color scheme, will load the expected `ElevationCompositeRawToken` from the given
/// `MultipleElevationCompositeRawTokens` object and applies its values to draw a shadow effect.
private struct ColorSchemeBasedElevationViewModifier: ViewModifier {

    let elevation: MultipleElevationCompositeRawTokens

    private var colorSchemeBasedElevation: ElevationCompositeRawToken {
        elevation.elevation(for: colorScheme)
    }

    @Environment(\.colorScheme) private var colorScheme

    func body(content: Content) -> some View {
        content.shadow(color: colorSchemeBasedElevation.color.color,
                       radius: colorSchemeBasedElevation.radius,
                       x: CGFloat(colorSchemeBasedElevation.x),
                       y: CGFloat(colorSchemeBasedElevation.y))
    }
}
