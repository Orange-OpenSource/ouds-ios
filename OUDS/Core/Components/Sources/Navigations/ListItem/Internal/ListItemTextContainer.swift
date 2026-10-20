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
/// The label area supports three modes via ``OUDSListItemData/Label``:
/// - **`.textual(OUDSTextualContent, isBold: Bool)`**: The label is rendered as a styled `Text` view
///   (raw, localized or user-styled `AttributedString`). When `isBold` is `true`, a bold typography is applied.
///   For `.rich`, the plain-string projection is used for Voice Over vocalization.
/// - **`.text(String, isBold: Bool)`**: Deprecated, same rendering as `.textual(.raw)`.
/// - **`.custom(AnyView, accessibilityLabel: String)`**: A user-provided SwiftUI view is rendered
///   as-is inside the label area. The provided `accessibilityLabel` is used in the combined
///   Voice Over vocalization.
///
/// The optional textual fields (`overline`, `extraLabel`, `description`) accept a raw
/// `String`, a localized string or a styled `AttributedString` through ``OUDSTextualContent``.
struct ListItemTextContainer: View {

    // MARK: Properties

    let data: OUDSListItemData
    let interactionState: OUDSButtonInteractionState

    @Environment(\.theme) private var theme
    @Environment(\.oudsListItemSize) private var itemSize
    @Environment(\.dynamicTypeSize) private var dynamicTypeSize
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.oudsListItemContainersAlignment) private var alignment

    // MARK: Body

    // swiftlint:disable closure_body_length
    var body: some View {
        VStack(alignment: .leading, spacing: theme.listItem.spaceRowGap) {
            VStack(alignment: .leading, spacing: theme.listItem.spaceRowGap) {

                if let overlineContent = data.overlineContent,
                   !overlineContent.isEmpty,
                   itemSize == .default
                {
                    textView(for: overlineContent)
                        .labelModerateSmall(theme)
                        .multilineTextAlignment(.leading)
                        .foregroundStyle(descriptionOverlineColor)
                        .frame(maxWidth: maxWidth, alignment: .leading)
                }

                HStack {
                    switch data.labelContent {
                    case let .text(labelText, isBold): // TODO: v4 - Remove this case as manager by .textual
                        Group {
                            if isBold {
                                Text(labelText).labelStrongLarge(theme)
                            } else {
                                Text(labelText).labelDefaultLarge(theme)
                            }
                        }
                        .frame(maxWidth: maxWidth, alignment: .leading)
                    case let .textual(content, isBold: isBold):
                        Group {
                            if isBold {
                                textView(for: content).labelStrongLarge(theme)
                            } else {
                                textView(for: content).labelDefaultLarge(theme)
                            }
                        }
                        .frame(maxWidth: maxWidth, alignment: .leading)
                    case let .custom(customView, _):
                        customView
                            .padding([.top, .bottom], theme.listItem.spacePaddingBlockSlotTextContainer)
                    }
                }
                .multilineTextAlignment(.leading)
                .foregroundStyle(labelsColor)

                if let extraLabelContent = data.extraLabelContent,
                   !extraLabelContent.isEmpty,
                   itemSize == .default
                {
                    textView(for: extraLabelContent)
                        .labelStrongMedium(theme)
                        .multilineTextAlignment(.leading)
                        .foregroundStyle(labelsColor)
                        .frame(maxWidth: maxWidth, alignment: .leading)
                }

                if let descriptionContent = data.descriptionContent, !descriptionContent.isEmpty {
                    textView(for: descriptionContent)
                        .labelDefaultMedium(theme)
                        .multilineTextAlignment(.leading)
                        .foregroundStyle(descriptionOverlineColor)
                        .frame(maxWidth: maxWidth, alignment: .leading)
                }
            }
            .accessibilityElement(children: .combine)
            .accessibilityLabel(accessibilityLabel)

            if let slot = data.textSlot {
                slot.view
                    .padding([.top, .bottom], theme.listItem.spacePaddingBlockSlotTextContainer)
            }
        }
        .padding(.top, topPadding)
        .frame(maxWidth: .infinity, minHeight: minHeight, alignment: verticalAlignment)
    }

    // swiftlint:enable closure_body_length

    // MARK: Helpers

    private var topPadding: CGFloat {
        if alignment == .top {
            switch itemSize {
            case .default:
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

    private var maxWidth: CGFloat {
        switch itemSize {
        case .small:
            theme.sizes.maxWidthLabelLarge.dimension(for: horizontalSizeClass ?? .regular)
        case .default:
            theme.sizes.maxWidthBoxedText.dimension(for: horizontalSizeClass ?? .regular)
        }
    }

    private var minHeight: CGFloat {
        let rawSize = switch itemSize {
        case .default:
            theme.listItem.sizeAssetMedium
        case .small:
            theme.listItem.sizeAssetSmall
        }

        return rawSize * dynamicTypeSize.percentageRate / 100
    }

    private var verticalAlignment: Alignment {
        switch alignment {
        case .top:
            .topLeading
        case .center:
            .leading
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

        if itemSize != .small, let overlineContent = data.overlineContent, !overlineContent.isEmpty {
            parts.append(overlineContent.rawValue)
        }

        let labelString = data.labelContent.stringValue
        if !labelString.isEmpty {
            parts.append(labelString)
        }

        if itemSize != .small, let extraLabelContent = data.extraLabelContent {
            parts.append(extraLabelContent.rawValue)
        }

        if let descriptionContent = data.descriptionContent {
            parts.append(descriptionContent.rawValue)
        }

        return parts.joined(separator: ", ")
    }
}
