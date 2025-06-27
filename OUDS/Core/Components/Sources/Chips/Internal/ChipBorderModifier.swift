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

    @Environment(\.theme) private var theme
    @Environment(\.colorSchemeContrast) private var colorSchemeContrast

    // MARK: Stored Properties

    let state: ChipInternalState

    // MARK: Body

    func body(content: Content) -> some View {
            content
                .oudsBorder(
                    style: theme.borders.borderStyleDefault,
                    width: defaultWidth,
                    radius: theme.chip.chipBorderRadiusPill,
                    color: defaultColor)
    }

    // MARK: Default hierarchy

    private var defaultWidth: BorderWidthSemanticToken {
        switch state {
        case .enabled:
            theme.chip.chipBorderWidthUnselected
        case .hover:
            theme.chip.chipBorderWidthUnselectedInteraction // TODO: oudsInputChipColorBorderUnselectedPressed
        case .pressed:
            theme.chip.chipBorderWidthUnselectedInteraction // TODO: oudsInputChipColorBorderUnselectedPressed
        case .disabled:
            theme.chip.chipBorderWidthUnselected // TODO: oudsInputChipColorBorderUnselectedDisabled
        }
    }

    private var defaultColor: MultipleColorSemanticTokens {
        switch state {
        case .enabled:
            theme.chip.chipColorBorderUnselected // TODO: chipColorBorderUnselectedEnabled
        case .hover:
            theme.chip.chipColorBorderHover // TODO: chipColorBorderUnselectedHover
        case .pressed:
            theme.chip.chipColorBorderPressed // TODO: chipColorBorderUnselectedPressed
        case .disabled:
            theme.chip.chipColorBorderDisabled // TODO: chipColorBorderUnselectedDisbaled
        }
    }
}
