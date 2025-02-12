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
struct OUDSCheckboxNestedStyle: ButtonStyle {

    // MARK: - Properties

    let selectorState: OUDSCheckboxSelectorState
    let isError: Bool
    let isReadOnly: Bool

    @State private var isHover: Bool = false
    @Environment(\.isEnabled) private var isEnabled

    // MARK: - Body

    func makeBody(configuration: Configuration) -> some View {
        OUDSCheckboxSelectorButton(internalState: internalState(isPressed: configuration.isPressed), selectorState: selectorState, isError: isError)
            .onHover { isHover in
                self.isHover = isHover
            }
    }

    // MARK: - Helpers

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
