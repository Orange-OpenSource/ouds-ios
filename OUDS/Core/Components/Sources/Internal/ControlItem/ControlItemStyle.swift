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
/// - the indicatpr according to ``ControlItem.IndicatorType`` to apply right tokens
/// - the label described by ``ControlItemLabel.LayoutData`` to apply right tokens on texts and icon
struct ControlItemStyle: ButtonStyle {

    // MARK: Stored properties

    let indicatorType: ControlItem.IndicatorType
    let layoutData: ControlItemLabel.LayoutData

    @State private var isHover: Bool = false
    @Environment(\.isEnabled) private var isEnabled
    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Computed properties

    private var isOn: Bool {
        switch indicatorType {
        case .switch(let isOn), .radioButton(let isOn):
            isOn.wrappedValue
        case .checkBox(let selectionState):
            selectionState.wrappedValue == .selected
        }
    }

    // MARK: Body

    func makeBody(configuration: Configuration) -> some View {
        HStack(alignment: .top, spacing: theme.controlItem.controlItemSpaceColumnGap) {
            switch layoutData.orientation {
            case .default:
                indicatorContainer(isPressed: configuration.isPressed)
                labelContainer(isPressed: configuration.isPressed)
                iconContainer(isPressed: configuration.isPressed)
            case .inverse:
                iconContainer(isPressed: configuration.isPressed)
                labelContainer(isPressed: configuration.isPressed)
                indicatorContainer(isPressed: configuration.isPressed)
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

    // MARK: Containers

    private func indicatorContainer(isPressed: Bool) -> some View {
        HStack(alignment: .center, spacing: 0) {
            switch indicatorType {
            case .switch:
                // TODO: #405 - Add switch indicator
                Text("TODO: Add switch indicator here")
//                OUDSSwitchIndicator(internalState: internalState(isPressed: isPressed), isOn: binding.wrappedValue)
            case .radioButton(let binding):
                RadioIndicator(internalState: internalState(isPressed: isPressed), isOn: binding.wrappedValue, isError: layoutData.isError)
            case .checkBox(let binding):
                CheckboxIndicator(internalState: internalState(isPressed: isPressed), indicatorState: binding.wrappedValue, isError: layoutData.isError)
            }
        }
        .frame(maxHeight: theme.controlItem.controlItemSizeMaxHeightAssetsContainer, alignment: .center)
    }

    private func labelContainer(isPressed: Bool) -> some View {
        ControlItemLabel(internalState: internalState(isPressed: isPressed), layoutData: layoutData)
    }

    @ViewBuilder
    private func iconContainer(isPressed: Bool) -> some View {
        if let icon = layoutData.icon {
            HStack(alignment: .center, spacing: 0) {
                icon
                    .resizable()
                    .renderingMode(.template)
                    .foregroundStyle(iconColor(state: internalState(isPressed: isPressed)))
                    .frame(width: theme.controlItem.controlItemSizeIcon,
                           height: theme.controlItem.controlItemSizeIcon)
            }
            .frame(maxHeight: theme.controlItem.controlItemSizeMaxHeightAssetsContainer,
                   alignment: .center)
        }
    }

    // MARK: - Colors

    private func iconColor(state: ControlItemInternalState) -> Color {
        switch state {
        case .enabled, .pressed, .hover, .readOnly:
            theme.colors.colorContentDefault.color(for: colorScheme)
        case .disabled:
            theme.colors.colorContentDisabled.color(for: colorScheme)
        }
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

    // MARK: Internal state management

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
