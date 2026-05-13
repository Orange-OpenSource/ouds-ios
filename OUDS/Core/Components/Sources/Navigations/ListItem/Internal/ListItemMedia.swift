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

struct ListItemVideo: View {

    // MARK: - Properties

    let url: URL
    let small: Bool
    let isEnabled: Bool
    @Environment(\.theme) private var theme

    // MARK: - Body

    var body: some View {
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

    // MARK: - Heleprs

    private var opcity: Double {
        isEnabled ? theme.opacities.opaque : theme.opacities.disabled
    }

    private var assetSize: CGFloat {
        small ? theme.controlItem.sizeAssetSmall : theme.controlItem.sizeAssetMedium
    }
}

struct ListItemImage: View {

    // MARK: - Properties

    let asset: Image
    let small: Bool
    let isEnabled: Bool
    @Environment(\.theme) private var theme

    var body: some View {
        asset
            .resizable()
            .aspectRatio(contentMode: .fit)
            .opacity(opcity)
            .frame(height: assetSize, alignment: .center)
            .clipShape(RoundedRectangle(cornerRadius: theme.controlItem.borderRadiusMedia))
    }

    private var opcity: Double {
        isEnabled ? theme.opacities.opaque : theme.opacities.disabled
    }

    private var assetSize: CGFloat {
        small ? theme.controlItem.sizeAssetSmall : theme.controlItem.sizeAssetMedium
    }
}

struct ListItemIcon: View {

    // MARK: - Properties

    let asset: Image
    let small: Bool
    let isEnabled: Bool
    @Environment(\.theme) private var theme

    // MARK: - Body

    var body: some View {
        asset
            .resizable()
            .renderingMode(.template)
            .aspectRatio(contentMode: .fit)
            .foregroundColor(color)
            .frame(width: assetSize, height: assetSize, alignment: .center)
    }

    private var color: MultipleColorSemanticToken {
        isEnabled ? theme.colors.contentDefault : theme.colors.contentDisabled
    }

    private var assetSize: CGFloat {
        small ? theme.controlItem.sizeAssetSmall : theme.controlItem.sizeAssetMedium
    }
}

struct ListItemFlag: View {

    // MARK: - Properties

    let asset: Image
    let small: Bool
    let isEnabled: Bool
    @Environment(\.theme) private var theme

    // MARK: - Body

    var body: some View {
        HStack {
            asset
                .resizable()
                .aspectRatio(contentMode: .fit)
                .opacity(opcity)
                .frame(height: theme.controlItem.sizeFlagHeight, alignment: .center)
        }
        .frame(minWidth: assetSize, alignment: .center)
    }

    private var opcity: Double {
        isEnabled ? theme.opacities.opaque : theme.opacities.disabled
    }

    private var assetSize: CGFloat {
        small ? theme.controlItem.sizeAssetSmall : theme.controlItem.sizeAssetMedium
    }
}
