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

/// Contains all texts (overline, label, extralabel, description) of the `ListItemContent`.
struct ListItemTextContainer: View {

    // MARK: - Stored properties
    let data: OUDSListItemData
    let interactionState: InteractionState

    @Environment(\.theme) private var theme
    @Environment(\.oudsListItemContainersAlignment) private var alignment
    @Environment(\.oudsListItemSize) private var itemSize

    // MARK: - Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.controlItem.spaceRowGap) {
            if let overline = data.overline,
               !overline.isEmpty,
               itemSize == .standard
            {
                Text(overline)
                    .labelModerateSmall(theme)
                    .multilineTextAlignment(.leading)
                    .foregroundStyle(descriptionOverlineColor)
                    .padding(.top, topPadding)
            }

            Group {
                if data.isBoldLabel {
                    Text(data.label).labelStrongLarge(theme)
                } else {
                    Text(data.label).labelDefaultLarge(theme)
                }
            }
            .multilineTextAlignment(.leading)
            .foregroundStyle(labelsColor)
            .frame(maxWidth: .infinity, alignment: .leading)

            if let extraLabel = data.extraLabel,
               !extraLabel.isEmpty,
               itemSize == .standard
            {
                Text(extraLabel)
                    .labelStrongMedium(theme)
                    .multilineTextAlignment(.leading)
                    .foregroundStyle(labelsColor)
            }

            if let description = data.description, !description.isEmpty {
                Text(description)
                    .labelDefaultMedium(theme)
                    .multilineTextAlignment(.leading)
                    .foregroundStyle(descriptionOverlineColor)
            }
        }
        .frame(maxWidth: .infinity, alignment: .topLeading)
    }

    // MARK: - Padding

    private var topPadding: CGFloat {
        guard alignment == .top else {
            return theme.spaces.fixedNone
        }

        switch itemSize {
        case .small:
            return theme.controlItem.spacePaddingBlockDensityDefaultTopAlignmentTopTextContainer
        case .standard:
            return theme.controlItem.spacePaddingBlockDensityCompactTopAlignmentTopTextContainer
        }
    }

    // MARK: - Colors

    private var labelsColor: MultipleColorSemanticToken {
        interactionState == .disabled ? theme.colors.contentDisabled : theme.colors.contentDefault
    }

    private var descriptionOverlineColor: MultipleColorSemanticToken {
        interactionState == .disabled ? theme.colors.contentDisabled : theme.colors.contentMuted
    }
}
