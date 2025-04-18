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
import SwiftUI

/// Use the background modifier to place a view on a colored surface.
/// Today, in the design kit application the color of the surface is based on the sementic token
/// named: _color/surface/brand/primary_
struct DesignToolboxColoredSurfaceModifier: ViewModifier {

    @Environment(\.theme) private var theme

    let coloredSurface: Bool

    func body(content: Content) -> some View {
        if coloredSurface {
            content.oudsColoredSurface(theme.colorModes.modeOnBrandPrimary)
        } else {
            content.oudsBackground(theme.colors.colorBgSecondary)
        }
    }
}

extension View {
    func designToolboxColoredSurface(_ coloredSurface: Bool) -> some View {
        self.modifier(DesignToolboxColoredSurfaceModifier(coloredSurface: coloredSurface))
    }
}
