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

struct SizeTokenPage: View {

    @Environment(\.theme) private var theme

    var body: some View {
        Group {
            Section {
                ShowcaseCode(code: "theme.sizeIconWithHeadingXLargeShort.dimension(for: horizontalSizeClass ?? .regular)", titleText: "app_tokens_common_viewCodeExample_label")
            }
            Section {
                VStack(alignment: .center, spacing: theme.spaces.spaceFixedNone) {
                    ForEach(NamedSize.IconDecorative.allCases, id: \.rawValue) { namedSize in
                        IllustrationIconDecorative(namedSize: namedSize)
                    }
                }
            } header: {
                header("app_tokens_dimension_size_iconDecorative_label")
            }
            Section {
                ForEach(NamedSize.IconWithTypography.allCases, id: \.rawValue) { namedIconSize in
                    IllustrationIconWithLabel(namedSize: namedIconSize)
                }
            } header: {
                header("app_tokens_dimension_size_iconWithLabel_label")
            }
        }
        .padding(.horizontal, theme.spaces.spaceFixedMedium)
    }

    struct IllustrationIconDecorative: View {
        @Environment(\.theme) private var theme
        @Environment(\.colorScheme) private var colorScheme

        let namedSize: NamedSize.IconDecorative

        var body: some View {
            let token = namedSize.token(from: theme)
            let name = namedSize.rawValue
            let value = String(format: "%.2f pt", token)

            ShowcaseTokenIllustration(tokenName: name, tokenValue: value) {
                ZStack {
                    Rectangle()
                        .fill(theme.colors.colorSurfaceStatusNeutralMuted.color(for: colorScheme))
                        .frame(width: 82, height: 82, alignment: .center)

                    Image("ic_token")
                        .resizable()
                        .renderingMode(.template)
                        .foregroundColor(theme.colors.colorContentStatusInfo.color(for: colorScheme))
                        .frame(width: token, height: token, alignment: .center)
                        .accessibilityHidden(true)
                }
            }
        }
    }

    private func header(_ text: LocalizedStringKey) -> some View {
        Text(text).showcaseSectionHeaderStyle()
    }

    struct IllustrationIconWithLabel: View {
        @Environment(\.theme) private var theme
        @Environment(\.colorScheme) private var colorScheme
        @Environment(\.horizontalSizeClass) private var horizontalSizeClass

        let namedSize: NamedSize.IconWithTypography

        var body: some View {
            let token = namedSize.token(fot: theme, userInterfaceSizeClass: horizontalSizeClass ?? .regular)
            let namedFont = namedSize.namedFont
            let value = String(format: "\(namedSize.rawValue) (%.0f pt)", token)

            HStack {
                Image("ic_token")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundColor(theme.colors.colorContentStatusInfo.color(for: colorScheme))
                    .frame(width: token, height: token, alignment: .center)
                    .accessibilityHidden(true)

                VStack(alignment: .leading) {
                    illustration(for: namedFont, in: theme)
                        .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))
                    Text(value)
                        .typeBodyDefaultMedium(theme)
                        .foregroundStyle(theme.colors.colorContentMuted.color(for: colorScheme))
                }
                .accessibilityElement(children: .combine)
            }
        }
    }
}

enum NamedSize { }
