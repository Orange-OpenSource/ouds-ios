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

/// The internal state used by modifiers to handle all states of the button.
enum InternalSwitchState {
    case enabled, hover, pressed, disabled
}

struct OUDSSwitchLabeledStyle: ButtonStyle {

    // MARK: Stored properties

    @Environment(\.isEnabled) private var isEnabled
    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @State private var isHover: Bool = false

    let isOn: Bool
    let label: OUDSSwitchLabel.Label

    // MARK: Body

    func makeBody(configuration: Configuration) -> some View {
        HStack(alignment: .top, spacing: theme.listItem.listItemSpaceColumnGap) {
            switch label.orientation {
            case .default:
                toggle(isPressed: configuration.isPressed)
                label(isPressed: configuration.isPressed)
            case .inverse:
                label(isPressed: configuration.isPressed)
                toggle(isPressed: configuration.isPressed)
            }
        }
        .padding(.all, theme.listItem.listItemSpaceInset)
        .oudsDivider(show: label.divider)
        .background(backgroundColor(state: internalState(isPressed: configuration.isPressed)))
        .onHover { isHover in
            self.isHover = isHover
        }
    }

    private func toggle(isPressed: Bool) -> some View {
        HStack(alignment: .center, spacing: 0) {
            OUDSSwitchButton(internalState: internalState(isPressed: isPressed), isOn: isOn)
        }
        .frame(maxHeight: theme.checkRadio.checkRadioSizeMaxHeightAssetsContainer, alignment: .center)
    }

    private func label(isPressed: Bool) -> some View {
        OUDSSwitchLabel(internalState: internalState(isPressed: isPressed), label: label)
    }

    // MARK: Private Helpers

    func backgroundColor(state: InternalSwitchState) -> Color {
        switch state {
        case .enabled:
            theme.select.selectColorBgEnabled.color(for: colorScheme)
        case .hover:
            theme.select.selectColorBgHover.color(for: colorScheme)
        case .pressed:
            theme.select.selectColorBgPressed.color(for: colorScheme)
        case .disabled:
            theme.select.selectColorBgDisabled.color(for: colorScheme)
        }
    }

    private func internalState(isPressed: Bool) -> InternalSwitchState {
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
