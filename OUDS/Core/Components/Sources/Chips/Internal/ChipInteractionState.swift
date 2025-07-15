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

enum ChipInteractionState {

    /// The internal state used by modifiers to handle all states of the chip.
    case enabled, hover, pressed, disabled

    /// Initialize the `ChipInteractionState` with the `InteractionState`
    /// provided by the `InteractionButton` which is used to build a chip.
    ///
    /// This is prefered because chip does not support read only state.
    ///
    /// - Parameter interactionState: State provided by `InteractionButton`
    init(with interactionState: InteractionState) {
        switch interactionState {
        case .enabled:
            self = .enabled
        case .hover:
            self = .hover
        case .pressed:
            self = .pressed
        case .disabled:
            self = .disabled
        case .readOnly:
            fatalError("Read only not allowed on chip")
        }
    }
}
