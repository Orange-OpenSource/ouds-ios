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

/// The *selector only*  layout for the ``OUDSCheckbox`` component.
struct CheckboxOnlyButtonStyle: ButtonStyle {

    // MARK: - Properties

    let selectorState: OUDSCheckboxSelectorState
    let isError: Bool

    @State private var isHover: Bool = false
    @Environment(\.isEnabled) private var isEnabled
    @Environment(\.theme) private var theme

    // MARK: - Body

    func makeBody(configuration: Configuration) -> some View {
<<<<<<< HEAD
        ZStack {
            Color.clear
                .frame(minWidth: theme.checkbox.checkboxSizeMinWidth,
                       maxWidth: theme.checkbox.checkboxSizeMinWidth,
                       minHeight: theme.checkbox.checkboxSizeMinHeight,
                       maxHeight: theme.checkbox.checkboxSizeMaxHeight)
                .contentShape(Rectangle())

            CheckboxSelector(internalState: internalState(isPressed: configuration.isPressed), selectorState: selectorState, isError: isError)
                .frame(width: theme.checkbox.checkboxSizeIndicator,
                       height: theme.checkbox.checkboxSizeIndicator)
                .onHover { isHover in
                    self.isHover = isHover
                }
        }
=======
        CheckboxSelector(internalState: internalState(isPressed: configuration.isPressed), selectorState: selectorState, isError: isError)
            .onHover { isHover in
                self.isHover = isHover
            }
>>>>>>> aa3e14a1f (refactor: use new tokens lib (#489))
    }

    // MARK: - Helpers

    private func internalState(isPressed: Bool) -> ControlItemInternalState {
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
