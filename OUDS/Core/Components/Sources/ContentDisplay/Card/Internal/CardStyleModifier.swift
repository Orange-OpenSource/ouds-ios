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
import SwiftUI

// Card modifier applys background and border according to ``OUDSCardStyle``and ``OUDSButtonInteractionState``

struct CardStyleModifier: ViewModifier {

    // MARK: Properties

    let style: OUDSCardStyle
    let interactionState: OUDSButtonInteractionState

    @Environment(\.theme) private var theme

    // MARK: Body

    func body(content: Content) -> some View {
        content
            .modifier(CardBackgroundModifier(style: style, interactionState: interactionState))
            .clipShape(RoundedRectangle(cornerRadius: theme.cardRadius))
            .modifier(CardBordersModifier(style: style, interactionState: interactionState))
            .skeleton(shape: RoundedRectangle(cornerRadius: theme.cardRadius))
    }
}
