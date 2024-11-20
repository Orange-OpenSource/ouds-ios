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

    /// A theme to force for this `View` whatever the environnement `theme` is (for UI tests purposes)
    private let forcedTheme: OUDSTheme?
    /// A `ColorScheme` to force for this `View` whatever the environnement `colorScheme` is (for UI tests purposes)
    private let forcedColorScheme: ColorScheme?

    init(forceTo theme: OUDSTheme? = nil, colorScheme: ColorScheme? = nil) {
        forcedTheme = theme
        forcedColorScheme = colorScheme
    }

    /// Computed property for colorScheme
    /// Returns `forcedColorScheme` if available, otherwise falls back to the environment `colorScheme`
    /// If neither is available, the default system `colorScheme` will be applied.
    var activeColorScheme: ColorScheme {
        forcedColorScheme ?? colorScheme
    }

    /// Computed property for theme
    /// Returns `forcedTheme` if available, otherwise falls back to the environment `theme`
    /// If neither is available, the default `theme` will be applied.
    var activeTheme: OUDSTheme {
        forcedTheme ?? theme
    }

    // MARK: Body

    var body: some View {
        VStack(alignment: .leading, spacing: activeTheme.spaceFixedNone) {
            Section {
                ShowcaseTokenCode(code: "colorBgStatusPositiveMutedOnBgEmphasized")
            }

            Spacer()

            ForEach(NamedElevation.allCases, id: \.rawValue) { elevationName in
                illustration(for: elevationName)
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal, activeTheme.spaceFixedMedium)
    }

    // MARK: Helpers

    func illustration(for namedElevation: NamedElevation) -> some View {
        let token = namedElevation.token(from: activeTheme).elevation(for: activeColorScheme)
        let name = namedElevation.rawValue
        let value = String(format: "x: %.2f, y: %.2f, radius: %.2f\nColor: %@", token.x, token.y, token.radius, token.color)

        return ShowcaseTokenIllustration(tokenName: name, tokenValue: value, forceTo: activeTheme, colorScheme: activeColorScheme) {
            Rectangle()
                .frame(width: activeTheme.sizeIconDecorativeTallest, height: activeTheme.sizeIconDecorativeTallest)
                .foregroundColor(activeTheme.colorBgSecondary.color(for: activeColorScheme))
                .shadow(elevation: token)
                .padding(.bottom, 2)
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
            return theme.elevationNone
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
