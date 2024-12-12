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

/// The internal state used by modifiers to handle all
///  states of the button.
enum InternalButtonState {
    case enabled, hover, pressed, disabled, loading
}

// MARK: - General modifier

/// This modifier has in charge to :
/// - compute the internal state based on `isEnabled`, `isPreessed` and `isHover` flags
/// - apply foreground, background colors and add a border (width, radius and color) associated to the hierarchy and according to the internal state
struct ButtonViewModifier: ViewModifier {

    // MARK: Stored Properties

    let hierarchy: OUDSButtonStyle.Hierarchy
    let isEnabled: Bool
    let isHover: Bool
    let isPressed: Bool

    // MARK: Body

    func body(content: Content) -> some View {
        content
            .modifier(ButtonBorderModifier(hierarchy: hierarchy, state: state))
            .modifier(ButtonForegroundModifier(hierarchy: hierarchy, state: state))
            .modifier(ButtonBackgroundModifier(hierarchy: hierarchy, state: state))
    }

    // MARK: Private helper

    private var state: InternalButtonState {
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
