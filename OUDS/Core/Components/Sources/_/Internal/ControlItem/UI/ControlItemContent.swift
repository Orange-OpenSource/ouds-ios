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
/// - the indicator according to ``ControlItemIndicator.Type`` to apply right tokens
/// - the label described by ``ControlItemTextContainer.LayoutData`` to apply right tokens on texts
/// - the icon described by ``ControlItemTextContainer.LayoutData`` to apply right tokens on icon
/// - the background modifier
/// - the outlined modifier
struct ControlItemContent<Leading: View, Trailing: View>: View {

    // MARK: Stored properties

    let layoutData: ControlItemData
    let isSelected: Bool
    let interactionState: InteractionState
    let leading: () -> Leading
    let trailing: () -> Trailing

    @State var verticalAlignment: VerticalAlignment = .top
    @Environment(\.theme) private var theme

    // MARK: Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.fixedNone) {
            HStack(alignment: verticalAlignment, spacing: theme.controlItem.spaceColumnGap) {
                if layoutData.style.isReversed {
                    trailingContainer()
                    textContainer()
                    leadingContainer()
                } else {
                    leadingContainer()
                    textContainer()
                    trailingContainer()
                }
            }
            .padding(.vertical, theme.controlItem.spacePaddingBlockDefault)
            .padding(.horizontal, theme.controlItem.spacePaddingInline)
            .modifier(ControlItemBackgroundModifier(interactionState: interactionState))
            .modifier(ControlItemBordersModifier(interactionState: interactionState, layoutDataStyle: layoutData.style, isSelected: isSelected))

            ControlItemHelperErrorTextContainer(layoutDataStyle: layoutData.style,
                                                interactionState: interactionState)
        }
        .frame(minWidth: theme.controlItem.sizeMinWidth, maxWidth: maxWidth, minHeight: theme.controlItem.sizeMinHeightDefault, alignment: .center)
        .contentShape(Rectangle()) // Needed otherwise because of button style any empty space without views won't trigger tap
        .clipShape(RoundedRectangle(cornerRadius: theme.controlItem.borderRadius))
    }

    // MARK: Containers

    private func leadingContainer() -> some View {
        ControlItemLeadingContainer(content: leading)
    }

    private func textContainer() -> some View {
        ControlItemTextContainer(interactionState: interactionState, layoutData: layoutData)
            .readSize { size in
                verticalAlignment = size.height > theme.controlItem.sizeMaxHeightAssetsContainer ? .top : .center
            }
    }

    private func trailingContainer() -> some View {
        ControlItemTrailingContainer(interactionState: interactionState, isError: layoutData.style.isError, content: trailing)
    }

    // MARK: Computed properties

    private var maxWidth: CGFloat {
        layoutData.style.constrainedMaxWidth ? theme.controlItem.sizeMaxWidth : .infinity
    }
}
