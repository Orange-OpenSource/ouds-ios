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

/// The trailing part of the checkbox component, i.e. all the views without the selector, i.e. texts and images.
/// Can be considered as a rich label for the associated checkbox.
struct OUDSCheckboxLabel: View {

    // MARK: - Properties

    let internalState: OUDSInternalCheckboxState
    let items: Items

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: - Layout label

    /// Any relevant data for the *default* and *inverse* layouts of the checkbox component
    struct Items {
        let label: String
        let helperText: String?
        let icon: Image?
        let onError: Bool
        let divider: Bool
    }

    // MARK: - Body

    var body: some View {
        HStack(spacing: theme.listItem.listItemSpaceColumnGap) {
            VStack(alignment: .leading, spacing: 0) {
                Text(LocalizedStringKey(items.label))
                    .typeLabelDefaultLarge(theme)
                    .multilineTextAlignment(.leading)
                    .foregroundStyle(labelColor)
                    .frame(maxWidth: .infinity, alignment: .leading)

                if let helperText = items.helperText {
                    Text(LocalizedStringKey(helperText))
                        .typeLabelDefaultMedium(theme)
                        .multilineTextAlignment(.leading)
                        .foregroundStyle(helperTextColor)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)

            if let icon = items.icon {
                icon
                    .resizable()
                    .renderingMode(.template)
                    .foregroundStyle(iconColor)
                    .frame(width: theme.listItem.listItemSizeIcon, height: theme.listItem.listItemSizeIcon)
            }
        }
    }

    // MARK: - Colors

    private var labelColor: Color {
        switch internalState {
        case .enabled, .pressed, .hover:
            (items.onError ? theme.colors.colorContentStatusNegative : theme.colors.colorContentDefault)
                .color(for: colorScheme)
        case .disabled, .readOnly:
            theme.colors.colorContentDisabled.color(for: colorScheme)
        }
    }

    private var iconColor: Color {
        switch internalState {
        case .enabled, .pressed, .hover:
            theme.colors.colorContentDefault.color(for: colorScheme)
        case .disabled, .readOnly:
            theme.colors.colorContentDisabled.color(for: colorScheme)
        }
    }

    private var helperTextColor: Color {
        switch internalState {
        case .enabled, .pressed, .hover:
            theme.colors.colorContentMuted.color(for: colorScheme)
        case .disabled, .readOnly:
            theme.colors.colorContentDisabled.color(for: colorScheme)
        }
    }
}
