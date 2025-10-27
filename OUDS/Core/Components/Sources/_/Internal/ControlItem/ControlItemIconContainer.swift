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
            .frame(maxHeight: theme.controlItem.controlItemSizeMaxHeightAssetsContainer, alignment: .center)
        }
    }

    // MARK: - Colors

    @ViewBuilder
    private var icon: some View {
        if layoutData.isError {
            Image(decorative: "ic_important", bundle: theme.resourcesBundle)
                .renderingMode(.template)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .accessibilityHidden(true)
                .oudsForegroundColor(errorIconColor)
                .frame(width: theme.controlItem.controlItemSizeErrorIcon, height: theme.controlItem.controlItemSizeErrorIcon)
                .padding(.horizontal, theme.controlItem.controlItemSpacePaddingInlineErrorIcon)
        } else {
            if let icon = layoutData.icon {
                icon
                    .resizable()
                    .renderingMode(.template)
                    .accessibilityHidden(true)
                    .oudsForegroundStyle(iconColor)
                    .frame(width: theme.controlItem.controlItemSizeIcon, height: theme.controlItem.controlItemSizeIcon)
                    .toFlip(layoutData.flipIcon)
            }
        }
    }

    private var iconColor: MultipleColorSemanticTokens {
        switch interactionState {
        case .enabled, .pressed, .hover, .readOnly:
            theme.colors.colorContentDefault
        case .disabled:
            theme.colors.colorContentDisabled
        }
    }

    private var errorIconColor: MultipleColorSemanticTokens {
        switch interactionState {
        case .enabled:
            theme.colors.colorActionNegativeEnabled
        case .pressed:
            theme.colors.colorActionNegativePressed
        case .hover:
            theme.colors.colorActionNegativeHover
        case .readOnly, .disabled:
            theme.colors.colorActionDisabled
        }
    }
}
