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
///
/// The label area supports two modes via ``OUDSListItemData/Label``:
/// - **`.text(String, isBold: Bool)`**: The label is rendered as a styled `Text` view.
///   When `isBold` is `true`, a bold typography is applied.
/// - **`.custom(AnyView, accessibilityLabel: String)`**: A user-provided SwiftUI view is rendered
///   as-is inside the label area. The provided `accessibilityLabel` is used in the combined
///   Voice Over vocalization.
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

                HStack {
                    switch data.labelContent {
                    case let .text(labelText, isBold):
                        if isBold {
                            Text(labelText).labelStrongLarge(theme)
                        } else {
                            Text(labelText).labelDefaultLarge(theme)
                        }
                    case let .custom(customView, _):
                        customView
                    }
                }
                .multilineTextAlignment(.leading)
                .foregroundStyle(labelsColor)
                .frame(maxWidth: .infinity, minHeight: labelMinHeight, alignment: .leading)

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

    private var labelMinHeight: CGFloat {
        switch itemSize {
        case .small:
            theme.controlItem.sizeAssetSmall
        case .standard:
            theme.controlItem.sizeAssetMedium
        }
    }

    /// Forges the accessibility label for the list item text parts.
    /// Prevents the user from having to make several swipes on the texts to vocalize them.
    /// Groups the overline, label, extra label and description (or only label and description in small size).
    ///
    /// For text labels, the label string is included directly.
    /// For custom view labels, the `accessibilityLabel` provided at init time is used,
    /// ensuring Voice Over can vocalize the label even when it is an arbitrary view.
    private var accessibilityLabel: String {
        var parts: [String] = []

        if itemSize != .small, let overline = data.overline {
            parts.append(overline)
        }

        // data.label returns the text for .text labels,
        // or the accessibilityLabel for .custom labels.
        let labelString = data.labelContent.stringValue
        if !labelString.isEmpty {
            parts.append(labelString)
        }

        if itemSize != .small, let extraLabel = data.extraLabel {
            parts.append(extraLabel)
        }

        if let description = data.description {
            parts.append(description)
        }

        return parts.joined(separator: ", ")
    }
}
