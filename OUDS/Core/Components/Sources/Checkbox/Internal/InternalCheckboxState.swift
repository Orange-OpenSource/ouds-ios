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

/// The internal state used by modifiers to handle all states of  components.
enum InternalCheckboxState {
    case enabled
    case hover
    case pressed
    case disabled
    case readOnly
    // .loading not managed yet, for next version
    // .focus not managed as not such customizable
    // .skeleton not managed as dedicated view in the end
}
