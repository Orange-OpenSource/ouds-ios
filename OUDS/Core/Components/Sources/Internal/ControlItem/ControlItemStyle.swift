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
import OUDSFoundations
import OUDSTokensSemantic
import SwiftUI

/// The layout for the ``ControlItem`` component as SwiftUI `ButtonStyle` to compute the internal state  ``ControlItemInternalState`` used by :
/// - the selector according to ``ControlItem.SelectorType`` to apply right tokens
/// - the label described by ``ControlItemLabel.LayoutData`` to apply right tokens on texts and icon
struct ControlItemStyle: ButtonStyle {

    // MARK: Stored properties

    let selectorType: ControlItem.SelectorType
    let layoutData: ControlItemLabel.LayoutData

    @State private var isHover: Bool = false
    @Environment(\.isEnabled) private var isEnabled
    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Body

    func makeBody(configuration: Configuration) -> some View {
        HStack(alignment: .top, spacing: theme.controlItem.controlItemSpaceColumnGap) {
            switch layoutData.orientation {
            case .default:
                selectorContainer(isPressed: configuration.isPressed)
                label(isPressed: configuration.isPressed)
            case .inverse:
                label(isPressed: configuration.isPressed)
                selectorContainer(isPressed: configuration.isPressed)
            }
        }
        .padding(.all, theme.controlItem.controlItemSpaceInset)
        .oudsDivider(show: layoutData.hasDivider)
        .background(backgroundColor(state: internalState(isPressed: configuration.isPressed)))
        .modifier(ControlItemStyleOutlinedModifier(internalState: internalState(isPressed: configuration.isPressed), layoutData: layoutData, isOn: isOn))
        .onHover { isHover in
            self.isHover = isHover
        }
    }

    private func selectorContainer(isPressed: Bool) -> some View {
        HStack(alignment: .center, spacing: 0) {
            switch selectorType {
            case .switch:
                // TODO: #405 - Add switch selector
                Text("TODO: Add switch selector here")
//                OUDSSwitchSelector(internalState: internalState(isPressed: isPressed), isOn: binding.wrappedValue)
            case .radioButton(let binding):
                RadioIndicator(internalState: internalState(isPressed: isPressed), isOn: binding.wrappedValue, isError: layoutData.isError)
            case .checkBox(let binding):
                CheckboxSelector(internalState: internalState(isPressed: isPressed), selectorState: binding.wrappedValue, isError: layoutData.isError)
            }
        }
        .frame(maxHeight: theme.controlItem.controlItemSizeMaxHeightAssetsContainer, alignment: .center)
    }

    private func label(isPressed: Bool) -> some View {
        ControlItemLabel(internalState: internalState(isPressed: isPressed), layoutData: layoutData)
    }

    private func backgroundColor(state: ControlItemInternalState) -> Color {
        switch state {
        case .enabled:
            theme.select.selectColorBgEnabled.color(for: colorScheme)
        case .hover:
            theme.select.selectColorBgHover.color(for: colorScheme)
        case .pressed:
            theme.select.selectColorBgPressed.color(for: colorScheme)
        case .disabled, .readOnly:
            theme.select.selectColorBgDisabled.color(for: colorScheme)
        }
    }

    private var isOn: Bool {
        switch selectorType {
        case .switch(let isOn), .radioButton(let isOn):
            isOn.wrappedValue
        case .checkBox(let selectionState):
            selectionState.wrappedValue == .selected
        }
    }

    private func internalState(isPressed: Bool) -> ControlItemInternalState {
        if layoutData.isReadOnly {
            return .readOnly
        }

        if !isEnabled {
            return .disabled
        }

        if isPressed {
            return .pressed
        }

        if isHover {
            return .hover
        }

        return .enabled
    }
}
