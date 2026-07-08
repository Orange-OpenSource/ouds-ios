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

    // MARK: Properties

    let data: OUDSListItemData
    let slot: Slot
    let interactionState: OUDSButtonInteractionState

    @Environment(\.theme) private var theme
    @Environment(\.oudsListItemSize) private var itemSize
    @Environment(\.dynamicTypeSize) private var dynamicTypeSize
    @Environment(\.oudsListItemContainersAlignment) private var alignment

    // MARK: Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.listItem.spaceRowGap) {
            VStack(alignment: .leading, spacing: theme.listItem.spaceRowGap) {

                if let overline = data.overline,
                   !overline.isEmpty,
                   itemSize == .standard
                {
                    Text(overline)
                        .labelModerateSmall(theme)
                        .multilineTextAlignment(.leading)
                        .foregroundStyle(descriptionOverlineColor)
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
                            .padding([.top, .bottom], theme.listItem.spacePaddingBlockSlotTextContainer) // TODO: #265 - Not sure for these tokens
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
                    .padding([.top, .bottom], theme.listItem.spacePaddingBlockSlotTextContainer) // TODO: #265 - Not sure for these tokens
            }
        }
        .padding(.top, topPadding)
        .frame(maxWidth: .infinity, minHeight: minHeight, alignment: .topLeading)
    }

    // MARK: Helpers

    private var topPadding: CGFloat {
        if alignment == .top {
            switch itemSize {
            case .standard:
                theme.listItem.spacePaddingBlockTopAlignmentTopTextContainerDefault
            case .small:
                theme.listItem.spacePaddingBlockTopAlignmentTopTextContainerSmall
            }
        } else {
            theme.spaces.fixedNone
        }
    }

    private var labelsColor: MultipleColorSemanticToken {
        interactionState == .disabled ? theme.colors.contentDisabled : theme.colors.contentDefault
    }

    private var descriptionOverlineColor: MultipleColorSemanticToken {
        interactionState == .disabled ? theme.colors.contentDisabled : theme.colors.contentMuted
    }

    private var minHeight: CGFloat {
        let rawSize = switch itemSize {
        case .standard:
            theme.listItem.sizeAssetMedium
        case .small:
            theme.listItem.sizeAssetSmall
        }

        return rawSize * dynamicTypeSize.percentageRate / 100
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
