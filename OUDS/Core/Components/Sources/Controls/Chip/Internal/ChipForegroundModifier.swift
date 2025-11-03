//
// Software Name: OUDSThemesContract iOS
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
import OUDSTokensComponent
import OUDSTokensSemantic
import SwiftUI

/// Used to apply the right foreground color associated to the state
struct ChipForegroundModifier: ViewModifier {

    // MARK: Stored Properties

    let state: ChipInteractionState
    let selected: Bool

    @Environment(\.theme) private var theme

    // MARK: Body

    func body(content: Content) -> some View {
        content.oudsForegroundColor(appliedColor)
    }

    // MARK: Private helpers

    private var appliedColor: MultipleColorSemanticTokens {
        switch state {
        case .enabled:
            selected ? theme.chip.colorContentSelectedEnabled : theme.chip.colorContentUnselectedEnabled
        case .hover:
            selected ? theme.chip.colorContentSelectedHover : theme.chip.colorContentUnselectedHover
        case .pressed:
            selected ? theme.chip.colorContentSelectedPressed : theme.chip.colorContentUnselectedPressed
        case .disabled:
            selected ? theme.chip.colorContentSelectedDisabled : theme.chip.colorContentUnselectedDisabled
        }
    }
}
