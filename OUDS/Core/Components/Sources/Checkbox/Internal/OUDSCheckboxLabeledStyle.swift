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

// MARK: - Internal Checkbox State

/// The internal state used by modifiers to handle all states of the button.
enum InternalCheckboxState {
    case enabled
    case hover
    case pressed
    case disabled
    case readOnly
    // .loading not managed yet, for next version
    // .focus not managed as not that much customizable
    // .skeleton not managed as dedicated view in the end
}

// MARK: - Checkbox Labeled Style

struct OUDSCheckboxLabeledStyle: ButtonStyle {

    let isOn: Bool // TODO: #264 - Manage the three states
    let label: OUDSCheckboxLabel.Label
    let inverse: Bool

    @State private var isHover: Bool = false
    @Environment(\.isEnabled) private var isEnabled
    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: - Body

    func makeBody(configuration: Configuration) -> some View {
        HStack(alignment: .center, spacing: theme.listItem.listItemSpaceColumnGap) {
            OUDSCheckboxSelectorButton(internalState: internalState(isPressed: configuration.isPressed), isOn: isOn)

            OUDSCheckboxLabel(internalState: internalState(isPressed: configuration.isPressed), label: label)
        }
        .padding(.all, theme.listItem.listItemSpaceInset)
        .oudsDivider(show: label.divider)
        .background(backgroundColor(state: internalState(isPressed: configuration.isPressed)))
        .onHover { isHover in
            self.isHover = isHover
        }
    }

    // MARK: - Helpers

    func backgroundColor(state: InternalCheckboxState) -> Color {
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

    private func internalState(isPressed: Bool) -> InternalCheckboxState {
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
