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
    let icon: Image?
    let flip: Bool

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Body

    var body: some View {
        if let icon = icon {
            HStack(alignment: .center, spacing: 0) {
                icon
                    .resizable()
                    .renderingMode(.template)
                    .oudsForegroundStyle(iconColor)
                    .accessibilityHidden(true)
                    .frame(width: theme.controlItem.controlItemSizeIcon, height: theme.controlItem.controlItemSizeIcon)
                    .toFlip(flip: flip)
            }
            .frame(maxHeight: theme.controlItem.controlItemSizeMaxHeightAssetsContainer, alignment: .center)
        }
    }

    // MARK: - Colors

    private var iconColor: MultipleColorSemanticTokens {
        switch interactionState {
        case .enabled, .pressed, .hover, .readOnly:
            theme.colors.colorContentDefault
        case .disabled:
            theme.colors.colorContentDisabled
        }
    }
}
