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

// TODO: #254 - Add more details in doc
/// Used to apply the right style on an ``OUDSCheckbox`` according to the its states like ``OUDSCheckbox.Status``
///
/// Six statuses are managed:
/// - selected: the checkbox is filled by the user
/// - unselected: the checkbox is empty
/// - undeterminate: the checkbox is prefilled
/// - errorSelected: the checkbox is filled by the user, and is in error state
/// - errorUnselected: the checkbox is empty, and is in error state
/// - errorUndeterminate: the checkbox is prefilled, and is in error state
///
/// Three component states are managed: *enabled*, *hover* and *pressed*.
///
struct OUDSCheckboxStyle: ViewModifier {

    // MARK: - Properties

    private let status: OUDSCheckbox.Status
    @State private var isHover: Bool
    @State private var isPressed: Bool

    // MARK: - Environment

    @Environment(\.isEnabled) private var isEnabled

    // MARK: - Initializer

    /// Initialize the `OUDSCheckboxStyle`.
    ///
    /// - Parameter status: The checkbox status
    public init(status: OUDSCheckbox.Status) {
        self.status = status
        isHover = false
        isPressed = false
    }

    // MARK: - Body

    func body(content: Content) -> some View {
        content
            .onHover { isHover in
                self.isHover = isHover
            }
            .changeOnTap(isTapped: $isPressed)
            .modifier(CheckboxViewModifier(status: status, state: internalState(isPressed: isPressed)))
    }

    // MARK: - Helpers

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
