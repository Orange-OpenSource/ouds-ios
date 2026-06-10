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

import AVKit
import OUDSTokensSemantic
import SwiftUI

/// This is the trailing container of the `ListItemContent`.
///
struct ListItemTrailingContainer: View {

    // MARK: - Stored properties

    let trailing: OUDSListItemTrailing
    let interactionState: InteractionState

    @Environment(\.theme) private var theme
    @Environment(\.oudsListItemSize) private var itemSize

    // MARK: Body

    var body: some View {
        HStack {
            switch trailing {
            case let .text(type):
                ListItemTrailingTexts(textType: type)
            case let .badge(badge):
                badge
            case let .tag(tag):
                tag
            case let .icon(icon):
                icon
            case let .image(asset):
                ListItemImage(asset: asset)
            case let .flag(asset: asset):
                ListItemFlag(asset: asset)
            case let .video(url):
                ListItemVideo(url: url)
            case let .avatar(avatar):
                avatar
            }
        }
        .disabled(interactionState == .disabled)
        .frame(minHeight: minHeight, alignment: .center)
    }

    // MARK: - Size

    private var minHeight: CGFloat {
        switch itemSize {
        case .standard:
            theme.controlItem.sizeAssetMedium
        case .small:
            theme.controlItem.sizeAssetSmall
        }
    }
}
