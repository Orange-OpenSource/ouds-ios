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

import OUDS
import OUDSTokensSemantic
import SwiftUI

struct OUDSSwitchLabel: View {

    // MARK: Stored properties

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    struct Label {
        let label: String
        let helperText: String?
        let icon: Image?
        let onError: Bool
        let divider: Bool
    }

    let internalState: InternalSwitchState
    let label: Label

    // MARK: Body

    var body: some View {
        HStack(alignment: .top, spacing: theme.listItem.listItemSpaceColumnGap) {
            VStack(alignment: .leading, spacing: 0) {
                Text(LocalizedStringKey(label.label))
                    .typeLabelDefaultLarge(theme)
                    .multilineTextAlignment(.leading)
                    .foregroundStyle(labelColor)
                    .frame(maxWidth: .infinity, alignment: .leading)

                if let helperText = label.helperText {
                    Text(LocalizedStringKey(helperText))
                        .typeLabelDefaultMedium(theme)
                        .multilineTextAlignment(.leading)
                        .foregroundStyle(helperTextColor)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)

            if let icon = label.icon {
                HStack(alignment: .center, spacing: 0) {
                    icon
                        .resizable()
                        .renderingMode(.template)
                        .foregroundStyle(iconColor)
                        .frame(width: theme.listItem.listItemSizeIcon, height: theme.listItem.listItemSizeIcon)
                }
                .frame(maxHeight: theme.checkRadio.checkRadioSizeMaxHeightAssetsContainer, alignment: .center)
            }
        }
    }

    private var labelColor: Color {
        switch internalState {
        case .enabled, .pressed, .hover:
            (label.onError ? theme.colors.colorContentStatusNegative : theme.colors.colorContentDefault)
                .color(for: colorScheme)
        case .disabled:
            theme.colors.colorContentDisabled.color(for: colorScheme)
        }
    }

    private var iconColor: Color {
        switch internalState {
        case .enabled, .pressed, .hover:
            theme.colors.colorContentDefault.color(for: colorScheme)
        case .disabled:
            theme.colors.colorContentDisabled.color(for: colorScheme)
        }
    }

    private var helperTextColor: Color {
        switch internalState {
        case .enabled, .pressed, .hover:
            theme.colors.colorContentMuted.color(for: colorScheme)
        case .disabled:
            theme.colors.colorContentDisabled.color(for: colorScheme)
        }
    }
}
