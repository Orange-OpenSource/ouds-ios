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

// MARK: - Opacity Token Page

struct OpacityTokenPage: View {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            Section {
                ShowcaseTokenCode(code: "theme.opacityTransparent")
            }

            Spacer() .frame(height: theme.spaceFixedMedium)

            ForEach(NamedOpacity.allCases, id: \.rawValue) { opacityName in
                IllustrationOpacity(opacityName: opacityName)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, theme.spaceFixedMedium)
    }

    // MARK: Helpers

    struct IllustrationOpacity: View {
        @Environment(\.theme) private var theme
        @Environment(\.colorScheme) private var colorScheme

        let opacityName: NamedOpacity

        var body: some View {
            let token = opacityName.token(from: theme)
            let name = opacityName.rawValue
            let value = String(format: "%.2f", token)

            ShowcaseTokenIllustration(tokenName: name, tokenValue: value) {
                ZStack {
                    Image(decorative: "ic_union")
                        .resizable()
                        .renderingMode(.template)
                        .foregroundColor(theme.colorContentStatusInfo.color(for: colorScheme))
                        .frame(width: 48, height: 48)
                        .accessibilityHidden(true)

                    Rectangle()
                        .fill(theme.colorBgEmphasized.color(for: colorScheme))
                        .opacity(token)
                        .frame(width: 48, height: 48)
                        .oudsBorder(style: theme.borderStyleDefault,
                                    width: theme.borderWidthThin,
                                    radius: theme.borderRadiusNone,
                                    color: theme.colorBorderEmphasized)
                        .padding(.top, 24)
                        .padding(.leading, 24)
                }
                .frame(width: 64, height: 64, alignment: .leading)
            }
        }
    }
}

// MARK: - Named Opacity

enum NamedOpacity: String, CaseIterable {
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
