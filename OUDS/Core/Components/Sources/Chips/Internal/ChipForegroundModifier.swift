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

    let state: ChipInteractionState
    let selected: Bool

    // MARK: Body

    func body(content: Content) -> some View {
        content.oudsForegroundColor(appliedColor)
    }

    // MARK: Private helpers

    private var appliedColor: MultipleColorSemanticTokens {
        switch state {
        case .enabled:
            selected ? theme.chip.chipColorContentSelectedEnabled : theme.chip.chipColorContentUnselectedEnabled
        case .hover:
            selected ? theme.chip.chipColorContentSelectedHover : theme.chip.chipColorContentUnselectedHover
        case .pressed:
            selected ? theme.chip.chipColorContentSelectedPressed : theme.chip.chipColorContentUnselectedPressed
        case .disabled:
            selected ? theme.chip.chipColorContentSelectedDisabled : theme.chip.chipColorContentUnselectedDisabled
        }
    }
}
