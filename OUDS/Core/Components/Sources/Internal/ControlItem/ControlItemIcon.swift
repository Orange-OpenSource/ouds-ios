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

import SwiftUI

struct ControlItemIcon: View {

    // MARK: - Stored properties

    let interactionState: InteractionState
    let icon: Image?
    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Body

    var body: some View {
        if let icon = icon {
            HStack(alignment: .center, spacing: 0) {
                icon
                    .resizable()
                    .renderingMode(.template)
                    .foregroundStyle(iconColor)
                    .frame(width: theme.controlItem.controlItemSizeIcon,
                           height: theme.controlItem.controlItemSizeIcon)
            }
            .frame(maxHeight: theme.controlItem.controlItemSizeMaxHeightAssetsContainer,
                   alignment: .center)
        }
    }

    // MARK: - Colors

    private var iconColor: Color {
        switch interactionState {
        case .enabled, .pressed, .hover, .readOnly:
            theme.colors.colorContentDefault.color(for: colorScheme)
        case .disabled:
            theme.colors.colorContentDisabled.color(for: colorScheme)
        }
    }
}
