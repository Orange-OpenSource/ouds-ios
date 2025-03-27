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
struct ControlItemContent: View {

    // MARK: Stored properties

    let indicatorType: ControlItem.IndicatorType
    let layoutData: ControlItemLabel.LayoutData
    let internalState: ControlItemInternalState

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Body

    var body: some View {
        HStack(alignment: .top, spacing: theme.controlItem.controlItemSpaceColumnGap) {
            switch layoutData.orientation {
            case .default:
                indicatorContainer()
                labelContainer()
                iconContainer()
            case .inverse:
                iconContainer()
                labelContainer()
                indicatorContainer()
            }
        }
        .padding(.all, theme.controlItem.controlItemSpaceInset)
        .oudsDivider(show: layoutData.hasDivider)
        .background(backgroundColor)
        .modifier(ControlItemStyleOutlinedModifier(internalState: internalState, layoutData: layoutData, isOn: isOn))
    }

    // MARK: Containers

    private func indicatorContainer() -> some View {
        ControlItemIndicator(indicatorType: indicatorType, layoutData: layoutData, internalState: internalState)
    }

    private func labelContainer() -> some View {
        ControlItemLabel(internalState: internalState, layoutData: layoutData)
    }

    private func iconContainer() -> some View {
        ControlItemIcon(icon: layoutData.icon, internalState: internalState)
    }

    // MARK: Computed properties

    private var isOn: Bool {
        switch indicatorType {
        case .switch(let isOn), .radioButton(let isOn):
            isOn.wrappedValue
        case .checkBox(let selectionState):
            selectionState.wrappedValue == .selected
        }
    }

    private var backgroundColor: Color {
        switch internalState {
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
}
