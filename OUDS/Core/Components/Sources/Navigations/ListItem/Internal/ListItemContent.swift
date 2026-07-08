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

import OUDSThemesContract
import OUDSTokensSemantic
import SwiftUI

/// The content for the ``OUDSStaticListItem`` and the ``OUDSNavigationListItem`` component described by the ``OUDSListItemData``.
/// The layout (divider, background, size) are updated according to the interaction state ``InteractionState``.
struct ListItemContent<Slot: View>: View {

    // MARK: - Properties

    let data: OUDSListItemData
    let slot: Slot
    let indicatorType: OUDSNavigationListItemIndicatorType?
    let leading: OUDSListItemLeading?
    let trailing: OUDSListItemTrailing?
    let interactionState: OUDSButtonInteractionState

    @Environment(\.theme) private var theme
    @Environment(\.oudsListItemSize) private var itemSize
    @Environment(\.oudsListItemContainersAlignment) private var containersAlignment

    // MARK: - Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.fixedNone) {
            HStack(alignment: verticalAlignment, spacing: theme.listItem.spaceColumnGap) {
                if indicatorType == .previous {
                    ListItemIndicatorContainer(type: indicatorType, interactionState: interactionState)
                }

                if let leading {
                    leadingContainer(leading)
                }

                textContainer()

                if let trailing {
                    trailingContainer(trailing)
                }

                if indicatorType == .next || indicatorType == .external {
                    ListItemIndicatorContainer(type: indicatorType, interactionState: interactionState)
                }
            }
            .padding(.top, topPadding)
            .padding(.bottom, bottomPadding)
            // TODO: ouds/💠_control/list-item/size/min-width
            .padding(.horizontal, theme.listItem.spacePaddingInline)
            .frame(maxWidth: .infinity, alignment: .topLeading)
            // TODO: ouds/💠_control/list-item/space/padding-inline
            .frame(minWidth: theme.listItem.sizeMinWidth, minHeight: minHeight)
            .modifier(ListItemBackgroundModifier(interactionState: interactionState))
            .modifier(ListItemBordersModifier(interactionState: interactionState))

            if let helperText = data.helperText {
                ListItemHelperTextContainer(text: .raw(helperText), interactionState: interactionState)
            }
        }
        .contentShape(Rectangle()) // Needed otherwise because of button style any empty space without views won't trigger tap
    }

    // MARK: - Containers

    @ViewBuilder
    private func leadingContainer(_ leading: OUDSListItemLeading) -> some View {
        // Remove leading element if previous indicator is presented
        if indicatorType != .previous {
            ListItemLeadingContainer(leading: leading, interactionState: interactionState)
        }
    }

    private func textContainer() -> some View {
        ListItemTextContainer(data: data, slot: slot, interactionState: interactionState)
    }

    private func trailingContainer(_ trailing: OUDSListItemTrailing) -> some View {
        ListItemTrailingContainer(trailing: trailing, interactionState: interactionState)
    }

    // MARK: - Computed properties

    private var verticalAlignment: VerticalAlignment {
        switch containersAlignment {
        case .top:
            .top
        case .center:
            .center
        }
    }

    private var topPadding: SpaceSemanticToken {
        switch itemSize {
        case .small:
            switch containersAlignment {
            case .top:
                // TODO: ouds/💠_control/list-item/space/padding-block/top-alignment/top-counterweight-small
                theme.listItem.spacePaddingBlockTopAlignmentTopCounterweightSmall
            case .center:
                // TODO: ouds/💠_control/list-item/space/padding-block/small
                theme.listItem.spacePaddingBlockSmall
            }

        case .standard:
            switch containersAlignment {
            case .top:
                // TODO: ouds/💠_control/list-item/space/padding-block/top-alignment/top-counterweight-default
                theme.listItem.spacePaddingBlockTopAlignmentTopCounterweightDefault
            case .center:
                // TODO: ouds/💠_control/list-item/space/padding-block/default
                theme.listItem.spacePaddingBlockDefault
            }
        }
    }

    private var bottomPadding: Double {
        switch itemSize {
        case .small:
            // TODO: ouds/💠_control/list-item/space/padding-block/small
            theme.listItem.spacePaddingBlockSmall
        case .standard:
            // TODO: ouds/💠_control/list-item/space/padding-block/default
            theme.listItem.spacePaddingBlockDefault
        }
    }

    private var minHeight: SizeSemanticToken {
        switch itemSize {
        case .small:
            // TODO: ouds/💠_control/list-item/size/min-height-small
            theme.listItem.sizeMinHeightSmall
        case .standard:
            // TODO: ouds/💠_control/list-item/size/min-height-defaull
            theme.listItem.sizeMinHeightDefault
        }
    }
}
