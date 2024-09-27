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
import OUDS
import OUDSTokensSemantic
import OUDSTokensRaw

// MARK: - Raw tokens

struct ElevationTokenPage: View {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            if colorScheme == .light {
                illustration(for: theme.elevationFocus.light, named: "elevationFocusLight")
                illustration(for: theme.elevationRaised.light, named: "elevationRaisedLight")
                illustration(for: theme.elevationStickyNavigationScrolled.light, named: "elevationStickyNavigationScrolledLight")
                illustration(for: theme.elevationOverlayDefault.light, named: "elevationOverlayDefaultLight")
                illustration(for: theme.elevationStickyEmphasized.light, named: "elevationStickyEmphasizedLight")
                illustration(for: theme.elevationDrag.light, named: "elevationDragLight")
                illustration(for: theme.elevationOverlayEmphasized.light, named: "elevationOverlayEmphasizedLight")
            } else { // colorScheme == .dark
                illustration(for: theme.elevationFocus.dark, named: "elevationFocusDark")
                illustration(for: theme.elevationRaised.dark, named: "elevationRaisedDark")
                illustration(for: theme.elevationStickyNavigationScrolled.dark, named: "elevationStickyNavigationScrolledDark")
                illustration(for: theme.elevationOverlayDefault.dark, named: "elevationOverlayDefaultDark")
                illustration(for: theme.elevationStickyEmphasized.dark, named: "elevationStickyEmphasizedDark")
                illustration(for: theme.elevationDrag.dark, named: "elevationDragDark")
                illustration(for: theme.elevationOverlayEmphasized.dark, named: "elevationOverlayEmphasizedDark")
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal, theme.spaceFixedMedium)
    }

    // MARK: Helpers

    private func illustration(for elevation: ElevationCompositeRawToken, named: String) -> some View {
        HStack(alignment: .center, spacing: theme.spaceFixedMedium) {
            elevationRectangle(elevation: elevation)

            VStack(alignment: .leading) {
                Text(named).bold()
                Text("x: \(elevation.x, specifier: "%.2f"), ")
                + Text("y: \(elevation.y, specifier: "%.2f"), ")
                + Text("radius: \(elevation.radius, specifier: "%.2f")")

                Text("Color: \(elevation.color)")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(.vertical, theme.spaceFixedShorter)
    }

    private func elevationRectangle(elevation: ElevationCompositeRawToken) -> some View {
        Rectangle()
            .frame(width: theme.sizeIconDecorativeTallest, height: theme.sizeIconDecorativeTallest)
            .foregroundColor(foregroundColor)
            .shadow(elevation: elevation)
    }

    private var foregroundColor: Color {
        switch colorScheme {
        case .light: "#f4f4f4".color
        case .dark: "#272727".color
        @unknown default:
            fatalError()
        }
    }
}
