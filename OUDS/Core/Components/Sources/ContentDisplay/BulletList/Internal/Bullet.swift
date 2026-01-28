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

struct Bullet: View {

    // MARK: - Properties

    let type: OudsBulletList.`Type`
    let level: OudsBulletList.NestedLevel
    let textStyle: OudsBulletList.TextStyle
    let isBold: Bool
    let index: UInt8

    @Environment(\.theme) private var theme
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass

    // MARK: - Body

    var body: some View {
        VStack {
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

    // MARK: - Private helpers

    private var width: CGFloat {
        let token = switch textStyle {
        case .bodyLarge:
            theme.sizes.iconWithBodyLargeSizeMedium
        case .bodyMedium:
            theme.sizes.iconWithBodyMediumSizeMedium
        }

        return token.dimension(for: horizontalSizeClass ?? .regular)
    }

    private var maxHeight: CGFloat {
        let token = switch textStyle {
        case .bodyLarge:
            theme.fonts.lineHeightBodyLarge
        case .bodyMedium:
            theme.fonts.lineHeightBodyMedium
        }

        return token.lineHeight(for: verticalSizeClass ?? .regular)
    }
}

struct UnorderedBullet: View {

    // MARK: - Properties

    let icon: OudsBulletList.UnorderedIcon
    let isBranded: Bool
    let level: OudsBulletList.NestedLevel
    let textStyle: OudsBulletList.TextStyle

    @Environment(\.theme) private var theme
    @Environment(\.verticalSizeClass) private var verticalSizeClass

    // MARK: - Body

    var body: some View {
        asset
            .resizable()
            .renderingMode(.template)
            .oudsForegroundColor(color)
            .frame(width: assetSize, height: assetSize, alignment: .center)
    }

    // MARK: - Private helpers

    private var asset: Image {
        switch icon {
        case .bullet:
            Image(bulletAssetName, bundle: theme.resourcesBundle)
        case .tick:
            Image("ic_bullet_list_tick", bundle: theme.resourcesBundle)
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

struct OrderedBullet: View {

    // MARK: - Properties

    let level: OudsBulletList.NestedLevel
    let textStyle: OudsBulletList.TextStyle
    let isBold: Bool
    let index: UInt8

    @Environment(\.theme) private var theme

    // MARK: - Body

    var body: some View {
        Group {
            switch level {
            case .zero:
                Text("\(index). ")
            case .one:
                let character = Character(UnicodeScalar(UInt8(ascii: "A") + index))
                Text(String(character) + ".")
            case .two:
                let character = Character(UnicodeScalar(UInt8(ascii: "a") + index))
                Text(String(character) + ".")
            }
        }
        .modifier(BulletTextModifier(textStyle: textStyle, isBold: isBold))
    }
}
