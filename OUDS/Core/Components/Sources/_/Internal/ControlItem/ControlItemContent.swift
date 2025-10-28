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

import OUDS
import SwiftUI

/// The content for the ``ControlItem`` component according to the interaction state ``InteractionState``.
///
/// This state is used by:
/// - the indicator according to ``ControlItem.IndicatorType`` to apply right tokens
/// - the label described by ``ControlItemLabel.LayoutData`` to apply right tokens on texts
/// - the icon described by ``ControlItemLabel.LayoutData`` to apply right tokens on icon
/// - the background modifier
/// - the outlined modifier
struct ControlItemContent: View {

    // MARK: Stored properties

    let interactionState: InteractionState
    let indicatorType: ControlItem.IndicatorType
    let layoutData: ControlItemLabel.LayoutData

    @State var verticalAlignment: VerticalAlignment = .top
    @Environment(\.theme) private var theme

    // MARK: Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.fixedNone) {
            HStack(alignment: verticalAlignment, spacing: theme.controlItem.spaceColumnGap) {
                switch layoutData.orientation {
                case .default:
                    indicatorContainer()
                    labelContainer()
                    iconContainer()
                case .reversed:
                    iconContainer()
                    labelContainer()
                    indicatorContainer()
                }
            }
            .padding(.all, theme.controlItem.spacePaddingBlock)
            .modifier(ControlItemBackgroundModifier(interactionState: interactionState))
            .modifier(ControlItemBordersModifier(interactionState: interactionState, layoutData: layoutData, isOn: isOn))

            if layoutData.isError, let errorText = layoutData.errorText, !errorText.isEmpty {
                Text(errorText)
                    .labelDefaultMedium(theme)
                    .oudsForegroundColor(theme.colors.contentStatusNegative)
                    .padding(.top, theme.textInput.spacePaddingBlockTopHelperText)
                    .padding(.horizontal, theme.controlItem.spacePaddingInline)
            }
        }
        .frame(maxWidth: theme.controlItem.sizeMaxWidth)
        .clipShape(RoundedRectangle(cornerRadius: theme.controlItem.borderRadius))
    }

    // MARK: Containers

    private func indicatorContainer() -> some View {
        ControlItemIndicatorContainer(interactionState: interactionState, indicatorType: indicatorType, layoutData: layoutData)
    }

    private func labelContainer() -> some View {
        ControlItemLabel(interactionState: interactionState, layoutData: layoutData)
            .readSize { size in
                verticalAlignment = size.height > theme.controlItem.sizeMaxHeightAssetsContainer ? .top : .center
            }
    }

    private func iconContainer() -> some View {
        ControlItemIconContainer(interactionState: interactionState, layoutData: layoutData)
    }

    // MARK: Computed properties

    private var isOn: Bool {
        switch indicatorType {
        case let .switch(isOn), let .radioButton(isOn):
            isOn.wrappedValue
        case let .checkBox(selectionState):
            selectionState.wrappedValue == .selected
        }
    }
}
