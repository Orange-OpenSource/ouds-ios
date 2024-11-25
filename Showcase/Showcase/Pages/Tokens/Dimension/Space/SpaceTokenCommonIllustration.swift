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
import SwiftUI

// MARK: - Internal constants

private let kIllustrationHeight = 72.0
private let kIllustrationWidth = 72.0

/// Internal View used to illustrate all tokens based on
/// `dimension`, the `orientation` of the blue rectangle illustrating
/// the dimension and an optional icon asset.
struct SpaceIllustration: View {

    // MARK: Environment properties

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Stored properties

    let dimension: DimensionRawToken
    let orientation: SpaceIllustrationOrientation
    let iconAsset: SpaceIllustrationIcon.Asset?

    // MARK: Initializer

    init(dimension: DimensionRawToken, orientation: SpaceIllustrationOrientation, iconAsset: SpaceIllustrationIcon.Asset? = nil) {
        self.dimension = dimension
        self.orientation = orientation
        self.iconAsset = iconAsset
    }

    // MARK: Body

    var body: some View {
        ZStack(alignment: zStackAlignment) {
            // Background color
            ShowcaseTokenIllustrationBackground()

            // Illustration
            switch orientation {
            case .horizontal:
                HStack(alignment: .center, spacing: 0) {
                    SpaceIllustrationRectangle(orientation: orientation, dimension: dimension)
                    SpaceIllustrationIcon(asset: iconAsset)
                }

            case .vertical:
                VStack(alignment: .center, spacing: 0) {
                    SpaceIllustrationIcon(asset: iconAsset)
                    SpaceIllustrationRectangle(orientation: orientation, dimension: dimension)
                }
            }
        }
        .frame(width: kIllustrationWidth, height: kIllustrationHeight, alignment: .leading)
    }

    // MARK: Private Helper

    private var zStackAlignment: Alignment {
        switch orientation {
        case .horizontal(let position):
            switch position {
            case .leading:
                return .leading
            case .center:
                return .center
            }
        case .vertical(let position):
            switch position {
            case .top:
                return .top
            case .center:
                return .center
            case .bottom:
                return .bottom
            }
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
            SpaceIllustrationRectangle(orientation: .horizontal(position: .center), dimension: horizontalDimension)
                .opacity(0.5)

            SpaceIllustrationRectangle(orientation: .vertical(position: .center), dimension: verticalDimension)
                .opacity(0.5)
        }
        .frame(width: kIllustrationWidth, height: kIllustrationHeight, alignment: .center)
    }
}

/// Internal specific view used to illustrate padding inset tokens.
/// It is specific because there is only inset padding on the illustration.
struct SpacePaddingInsetIllustration: View {

    // MARK: Environment properties

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Stored properties

    let dimension: DimensionRawToken

    // MARK: Body

    var body: some View {
        ZStack(alignment: .topLeading) {
            ShowcaseTokenIllustrationBackground()
                .padding(.top, dimension)
                .padding(.leading, dimension)
                .background(theme.colorAlwaysInfo.color(for: colorScheme))
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

    let orientation: SpaceIllustrationOrientation
    let dimension: DimensionRawToken

    // MARK: Body

    var body: some View {
        switch orientation {
        case .horizontal:
            Rectangle()
                .foregroundColor(theme.colorAlwaysInfo.color(for: colorScheme))
                .frame(width: dimension)
        case .vertical:
            Rectangle()
                .foregroundColor(theme.colorAlwaysInfo.color(for: colorScheme))
                .frame(height: dimension)
        }
    }
}

enum SpaceIllustrationOrientation {
    enum HorizontalPosition {
        case leading
        case center
    }
    enum VerticalPosition {
        case top
        case center
        case bottom
    }

    case horizontal(position: HorizontalPosition)
    case vertical(position: VerticalPosition)
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

    enum Orientation {
        case horizontal
        case verical
    }

    private enum Layout {
        case fixHorizontal(EdgeInsets)
        case oriented(Orientation)
    }

    // MARK: Initializers

    init(firstText: LocalizedStringKey, secondText: LocalizedStringKey, orientation: Orientation) {
        self.firstText = firstText
        self.secondText = secondText
        self.iconAsset = nil

        layout = .oriented(orientation)
    }

    init(text: LocalizedStringKey, iconAsset: SpaceIllustrationIcon.Asset, orientation: Orientation) {
        self.firstText = text
        self.secondText = nil
        self.iconAsset = iconAsset

        layout = .oriented(orientation)
    }

    init(text: LocalizedStringKey, paddings: EdgeInsets, iconAsset: SpaceIllustrationIcon.Asset? = nil) {
        self.iconAsset = iconAsset
        self.firstText = text
        self.secondText = nil
        self.layout = .fixHorizontal(paddings)
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
        case .fixHorizontal(let paddings):
            fixHorizontal(paddings)
        case .oriented(let orientation):
            switch orientation {
            case .horizontal:
                horizontal
            case .verical:
                vertical
            }
        }
    }

    private func fixHorizontal(_ paddings: EdgeInsets) ->  some View {
        HStack(spacing: theme.spaceFixedShorter) {
            SpaceIllustrationIcon(asset: iconAsset)

            Text(firstText)
                .foregroundStyle(theme.colorContentContentDefaultOnBgEmphasized.color(for: colorScheme))
                .typeBodyDefaultMedium(theme)
        }
        .background(theme.colorBgEmphasized.color(for: colorScheme))
        .padding(paddings)
        .background(theme.colorAlwaysInfo.color(for: colorScheme))
    }

    private var horizontal: some View {
        HStack(alignment: .center, spacing: theme.spaceFixedNone) {
            if let iconAsset {
                SpaceIllustrationIcon(asset: iconAsset)
                SpaceIllustrationRectangle(orientation: .horizontal(position: .center), dimension: 8)
            }

            Text(firstText)
                .foregroundStyle(theme.colorContentContentDefaultOnBgEmphasized.color(for: colorScheme))
                .typeBodyDefaultMedium(theme)

            if let secondText {
                SpaceIllustrationRectangle(orientation: .horizontal(position: .center), dimension: 8)
                Text(secondText)
                    .foregroundStyle(theme.colorContentContentDefaultOnBgEmphasized.color(for: colorScheme))
                    .typeBodyDefaultMedium(theme)
            }
        }
    }

    private var vertical: some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            if let iconAsset {
                SpaceIllustrationIcon(asset: iconAsset)
                SpaceIllustrationRectangle(orientation: .vertical(position: .center), dimension: 8)
            }

            Text(firstText)
                .foregroundStyle(theme.colorContentContentDefaultOnBgEmphasized.color(for: colorScheme))
                .typeBodyDefaultMedium(theme)

            if let secondText {
                SpaceIllustrationRectangle(orientation: .vertical(position: .center), dimension: 8)
                Text(secondText)
                    .foregroundStyle(theme.colorContentContentDefaultOnBgEmphasized.color(for: colorScheme))
                    .typeBodyDefaultMedium(theme)
            }
        }
    }
}
