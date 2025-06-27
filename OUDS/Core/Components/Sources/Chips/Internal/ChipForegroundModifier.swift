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
import OUDSFoundations
import OUDSTokensComponent
import OUDSTokensSemantic
import SwiftUI

/// Used to apply the right forground color associated to the state
struct ChipForegroundModifier: ViewModifier {

    @Environment(\.theme) private var theme

    // MARK: Stored Properties

    let state: ChipInternalState

    // MARK: Body

    func body(content: Content) -> some View {
        content.oudsForegroundColor(appliedColor)
    }

    // MARK: Private helpers

    private var appliedColor: MultipleColorSemanticTokens {
        switch state {
        case .enabled:
            enabledColor
        case .hover:
            hoverColor
        case .pressed:
            pressedColor
        case .disabled:
            disabledColor
        }
    }

    private var enabledColor: MultipleColorSemanticTokens {
        theme.chip.chipColorContentEnabled
    }

    private var hoverColor: MultipleColorSemanticTokens {
        theme.chip.chipColorContentHover
    }

    private var pressedColor: MultipleColorSemanticTokens {
        theme.chip.chipColorContentPressed
    }

    private var disabledColor: MultipleColorSemanticTokens {
        theme.chip.chipColorContentDisabled
    }
}
