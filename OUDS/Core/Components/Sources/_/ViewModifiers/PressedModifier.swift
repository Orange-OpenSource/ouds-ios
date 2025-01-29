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

/// A `ViewModifier` which will handle a simultaneous tap gesture on a `View`
/// with a small delay so as to let the view chang its state during the press action
/// (e.g. change of color).
struct PressedModifier: ViewModifier {

    @Binding var isPressed: Bool

    private static let pressDelayInSeconds = 0.1

    func body(content: Content) -> some View {
        content
            .simultaneousGesture(
                TapGesture()
                    .onEnded {
                        // TODO: #264 - A11y - remove animation if required
                        withAnimation {
                            isPressed = true
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + Self.pressDelayInSeconds) {
                            // TODO: #264 - A11y - remove animation if required
                            withAnimation {
                                isPressed = false
                            }
                        }
                    }
            )
    }
}

extension View {

    func changeOnTap(isTapped: Binding<Bool>) -> some View {
        self.modifier(PressedModifier(isPressed: isTapped))
    }
}
