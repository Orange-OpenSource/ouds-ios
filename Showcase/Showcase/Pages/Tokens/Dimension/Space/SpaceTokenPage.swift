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

private let kIillustrationHeight = 72.0
private let kIllustrationWidth = 72.0

struct SpaceTokenPage: View {

    @Environment(\.theme) private var theme
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Body

    var body: some View {
        Group {
            // Basic Spacings
            Section { illustrationForScaledSpaces() } header: {
                header("app_tokens_dimension_space_scaled_label")
            }
            Section { illustrationForFixedSpacings() } header: { header("app_tokens_dimension_space_fixed_label")
            }
            // Padding Dimensions
            Section { illustrationForPaddingInline() } header: {
                header("app_tokens_dimension_space_paddingInline_label")
            }
            Section { illustrationForPaddingInset() } header: {
                header("app_tokens_dimension_space_PaddingInset_label")
            }
            Section { illustrationForPaddingStack() } header: {
                header("app_tokens_dimension_space_paddingStack_label")
            }
            // Gap Dimensions
            Section { illustrationForGapInline() } header: {
                header("app_tokens_dimension_space_gapInline_label")
            }
            Section { illustrationForGapStack() } header: {
                header("app_tokens_dimension_space_gapStack_label")
            }
        }
        .padding(.horizontal, theme.spaceFixedMedium)
    }

    // MARK: Private helpers

    private func header(_ text: LocalizedStringKey) -> some View {
        Text(text).showcaseSectionHeaderStyle()
    }

    // MARK: Fixed Spacings

