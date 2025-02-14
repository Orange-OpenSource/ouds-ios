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
import OUDSTokensSemantic
import SwiftUI

/// The layout for the ``ControlItem`` component as butonStyle to compute the internal state  ``ControlItemInternalState`` used by :
/// - the selector according to ``ControlItem.SelectorType`` to apply right tokens
/// - the label described by ``ControlItemLabel.LayoutData`` to apply right tokens on texts and icon
struct ControlItemStyle: ButtonStyle {

    // MARK: Stored properties

    @Environment(\.isEnabled) private var isEnabled
    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @State private var isHover: Bool = false

    let selectorType: ControlItem.SelectorType
    let layoutData: ControlItemLabel.LayoutData

    // MARK: Body

    func makeBody(configuration: Configuration) -> some View {
        HStack(alignment: .top, spacing: theme.listItem.listItemSpaceColumnGap) {
            switch layoutData.orientation {
            case .default:
                selector(isPressed: configuration.isPressed)
                label(isPressed: configuration.isPressed)
            case .inverse:
                label(isPressed: configuration.isPressed)
                selector(isPressed: configuration.isPressed)
            }
        }
        .padding(.all, theme.listItem.listItemSpaceInset)
        .oudsDivider(show: layoutData.hasDivider)
        .background(backgroundColor(state: internalState(isPressed: configuration.isPressed)))
        .onHover { isHover in
            self.isHover = isHover
        }
    }

    private func selector(isPressed: Bool) -> some View {
        HStack(alignment: .center, spacing: 0) {
            switch selectorType {
            case .switch:
                Text("TODO: Add switch selector here")
//                OUDSSwitchSelector(internalState: internalState(isPressed: isPressed), isOn: binding.wrappedValue)
            case .radioButton:
                Text("TODO: Add radio selector here")
//                OUDSRadioButtonSelector(internalState: internalState(isPressed: isPressed), isOn: binding.wrappedValue)
            case .checkBox(let binding):
                CheckboxSelector(internalState: internalState(isPressed: isPressed), selectorState: binding.wrappedValue, isError: layoutData.isError)
            }
        }
        .frame(maxHeight: containerAssetMaxHeight, alignment: .center)
    }

    private func label(isPressed: Bool) -> some View {
        ControlItemLabel(internalState: internalState(isPressed: isPressed), layoutData: layoutData)
    }

    // MARK: Private Helpers

    private var containerAssetMaxHeight: CGFloat {
        switch selectorType {
        case .switch:
            // TODO: Adjust for switch
            theme.checkRadio.checkRadioSizeMaxHeightAssetsContainer
        case .radioButton, .checkBox:
            theme.checkRadio.checkRadioSizeMaxHeightAssetsContainer
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
