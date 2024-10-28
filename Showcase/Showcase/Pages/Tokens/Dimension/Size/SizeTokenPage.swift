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
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Body

    var body: some View {
        Group {
            Section { illustrationForIconDecorative() } header: {
                header("app_tokens_dimension_size_iconDecorative_label")
            }
            Section { illustrationIconWithLabel() } header: {
                header("app_tokens_dimension_size_iconWithLabel_label")
            }
        }
        .padding(.horizontal, theme.spaceFixedMedium)
    }

    // MARK: Illustration icon decorative

    private func illustrationForIconDecorative() -> some View {
        ForEach(NamedSize.IconDecorative.allCases, id: \.rawValue) { namedSize in
            illustrationIconDecorative(for: namedSize)
        }
    }

    private func illustrationIconDecorative(for namedSize: NamedSize.IconDecorative) -> some View {
        let token = namedSize.token(from: theme)
        let name = namedSize.rawValue
        let value = String(format: "(%.0f) pt", token)

        return ShowcaseTokenIllustration(tokenName: name, tokenValue: value) {
            ZStack {
                Rectangle()
                    .fill(theme.colorBgEmphasized.color(for: colorScheme))
                    .frame(width: 82, height: 82, alignment: .center)

                Image("ic_token")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundColor(theme.colorAlwaysInfo.color(for: colorScheme))
                    .frame(width: token, height: token, alignment: .center)
                    .accessibilityHidden(true)
            }
        }
    }

    // MARK: Illustration icon with label

    private func illustrationIconWithLabel() -> some View {
        ForEach(NamedSize.IconWithTypography.allCases, id: \.rawValue) { namedIconSize in
            illustrationIconWithLabel(for: namedIconSize)
        }
    }

    @ViewBuilder
    private func illustrationIconWithLabel(for namedSize: NamedSize.IconWithTypography) -> some View {
        let token = namedSize.token(fot: theme, userInterfaceSizeClass: horizontalSizeClass ?? .regular)
        let namedTypography = namedSize.namedTypography
        let value = String(format: "\(namedSize.rawValue) (%.0f) pt", token)

        HStack {
            Image("ic_token")
                .resizable()
                .renderingMode(.template)
                .foregroundColor(theme.colorAlwaysInfo.color(for: colorScheme))
                .frame(width: token, height: token, alignment: .center)
                .accessibilityHidden(true)

            VStack(alignment: .leading) {
                illustration(for: namedTypography, in: theme)
                    .foregroundStyle(theme.colorContentDefault.color(for: colorScheme))
                Text(value)
                    .typeBodyDefaultMedium(theme)
                    .foregroundStyle(theme.colorContentMuted.color(for: colorScheme))
            }
        }
    }

    // MARK: Common helpers

    private func header(_ text: LocalizedStringKey) -> some View {
        Text(text).showcaseSectionHeaderStyle()
    }
}

// MARK: - Named Size

enum NamedSize { }
