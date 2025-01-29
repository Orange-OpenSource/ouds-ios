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

/// A `ViewModifier` to apply to the selector of the ``OUDSCheckboxComponent`` inside its ``OUDSCheckboxStyle``.
/// Uses the given ``OUDSCheckbox.Status`` and ``InternalCheckboxState`` to use the suitable tokens of radius, color and borders
/// to define the look and feel of the component.
struct CheckboxSelectorBorderModifier: ViewModifier {

    // MARK: - Properties

    let status: OUDSCheckbox.Status
    let state: InternalCheckboxState

    // MARK: - Environment

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: - Body

    func body(content: Content) -> some View {
        // oudsBorder(style:width:radius:color) doubles the borders with O_ô
        content
            .background(
                Rectangle()
                    .fill(Color.clear)
                    .overlay(
                        Rectangle()
                            .stroke(appliedColor.color(for: colorScheme), lineWidth: appliedBorderWidth)
                            .cornerRadius(appliedBorderRadius)
                    )
            )
            .cornerRadius(appliedBorderRadius)
    }

    // MARK: - Border colors

    private var appliedColor: MultipleColorSemanticTokens {
        switch state {
        case .enabled:
            return enabledColor
        case .hover:
            return hoverColor
        case .pressed:
            return pressedColor
        case .disabled, .readOnly:
            return disabledColor
        }
    }

    private var enabledColor: MultipleColorSemanticTokens {
        switch status {
        case .selected, .undeterminate:
            return theme.colors.colorActionSelected
        case .unselected:
            return theme.colors.colorActionEnabled
        case .errorSelected, .errorUnselected, .errorUndeterminate:
            return theme.colors.colorActionNegativeEnabled
        }
    }

    private var hoverColor: MultipleColorSemanticTokens {
        switch status {
        case .selected, .unselected, .undeterminate:
            return theme.colors.colorActionHover
        case .errorSelected, .errorUnselected, .errorUndeterminate:
            return theme.colors.colorActionNegativeHover
        }
    }

    private var pressedColor: MultipleColorSemanticTokens {
        switch status {
        case .selected, .unselected, .undeterminate:
            return theme.colors.colorActionPressed
        case .errorSelected, .errorUnselected, .errorUndeterminate:
            return theme.colors.colorActionNegativePressed
        }
    }

    private var disabledColor: MultipleColorSemanticTokens {
        guard !status.isError else {
            OL.fatal("An OUDSCheckbox with a disabled state and an error OUDSCheckbox.Status has been detected, which is not allowed are not allowed."
                     + " Only non-error OUDSCheckbox.Status are allowed to have a disabled state.")
        }
        return theme.colors.colorActionDisabled
    }

    // MARK: - Border width

    private var appliedBorderWidth: CGFloat {
        switch state {
        case .hover:
            return theme.checkRadio.checkRadioSelectorBorderWidthHover
        case .pressed:
            return theme.checkRadio.checkRadioSelectorBorderWidthPressed
        case .disabled, .readOnly:
            return theme.checkRadio.checkRadioSelectorBorderWidthDisabled
        default:
            return theme.checkRadio.checkRadioSelectorBorderWidthEnabled
        }
    }

    // MARK: - Border radius

    private var appliedBorderRadius: CGFloat {
        theme.checkRadio.checkRadioSelectorBorderRadius
    }
}
