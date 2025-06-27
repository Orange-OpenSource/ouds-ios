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

import SwiftUI

// MARK: - Chip Internal State

/// The internal state used by modifiers to handle all states of the chip.
enum ChipInternalState {
    case enabled, hover, pressed, disabled
}

// MARK: - Chip View Modifier

/// This modifier has in charge to:
/// - compute the internal state based on `isEnabled`, `isPressed` and `isHover` flags
/// - apply foreground, background colors and add a border (width, radius and color) according to the internal state
struct ChipViewModifier: ViewModifier {

    // MARK: Stored Properties

    let state: ChipInternalState

    // MARK: Body

    func body(content: Content) -> some View {
        content
            .modifier(ChipForegroundModifier(state: state))
            .modifier(ChipBackgroundModifier(state: state))
            .modifier(ChipBorderModifier(state: state))
    }
}
