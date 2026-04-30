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
import SwiftUI

/// The content for the ``ControlItem`` component according to the interaction state ``InteractionState``.
///
/// This state is used by:
/// - the label described by ``ControlItemData.Texts`` to apply right tokens on texts
/// - the background modifier
/// - the boder modifier
/// - the outlined modifier
struct ListControlItemContent<Leading: View, Trailing: View>: View {

    // MARK: - Properties

    let layoutData: ControlItemData
    let isSelected: Bool
    let interactionState: InteractionState
    let leading: () -> Leading
    let trailing: () -> Trailing

    @Environment(\.theme) private var theme
    @Environment(\.controlItemContainersAlignment) private var containersAlignment

    // MARK: - Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.fixedNone) {
            HStack(alignment: verticalAlignment, spacing: theme.controlItem.spaceColumnGap) {
                if layoutData.affordanceType == .previous {
                    ListControlItemAffordanceIndicator(type: layoutData.affordanceType, interactionState: interactionState)
                        .background(.red)
                }

                if layoutData.style.isReversed {
                    trailingContainer()
                    textContainer()
                    leadingContainer()
                } else {
                    leadingContainer()
                    textContainer()
                    trailingContainer()
                }

                if layoutData.affordanceType == .next || layoutData.affordanceType == .external {
                    ListControlItemAffordanceIndicator(type: layoutData.affordanceType, interactionState: interactionState)
                        .background(.yellow)
                }
            }
            .padding(.vertical, theme.controlItem.spacePaddingBlockDefault)
            .padding(.horizontal, theme.controlItem.spacePaddingInline)
            .modifier(ListControlItemBackgroundModifier(interactionState: interactionState))
            .modifier(ListControlItemBordersModifier(interactionState: interactionState, layoutDataStyle: layoutData.style, isSelected: isSelected))

            ListControlItemHelperErrorTextContainer(layoutDataStyle: layoutData.style,
                                                    interactionState: interactionState)
        }
        .frame(minWidth: theme.controlItem.sizeMinWidth, maxWidth: maxWidth, minHeight: theme.controlItem.sizeMinHeightDefault, alignment: .center)
        .contentShape(Rectangle()) // Needed otherwise because of button style any empty space without views won't trigger tap
        .clipShape(RoundedRectangle(cornerRadius: theme.controlItem.borderRadius))
    }

    // MARK: - Containers

    private func leadingContainer() -> some View {
        ListControlItemLeadingContainer(content: leading)
    }

    private func textContainer() -> some View {
        ListControlItemTextContainer(interactionState: interactionState, layoutData: layoutData)
    }

    private func trailingContainer() -> some View {
        ListControlItemTrailingContainer(interactionState: interactionState, isError: layoutData.style.isError, content: trailing)
    }

    // MARK: - Computed properties

    private var maxWidth: CGFloat {
        layoutData.style.constrainedMaxWidth ? theme.controlItem.sizeMaxWidth : .infinity
    }

    private var verticalAlignment: VerticalAlignment {
        switch containersAlignment {
        case .top:
            .top
        default:
            .center
        }
    }
}
