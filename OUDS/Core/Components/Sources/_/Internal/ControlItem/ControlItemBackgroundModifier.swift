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
import SwiftUI

/// A `ViewModifier` to apply to `ControlItem` views so as to define the background
struct ControlItemBackgroundModifier: ViewModifier {

    // MARK: Stored properties

    let interactionState: InteractionState
    @Environment(\.theme) private var theme

    // MARK: Body

    func body(content: Content) -> some View {
        if interactionState == .hover {
            content.oudsBackground(theme.controlItem.colorBgHover)
        } else if interactionState == .pressed {
            content.oudsBackground(theme.controlItem.colorBgPressed)
        } else {
            content
        }
    }
}