    private func illustrationForFixedSpacings() -> some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            ForEach(NamedSpace.Fixed.allCases, id: \.rawValue) { namedSpaceToken in
                let token = namedSpaceToken.token(from: theme)
                let name = namedSpaceToken.rawValue
                // Fixed spacings are illustrated as a gap inline spacing
                illustation(for: Gap.inline(token), name: name)
            }
        }
    }

    // MARK: Scaled Spacings

    private func illustrationForScaledSpaces() -> some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            ForEach(NamedSpace.Scaled.allCases, id: \.rawValue) { namedSpaceToken in
                illustration(for: namedSpaceToken)
            }
        }
    }

    private func illustration(for namedSpaceToken: NamedSpace.Scaled) -> some View {
        let token = namedSpaceToken.token(from: theme)
        let name = namedSpaceToken.rawValue
        let horizontalDimensionRawToken = token.dimension(for: horizontalSizeClass ?? .regular)
        let verticalDimensionRawToken = token.dimension(for: verticalSizeClass ?? .regular)

        let value = String(format: "horizontal %@ (%.0f pt)\nvertical %@ (%.0f pt)",
                           horizontalSizeClass == .regular ? "regular" : "compact",
                           horizontalDimensionRawToken,
                           verticalSizeClass == .regular ? "regular" : "compact",
                           verticalDimensionRawToken)

        return ShowcaseTokenIllustration(tokenName: name, tokenValue: value) {
            ZStack {
                Rectangle()
                    .fill(theme.colorBackgroundEmphasized.color(for: colorScheme))
                    .frame(width: kIllustrationWidth, height: kIillustrationHeight, alignment: .center)
                Rectangle()
                    .fill(theme.colorAlwaysInfo.color(for: colorScheme))
                    .opacity(0.5)
                    .frame(width: horizontalDimensionRawToken, height: kIillustrationHeight, alignment: .center)

                Rectangle()
                    .fill(theme.colorAlwaysInfo.color(for: colorScheme))
                    .opacity(0.5)
                    .frame(width: kIllustrationWidth, height: verticalDimensionRawToken, alignment: .center)
            }
        }
    }

    // MARK: Padding illustration

    private func illustrationForPaddingInline() -> some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            ForEach(NamedSpace.PaddingInline.allCases, id: \.rawValue) { namedSpaceToken in
                let token = namedSpaceToken.token(from: theme)
                let name = namedSpaceToken.rawValue
                illustation(for: Padding.inline(token), name: name)
            }
        }
    }

    private func illustrationForPaddingInset() -> some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            ForEach(NamedSpace.PaddingInset.allCases, id: \.rawValue) { namedSpaceToken in
                let token = namedSpaceToken.token(from: theme)
                let name = namedSpaceToken.rawValue
                illustation(for: Padding.inset(token), name: name)
            }
        }
    }

    private func illustrationForPaddingStack() -> some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            ForEach(NamedSpace.PaddingStack.allCases, id: \.rawValue) { namedSpaceToken in
                let token = namedSpaceToken.token(from: theme)
                let name = namedSpaceToken.rawValue
                illustation(for: Padding.stack(token), name: name)
            }
        }
    }

    // MARK: Gap illustration

    private func illustrationForGapInline() -> some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            ForEach(NamedSpace.GapInline.allCases, id: \.rawValue) { namedSpaceToken in
                let token = namedSpaceToken.token(from: theme)
                let name = namedSpaceToken.rawValue
                illustation(for: Gap.inline(token), name: name)
            }
        }
    }

    private func illustrationForGapStack() -> some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            ForEach(NamedSpace.GapStack.allCases, id: \.rawValue) { namedSpaceToken in
                let token = namedSpaceToken.token(from: theme)
                let name = namedSpaceToken.rawValue
                illustation(for: Gap.stack(token), name: name)
            }
        }
    }

    // MARK: Common helpers

    @ViewBuilder
    private func illustation(for paddingType: Padding, name: String) -> some View {
        let value = String(format: "%.2f (pt)", paddingType.dimension)

        ShowcaseTokenIllustration(tokenName: name, tokenValue: value) {
            ZStack {
                Rectangle()
                    .fill(theme.colorAlwaysInfo.color(for: colorScheme))

                Rectangle()
                    .fill(theme.colorBackgroundEmphasized.color(for: colorScheme))
                    .modifier(PaddingModifier(padding: paddingType))
            }
            .frame(width: kIllustrationWidth, height: kIillustrationHeight, alignment: .center)
        }
    }

    @ViewBuilder
    private func illustation(for gapType: Gap, name: String) -> some View {
        let value = String(format: "%.2f (pt)", gapType.dimension)

        ShowcaseTokenIllustration(tokenName: name, tokenValue: value) {
            ZStack {
                Rectangle()
                    .fill(theme.colorBackgroundEmphasized.color(for: colorScheme))

                Rectangle()
                    .fill(theme.colorAlwaysInfo.color(for: colorScheme))
                    .modifier(GapModifier(gap: gapType))
            }
            .frame(width: kIllustrationWidth, height: kIillustrationHeight, alignment: .center)
        }
    }
}

enum Gap {
    case inline(DimensionRawToken)
    case stack(DimensionRawToken)

    var dimension: DimensionRawToken {
        switch self {
        case .inline(let dimension), .stack(let dimension):
            return dimension
        }
    }
}

struct GapModifier: ViewModifier {

    let gap: Gap

    func body(content: Content) -> some View {
        switch gap {
        case .inline(let dimensionRawToken):
            content.frame(width: dimensionRawToken, height: kIillustrationHeight, alignment: .center)

        case .stack(let dimensionRawToken):
            content.frame(width: kIllustrationWidth, height: dimensionRawToken, alignment: .center)
        }
    }
}

enum Padding {
    case inline(DimensionRawToken)
    case stack(DimensionRawToken)
    case inset(DimensionRawToken)

    var dimension: DimensionRawToken {
        switch self {
        case .inline(let dimension), .stack(let dimension), .inset(let dimension):
            return dimension
        }
    }
}

struct PaddingModifier: ViewModifier {

    let padding: Padding

    func body(content: Content) -> some View {
        switch padding {
        case .inline(let dimension):
            content.padding(.leading, dimension)
        case .stack(let dimension):
            content.padding(.top, dimension)
        case .inset(let dimension):
            content
                .padding(.top, dimension)
                .padding(.leading, dimension)
        }
    }
}

// MARK: - Named Space

enum NamedSpace { }
