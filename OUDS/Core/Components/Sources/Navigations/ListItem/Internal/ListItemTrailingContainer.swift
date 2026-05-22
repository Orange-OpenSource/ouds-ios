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
    let small: Bool
    let interactionState: InteractionState

    @Environment(\.theme) private var theme
    @Environment(\.oudsListContainersAlignment) private var alignment

    // MARK: Body

    var body: some View {
        HStack {
            switch trailing {
            case let .text(type):
                ListItemTrailingTexts(textType: type, small: small)
            case let .badge(badge):
                badge
            case let .tag(tag):
                tag
            case let .icon(icon):
                icon
            case let .image(asset):
                ListItemImage(asset: asset, small: small)
            case let .flag(asset: asset):
                ListItemFlag(asset: asset, small: small)
            case let .video(url):
                ListItemVideo(url: url, small: small)
            case let .avatar(avatar):
                avatar
            }
        }
        .disabled(interactionState == .disabled)
        .frame(minHeight: minHeight, alignment: .center)
    }

    // MARK: - Colors

    private var textColor: MultipleColorSemanticToken {
        switch interactionState {
        case .enabled, .pressed, .hover, .readOnly:
            theme.colors.contentDefault
        case .disabled:
            theme.colors.contentDisabled
        }
    }

    private var minHeight: CGFloat {
        small ? theme.controlItem.sizeAssetSmall : theme.controlItem.sizeAssetMedium
    }
}
