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
            case let .image(asset: asset, description: description):
                ListItemImage(asset: asset, description: description)
            case let .flag(asset: asset):
                ListItemFlag(asset: asset)
                    .accessibilityHidden(true)
            case let .avatar(avatar):
                avatar
                    .accessibilityHidden(true)
            #if os(iOS)
            case let .video(url, autoplay, muted, tapToTogglePlay, tapToToggleMute):
                ListItemVideo(url: url,
                              autoplay: autoplay,
                              muted: muted,
                              tapToTogglePlay: tapToTogglePlay,
                              tapToToggleMute: tapToToggleMute)
            #endif
            }
        }
        .disabled(interactionState == .disabled)
        .frame(minHeight: minHeight, alignment: .center)
    }

    // MARK: - Helper

    private var minHeight: CGFloat {
        switch itemSize {
        case .standard:
            theme.controlItem.sizeAssetMedium
        case .small:
            theme.controlItem.sizeAssetSmall
        }
    }
}
