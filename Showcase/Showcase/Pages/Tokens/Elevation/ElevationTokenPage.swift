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
//let raised = ElevationCompositeRawToken(x: 0, y: 1, blur: 2, color: ColorRawTokens.colorTransparentBlack500)
//let overlayDefault = ElevationCompositeRawToken(x: 0, y: 2, blur: 3, color: ColorRawTokens.colorTransparentBlack400)
//let allSticky = ElevationCompositeRawToken(x: 0, y: 4, blur: 4, color: ColorRawTokens.colorTransparentBlack300)
//let drag = ElevationCompositeRawToken(x: 0, y: 4, blur: 4, color: ColorRawTokens.colorTransparentBlack500)
//let overlayEmphasized = ElevationCompositeRawToken(x: 0, y: 12, blur: 12, color: ColorRawTokens.colorTransparentBlack300)
//

struct ElevationTokenPage: View {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // ==========
    // MARK: Body
    // ==========

    var body: some View {
        VStack(alignment: .leading, spacing: 40) {
            colorScheme == .light ?
            illustration(for: theme.elevationFocusLight, named: "elevationFocusLight") :
            illustration(for: theme.elevationFocusDark, named: "elevationFocusDark")

            colorScheme == .light ?
            illustration(for: theme.elevationRaisedLight, named: "elevationRaisedLight") :
            illustration(for: theme.elevationRaisedDark, named: "elevationRaisedDark")

            colorScheme == .light ?
            illustration(for: theme.elevationStickyNavigationScrolledLight, named: "elevationStickyNavigationScrolledLight") :
            illustration(for: theme.elevationStickyNavigationScrolledDark, named: "elevationStickyNavigationScrolledDark")

            colorScheme == .light ?
            illustration(for: theme.elevationOverlayDefaultLight, named: "elevationOverlayDefaultLight") :
            illustration(for: theme.elevationOverlayDefaultDark, named: "elevationOverlayDefaultDark")

            colorScheme == .light ?
            illustration(for: theme.elevationStickyEmphasizedLight, named: "elevationStickyEmphasizedLight") :
            illustration(for: theme.elevationStickyEmphasizedDark, named: "elevationStickyEmphasizedDark")

            colorScheme == .light ?
            illustration(for: theme.elevationDragLight, named: "elevationDragLight") :
            illustration(for: theme.elevationDragDark, named: "elevationDragDark")

            colorScheme == .light ?
            illustration(for: theme.elevationOverlayEmphasizedLight, named: "elevationOverlayEmphasizedLight") :
            illustration(for: theme.elevationOverlayEmphasizedDark, named: "elevationOverlayEmphasizedDark")
        }
        .frame(maxWidth: .infinity)
        .padding(.all, 16)
    }

    // ============
    // MARK: Helper
    // ============

    private func illustration(for elevation: ElevationCompositeSemanticToken, named: String) -> some View {
        HStack(alignment: .center) {
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
    }

    private func elevationRectangle(elevation: ElevationCompositeSemanticToken) -> some View {
        Rectangle()
            .frame(width: 64, height: 64)
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
