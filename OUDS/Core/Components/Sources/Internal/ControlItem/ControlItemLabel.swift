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

/// The trailing part of the  component, i.e. all the views without the indicator, i.e. texts, icons and dividers.
/// Can be considered as a rich label for the associated indicator (checkbox, radio, switch).
struct ControlItemLabel: View {

    // MARK: - Stored properties

    let interactionState: InteractionState
    let layoutData: LayoutData

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Layout Data

    /// Gathers any details and content to add in the ``ControlItemLabel``
    struct LayoutData {
        let labelText: String
        let additionalLabelText: String?
        let helperText: String?
        let icon: Image?
        let flipIcon: Bool
        let isOutlined: Bool
        let isError: Bool
        let isReadOnly: Bool
        let hasDivider: Bool
        let orientation: ControlItem.Orientation
    }

    // MARK: - Body

    var body: some View {
        HStack(alignment: .center, spacing: theme.controlItem.controlItemSpaceColumnGap) {
            texts()
        }
    }

    // MARK: - Layout Items

    private func texts() -> some View {
        VStack(alignment: .leading) {
            Text(LocalizedStringKey(layoutData.labelText))
                .typeLabelDefaultLarge(theme)
                .multilineTextAlignment(.leading)
                .oudsForegroundStyle(labelTextColor)
                .frame(maxWidth: .infinity, alignment: .leading)

            if let additionalLabelText = layoutData.additionalLabelText {
                Text(LocalizedStringKey(additionalLabelText))
                    .typeLabelStrongMedium(theme)
                    .multilineTextAlignment(.leading)
                    .oudsForegroundStyle(additionalLabelTextColor)
            }

            if let helperText = layoutData.helperText {
                Text(LocalizedStringKey(helperText))
                    .typeLabelDefaultMedium(theme)
                    .multilineTextAlignment(.leading)
                    .oudsForegroundStyle(helperTextColor)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }

    // MARK: - Colors

    private var labelTextColor: MultipleColorSemanticTokens {
        if layoutData.isError {
            switch interactionState {
            case .enabled:
                return theme.colors.colorActionNegativeEnabled
            case .hover:
                return theme.colors.colorActionNegativeHover
            case .pressed:
                return theme.colors.colorActionNegativePressed
            case .readOnly, .disabled:
                OL.fatal("An component (checkbox, switch, radio) with a disabled state / read only mode and an error situation has been detected, which is not allowed by design."
                             + " Only non-error situation are allowed to have a disabled state or a read only mode.")
            }
        } else {
            switch interactionState {
            case .enabled, .hover, .pressed, .readOnly:
                return theme.colors.colorContentDefault
            case .disabled:
                return theme.colors.colorContentDisabled
            }
        }
    }

    private var helperTextColor: MultipleColorSemanticTokens {
        switch interactionState {
        case .enabled, .pressed, .hover, .readOnly:
            theme.colors.colorContentMuted
        case .disabled:
            theme.colors.colorContentDisabled
        }
    }

    private var additionalLabelTextColor: MultipleColorSemanticTokens {
        interactionState == .disabled ? theme.colors.colorContentDisabled : theme.colors.colorContentDefault
    }
}
