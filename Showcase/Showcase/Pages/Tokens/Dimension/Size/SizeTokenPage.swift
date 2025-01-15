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

    // MARK: Stored properties

    @Environment(\.theme) private var theme

    // MARK: Body

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

    // MARK: Illustrations

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

    struct IllustrationIconWithTypography: View {

        // MARK: Stored properties

        @Environment(\.theme) private var theme
        @Environment(\.colorScheme) private var colorScheme
        @Environment(\.horizontalSizeClass) private var horizontalSizeClass

        let namedSize: NamedSize.IconWithTypography

        // MARK: Body

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

    // MARK: Private helpers

    private struct IllustrationSizeIconByTypographyCategory: View {

        // MARK: Stored properties

        @Environment(\.theme) private var theme
        @Environment(\.colorScheme) private var colorScheme
        @Environment(\.horizontalSizeClass) private var horizontalSizeClass

        let category: NamedSize.SizeIconByTypographyCategory

        // MARK: Body

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
    private struct TypographyCategoryHeader: View {

        // MARK: Stored properties

        @Environment(\.theme) private var theme
        @Environment(\.colorScheme) private var colorScheme
        @Environment(\.horizontalSizeClass) private var horizontalSizeClass

        let namedFont: NamedFont
        let namedSize: NamedSize.IconWithTypography

        // MARK: Body

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

        private var size: CGFloat {
            namedSize.token(for: theme, userInterfaceSizeClass: self.horizontalSizeClass ?? .regular)
        }
    }

    // MARK: Private helpers

    private func sectionHeader(_ text: LocalizedStringKey) -> some View {
        Text(text).showcaseSectionHeaderStyle()
    }
}

enum NamedSize { }

private struct IllustrationIconWithTypography: View {

    // MARK: Stored properties

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass

    struct Category {
        let namedFont: NamedFont
        var sizes: [NamedSize.IconWithTypography]
    }

    let categories: [Category]

    // MARK: Initializer

    init() {
        var lastCategory: Category?

        self.categories = NamedSize.IconWithTypography.allCases.reduce(into: []) { partialResult, namedSize in
            if namedSize.namedFont == lastCategory?.namedFont {
                lastCategory?.sizes.append(namedSize)
            } else {
                if let category = lastCategory {
                    partialResult.append(category)
                }

                lastCategory = Category(namedFont: namedSize.namedFont, sizes: [namedSize])
            }
        }
    }

    // MARK: Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.spaceFixedMedium) {
            ForEach(categories, id: \.namedFont) { category in
                illustration(for: category)
            }
        }
    }

    @ViewBuilder
    func illustration(for category: Category) -> some View {
        if let lastSize = category.sizes.last {
            header(namedFont: category.namedFont, namedSize: lastSize)
        }

        VStack(alignment: .leading, spacing: theme.spaces.spaceFixedMedium) {
            ForEach(category.sizes, id: \.sizeDescription) { namedSize in
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
    }

    @ViewBuilder
    func header(namedFont: NamedFont, namedSize: NamedSize.IconWithTypography) -> some View {
        let size = namedSize.token(for: theme, userInterfaceSizeClass: self.horizontalSizeClass ?? .regular)

        HStack(alignment: .center, spacing: theme.spaces.spaceFixedShort) {
            Image(decorative: "ic_token")
                .resizable()
                .renderingMode(.template)
                .aspectRatio(contentMode: .fit)
                .foregroundStyle(theme.colors.colorContentStatusInfo.color(for: colorScheme))
                .frame(height: size, alignment: .center)
            illustration(for: namedFont, in: theme)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))
        }
        .padding(.all, theme.spaces.spaceFixedMedium)
        .background(theme.colors.colorSurfaceStatusNeutralMuted.color(for: colorScheme))
    }
}
