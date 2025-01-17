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

// MARK: - Size Token Page

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
                sectionHeader("app_tokens_dimension_size_iconDecorative_label")
            }

            Section {
                VStack(alignment: .leading, spacing: theme.spaces.spaceFixedMedium) {
                    ForEach(NamedSize.iconSizeByTypographyCategories, id: \.namedFont) { category in
                        IllustrationSizeIconByTypographyCategory(category: category)
                    }
                }
            } header: {
                sectionHeader("app_tokens_dimension_size_iconWith_label")
            }
        }
        .padding(.horizontal, theme.spaces.spaceFixedMedium)
    }

    // MARK: Illustration Icon Decorative

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

    // MARK: Illustration Icon With Typography

    struct IllustrationIconWithTypography: View {

        // MARK: Stored properties

        @Environment(\.theme) private var theme
        @Environment(\.colorScheme) private var colorScheme
        @Environment(\.horizontalSizeClass) private var horizontalSizeClass

        let namedSize: NamedSize.IconWithTypography

        var body: some View {
            let token = namedSize.token(for: theme, userInterfaceSizeClass: horizontalSizeClass ?? .regular)
            let name = namedSize.sizeDescription
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

    // MARK: Illustration Size Icon By Typography Category

    private struct IllustrationSizeIconByTypographyCategory: View {

        @Environment(\.theme) private var theme
        @Environment(\.colorScheme) private var colorScheme
        @Environment(\.horizontalSizeClass) private var horizontalSizeClass

        let category: NamedSize.SizeIconByTypographyCategory

        var body: some View {
            if let lastSize = category.sizes.last {
                TypographyCategoryHeader(namedFont: category.namedFont, namedSize: lastSize)
            }

            VStack(alignment: .leading, spacing: theme.spaces.spaceFixedMedium) {
                ForEach(category.sizes, id: \.sizeDescription) { namedSize in
                    IllustrationIconWithTypography(namedSize: namedSize)
                }
            }
        }
    }

    // MARK: Typography Category Header

    private struct TypographyCategoryHeader: View {

        @Environment(\.theme) private var theme
        @Environment(\.colorScheme) private var colorScheme
        @Environment(\.horizontalSizeClass) private var horizontalSizeClass

        let namedFont: NamedFont
        let namedSize: NamedSize.IconWithTypography

        private var size: CGFloat {
            namedSize.token(for: theme, userInterfaceSizeClass: self.horizontalSizeClass ?? .regular)
        }

        var body: some View {
            HStack(alignment: .center, spacing: theme.spaces.spaceFixedShort) {
                HStack(alignment: .center, spacing: 1) {
                    Image(decorative: "ic_token")
                        .resizable()
                        .renderingMode(.template)
                        .aspectRatio(contentMode: .fit)
                        .foregroundStyle(theme.colors.colorContentStatusInfo.color(for: colorScheme))
                }
                .frame(height: size, alignment: .center)

                illustration(for: namedFont, in: theme)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))
            }
            .padding(.all, theme.spaces.spaceFixedMedium)
            .background(theme.colors.colorSurfaceStatusNeutralMuted.color(for: colorScheme))
        }
    }

    private func sectionHeader(_ text: LocalizedStringKey) -> some View {
        Text(text).showcaseSectionHeaderStyle()
    }
}

// MARK: - Named Size

enum NamedSize { }
