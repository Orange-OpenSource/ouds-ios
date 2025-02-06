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

    struct Items {
        let labelText: String
        let helperText: String?
        let icon: Image?
        let onError: Bool
        let divider: Bool
        let orientation: OUDSSwitch.Orientation
    }

    let internalState: InternalSwitchState
    let items: Items

    // MARK: Body

    var body: some View {
        HStack(alignment: .top, spacing: theme.listItem.listItemSpaceColumnGap) {
            switch items.orientation {
            case .default:
                texts
                icon
            case .inverse:
                icon
                texts
            }
        }
    }

    // MARK: Private helpers

    @ViewBuilder
    private var icon: some View {
        if let icon = items.icon {
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

    @ViewBuilder
    private var texts: some View {
        VStack(alignment: .leading, spacing: 0) {
            Spacer()
            Text(LocalizedStringKey(items.labelText))
                .typeLabelDefaultLarge(theme)
                .multilineTextAlignment(.leading)
                .foregroundStyle(labelTextColor)
                .frame(maxWidth: .infinity, alignment: .leading)

            if let helperText = items.helperText {
                Text(LocalizedStringKey(helperText))
                    .typeLabelDefaultMedium(theme)
                    .multilineTextAlignment(.leading)
                    .foregroundStyle(helperTextColor)
            }
            Spacer()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }

    private var labelTextColor: Color {
        switch internalState {
        case .enabled, .pressed, .hover:
            (items.onError ? theme.colors.colorContentStatusNegative : theme.colors.colorContentDefault)
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
