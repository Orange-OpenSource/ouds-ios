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
import OUDSTokensRaw
import OUDSTokensSemantic
import SwiftUI

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

    private func illustration(for namedElevation: NamedElevation) -> some View {
        let token = namedElevation.token(from: theme).elevation(for: colorScheme)
        let name = namedElevation.rawValue
        let value = String(format: "x: %.2f, y: %.2f, radius: %.2f\nColor: %@", token.x, token.y, token.radius, token.color)

        return ShowcaseTokenIllustration(tokenName: name, tokenValue: value) {
            Rectangle()
                .frame(width: theme.sizeIconDecorativeTallest, height: theme.sizeIconDecorativeTallest)
                .foregroundColor(theme.colorBackgroundDefaultSecondary?.color(for: colorScheme))
                .shadow(elevation: token)
                .padding(.bottom, 2)

        }
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
