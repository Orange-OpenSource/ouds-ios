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

/// This is the leading container of the `ListItemContent.
struct ListItemLeadingContainer: View {

    // MARK: - Properties

    let leading: OOUDSListItemLeading
    let small: Bool
    let interactionState: InteractionState
    @Environment(\.theme) private var theme

    // MARK: - Body

    var body: some View {
        switch leading {
        case let .icon(asset: asset):
            asset
                .resizable()
                .renderingMode(.template)
                .aspectRatio(contentMode: .fit)
                .foregroundColor(color)
                .frame(width: assetSize, height: assetSize, alignment: .center)
        case let .image(asset: asset):
            asset
                .resizable()
                .aspectRatio(contentMode: .fit)
                .opacity(opcity)
                .frame(height: assetSize, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: theme.controlItem.borderRadiusMedia))
        case let .flag(asset: asset):
            HStack {
                asset
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .opacity(opcity)
                    .frame(height: theme.controlItem.sizeFlagHeight, alignment: .center)
            }
            .frame(minWidth: assetSize, minHeight: assetSize, alignment: .center)
        case let .video(url):
            HStack {
                let player = AVPlayer(url: url)
                VideoPlayer(player: player)
                    .aspectRatio(contentMode: .fit)
                    .opacity(opcity)
                    .frame(height: assetSize, alignment: .center)
                    .clipShape(RoundedRectangle(cornerRadius: theme.controlItem.borderRadiusMedia))
                    .onAppear {
                        player.play()
                    }
            }
        }
    }

    private var opcity: Double {
        interactionState == .disabled ? theme.opacities.disabled : theme.opacities.opaque
    }

    private var color: MultipleColorSemanticToken {
        interactionState == .disabled ? theme.colors.contentDisabled : theme.colors.contentDefault
    }

    private var assetSize: CGFloat {
        small ? theme.controlItem.sizeAssetSmall : theme.controlItem.sizeAssetMedium
    }

    private var radius: CGFloat {
        theme.tuning.hasRoundedListItems ? theme.controlItem.borderRadiusMediaRoundedCorner : theme.controlItem.borderRadiusMedia
    }
}
