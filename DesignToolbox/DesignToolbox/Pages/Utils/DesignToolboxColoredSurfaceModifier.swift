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
import SwiftUI

// MARK: - Design Toolbox Colored Surface Modifier

/// Use the background modifier to place a view on a colored surface.
/// Defines a debug flag to display in logs some warnigns about WCAG 2.1 contrast ratios made in components definitions.
struct DesignToolboxColoredSurfaceModifier: ViewModifier {

    @Environment(\.theme) private var theme

    let coloredSurface: Bool

    func body(content: Content) -> some View {
        if coloredSurface {
            content
                .oudsColoredSurface(theme.colorModes.modeOnBrandPrimary)
                .modifier(DebugWCAG21RatiosModifier())
        } else {
            content
                .oudsBackground(theme.colors.colorBgSecondary)
        }
    }
}

extension View {
    func designToolboxColoredSurface(_ coloredSurface: Bool) -> some View {
        self.modifier(DesignToolboxColoredSurfaceModifier(coloredSurface: coloredSurface))
    }
}

// MARK: - Debug WCAG 2.1 Ratios Modifier

struct DebugWCAG21RatiosModifier: ViewModifier {

    func body(content: Content) -> some View {
        content
            .onAppear {
                OUDSWCAG21Ratio.oudsDebugWCAG21Colors = true
            }
            .onDisappear {
                OUDSWCAG21Ratio.oudsDebugWCAG21Colors = false
            }
    }
}
