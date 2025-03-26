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

/// The *indicator only*  layout for the ``OUDSSwitch`` component.
struct SwitchOnlyButtonStyle: ButtonStyle {

    // MARK: - Properties

    let isOn: Bool

    @State private var isHover: Bool = false
    @Environment(\.isEnabled) private var isEnabled

    // MARK: - Body

    func makeBody(configuration: Configuration) -> some View {
        let state = internalState(isPressed: configuration.isPressed)
        SwitchIndicator(internalState: state, isOn: isOn)
            .onHover { isHover in
                self.isHover = isHover
            }
            .animation(Animation.timingCurve(0.2, 0, 0, 1, duration: 0.150), value: configuration.isPressed)
            .animation(Animation.timingCurve(0.2, 0, 0, 1, duration: 0.150), value: isHover)
    }

    // MARK: - Helpers

    private func internalState(isPressed: Bool) -> InteractionState {
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
