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
import OUDSTokensRaw
import OUDSTokensSemantic

// MARK: - Elevation Token Page

struct ElevationTokenPage: View {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            ForEach(NamedElevation.allCases, id: \.rawValue) { elevationName in
                illustration(for: elevationName)
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal, theme.spaceFixedMedium)
    }

    // MARK: Helpers

    private func illustration(for elevation: NamedElevation) -> some View {
        illustration(for: elevation.token(from: theme), named: elevation.rawValue)
    }

    private func illustration(for elevationSementicToken: ElevationCompositeSemanticToken, named: String) -> some View {

        let elevationRawToken = elevationSementicToken.elevation(for: colorScheme)
        return HStack(alignment: .center, spacing: theme.spaceFixedMedium) {
            elevationRectangle(elevationRawToken: elevationRawToken)

            VStack(alignment: .leading) {
                Text(named).bold()
                Text("x: \(elevationRawToken.x, specifier: "%.2f"), ")
                + Text("y: \(elevationRawToken.y, specifier: "%.2f"), ")
                + Text("radius: \(elevationRawToken.radius, specifier: "%.2f")")

                Text("Color: \(elevationRawToken.color)")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(.vertical, theme.spaceFixedShorter)
    }

    private func elevationRectangle(elevationRawToken: ElevationCompositeRawToken) -> some View {
        Rectangle()
            .frame(width: theme.sizeIconDecorativeTallest, height: theme.sizeIconDecorativeTallest)
            .foregroundColor(theme.colorBackgroundDefaultSecondary?.color(for: colorScheme))
            .shadow(elevation: elevationRawToken)
    }
}

// MARK: - Named Elevation

private enum NamedElevation: String, CaseIterable {
    case elevationNone
    case elevationFocus
    case elevationRaised
    case elevationStickyNavigationScrolled
    case elevationOverlayDefault
    case elevationStickyDefault
    case elevationStickyEmphasized
    case elevationDrag
    case elevationOverlayEmphasized

    func token(from theme: OUDSTheme) -> ElevationCompositeSemanticToken {
        switch self {
        case .elevationNone:
            return theme.elevationNone
        case .elevationFocus:
            return theme.elevationFocus
        case .elevationRaised:
            return theme.elevationRaised
        case .elevationStickyNavigationScrolled:
            return theme.elevationStickyNavigationScrolled
        case .elevationOverlayDefault:
            return theme.elevationOverlayDefault
        case .elevationStickyDefault:
            return theme.elevationStickyDefault
        case .elevationStickyEmphasized:
            return theme.elevationStickyEmphasized
        case .elevationDrag:
            return theme.elevationDrag
        case .elevationOverlayEmphasized:
            return theme.elevationOverlayEmphasized
        }
    }
}
