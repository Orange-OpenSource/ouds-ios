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

// Internal view to display the space category with a header to
// describe the category and a list of entries for each token in this category.
struct SpaceTokenCategory<HeaderDescription, TokenIllustration>: View where HeaderDescription: View, TokenIllustration: View {

    // MARK: Environment properties

    @Environment(\.theme) private var theme

    // MARK: Stored Properties

    let namedTokens: [NamedSpaceToken]
    @ViewBuilder let header: () -> HeaderDescription
    @ViewBuilder let illustration: (_ token: SpaceSemanticToken) -> TokenIllustration

    // MARK: Initializer

    init(namedTokens: [NamedSpaceToken],
         @ViewBuilder header: @escaping () -> HeaderDescription,
         @ViewBuilder illustration: @escaping (SpaceSemanticToken) -> TokenIllustration) {
        self.namedTokens = namedTokens
        self.header = header
        self.illustration = illustration
    }

    // MARK: Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            header().padding(.bottom, theme.spaceFixedMedium)

            ForEach(namedTokens, id: \.name) { namedSpaceToken in
                SpaceTokenEntry(namedSpaceToken: namedSpaceToken, illustration: illustration)
            }
        }
    }
}

// Internal view to display the token with its name, its value
// and an illustration.
struct SpaceTokenEntry<TokenIllustration>: View where TokenIllustration: View {

    // MARK: Environment properties

    @Environment(\.theme) private var theme

    // MARK: Stored Properties

    let namedSpaceToken: NamedSpaceToken
    @ViewBuilder let illustration: (_ token: SpaceSemanticToken) -> TokenIllustration

    // MARK: Initializer

    init(namedSpaceToken: NamedSpaceToken, illustration: @escaping (SpaceSemanticToken) -> TokenIllustration) {
        self.namedSpaceToken = namedSpaceToken
        self.illustration = illustration
    }

    // MARK: Body

    var body: some View {
        let token = namedSpaceToken.token(from: theme)
        let name = namedSpaceToken.name
        let value = String(format: "%.2f (pt)", token)

        return ShowcaseTokenIllustration(tokenName: name, tokenValue: value) {
            illustration(token)
        }
    }
}

/// Internal View used to illustrate all tokens based on
/// `dimension`, the `padding` of the blue rectangle illustrating
/// the dimension and an optional icon asset.
struct SpaceCommonIllustration: View {

    // MARK: Environment properties

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Stored properties

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

    // MARK: Initializer

    init(dimension: DimensionRawToken, padding: Self.Padding) {
        self.dimension = dimension
        self.padding = padding
    }

    // MARK: Body

    var body: some View {
        ZStack(alignment: zStackAlignment) {
            // Background color
            ShowcaseTokenIllustrationBackground()

            switch padding {
            case .topLeading:  // ZSTack topleading
                ShowcaseTokenIllustrationBackground()
                    .padding(.top, dimension)
                    .padding(.leading, dimension)
                    .background(theme.colorAlwaysInfo.color(for: colorScheme))
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

    // MARK: Private Helper

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

/// Internal specific view used to illustrate scaled tokens.
/// It is specific, because there are two (horizontal and vertical) dimensions.
struct SpaceScaledIllustration: View {

    // MARK: Stored properties

    let horizontalDimension: DimensionRawToken
    let verticalDimension: DimensionRawToken

    // MARK: Body

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

/// Private view used to display icon asset
/// on token illustrations.
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

    // MARK: Environment properties

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Storeed properties

    let asset: Asset?

    // MARK: Body

    var body: some View {
        if let asset {
            Image(decorative: asset.imageName)
                .resizable()
                .renderingMode(.template)
                .aspectRatio(contentMode: .fit)
                .foregroundColor(theme.colorAlwaysInfo.color(for: colorScheme))
                .padding(.horizontal, asset.extraPadding)
                .padding(.vertical, asset.extraPadding)
                .frame(width: 24)
        }
    }
}

/// View used to display a rectangle showing a padding according to
/// the `dimmension` and the `orientation`.
private struct SpaceIllustrationRectangle: View {

    // MARK: Environment properties

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Storeed properties

    let width: CGFloat?
    let height: CGFloat?

    // MARK: Initializers

    init(width: DimensionRawToken) {
        self.height = nil
        self.width = Double(width)
    }
    init(height: DimensionRawToken) {
        self.height = Double(height)
        self.width = nil
    }

    // MARK: Body

    var body: some View {
        Rectangle()
            .foregroundColor(theme.colorAlwaysInfo.color(for: colorScheme))
            .frame(width: width, height: height)
    }
}

/// View used to display a header that discribes the token category.
struct SpaceHeaderDescription: View {

    // MARK: Environment properties

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Stored properties

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

    // MARK: Initializers

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

    // MARK: Body

    var body: some View {
        content
            .oudsBorder(style: theme.borderStyleDrag, width: theme.borderWidthThin, radius: theme.borderRadiusNone, color: theme.colorBorderEmphasizedOnBgEmphasized)
                .padding(.all, theme.spaceFixedMedium)
                .background(theme.colorBgEmphasized.color(for: colorScheme))
    }

    // MARK: Private helpers

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
                    .foregroundStyle(theme.colorContentContentDefaultOnBgEmphasized.color(for: colorScheme))
                    .typeBodyDefaultMedium(theme)

                SpaceIllustrationRectangle(width: 8)

                if let secondText {
                    Text(secondText)
                        .foregroundStyle(theme.colorContentContentDefaultOnBgEmphasized.color(for: colorScheme))
                        .typeBodyDefaultMedium(theme)
                }
            }
        case .verical:
            VStack(spacing: theme.spaceFixedNone) {
                Text(firstText)
                    .foregroundStyle(theme.colorContentContentDefaultOnBgEmphasized.color(for: colorScheme))
                    .typeBodyDefaultMedium(theme)

                SpaceIllustrationRectangle(height: 8)

                if let secondText {
                    Text(secondText)
                        .foregroundStyle(theme.colorContentContentDefaultOnBgEmphasized.color(for: colorScheme))
                        .typeBodyDefaultMedium(theme)
                }
            }
        }
    }

    private func text(_ paddings: EdgeInsets) -> some View {
        HStack {
            Text(firstText)
                .foregroundStyle(theme.colorContentContentDefaultOnBgEmphasized.color(for: colorScheme))
                .typeBodyDefaultMedium(theme)
        }
        .background(theme.colorBgEmphasized.color(for: colorScheme))
        .padding(paddings)
        .background(theme.colorAlwaysInfo.color(for: colorScheme))
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
                    .foregroundStyle(theme.colorContentContentDefaultOnBgEmphasized.color(for: colorScheme))
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
                    .foregroundStyle(theme.colorContentContentDefaultOnBgEmphasized.color(for: colorScheme))
                    .typeBodyDefaultMedium(theme)
            }
            .background(theme.colorBgEmphasized.color(for: colorScheme))
        }
    }
}
