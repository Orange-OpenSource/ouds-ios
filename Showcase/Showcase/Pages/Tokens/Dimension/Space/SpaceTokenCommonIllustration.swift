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

private let kIllustrationHeight = 72.0
private let kIllustrationWidth = 72.0

// MARK: - Space Token Property

/// Internal `View` to display a property for the space token category. It desplays:
/// - a header to describe the property of space token
/// - a list of entries for each variant of this token property
struct SpaceTokenProperty<HeaderDescription, TokenIllustration>: View where HeaderDescription: View, TokenIllustration: View {

    @Environment(\.theme) private var theme

    let namedTokens: [NamedSpaceToken]
    @ViewBuilder let header: () -> HeaderDescription
    @ViewBuilder let illustration: (_ token: SpaceSemanticToken) -> TokenIllustration

    init(namedTokens: [NamedSpaceToken],
         @ViewBuilder header: @escaping () -> HeaderDescription,
         @ViewBuilder illustration: @escaping (SpaceSemanticToken) -> TokenIllustration) {
        self.namedTokens = namedTokens
        self.header = header
        self.illustration = illustration
    }

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            header().padding(.bottom, theme.spaceFixedMedium)

            ForEach(namedTokens, id: \.name) { namedSpaceToken in
                SpaceTokenVariant(namedSpaceToken: namedSpaceToken, illustration: illustration)
            }
        }
    }
}

// MARK: - Space Token Variant

/// Internal `View` to display the token with its name, its value and an illustration.
struct SpaceTokenVariant<TokenIllustration>: View where TokenIllustration: View {

    @Environment(\.theme) private var theme

    let namedSpaceToken: NamedSpaceToken
    @ViewBuilder let illustration: (_ token: SpaceSemanticToken) -> TokenIllustration

    init(namedSpaceToken: NamedSpaceToken, illustration: @escaping (SpaceSemanticToken) -> TokenIllustration) {
        self.namedSpaceToken = namedSpaceToken
        self.illustration = illustration
    }

    var body: some View {
        let token = namedSpaceToken.token(from: theme)
        let name = namedSpaceToken.name
        let value = String(format: "%.2f (pt)", token)

        return ShowcaseTokenIllustration(tokenName: name, tokenValue: value) {
            illustration(token)
        }
    }
}

// MARK: - Space Common Illustration

/// Internal View used to illustrate all tokens based on `dimension`, the `padding` of the blue rectangle illustrating the dimension and an optional icon asset.
struct SpaceCommonIllustration: View {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    enum Padding {
        case top(SpaceIllustrationIcon.Asset?)
        case bottom(SpaceIllustrationIcon.Asset)
        case leading(SpaceIllustrationIcon.Asset?)
        case centerVerticaly
        case centerHorizontaly
        case topLeading
    }

    let dimension: DimensionRawToken
    let padding: Self.Padding

    init(dimension: DimensionRawToken, padding: Self.Padding) {
        self.dimension = dimension
        self.padding = padding
    }

    var body: some View {
        ZStack(alignment: zStackAlignment) {
            // Background color
            ShowcaseTokenIllustrationBackground()

            switch padding {
            case .topLeading:  // ZStack topleading
                ShowcaseTokenIllustrationBackground()
                    .padding(.top, dimension)
                    .padding(.leading, dimension)
                    .background(theme.colorContentStatusInfo.color(for: colorScheme))
            case .leading(let asset): // ZStack alignment leading
                HStack(alignment: .center, spacing: theme.spaceFixedNone) {
                    SpaceIllustrationRectangle(width: dimension)
                    SpaceIllustrationIcon(asset: asset)
                }
            case .bottom(let asset): // ZStack alignment bottom
                VStack(alignment: .center, spacing: theme.spaceFixedNone) {
                    SpaceIllustrationIcon(asset: asset)
                    SpaceIllustrationRectangle(height: dimension)
                }
            case .top(let asset): // ZStack alignment top
                VStack(alignment: .center, spacing: theme.spaceFixedNone) {
                    SpaceIllustrationRectangle(height: dimension)
                    SpaceIllustrationIcon(asset: asset)
                }
            case .centerVerticaly: // ZStack alignment center
                VStack(alignment: .center) {
                    SpaceIllustrationRectangle(height: dimension)
                }
            case .centerHorizontaly: // // ZStack alignment center
                VStack(alignment: .center) {
                    SpaceIllustrationRectangle(width: dimension)
                }
            }
        }
        .frame(width: kIllustrationWidth, height: kIllustrationHeight, alignment: .leading)
    }

