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
import OUDSFoundations
import OUDSTokensSemantic
import SwiftUI

/// The trailing part of the checkbox component, i.e. all the views without the selector, i.e. texts and images.
/// Can be considered as a rich label for the associated checkbox.
struct OUDSCheckboxLabel: View {

    // MARK: - Properties

    let internalState: OUDSInternalCheckboxState
    let items: Items
    let isInversed: Bool

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: - Layout label

    /// Any relevant data for the *default* and *inverse* layouts of the checkbox component
    struct Items {
        let labelText: String
        let helperText: String?
        let icon: Image?
        let isError: Bool
        let hasDivider: Bool
    }

    // MARK: - Body

    var body: some View {
        HStack(alignment: .center, spacing: theme.listItem.listItemSpaceColumnGap) {
            if isInversed {
                icon()
                texts()
            } else {
                texts()
                icon()
            }
        }
    }

    // MARK: Items

    private func texts() -> some View {
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

    @ViewBuilder
    private func icon() -> some View {
        if let icon = items.icon {
            HStack(alignment: .center, spacing: 0) {
                icon
                    .resizable()
                    .renderingMode(.template)
                    .foregroundStyle(iconColor)
                    .frame(width: theme.listItem.listItemSizeIcon,
                           height: theme.listItem.listItemSizeIcon)
            }
            .frame(maxHeight: theme.checkRadio.checkRadioSizeMaxHeightAssetsContainer,
                   alignment: .center)
        }
    }

    // MARK: - Colors

    private var labelTextColor: Color {
        if items.isError {
            switch internalState {
            case .enabled:
                return theme.colors.colorActionNegativeEnabled.color(for: colorScheme)
            case .hover:
                return theme.colors.colorActionNegativeHover.color(for: colorScheme)
            case .pressed:
                return theme.colors.colorActionNegativePressed.color(for: colorScheme)
            case .readOnly, .disabled:
                OL.fatal("An OUDSCheckbox with a disabled or read only and an error situation has been detected, which is not allowed."
                             + " Only non-error situation are allowed to have a disabled state.")
            }
        } else {
            switch internalState {
            case .enabled, .hover, .pressed, .readOnly:
                return theme.colors.colorContentDefault.color(for: colorScheme)
            case .disabled:
                return theme.colors.colorContentDisabled.color(for: colorScheme)
            }
        }
    }

    private var iconColor: Color {
        switch internalState {
        case .enabled, .pressed, .hover, .readOnly:
            theme.colors.colorContentDefault.color(for: colorScheme)
        case .disabled:
            theme.colors.colorContentDisabled.color(for: colorScheme)
        }
    }

    private var helperTextColor: Color {
        switch internalState {
        case .enabled, .pressed, .hover, .readOnly:
            theme.colors.colorContentMuted.color(for: colorScheme)
        case .disabled:
            theme.colors.colorContentDisabled.color(for: colorScheme)
        }
    }
}
