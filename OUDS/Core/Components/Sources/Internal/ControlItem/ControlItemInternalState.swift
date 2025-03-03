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

/// The internal state used by modifiers to handle all states of the selector.
enum ControlItemInternalState {

    /// User can interaact with the component
    case enabled

    /// The component is hovered, e.g. with an a11y hardware or a mouse
    case hover

    /// The component is being pressed
    case pressed

    /// The user cannot interart with the component.
    case disabled

    /// The component is not disabled but user cannot interact with it still. Almost enabled.
    case readOnly // (╯°□°）╯︵ ┻━┻
}
