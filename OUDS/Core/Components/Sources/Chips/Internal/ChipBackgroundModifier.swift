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
import OUDSTokensComponent
import OUDSTokensSemantic
import SwiftUI

/// Used to apply the right background color associated to the state

struct ChipBackgroundModifier: ViewModifier {

    @Environment(\.theme) private var theme

    // MARK: Stored Properties

    let state: ChipInternalState

    // MARK: Body

    func body(content: Content) -> some View {
        content.oudsBackground(appliedColor)
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
        theme.chip.chipColorBgEnabled
    }

    private var hoverColor: MultipleColorSemanticTokens {
        theme.chip.chipColorBgHover
    }

    private var pressedColor: MultipleColorSemanticTokens {
        theme.chip.chipColorBgPressed
    }

    private var disabledColor: MultipleColorSemanticTokens {
        theme.chip.chipColorBgDisabled
    }
}
