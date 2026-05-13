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

    let trailing: OOUDSListItemTrailing
    let small: Bool
    let interactionState: InteractionState

    @Environment(\.theme) private var theme
    @Environment(\.oudsListContainersAlignment) private var alignment

    // MARK: Body

    var body: some View {
        HStack {
            switch trailing {
            case let .text(text):
                HStack {
                    text.labelDefaultLarge(theme)
                        .foregroundColor(textColor)
                        .padding(.top, topTextPadding)
                }
            case let .badge(badge):
                badge.disabled(interactionState == .disabled)
            case let .tag(tag):
                tag.disabled(interactionState == .disabled)
            case let .icon(asset: asset):
                ListItemIcon(asset: asset,
                             small: small,
                             isEnabled: !(interactionState == .disabled))
            case let .image(asset: asset):
                ListItemImage(asset: asset,
                              small: small,
                              isEnabled: !(interactionState == .disabled))
            case let .flag(asset: asset):
                ListItemFlag(asset: asset,
                             small: small,
                             isEnabled: !(interactionState == .disabled))
            case let .video(url):
                ListItemVideo(url: url,
                              small: small,
                              isEnabled: !(interactionState == .disabled))
            }
        }
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

    private var topTextPadding: SpaceSemanticToken {
        switch alignment {
        case .center:
            theme.spaces.fixedNone
        case .top:
            small ?
                theme.controlItem.spacePaddingBlockDensityCompactTopAlignmentTopTextContainer
                : theme.controlItem.spacePaddingBlockDensityDefaultTopAlignmentTopTextContainer
        }
    }

    private var minHeight: CGFloat {
        small ? theme.controlItem.sizeAssetSmall : theme.controlItem.sizeAssetMedium
    }
}
