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

import AVFoundation
import AVKit
import OUDSTokensSemantic
import SwiftUI

// MARK: - List Item Video

struct ListItemVideo: View {

    // MARK: Properties

    let url: URL

    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnabled
    @Environment(\.oudsListItemSize) private var itemSize
    @Environment(\.oudsListItemRoundedMedia) private var roundedMedia

    // MARK: Body

    var body: some View {
        HStack {
            let player = AVPlayer(url: url)
            VideoPlayer(player: player)
                .aspectRatio(contentMode: .fit)
                .opacity(opacity)
                .frame(height: assetSize, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: radius))
                .onAppear {
                    player.play()
                }
        }
    }

    // MARK: Helpers

    private var radius: BorderRadiusSemanticToken {
        roundedMedia ? theme.controlItem.borderRadiusMediaRoundedCorner : theme.controlItem.borderRadiusMedia
    }

    private var opacity: Double {
        isEnabled ? theme.opacities.opaque : theme.opacities.disabled
    }

    private var assetSize: CGFloat {
        switch itemSize {
        case .standard:
            theme.controlItem.sizeAssetMedium
        case .small:
            theme.controlItem.sizeAssetSmall
        }
    }
}

// MARK: - List Item Image

struct ListItemImage: View {

    // MARK: Properties

    let asset: Image

    @Environment(\.theme) private var theme
    @Environment(\.oudsListItemRoundedMedia) private var roundedMedia
    @Environment(\.oudsListItemSize) private var itemSize
    @Environment(\.isEnabled) private var isEnabled

    // MARK: Body

    var body: some View {
        asset
            .resizable()
            .aspectRatio(contentMode: .fit)
            .opacity(opacity)
            .frame(height: assetSize, alignment: .center)
            .clipShape(RoundedRectangle(cornerRadius: radius))
    }

    // MARK: Helpers

    private var radius: BorderRadiusSemanticToken {
        roundedMedia ? theme.controlItem.borderRadiusMediaRoundedCorner : theme.controlItem.borderRadiusMedia
    }

    private var opacity: Double {
        isEnabled ? theme.opacities.opaque : theme.opacities.disabled
    }

    private var assetSize: CGFloat {
        switch itemSize {
        case .standard:
            theme.controlItem.sizeAssetMedium
        case .small:
            theme.controlItem.sizeAssetSmall
        }
    }
}

// MARK: - List Item Flag

struct ListItemFlag: View {

    // MARK: Properties

    let asset: Image

    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnabled
    @Environment(\.oudsListItemSize) private var itemSize

    // MARK: Body

    var body: some View {
        HStack {
            asset
                .resizable()
                .aspectRatio(contentMode: .fit)
                .opacity(opacity)
                .frame(height: theme.controlItem.sizeFlagHeight, alignment: .center)
        }
        .frame(minWidth: assetSize, alignment: .center)
    }

    // MARK: Helpers

    private var opacity: Double {
        isEnabled ? theme.opacities.opaque : theme.opacities.disabled
    }

    private var assetSize: CGFloat {
        switch itemSize {
        case .standard:
            theme.controlItem.sizeAssetMedium
        case .small:
            theme.controlItem.sizeAssetSmall
        }
    }
}
