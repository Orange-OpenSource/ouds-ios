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

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.spaceFixedNone) {
            Section {
                ShowcaseCode(code: "theme.opacities.opacityInvisible", titleText: "app_tokens_common_viewCodeExample_label")
            }

            Spacer() .frame(height: theme.spaces.spaceFixedMedium)

            ForEach(NamedOpacity.allCases, id: \.rawValue) { opacityName in
                IllustrationOpacity(opacityName: opacityName)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, theme.spaces.spaceFixedMedium)
    }

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
                        .foregroundColor(theme.colors.colorContentStatusInfo.color(for: colorScheme))
                        .frame(width: 48, height: 48)
                        .accessibilityHidden(true)

                    Rectangle()
                        .fill(theme.colors.colorOverlayEmphasized.color(for: colorScheme))
                        .opacity(token)
                        .frame(width: 48, height: 48)
                        .oudsBorder(style: theme.borders.borderStyleDefault,
                                    width: theme.borders.borderWidthThin,
                                    radius: theme.borders.borderRadiusNone,
                                    color: theme.colors.colorBorderDefault)
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
    case opacityInvisible
    case opacityWeaker
    case opacityWeak
    case opacityMedium
    case opacityStrong
    case opacityOpaque

    func token(from theme: OUDSTheme) -> OpacitySemanticToken {
        switch self {
        case .opacityInvisible:
            return theme.opacities.opacityInvisible
        case .opacityWeaker:
            return theme.opacities.opacityWeaker
        case .opacityWeak:
            return theme.opacities.opacityWeak
        case .opacityMedium:
            return theme.opacities.opacityMedium
        case .opacityStrong:
            return theme.opacities.opacityStrong
        case .opacityOpaque:
            return theme.opacities.opacityOpaque
        }
    }
}
