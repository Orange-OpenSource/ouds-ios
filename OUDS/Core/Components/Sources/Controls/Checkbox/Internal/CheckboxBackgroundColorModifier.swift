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

// MARK: - Checkbox Background Color

struct CheckboxBackgroundColorModifier: ViewModifier {

    // MARK: Properties

    var interactionState: InteractionState

    @Environment(\.theme) private var theme

    // MARK: Body

    func body(content: Content) -> some View {
        switch interactionState {
        case .enabled, .disabled, .readOnly:
            content
        case .hover:
            // TODO: #1437 - Which token use instead of colorBgHover?
            /* /
             content.background(theme.controlItem.colorBgHover)
                 .clipShape(RoundedRectangle(cornerRadius: theme.controlItem.borderRadiusItemOnly))
              */
            content
        case .pressed:
            // TODO: #1437 - Which token use instead of colorBgPressed?
            /*
             content.background(theme.controlItem.colorBgPressed)
                 .clipShape(RoundedRectangle(cornerRadius: theme.controlItem.borderRadiusItemOnly))
              */
            content
        }
    }
}