    private var zStackAlignment: Alignment {
        switch padding {
        case .top:
            Alignment.top
        case .bottom:
            Alignment.bottom
        case .leading:
            Alignment.leading
        case .centerVerticaly, .centerHorizontaly:
            Alignment.center
        case .topLeading:
            Alignment.topLeading
        }
    }
}

// MARK: - Space Scaled Illustration

/// Internal specific `View` used to illustrate scaled tokens.
/// It is specific, because there are two (horizontal and vertical) dimensions.
struct SpaceScaledIllustration: View {

    let horizontalDimension: DimensionRawToken
    let verticalDimension: DimensionRawToken

    var body: some View {
        ZStack(alignment: .center) {
            // Background color
            ShowcaseTokenIllustrationBackground()

            // Illustration
            SpaceIllustrationRectangle(width: horizontalDimension)
                .opacity(0.5)

            SpaceIllustrationRectangle(height: verticalDimension)
                .opacity(0.5)
        }
        .frame(width: kIllustrationWidth, height: kIllustrationHeight, alignment: .center)
    }
}

// MARK: - Space Illustration Icon

/// `View` used to display icon asset on token illustrations.
struct SpaceIllustrationIcon: View {

    enum Asset {
        case icon
        case arrow

        var imageName: String {
            switch self {
            case .icon:
                "ic_token"
            case .arrow:
                "ic_vector"
            }
        }

        var extraPadding: CGFloat {
            switch self {
            case .icon:
                1.0
            case .arrow:
                5.0
            }
        }
    }

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    let asset: Asset?

    var body: some View {
        if let asset {
            Image(decorative: asset.imageName)
                .resizable()
                .renderingMode(.template)
                .aspectRatio(contentMode: .fit)
                .foregroundColor(theme.colorContentStatusInfo.color(for: colorScheme))
                .padding(.horizontal, asset.extraPadding)
                .padding(.vertical, asset.extraPadding)
                .frame(width: 24)
        }
    }
}

// MARK: - Space Illustration Rectangle

/// View used to display a rectangle showing a padding according to
/// the `dimmension` and the `orientation`.
private struct SpaceIllustrationRectangle: View {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    let width: CGFloat?
    let height: CGFloat?

    init(width: DimensionRawToken) {
        self.height = nil
        self.width = Double(width)
    }

    init(height: DimensionRawToken) {
        self.height = Double(height)
        self.width = nil
    }

    var body: some View {
        Rectangle()
            .foregroundColor(theme.colorContentStatusInfo.color(for: colorScheme))
            .frame(width: width, height: height)
    }
}

// MARK: - Space Header Description

/// `View` used to display a header that discribes the token category.
struct SpaceHeaderDescription: View {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    private let iconAsset: SpaceIllustrationIcon.Asset?
    private let firstText: LocalizedStringKey
    private let secondText: LocalizedStringKey?
    private let layout: Self.Layout

    enum TextsOrientation {
        case horizontal
        case verical
    }

    enum AssetPadding {
        case leading
        case trailing
        case top
        case bottom
    }

    private enum Layout {
        case text(EdgeInsets)
        case asset(AssetPadding)
        case texts(TextsOrientation)
    }

    init(firstText: LocalizedStringKey, secondText: LocalizedStringKey, orientation: TextsOrientation) {
        self.firstText = firstText
        self.secondText = secondText
        self.iconAsset = nil

        layout = .texts(orientation)
    }

    init(text: LocalizedStringKey, iconAsset: SpaceIllustrationIcon.Asset, paddings: AssetPadding) {
        self.firstText = text
        self.secondText = nil
        self.iconAsset = iconAsset

        layout = .asset(paddings)
    }

