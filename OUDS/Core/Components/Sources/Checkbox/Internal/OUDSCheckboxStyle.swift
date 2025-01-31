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

/// Used to apply the right style on an ``OUDSCheckbox`` according to the its states like ``OUDSCheckbox.Status`` and ``OUDSCheckbox.Layout``.
/// It provides also the ``OUDSCheckbox.State`` for the embeded `ViewModifier` soa s to define the look and feel
/// Four component states are managed: *enabled*, *disabled*, *hover* and *pressed*.
struct OUDSCheckboxStyle: ViewModifier {

    // MARK: - Properties

    private let status: OUDSCheckbox.Status
    private let item: OUDSCheckbox.Item
    @State private var isHover: Bool
    @State private var isPressed: Bool

    // MARK: - Environment

    @Environment(\.isEnabled) private var isEnabled

    // MARK: - Initializer

    /// Initialize the `OUDSCheckboxStyle`.
    ///
    /// - Parameters:
    ///    - status: The checkbox status
    ///    - item: The object on which style must be applied
    public init(status: OUDSCheckbox.Status, item: OUDSCheckbox.Item) {
        self.status = status
        self.item = item
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
            .modifier(CheckboxViewModifier(status: status,
                                           state: internalState(isPressed: isPressed),
                                           item: item))
    }

    // MARK: - Helpers

    private func internalState(isPressed: Bool) -> OUDSCheckbox.State {
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
