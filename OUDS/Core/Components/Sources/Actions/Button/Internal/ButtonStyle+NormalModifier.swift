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

import OUDSThemesContract
import OUDSTokensSemantic
import SwiftUI

// MARK: - Button Internal State

/// The internal state used by modifiers to handle all states of the button.
enum ButtonInternalState {
    case enabled, hover, pressed, loading, disabled
}

// MARK: - Button View Modifier

/// This modifier has in charge to:
/// - compute the internal state based on `isEnabled`, `isPressed` and `isHover` flags
/// - apply foreground, background colors and add a border (width, radius and color) associated to the appearance and according to the internal state
struct ButtonViewModifier: ViewModifier {

    // MARK: Properties

    let appearance: OUDSButton.Appearance
    let state: ButtonInternalState

    @Environment(\.skeletonState) private var skeletonState
    @Environment(\.theme) private var theme

    // MARK: Body

    func body(content: Content) -> some View {
        // check skeleton state here for eco-conception (avoid to apply content modifiers)
        if skeletonState == nil {
            content
                .modifier(ButtonForegroundModifier(appearance: appearance, state: state))
                .modifier(ButtonBackgroundModifier(appearance: appearance, state: state))
                .modifier(ButtonBorderModifier(appearance: appearance, state: state))
        } else {
            content.skeleton(shape: RoundedRectangle(cornerRadius: radius))
        }
    }

    private var radius: BorderRadiusSemanticToken {
        theme.tuning.hasRoundedButtons ? theme.button.borderRadiusRounded : theme.button.borderRadiusDefault
    }
}
