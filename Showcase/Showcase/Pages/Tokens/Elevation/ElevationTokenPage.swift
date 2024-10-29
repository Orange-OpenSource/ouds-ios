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

    /// A theme to force  for this 'View' whatever the environnement theme,  including the color scheme is (for UI tests purposes)
    private let forcedTheme: OUDSTheme?
    private let forcedColorScheme: ColorScheme?

    init(forceTo theme: OUDSTheme? = nil, colorScheme: ColorScheme? = nil) {
        self.forcedTheme = theme
        self.forcedColorScheme = colorScheme
    }

    // MARK: Body

    var body: some View {
        /// Move activeTheme here to ensure theme is accessible (for UI tests purposes)
        let activeTheme = forcedTheme ?? theme

        VStack(alignment: .leading, spacing: activeTheme.spaceFixedNone) {
            ForEach(NamedElevation.allCases, id: \.rawValue) { elevationName in
                illustration(for: elevationName)
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal, activeTheme.spaceFixedMedium)
    }

    // MARK: Helpers

    public func illustration(for namedElevation: NamedElevation) -> some View {
        /// Move activeColorScheme here to ensure colorScheme is accessible (for UI tests purposes)
        let activeColorScheme = forcedColorScheme ?? colorScheme
        /// Move activeTheme here to ensure theme is accessible (for UI tests purposes)
        let activeTheme = forcedTheme ?? theme

        let token = namedElevation.token(from: activeTheme).elevation(for: activeColorScheme)
        let name = namedElevation.rawValue
        let value = String(format: "x: %.2f, y: %.2f, radius: %.2f\nColor: %@", token.x, token.y, token.radius, token.color)

        return ShowcaseTokenIllustration(tokenName: name, tokenValue: value) {
            Rectangle()
                .frame(width: activeTheme.sizeIconDecorativeTallest, height: activeTheme.sizeIconDecorativeTallest)
                .foregroundColor(theme.colorBgSecondary.color(for: activeColorScheme))
                .shadow(elevation: token)
                .padding(.bottom, 2)
        }
    }
}

// MARK: - Named Elevation

public enum NamedElevation: String, CaseIterable {
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
