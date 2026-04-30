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

import OUDSFoundations
import OUDSThemesContract
import OUDSTokensSemantic
import SwiftUI

/// The texts can be considered as a rich label for the associated indicator (checkbox, radio, switch).
struct ListControlItemTextContainer: View {

    // MARK: - Stored properties

    let interactionState: InteractionState
    let layoutData: ControlItemData

    @Environment(\.theme) private var theme

    // MARK: - Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.controlItem.spaceRowGap) {
            if let overline = layoutData.texts.overline, !overline.isEmpty {
                Text(overline)
                    .labelModerateSmall(theme)
                    .multilineTextAlignment(.leading)
                    .foregroundStyle(descriptionOverlineColor)
            }

            Text(layoutData.texts.label)
                .labelDefaultLarge(theme)
                .multilineTextAlignment(.leading)
                .foregroundStyle(labelColor)
                .frame(maxWidth: .infinity, alignment: .leading)

            if let extraLabel = layoutData.texts.extraLabel, !extraLabel.isEmpty {
                Text(extraLabel)
                    .labelStrongMedium(theme)
                    .multilineTextAlignment(.leading)
                    .foregroundStyle(extraLabelColor)
            }

            if let description = layoutData.texts.description, !description.isEmpty {
                Text(description)
                    .labelDefaultMedium(theme)
                    .multilineTextAlignment(.leading)
                    .foregroundStyle(descriptionOverlineColor)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }

    // MARK: - Colors

    private var labelColor: MultipleColorSemanticToken {
        if layoutData.style.isError {
            switch interactionState {
            case .enabled:
                theme.colors.actionNegativeEnabled
            case .hover:
                theme.colors.actionNegativeHover
            case .pressed:
                theme.colors.actionNegativePressed
            case .readOnly, .disabled:
                OL.fatal("Component with a disabled state / read only mode and an error situation has been detected, which is not allowed by design."
                    + " Only non-error situation are allowed to have a disabled state or a read only mode.")
            }
        } else {
            interactionState == .disabled ? theme.colors.contentDisabled : theme.colors.contentDefault
        }
    }

    private var descriptionOverlineColor: MultipleColorSemanticToken {
        interactionState == .disabled ? theme.colors.contentDisabled : theme.colors.contentMuted
    }

    private var extraLabelColor: MultipleColorSemanticToken {
        interactionState == .disabled ? theme.colors.contentDisabled : theme.colors.contentDefault
    }
}
