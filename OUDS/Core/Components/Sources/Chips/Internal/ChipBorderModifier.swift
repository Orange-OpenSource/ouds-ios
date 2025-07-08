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

/// Used to apply a border with color, width and radius associated to the state
struct ChipBorderModifier: ViewModifier {

    // MARK: Stored Properties

    let state: ChipInteractionState
    let selected: Bool

    @Environment(\.theme) private var theme
    @Environment(\.colorSchemeContrast) private var colorSchemeContrast

    // MARK: Body

    func body(content: Content) -> some View {
        content
            .oudsBorder(
                style: theme.borders.borderStyleDefault,
                width: width,
                radius: theme.chip.chipBorderRadius,
                color: color)
    }

    // MARK: Default hierarchy

    private var width: BorderWidthSemanticToken {
        switch state {
        case .enabled, .disabled:
            selected ? theme.chip.chipBorderWidthSelected : theme.chip.chipBorderWidthUnselected
        case .hover, .pressed:
            selected ? theme.chip.chipBorderWidthSelected : theme.chip.chipBorderWidthUnselectedInteraction
        }
    }

    private var color: MultipleColorSemanticTokens {
        switch state {
        case .enabled:
            selected ? theme.chip.chipColorBorderSelectedEnabled : theme.chip.chipColorBorderUnselectedEnabled
        case .hover:
            selected ? theme.chip.chipColorBorderSelectedHover : theme.chip.chipColorBorderUnselectedHover
        case .pressed:
            selected ? theme.chip.chipColorBorderSelectedPressed : theme.chip.chipColorBorderUnselectedPressed
        case .disabled:
            selected ? theme.chip.chipColorBorderSelectedDisabled : theme.chip.chipColorBorderUnselectedDisabled
        }
    }
}
