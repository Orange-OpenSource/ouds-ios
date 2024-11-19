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

struct SpaceIllustration: View {

    // MARK: Stored properties

    let dimension: DimensionRawToken
    let orientation: SpaceIllustrationOrientation
    let icon: Image?
    let iconExtraPadding: CGFloat?

    // MARK: Initializer

    init(dimension: DimensionRawToken, orientation: SpaceIllustrationOrientation) {
        self.dimension = dimension
        self.orientation = orientation
        self.icon = nil
        self.iconExtraPadding = nil
    }

    init(dimension: DimensionRawToken, orientation: SpaceIllustrationOrientation, icon: Image, iconExtraPadding: CGFloat = 1.0) {
        self.dimension = dimension
        self.orientation = orientation
        self.icon = icon
        self.iconExtraPadding = iconExtraPadding
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
                    SpaceIllustrationIcon(icon: icon, iconExtraPadding: iconExtraPadding)
                }
            case .vertical:
                VStack(alignment: .center, spacing: 0) {
                    SpaceIllustrationIcon(icon: icon, iconExtraPadding: iconExtraPadding)
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
            SpaceIllustrationRectangle(orientation: SpaceIllustrationOrientation.horizontal(position: .center), dimension: horizontalDimension)
                .opacity(0.5)

            SpaceIllustrationRectangle(orientation: SpaceIllustrationOrientation.vertical(position: .center), dimension: verticalDimension)
                .opacity(0.5)
        }
        .frame(width: kIllustrationWidth, height: kIllustrationHeight, alignment: .center)
    }
}

struct SpacePaddingInsetIllustration: View {

    // MARK: Stored properties

    let dimension: DimensionRawToken

    // MARK: Body

    var body: some View {
        ZStack(alignment: .topLeading) {
            // Background color
            ShowcaseTokenIllustrationBackground()

            // Illustration
            SpaceIllustrationRectangle(orientation: .horizontal(position: .leading), dimension: dimension)
            SpaceIllustrationRectangle(orientation: .vertical(position: .top), dimension: dimension)
        }
        .frame(width: kIllustrationWidth, height: kIllustrationHeight, alignment: .center)
    }
}

private struct SpaceIllustrationIcon: View {

    // MARK: Environment properties

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Storeed properties

    let icon: Image?
    let iconExtraPadding: CGFloat?

    // MARK: Body

    var body: some View {
        if let icon {
            icon
                .resizable()
                .renderingMode(.template)
                .aspectRatio(contentMode: .fit)
                .foregroundColor(theme.colorAlwaysInfo.color(for: colorScheme))
                .padding(.horizontal, iconExtraPadding)
                .padding(.vertical, iconExtraPadding)
                .frame(width: 24)
        }
    }
}

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
