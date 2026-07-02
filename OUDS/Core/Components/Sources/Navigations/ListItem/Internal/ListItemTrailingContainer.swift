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

import OUDSTokensSemantic
import SwiftUI

/// Trailing container of the ``ListItemContent``.
struct ListItemTrailingContainer: View {

    // MARK: - Properties

    let trailing: OUDSListItemTrailing
    let interactionState: InteractionState

    @Environment(\.theme) private var theme
    @Environment(\.oudsListItemSize) private var itemSize
    @Environment(\.dynamicTypeSize) private var dynamicTypeSize: DynamicTypeSize

    // MARK: Body

    var body: some View {
        HStack {
            switch trailing {
            case let .text(type):
                ListItemTrailingTexts(textType: type)
            case let .badge(badgeType):
                switch badgeType {
                case let .standard(badge):
                    badge
                case let .count(badge):
                    badge
                }
            case let .tag(tag):
                tag
            case let .icon(icon):
                icon
            case let .image(image):
                image
            case let .flag(flag):
                flag
                    .accessibilityHidden(true)
            case let .avatar(avatar):
                avatar
                    .accessibilityHidden(true)
            #if os(iOS)
            case let .video(video):
                video
            #endif
            }
        }
        .disabled(interactionState == .disabled)
        .frame(minHeight: minHeight, alignment: .center)
    }

    // MARK: - Size helper

    private var minHeight: CGFloat {
        let rawSize = switch itemSize {
        case .standard:
            // TODO: ouds/💠_control/list-item/size/asset/medium
            theme.controlItem.sizeAssetMedium
        case .small:
            // TODO: ouds/💠_control/list-item/size/asset/small
            theme.controlItem.sizeAssetSmall
        }

        return rawSize * dynamicTypeSize.percentageRate / 100
    }
}
