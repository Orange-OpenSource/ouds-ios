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
        HStack {
            switch leading {
            case let .icon(asset: asset):
                ListItemIcon(asset: asset, small: small)
            case let .image(asset: asset):
                ListItemImage(asset: asset, small: small)
            case let .flag(asset: asset):
                ListItemFlag(asset: asset, small: small)
            case let .video(url):
                ListItemVideo(url: url, small: small)
            }
        }
        .disabled(interactionState == .disabled)
        .frame(minHeight: assetSize, alignment: .center)
    }

    private var assetSize: CGFloat {
        small ? theme.controlItem.sizeAssetSmall : theme.controlItem.sizeAssetMedium
    }
}
