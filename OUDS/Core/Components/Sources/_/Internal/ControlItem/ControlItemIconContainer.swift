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

import OUDSTokensRaw
import OUDSTokensSemantic
import SwiftUI

/// This is the icon container of the ControlItem.
///
/// This is a container because the height of the frame can increase dynamically
/// to a `maxHeight` fixed by a specific token.
/// The icon with a fixed size is centered in this frame.
struct ControlItemIconContainer: View {

    // MARK: - Stored properties

    let interactionState: InteractionState
    let layoutData: ControlItemLabel.LayoutData

    @Environment(\.theme) private var theme

    // MARK: Body

    var body: some View {
        if layoutData.isError || layoutData.icon != nil {
            HStack(alignment: .center, spacing: 0) {
                icon
            }
            // TODO: #1437 - Which token use instead of sizeMaxHeightAssetsContainer?
            /*
             .frame(minHeight: theme.controlItem.sizeAssetSmall,
                    maxHeight: theme.controlItem.sizeMaxHeightAssetsContainer,
                    alignment: .center)
              */
            .frame(minHeight: theme.controlItem.sizeAssetSmall,
                   maxHeight: DimensionRawTokens._1200,
                   alignment: .center)
        }
    }

    // MARK: - Colors

    @ViewBuilder
    private var icon: some View {
        if layoutData.isError {
            Image(decorative: "ic_alert_important_fill", bundle: theme.resourcesBundle)
                .renderingMode(.template)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .accessibilityHidden(true)
                .foregroundColor(errorIconColor)
                .frame(width: theme.controlItem.sizeAssetSmall, // TODO: #1437 - Which token should replace sizeErrorIcon? sizeAssetSmall?
                       height: theme.controlItem.sizeAssetSmall)
                .padding(.horizontal, theme.controlItem.spacePaddingBlockDensityCompact) // TODO: #1437 - Which token should replace spacePaddingInlineErrorIcon? spacePaddingBlockDensityCompact?
        } else {
            if let icon = layoutData.icon {
                icon
                    .resizable()
                    .renderingMode(.template)
                    .accessibilityHidden(true)
                    .foregroundStyle(color)
                    .frame(width: theme.controlItem.sizeAssetSmall,
                           height: theme.controlItem.sizeAssetSmall)
                    .toFlip(layoutData.flipIcon)
            }
        }
    }

    private var color: MultipleColorSemanticToken {
        switch interactionState {
        case .enabled, .pressed, .hover, .readOnly:
            theme.colors.contentDefault
        case .disabled:
            theme.colors.contentDisabled
        }
    }

    private var errorIconColor: MultipleColorSemanticToken {
        switch interactionState {
        case .enabled:
            theme.colors.actionNegativeEnabled
        case .pressed:
            theme.colors.actionNegativePressed
        case .hover:
            theme.colors.actionNegativeHover
        case .readOnly, .disabled:
            theme.colors.actionDisabled
        }
    }
}
