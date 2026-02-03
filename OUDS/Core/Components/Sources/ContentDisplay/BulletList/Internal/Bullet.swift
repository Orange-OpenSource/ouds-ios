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

import OUDSFoundations
import OUDSTokensSemantic
import SwiftUI

// MARK: - Bullet

struct Bullet: View {

    // MARK: Properties

    let type: OUDSBulletList.`Type`
    let level: OUDSBulletList.NestedLevel
    let textStyle: OUDSBulletList.TextStyle
    let isBold: Bool
    let index: UInt8

    @Environment(\.theme) private var theme
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    @Environment(\.dynamicTypeSize) private var dynamicTypeSize: DynamicTypeSize

    // MARK: Body

    var body: some View {
        HStack(alignment: .center) {
            switch type {
            case let .unordered(icon, isBranded):
                UnorderedBullet(icon: icon, isBranded: isBranded, level: level, textStyle: textStyle)
            case .ordered:
                OrderedBullet(level: level, textStyle: textStyle, isBold: isBold, index: index)
            case .bare:
                Rectangle().fill(.clear)
            }
        }
        .frame(width: width, alignment: .trailing)
        .frame(maxHeight: maxHeight, alignment: .center)
    }

    // MARK: Private helpers

    private var width: CGFloat {
        let token = switch textStyle {
        case .bodyLarge:
            theme.sizes.iconWithBodyLargeSizeMedium
        case .bodyMedium:
            theme.sizes.iconWithBodyMediumSizeMedium
        }

        let rawSize = token.dimension(for: horizontalSizeClass ?? .regular)

        // Ordered type, means bullet is a text, so for dynamic font the
        // width of the container must be adjusted.
        if case .ordered = type {
            return rawSize * dynamicTypeSize.percentageRate / 100
        } else {
            return rawSize
        }
    }

    private var maxHeight: CGFloat {
        let token = switch textStyle {
        case .bodyLarge:
            theme.fonts.lineHeightBodyLarge
        case .bodyMedium:
            theme.fonts.lineHeightBodyMedium
        }

        let rawSize = token.lineHeight(for: verticalSizeClass ?? .regular)
        return rawSize * dynamicTypeSize.percentageRate / 100
    }
}

// MARK: - Unordered Bullet

struct UnorderedBullet: View {

    // MARK: Properties

    let icon: OUDSBulletList.UnorderedIcon
    let isBranded: Bool
    let level: OUDSBulletList.NestedLevel
    let textStyle: OUDSBulletList.TextStyle

    @Environment(\.theme) private var theme
    @Environment(\.verticalSizeClass) private var verticalSizeClass

    // MARK: Body

    var body: some View {
        asset
            .resizable()
            .renderingMode(.template)
            .oudsForegroundColor(color)
            .frame(width: assetSize, height: assetSize, alignment: .center)
    }

    // MARK: Private helpers

    private var asset: Image {
        switch icon {
        case .bullet:
            Image(decorative: bulletAssetName, bundle: theme.resourcesBundle)
        case .tick:
            Image(decorative: "ic_bullet_list_tick", bundle: theme.resourcesBundle)
        case let .free(image, _):
            image
        }
    }

    private var bulletAssetName: String {
        switch level {
        case .zero:
            "ic_bullet_list_level0"
        case .one:
            "ic_bullet_list_level1"
        case .two:
            "ic_bullet_list_level2"
        }
    }

    private var color: MultipleColorSemanticToken {
        isBranded ? theme.colors.contentBrandPrimary : theme.colors.contentDefault
    }

    private var assetSize: CGFloat {
        switch textStyle {
        case .bodyLarge:
            theme.sizes.iconWithBodyLargeSizeSmall.dimension(for: verticalSizeClass ?? .regular)
        case .bodyMedium:
            theme.sizes.iconWithBodyMediumSizeSmall.dimension(for: verticalSizeClass ?? .regular)
        }
    }
}

// MARK: - Ordered Bullet

struct OrderedBullet: View {

    // MARK: Properties

    let level: OUDSBulletList.NestedLevel
    let textStyle: OUDSBulletList.TextStyle
    let isBold: Bool
    let index: UInt8

    // MARK: Body

    var body: some View {
        Group {
            switch level {
            case .zero:
                Text(Self.levelZeroBullet(for: index))
            case .one:
                Text(Self.levelOneBullet(for: index))
            case .two:
                Text(Self.levelTwoBullet(for: index))
            }
        }
        .modifier(BulletTextModifier(textStyle: textStyle, isBold: isBold))
    }

    // MARK: Helpers

    static func levelZeroBullet(for index: UInt8) -> String {
        if OUDSUtils.isArabicLanguageInUse() {
            ".\(index + 1)"
        } else {
            "\(index + 1)."
        }
    }

    static func levelOneBullet(for index: UInt8) -> String {
        if OUDSUtils.isArabicLanguageInUse() {
            OUDSUtils.cyclicArabicLetter(at: index) + "." // NOTE: . won't be leading but trailing, arabic alphabet in use
        } else {
            OUDSUtils.cyclicLatinLetter(at: index, isUppercase: true) + "."
        }
    }

    static func levelTwoBullet(for index: UInt8) -> String {
        if OUDSUtils.isArabicLanguageInUse() {
            OUDSUtils.cyclicArabicLetter(at: index) + "." // NOTE: . won't be leading but trailing, arabic alphabet in use
        } else {
            OUDSUtils.cyclicLatinLetter(at: index, isUppercase: false) + "."
        }
    }
}
