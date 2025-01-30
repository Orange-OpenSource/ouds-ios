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

/// Just here to catch the isPressed state on the button
struct OUDSSwitchNestedStyle: ButtonStyle {

    // MARK: Stored properties

    @Environment(\.isEnabled) private var isEnabled
    @State private var isHover: Bool = false
    let isOn: Bool

    // MARK: Body

    func makeBody(configuration: Configuration) -> some View {
        OUDSSwitchButton(internalState: internalState(isPressed: configuration.isPressed), isOn: isOn)
            .onHover { isHover in
                self.isHover = isHover
            }
    }

    // MARK: Private Helpers

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
