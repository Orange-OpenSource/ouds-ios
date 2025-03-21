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
    @Environment(\.theme) private var theme

    // MARK: - Body

    func makeBody(configuration: Configuration) -> some View {
        ZStack(alignment: .center) {
            Color.clear
                .frame(width: theme.switch.switchSizeWidthTrack, height: theme.switch.switchSizeHeightTrack)
                .contentShape(Capsule())

            SwitchIndicator(internalState: internalState(isPressed: configuration.isPressed), isOn: isOn)
        }
        .onHover { isHover in
            self.isHover = isHover
        }
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
