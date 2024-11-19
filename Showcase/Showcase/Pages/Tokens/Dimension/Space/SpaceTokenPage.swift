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

// MARK: - Internal constants

private let kIillustrationHeight = 72.0
private let kIllustrationWidth = 72.0

// MARK: - Space Token Page

struct SpaceTokenPage: View {

    @Environment(\.theme) private var theme
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    @Environment(\.colorScheme) private var colorScheme

    /// A theme to force  for this `View` whatever the environnement `theme` is (for UI tests purposes)
    private let forcedTheme: OUDSTheme?
    /// A `ColorScheme` to force  for this `View` whatever the environnement `colorScheme` is (for UI tests purposes)
    private let forcedColorScheme: ColorScheme?
    /// A `HorizontalSizeClass` to force  for this `View` whatever the environnement `horizontalSizeClass` is (for UI tests purposes)
    private let forcedHorizontalSizeClass: UserInterfaceSizeClass?
    /// A `VerticalSizeClass` to force  for this `View` whatever the environnement `verticalSizeClass` is (for UI tests purposes)
    private let forcedVerticalSizeClass: UserInterfaceSizeClass?

    init(forceTo theme: OUDSTheme? = nil, colorScheme: ColorScheme? = nil, horizontalSizeClass: UserInterfaceSizeClass? = nil, verticalSizeClass: UserInterfaceSizeClass? = nil) {
        self.forcedTheme = theme
        self.forcedColorScheme = colorScheme
        self.forcedHorizontalSizeClass = horizontalSizeClass
        self.forcedVerticalSizeClass = verticalSizeClass
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

    /// Computed property for horizontalSizeClass
    /// Returns `forcedHorizontalSizeClass` if available, otherwise falls back to the environment `horizontalSizeClass`
    /// If neither is available, `.regular` is used as the default value.
    var activeHorizontalSizeClass: UserInterfaceSizeClass {
        forcedHorizontalSizeClass ?? horizontalSizeClass ?? .regular
    }

    /// Computed property for verticalSizeClass
    /// Returns `forcedVerticalSizeClass` if available, otherwise falls back to the environment `verticalSizeClass`
    /// If neither is available, `.compact` is used as the default value.
    var activeVerticalSizeClass: UserInterfaceSizeClass {
        forcedVerticalSizeClass ?? verticalSizeClass ?? .compact
    }

    // MARK: Body

    var body: some View {
        Group {
            // Basic Space Tokens
            Section { illustrationForScaledSpaces() } header: {
                header("app_tokens_dimension_space_scaled_label")
            }
            Section { illustrationForFixedSpacings() } header: { header("app_tokens_dimension_space_fixed_label")
            }
            // Padding Sapce Tokens
            Section { illustrationForPaddingInline() } header: {
                header("app_tokens_dimension_space_paddingInline_label")
            }
            Section { illustrationForPaddingInlineWithIcon() } header: {
                header("app_tokens_dimension_space_paddingInlineWithIcon_label")
            }
            Section { illustrationForPaddingInlineWithArrow() } header: {
                header("app_tokens_dimension_space_paddingInlineWithArrow_label")
            }
            Section { illustrationForPaddingInset() } header: {
                header("app_tokens_dimension_space_paddingInset_label")
            }
            Section { illustrationForPaddingStack() } header: {
                header("app_tokens_dimension_space_paddingStack_label")
            }
            // Gap Space Tokens
            Section { illustrationForGapInline() } header: {
                header("app_tokens_dimension_space_gapInline_label")
            }
            Section { illustrationForGapStack() } header: {
                header("app_tokens_dimension_space_gapStack_label")
            }
        }
        .padding(.horizontal, activeTheme.spaceFixedMedium)
    }

    // MARK: Fixed Sapces

    private func illustrationForFixedSpacings() -> some View {
        VStack(alignment: .leading, spacing: activeTheme.spaceFixedNone) {
            ForEach(NamedSpace.Fixed.allCases, id: \.rawValue) { namedSpaceToken in
                let token = namedSpaceToken.token(from: activeTheme)
                let name = namedSpaceToken.rawValue
                // Fixed spacings are illustrated as a gap inline
                illustation(for: Gap.inline(token), name: name)
            }
        }
    }

    // MARK: Scaled Spaces

    private func illustrationForScaledSpaces() -> some View {
        VStack(alignment: .leading, spacing: activeTheme.spaceFixedNone) {
            ForEach(NamedSpace.Scaled.allCases, id: \.rawValue) { namedSpaceToken in
                illustration(for: namedSpaceToken)
            }
        }
    }

    public func illustration(for namedSpaceToken: NamedSpace.Scaled) -> some View {
        let token = namedSpaceToken.token(from: activeTheme)
        let name = namedSpaceToken.rawValue
        let horizontalDimensionRawToken = token.dimension(for: activeHorizontalSizeClass)
        let verticalDimensionRawToken = token.dimension(for: activeVerticalSizeClass)

        let value = String(format: "horizontal %@ (%.0f pt)\nvertical %@ (%.0f pt)",
                           activeHorizontalSizeClass == .regular ? "regular" : "compact",
                           horizontalDimensionRawToken,
                           activeVerticalSizeClass == .regular ? "regular" : "compact",
                           verticalDimensionRawToken)

        return ShowcaseTokenIllustration(tokenName: name, tokenValue: value, forceTo: activeTheme, colorScheme: activeColorScheme) {
            ZStack {
                Rectangle()
                    .fill(activeTheme.colorBgEmphasized.color(for: activeColorScheme))
                    .frame(width: kIllustrationWidth, height: kIillustrationHeight, alignment: .center)
                Rectangle()
                    .fill(activeTheme.colorAlwaysInfo.color(for: activeColorScheme))
                    .opacity(0.5)
                    .frame(width: horizontalDimensionRawToken, height: kIillustrationHeight, alignment: .center)

                Rectangle()
                    .fill(activeTheme.colorAlwaysInfo.color(for: activeColorScheme))
                    .opacity(0.5)
                    .frame(width: kIllustrationWidth, height: verticalDimensionRawToken, alignment: .center)
            }
        }
    }

    // MARK: Padding illustrations

    private func illustrationForPaddingInline() -> some View {
        VStack(alignment: .leading, spacing: activeTheme.spaceFixedNone) {
            ForEach(NamedSpace.PaddingInline.allCases, id: \.rawValue) { namedSpaceToken in
                let token = namedSpaceToken.token(from: activeTheme)
                let name = namedSpaceToken.rawValue
                illustation(for: Padding.inline(token), name: name)
            }
        }
    }

    private func illustrationForPaddingInlineWithIcon() -> some View {
        VStack(alignment: .leading, spacing: activeTheme.spaceFixedNone) {
            ForEach(NamedSpace.PaddingInlineWithIcon.allCases, id: \.rawValue) { namedSpaceToken in
                let token = namedSpaceToken.token(from: activeTheme)
                let name = namedSpaceToken.rawValue
                illustation(
                    for: Padding.inlineWithIcon(token),
                    name: name,
                    additionalAsset: (icon: Image(decorative: "ic_token"), horizontalPadding: 1))
            }
        }
    }
    private func illustrationForPaddingInlineWithArrow() -> some View {
        VStack(alignment: .leading, spacing: activeTheme.spaceFixedNone) {
            ForEach(NamedSpace.PaddingInlineWithArrow.allCases, id: \.rawValue) { namedSpaceToken in
                let token = namedSpaceToken.token(from: activeTheme)
                let name = namedSpaceToken.rawValue
                illustation(
                    for: Padding.inlineWithArrow(token),
                    name: name,
                    additionalAsset: (icon: Image(decorative: "ic_vector"), horizontalPadding: 5))
            }
        }
    }

    private func illustrationForPaddingInset() -> some View {
        VStack(alignment: .leading, spacing: activeTheme.spaceFixedNone) {
            ForEach(NamedSpace.PaddingInset.allCases, id: \.rawValue) { namedSpaceToken in
                let token = namedSpaceToken.token(from: activeTheme)
                let name = namedSpaceToken.rawValue
                illustation(for: Padding.inset(token), name: name)
            }
        }
    }

    private func illustrationForPaddingStack() -> some View {
        VStack(alignment: .leading, spacing: activeTheme.spaceFixedNone) {
            ForEach(NamedSpace.PaddingStack.allCases, id: \.rawValue) { namedSpaceToken in
                let token = namedSpaceToken.token(from: activeTheme)
                let name = namedSpaceToken.rawValue
                illustation(for: Padding.stack(token), name: name)
            }
        }
    }

    // MARK: Gap illustrations

    private func illustrationForGapInline() -> some View {
        VStack(alignment: .leading, spacing: activeTheme.spaceFixedNone) {
            ForEach(NamedSpace.GapInline.allCases, id: \.rawValue) { namedSpaceToken in
                let token = namedSpaceToken.token(from: activeTheme)
                let name = namedSpaceToken.rawValue
                illustation(for: Gap.inline(token), name: name)
            }
        }
    }

    private func illustrationForGapStack() -> some View {
        VStack(alignment: .leading, spacing: activeTheme.spaceFixedNone) {
            ForEach(NamedSpace.GapStack.allCases, id: \.rawValue) { namedSpaceToken in
                let token = namedSpaceToken.token(from: activeTheme)
                let name = namedSpaceToken.rawValue
                illustation(for: Gap.stack(token), name: name)
            }
        }
    }

    // MARK: Common helpers

    private func header(_ text: LocalizedStringKey) -> some View {
        Text(text).showcaseSectionHeaderStyle()
    }

    @ViewBuilder
    public func illustation(for paddingType: Padding, name: String, additionalAsset: (icon: Image, horizontalPadding: Double)? = nil) -> some View {
        let value = String(format: "%.2f (pt)", paddingType.dimension)

        ShowcaseTokenIllustration(tokenName: name, tokenValue: value, forceTo: activeTheme, colorScheme: activeColorScheme) {
            ZStack(alignment: .leading) {
                Rectangle()
                    .fill(activeTheme.colorAlwaysInfo.color(for: activeColorScheme))

                Rectangle()
                    .fill(activeTheme.colorBgEmphasized.color(for: activeColorScheme))
                    .modifier(PaddingModifier(padding: paddingType))

                if let additionalAsset {
                    VStack(alignment: .leading) {
                        additionalAsset.icon
                            .renderingMode(.template)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(activeTheme.colorAlwaysInfo.color(for: activeColorScheme))
                    }
                    .padding(.horizontal, additionalAsset.horizontalPadding)
                    .frame(width: 24, alignment: .leading)
                    .modifier(PaddingModifier(padding: paddingType))
                }
            }
            .frame(width: kIllustrationWidth, height: kIillustrationHeight, alignment: .leading)
        }
    }

    @ViewBuilder
    public func illustation(for gapType: Gap, name: String) -> some View {
        let value = String(format: "%.2f (pt)", gapType.dimension)

        ShowcaseTokenIllustration(tokenName: name, tokenValue: value, forceTo: activeTheme, colorScheme: activeColorScheme) {
            ZStack {
                Rectangle()
                    .fill(activeTheme.colorBgEmphasized.color(for: activeColorScheme))

                Rectangle()
                    .fill(activeTheme.colorAlwaysInfo.color(for: activeColorScheme))
                    .modifier(GapModifier(gap: gapType))
            }
            .frame(width: kIllustrationWidth, height: kIillustrationHeight, alignment: .center)
        }
    }
}

// MARK: - Gap

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

// MARK: - Gap Modifier

private struct GapModifier: ViewModifier {

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

// MARK: - Padding

enum Padding {
    case inline(DimensionRawToken)
    case stack(DimensionRawToken)
    case inset(DimensionRawToken)
    case inlineWithIcon(DimensionRawToken)
    case inlineWithArrow(DimensionRawToken)

    var dimension: DimensionRawToken {
        switch self {
        case .inline(let dimension), .stack(let dimension), .inset(let dimension), .inlineWithIcon(let dimension), .inlineWithArrow(let dimension):
            return dimension
        }
    }
}

// MARK: - Padding Modifier

private struct PaddingModifier: ViewModifier {

    let padding: Padding

    func body(content: Content) -> some View {
        switch padding {
        case .inline(let dimension), .inlineWithIcon(let dimension), .inlineWithArrow(let dimension):
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
