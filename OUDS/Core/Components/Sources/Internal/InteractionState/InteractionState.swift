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

/// The internal interaction state used by modifiers to handle all states of the indicator.
enum InteractionState {

    /// User can interact with the component
    case enabled

    /// The component is hovered, e.g. with an a11y hardware or a mouse
    case hover

    /// The component is being pressed
    case pressed

    /// The user cannot interart with the component.
    case disabled

    /// The component is not disabled but user cannot interact with it still. Almost enabled.
    case readOnly // (╯°□°）╯︵ ┻━┻

/// Create the state according to current states.
/// - Parameters:
///    - isEnabled: true if enabled, false otherwise (i.e. get for `isEnabled` environment)
///    - isHover: true if a view is hoverd, false otherwise (i.e. get from `onHover`)
///    - isPressed: true if pressed, false otherwise (i.e. get from `ButtonStyle.Configuration`)
///    - isReadOnly: true if read only, false otherwise
    init(isEnabled: Bool, isHover: Bool, isPressed: Bool, isReadOnly: Bool = false) {
        if isReadOnly {
            self = .readOnly
        } else {
            if !isEnabled {
                self = .disabled
            } else {
                if isPressed {
                    self = .pressed
                } else {
                    if isHover {
                        self = .hover
                    } else {
                        self = .enabled
                    }
                }
            }
        }
    }
}
