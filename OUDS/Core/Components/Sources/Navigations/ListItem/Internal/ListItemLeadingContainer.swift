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

/// This is the leading container of the ``ListItemContent``.
struct ListItemLeadingContainer: View {

    // MARK: - Properties

    let leading: OUDSListItemLeading
    let interactionState: InteractionState

    @Environment(\.theme) private var theme
    @Environment(\.oudsListItemSize) private var itemSize

    // MARK: - Body

    var body: some View {
        HStack {
            switch leading {
            case let .icon(icon):
                icon
            case let .image(image):
                image
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
        .frame(minHeight: assetSize, alignment: .center)
    }

    // MARK: - Size

    private var assetSize: CGFloat {
        switch itemSize {
        case .standard:
            theme.controlItem.sizeAssetMedium
        case .small:
            theme.controlItem.sizeAssetSmall
        }
    }
}
