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
import OUDSComponents
import OUDSTokensSemantic
import SwiftUI

// MARK: - Opacity Token Page

struct OpacityTokenPage: View {

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
            ForEach(NamedOpacity.allCases, id: \.rawValue) { opmacityName in
                illustration(for: opmacityName)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, activeTheme.spaceFixedMedium)
    }

    // MARK: Helpers

    public func illustration(for opacityName: NamedOpacity) -> some View {
        /// Move activeColorScheme here to ensure colorScheme is accessible (for UI tests purposes)
        let activeColorScheme = forcedColorScheme ?? colorScheme
        /// Move activeTheme here to ensure theme is accessible (for UI tests purposes)
        let activeTheme = forcedTheme ?? theme

        let token = opacityName.token(from: activeTheme)
        let name = opacityName.rawValue
        let value = String(format: "%.2f", token)

        return ShowcaseTokenIllustration(tokenName: name, tokenValue: value, forceTo: activeTheme, colorScheme: activeColorScheme) {
            ZStack {
                Image(decorative: "ic_union")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundColor(activeTheme.colorContentStatusInfo.color(for: activeColorScheme))
                    .frame(width: 48, height: 48)
                    .accessibilityHidden(true)

                Rectangle()
                    .fill(activeTheme.colorBgEmphasized.color(for: activeColorScheme))
                    .opacity(token)
                    .frame(width: 48, height: 48)
                    .oudsBorder(style: activeTheme.borderStyleDefault,
                                width: activeTheme.borderWidthThin,
                                radius: activeTheme.borderRadiusNone,
                                color: activeTheme.colorBorderEmphasized)
                    .padding(.top, 24)
                    .padding(.leading, 24)
            }
            .frame(width: 64, height: 64, alignment: .leading)
        }
    }
}

// MARK: - Named Opacity

public enum NamedOpacity: String, CaseIterable {
    case opacityTransparent
    case opacityWeaker
    case opacityWeak
    case opacityMedium
    case opacityStrong
    case opacityOpaque

    func token(from theme: OUDSTheme) -> OpacitySemanticToken {
        switch self {
        case .opacityTransparent:
            return theme.opacityTransparent
        case .opacityWeaker:
            return theme.opacityWeaker
        case .opacityWeak:
            return theme.opacityWeak
        case .opacityMedium:
            return theme.opacityMedium
        case .opacityStrong:
            return theme.opacityStrong
        case .opacityOpaque:
            return theme.opacityOpaque
        }
    }
}
