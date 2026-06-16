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

/// Contains all texts (overline, label, extra label, description) of the ``ListItemContent``.
struct ListItemTextContainer<Slot: View>: View {

    // MARK: - Properties

    let data: OUDSListItemData
    let slot: Slot
    let interactionState: InteractionState

    @Environment(\.theme) private var theme
    @Environment(\.oudsListItemContainersAlignment) private var alignment
    @Environment(\.oudsListItemSize) private var itemSize

    // MARK: - Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.controlItem.spaceRowGap) {

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
            .accessibilityElement(children: .combine)
            .accessibilityLabel(accessibilityLabel)

            if !(slot is EmptyView) {
                slot
            }
        }
        .frame(maxWidth: .infinity, alignment: .topLeading)
    }

    // MARK: - Helpers

    private var topPadding: CGFloat {
        guard alignment == .top else {
            return theme.spaces.fixedNone
        }

        switch itemSize {
        case .small:
            return theme.controlItem.spacePaddingBlockDensityCompactTopAlignmentTopTextContainer
        case .standard:
            return theme.controlItem.spacePaddingBlockDensityDefaultTopAlignmentTopTextContainer
        }
    }

    private var labelsColor: MultipleColorSemanticToken {
        interactionState == .disabled ? theme.colors.contentDisabled : theme.colors.contentDefault
    }

    private var descriptionOverlineColor: MultipleColorSemanticToken {
        interactionState == .disabled ? theme.colors.contentDisabled : theme.colors.contentMuted
    }

    /// Forges the accessibility label for the list item text parts.
    /// Prevents to user to have to make several swipes on the texts to vocalize them.
    /// Groups only the overline, label, extra label and description (or only label and description in small size).
    private var accessibilityLabel: String {
        var parts: [String] = []

        if itemSize != .small, let overline = data.overline {
            parts.append(overline)
        }

        parts.append(data.label)

        if itemSize != .small, let extraLabel = data.extraLabel {
            parts.append(extraLabel)
        }

        if let description = data.description {
            parts.append(description)
        }

        return parts.joined(separator: ", ")
    }
}
