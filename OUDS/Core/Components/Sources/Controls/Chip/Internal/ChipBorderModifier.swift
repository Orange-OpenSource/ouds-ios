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

/// Used to apply a border with color, width and radius associated to the state
struct ChipBorderModifier: ViewModifier {

    // MARK: Stored Properties

    let state: ChipInteractionState
    let selected: Bool

    @Environment(\.theme) private var theme

    // MARK: Body

    func body(content: Content) -> some View {
        content
            .oudsBorder(
                style: theme.borders.styleDefault,
                width: width,
                radius: theme.chip.borderRadius,
                color: color)
    }

    // MARK: Private helpers

    private var width: BorderWidthSemanticToken {
        switch state {
        case .enabled, .disabled:
            selected ? theme.chip.borderWidthSelected : theme.chip.borderWidthUnselected
        case .hover, .pressed:
            selected ? theme.chip.borderWidthSelected : theme.chip.borderWidthUnselectedInteraction
        }
    }

    private var color: MultipleColorSemanticTokens {
        switch state {
        case .enabled:
            selected ? theme.chip.colorBorderSelectedEnabled : theme.chip.colorBorderUnselectedEnabled
        case .hover:
            selected ? theme.chip.colorBorderSelectedHover : theme.chip.colorBorderUnselectedHover
        case .pressed:
            selected ? theme.chip.colorBorderSelectedPressed : theme.chip.colorBorderUnselectedPressed
        case .disabled:
            selected ? theme.chip.colorBorderSelectedDisabled : theme.chip.colorBorderUnselectedDisabled
        }
    }
}
