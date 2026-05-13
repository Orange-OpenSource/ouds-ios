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
struct ListItemContent<Trailing: View>: View {

    // MARK: - Properties

    let data: OUDSListItemData
    let affordanceType: OUDSListItemNavigation.AffordanceType?
    let leading: OOUDSListItemLeading?
    let interactionState: InteractionState
    let trailing: () -> Trailing

    @Environment(\.theme) private var theme
    @Environment(\.oudsListContainersAlignment) private var containersAlignment

    // MARK: - Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.fixedNone) {
            HStack(alignment: verticalAlignment, spacing: theme.controlItem.spaceColumnGap) {
                if affordanceType == .previous {
                    ListItemAffordanceContainer(type: affordanceType, interactionState: interactionState)
                }

                leadingContainer()
                textContainer()
                trailingContainer()

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
    private func leadingContainer() -> some View {
        // Remove leading element if previous affordance is presented
        if affordanceType != .previous,
           let leading
        {
            ListItemLeadingContainer(leading: leading,
                                     small: data is OUDSListItemSizeSmallData,
                                     interactionState: interactionState)
        }
    }

    private func textContainer() -> some View {
        ListItemTextContainer(data: data, interactionState: interactionState)
    }

    private func trailingContainer() -> some View {
        ListItemTrailingContainer(interactionState: interactionState, content: trailing)
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
        switch containersAlignment {
        case .top:
            if data is OUDSListItemSizeSmallData {
                theme.controlItem.spacePaddingBlockDensityCompactTopAlignmentTopCounterweight
            } else {
                theme.controlItem.spacePaddingBlockDensityDefaultTopAlignmentTopCounterweight
            }

        case .center:
            if data is OUDSListItemSizeSmallData {
                theme.controlItem.spacePaddingBlockDensityCompact
            } else {
                theme.controlItem.spacePaddingBlockDensityDefault
            }
        }
    }

    private var bottomPadding: Double {
        if data is OUDSListItemSizeSmallData {
            theme.controlItem.spacePaddingBlockDensityCompact
        } else {
            theme.controlItem.spacePaddingBlockDensityDefault
        }
    }
}
