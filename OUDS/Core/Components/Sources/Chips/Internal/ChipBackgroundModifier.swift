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

    // MARK: Stored Properties

    let state: ChipInteractionState
    @Environment(\.theme) private var theme

    // MARK: Body

    func body(content: Content) -> some View {
        content.oudsBackground(appliedColor)
    }

    // MARK: Private helpers

    private var appliedColor: MultipleColorSemanticTokens {
        switch state {
        case .enabled:
            theme.chip.chipColorBgEnabled
        case .hover:
            theme.chip.chipColorBgHover
        case .pressed:
            theme.chip.chipColorBgPressed
        case .disabled:
            theme.chip.chipColorBgDisabled
        }
    }
}
