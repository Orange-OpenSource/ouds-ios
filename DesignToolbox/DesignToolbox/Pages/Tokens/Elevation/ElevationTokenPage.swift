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

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.spaceFixedNone) {
            Section {
                DesignToolboxCode(code: "theme.elevations.elevationNone.elevation(for: colorScheme)", titleText: "app_tokens_common_viewCodeExample_label")
            }

            Spacer().frame(height: theme.spaces.spaceFixedMedium)

            ForEach(NamedElevation.allCases, id: \.rawValue) { elevationName in
                IllustrationElevation(namedElevation: elevationName)
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal, theme.spaces.spaceFixedMedium)
    }

    struct IllustrationElevation: View {

        let namedElevation: NamedElevation

        @Environment(\.theme) private var theme
        @Environment(\.colorScheme) private var colorScheme

        var body: some View {
            let token = namedElevation.token(from: theme)
            let name = namedElevation.rawValue
            let value = description(for: token)

            DesignToolboxTokenIllustration(tokenName: name, tokenValue: value) {
                Rectangle()
                    .frame(width: theme.sizes.sizeIconDecorative2xl, height: theme.sizes.sizeIconDecorative2xl)
                    .foregroundColor(theme.colors.colorBgSecondary.color(for: colorScheme))
                    .shadow(elevation: token)
                    .padding(.bottom, 2)
            }
        }

        private func description(for token: ElevationCompositeSemanticToken) -> String {
            let colorBasedToken = colorScheme == .light ? token.light : token.dark
            let x = colorBasedToken.x
            let y = colorBasedToken.y
            let radius = colorBasedToken.radius
            let color = colorBasedToken.color
            return String(format: "x: %.2f, y: %.2f, radius: %.2f\nColor: %@", x, y, radius, color)
        }
    }
}

// MARK: - Named Elevation

enum NamedElevation: String, CaseIterable {
    case elevationNone
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
            return theme.elevations.elevationNone
        case .elevationRaised:
            return theme.elevations.elevationRaised
        case .elevationStickyNavigationScrolled:
            return theme.elevations.elevationStickyNavigationScrolled
        case .elevationOverlayDefault:
            return theme.elevations.elevationOverlayDefault
        case .elevationStickyDefault:
            return theme.elevations.elevationStickyDefault
        case .elevationStickyEmphasized:
            return theme.elevations.elevationStickyEmphasized
        case .elevationDrag:
            return theme.elevations.elevationDrag
        case .elevationOverlayEmphasized:
            return theme.elevations.elevationOverlayEmphasized
        }
    }
}