    init(text: LocalizedStringKey, paddings: EdgeInsets) {
        self.firstText = text
        self.iconAsset = nil
        self.secondText = nil
        self.layout = .text(paddings)
    }

    var body: some View {
        content
            .oudsBorder(style: theme.borders.borderStyleDrag, width: theme.borders.borderWidthThin, radius: theme.borders.borderRadiusNone, color: theme.colorBgEmphasized)
                .padding(.all, theme.spaceFixedMedium)
                .background(theme.colorBgEmphasized.color(for: colorScheme))
    }

    @ViewBuilder private var content: some View {
        switch layout {
        case .text(let paddings):
            text(paddings)
        case .asset(let paddings):
            asset(paddings)
        case .texts(let orientation):
            texts(orientation)
        }
    }

    @ViewBuilder
    private func texts(_ orientation: TextsOrientation) -> some View {
        switch orientation {
        case .horizontal:
            HStack(spacing: theme.spaceFixedNone) {
                Text(firstText)
                    .foregroundStyle(theme.colorContentOnOverlayEmphasized.color(for: colorScheme))
                    .typeBodyDefaultMedium(theme)

                SpaceIllustrationRectangle(width: 8)

                if let secondText {
                    Text(secondText)
                        .foregroundStyle(theme.colorContentOnOverlayEmphasized.color(for: colorScheme))
                        .typeBodyDefaultMedium(theme)
                }
            }
        case .verical:
            VStack(spacing: theme.spaceFixedNone) {
                Text(firstText)
                    .foregroundStyle(theme.colorContentOnOverlayEmphasized.color(for: colorScheme))
                    .typeBodyDefaultMedium(theme)

                SpaceIllustrationRectangle(height: 8)

                if let secondText {
                    Text(secondText)
                        .foregroundStyle(theme.colorContentOnOverlayEmphasized.color(for: colorScheme))
                        .typeBodyDefaultMedium(theme)
                }
            }
        }
    }

    private func text(_ paddings: EdgeInsets) -> some View {
        HStack {
            Text(firstText)
                .foregroundStyle(theme.colorContentOnOverlayEmphasized.color(for: colorScheme))
                .typeBodyDefaultMedium(theme)
        }
        .background(theme.colorBgEmphasized.color(for: colorScheme))
        .padding(paddings)
        .background(theme.colorContentStatusInfo.color(for: colorScheme))
    }

    @ViewBuilder
    private func asset(_ paddings: AssetPadding) -> some View {
        switch paddings {
        case .top, .bottom:
            VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
                if let iconAsset, paddings == .top {
                    VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
                        SpaceIllustrationRectangle(height: 8)
                        SpaceIllustrationIcon(asset: iconAsset)
                    }
                    .padding(.trailing, theme.spaceFixedShorter)
                }
                if let iconAsset, paddings == .bottom {
                    SpaceIllustrationIcon(asset: iconAsset)
                    SpaceIllustrationRectangle(height: 8)
                }

                Text(firstText)
                    .foregroundStyle(theme.colorContentOnStatusEmphasized.color(for: colorScheme))
                    .typeBodyDefaultMedium(theme)
            }
            .background(theme.colorBgEmphasized.color(for: colorScheme))

        case .leading, .trailing:
            HStack(alignment: .center, spacing: theme.spaceFixedNone) {
                if let iconAsset, paddings == .leading {
                    HStack(alignment: .center, spacing: theme.spaceFixedNone) {
                        SpaceIllustrationRectangle(width: 8)
                        SpaceIllustrationIcon(asset: iconAsset)
                    }
                    .padding(.trailing, theme.spaceFixedShorter)
                }
                if let iconAsset, paddings == .trailing {
                    SpaceIllustrationIcon(asset: iconAsset)
                    SpaceIllustrationRectangle(width: 8)
                }

                Text(firstText)
                    .foregroundStyle(theme.colorContentOnStatusEmphasized.color(for: colorScheme))
                    .typeBodyDefaultMedium(theme)
            }
            .background(theme.colorBgEmphasized.color(for: colorScheme))
        }
    }
}
