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

/// The content for the ``OUDSListStaticItem`` and the ``OUDSListItemNavigation`` component described by the ``OUDSListItemData``.
/// The layout (divider, background, size) are updated according to the interaction state ``InteractionState``.
struct ListItemContent<Slot: View>: View {

    // MARK: - Properties

    let data: OUDSListItemData
    let slot: Slot
    let affordanceType: OUDSListItemNavigationAffordanceType?
    let leading: OOUDSListItemLeading?
    let trailing: OUDSListItemTrailing?
    let interactionState: InteractionState

    @Environment(\.theme) private var theme
    @Environment(\.oudsListItemContainersAlignment) private var containersAlignment
    @Environment(\.oudsListItemSize) private var itemSize

    // MARK: - Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.fixedNone) {
            HStack(alignment: verticalAlignment, spacing: theme.controlItem.spaceColumnGap) {
                if affordanceType == .previous {
                    ListItemAffordanceContainer(type: affordanceType, interactionState: interactionState)
                }

                if let leading {
                    leadingContainer(leading)
                }

                textContainer()

                if let trailing {
                    trailingContainer(trailing)
                }

                if affordanceType == .next || affordanceType == .external {
                    ListItemAffordanceContainer(type: affordanceType, interactionState: interactionState)
                }
            }
            .padding(.top, topPadding)
            .padding(.bottom, bottomPadding)
            .padding(.horizontal, theme.controlItem.spacePaddingInline)
            .frame(maxWidth: .infinity, alignment: .topLeading)
            .modifier(ListItemBackgroundModifier(interactionState: interactionState))
            .modifier(ListItemBordersModifier(interactionState: interactionState))

            let helperTextContent: TextualContent? = if let helperText = data.helperText {
                .raw(helperText)
            } else {
                nil
            }

            ListItemHelperTextContainer(text: helperTextContent, interactionState: interactionState)
        }
        .contentShape(Rectangle()) // Needed otherwise because of button style any empty space without views won't trigger tap
    }

    // MARK: - Containers
    @ViewBuilder
    private func leadingContainer(_ leading: OOUDSListItemLeading) -> some View {
        // Remove leading element if previous affordance is presented
        if affordanceType != .previous {
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
                theme.controlItem.spacePaddingBlockDensityCompactTopAlignmentTopCounterweight
            case .center:
                theme.controlItem.spacePaddingBlockDensityCompact
            }

        case .standard:
            switch containersAlignment {
            case .top:
                theme.controlItem.spacePaddingBlockDensityDefaultTopAlignmentTopCounterweight
            case .center:
                theme.controlItem.spacePaddingBlockDensityDefault
            }
        }
    }

    private var bottomPadding: Double {
        switch itemSize {
        case .small:
            theme.controlItem.spacePaddingBlockDensityCompact
        case .standard:
            theme.controlItem.spacePaddingBlockDensityDefault
        }
    }
}
