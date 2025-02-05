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
import OUDSTokensSemantic

import SwiftUI

private struct DesignToolboxBackgroundModifier: ViewModifier {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    let coloredSurface: Bool

    func body(content: Content) -> some View {
        if coloredSurface {
            content.oudsColoredSurface(color: theme.colors.colorSurfaceBrandPrimary.color(for: colorScheme))
        } else {
            content.background(theme.colors.colorBgSecondary.color(for: colorScheme))
        }
    }
}

extension View {
    func designToolboxBackground(onColoredSurface: Bool) -> some View {
        self.modifier(DesignToolboxBackgroundModifier(coloredSurface: onColoredSurface))
    }
}
