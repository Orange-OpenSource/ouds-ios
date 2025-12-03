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
            .frame(minHeight: theme.controlItem.sizeIcon, maxHeight: theme.controlItem.sizeMaxHeightAssetsContainer, alignment: .center)
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
                .frame(width: theme.controlItem.sizeErrorIcon, height: theme.controlItem.sizeErrorIcon)
                .padding(.horizontal, theme.controlItem.spacePaddingInlineErrorIcon)
        } else {
            if let icon = layoutData.icon {
                icon
                    .resizable()
                    .renderingMode(.template)
                    .accessibilityHidden(true)
                    .oudsForegroundStyle(color)
                    .frame(width: theme.controlItem.sizeIcon, height: theme.controlItem.sizeIcon)
                    .toFlip(layoutData.flipIcon)
            }
        }
    }

    private var color: MultipleColorSemanticTokens {
        switch interactionState {
        case .enabled, .pressed, .hover, .readOnly:
            theme.colors.contentDefault
        case .disabled:
            theme.colors.contentDisabled
        }
    }

    private var errorIconColor: MultipleColorSemanticTokens {
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
