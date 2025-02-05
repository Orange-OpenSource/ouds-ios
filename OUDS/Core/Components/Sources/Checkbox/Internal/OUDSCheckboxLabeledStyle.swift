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

// MARK: - Checkbox Labeled Style

/// The *default* or *inverse* layout for the ``OUDSCheckbox`` component.
struct OUDSCheckboxLabeledStyle: ButtonStyle {

    let selectorState: OUDSCheckbox.SelectorState
    let items: OUDSCheckboxLabel.Items
    let isInversed: Bool
    let isReadOnly: Bool

    @State private var isHover: Bool = false
    @Environment(\.isEnabled) private var isEnabled
    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: - Body

    func makeBody(configuration: Configuration) -> some View {
        HStack(alignment: .top, spacing: theme.listItem.listItemSpaceColumnGap) {
            HStack(alignment: .center, spacing: theme.listItem.listItemSpaceColumnGap) {
                if isInversed {
                    OUDSCheckboxLabel(internalState: internalState(isPressed: configuration.isPressed),
                                      items: items,
                                      isInversed: true)

                    OUDSCheckboxSelectorButton(internalState: internalState(isPressed: configuration.isPressed),
                                               selectorState: selectorState,
                                               isError: items.isError)
                } else {
                    OUDSCheckboxSelectorButton(internalState: internalState(isPressed: configuration.isPressed),
                                               selectorState: selectorState,
                                               isError: items.isError)

                    OUDSCheckboxLabel(internalState: internalState(isPressed: configuration.isPressed),
                                      items: items,
                                      isInversed: false)
                }
            }.frame(maxHeight: theme.checkRadio.checkRadioSizeMaxHeightAssetsContainer,
                    alignment: .center)
        }
        .padding(.all, theme.listItem.listItemSpaceInset)
        .oudsDivider(show: items.divider)
        .background(backgroundColor(state: internalState(isPressed: configuration.isPressed)))
        .onHover { isHover in
            self.isHover = isHover
        }
    }

    // MARK: - Helpers

    func backgroundColor(state: OUDSInternalCheckboxState) -> Color {
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

    private func internalState(isPressed: Bool) -> OUDSInternalCheckboxState {
        if isReadOnly {
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
