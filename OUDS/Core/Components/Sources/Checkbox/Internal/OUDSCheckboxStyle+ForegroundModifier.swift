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

/// A `ViewModifier` to apply to the ``OUDSCheckbox.Item`` of the ``OUDSCheckboxComponent``.
/// Uses the given ``OUDSCheckbox.Status`` and `` OUDSCheckbox.State`` to use the suitable tokens for foreground style
/// like the colors to apply.
struct CheckboxForegroundModifier: ViewModifier {

    // MARK: - Properties

    let status: OUDSCheckbox.Status
    let state: OUDSCheckbox.State
    let item: OUDSCheckbox.Item

    // MARK: - Environment

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: - Body

    func body(content: Content) -> some View {
        content.foregroundColor(appliedColor)
    }

    // MARK: - Colors

    private var appliedColor: Color {
        switch state {
        case .enabled:
            return enabledColor.color(for: colorScheme)
        case .hover:
            return hoverColor.color(for: colorScheme)
        case .pressed:
            return pressedColor.color(for: colorScheme)
        case .disabled, .readOnly:
            return disabledColor.color(for: colorScheme)
        }
    }

    private var enabledColor: MultipleColorSemanticTokens {
        if item == .checkbox {
            switch status {
            case .selected, .undeterminate:
                return theme.colors.colorActionSelected
            case .unselected:
                return theme.colors.colorActionEnabled
            case .errorSelected, .errorUnselected, .errorUndeterminate:
                return theme.colors.colorActionNegativeEnabled
            }
        }

        if item == .label {
            return state == .disabled ? disabledColor : theme.colors.colorContentDefault
        }

        if item == .helper {
            return state == .disabled ? disabledColor : theme.colors.colorContentMuted
        }

        OL.warning("Item of OUDSCheckbox not managed to compute enabled color in foreground modifier O_ô")
        return theme.colors.colorActionEnabled
    }

    private var hoverColor: MultipleColorSemanticTokens {
        if item == .checkbox {
            switch status {
            case .selected, .unselected, .undeterminate:
                return theme.colors.colorActionHover
            case .errorSelected, .errorUnselected, .errorUndeterminate:
                return theme.colors.colorActionNegativeHover
            }
        }

        if item == .label {
            return state == .disabled ? disabledColor : theme.colors.colorContentDefault
        }

        if item == .helper {
            return state == .disabled ? disabledColor : theme.colors.colorContentMuted
        }

        OL.warning("Item of OUDSCheckbox not managed to compute hover color in foreground modifier O_ô")
        return theme.colors.colorActionEnabled
    }

    private var pressedColor: MultipleColorSemanticTokens {
        if item == .checkbox {
            switch status {
            case .selected, .unselected, .undeterminate:
                return theme.colors.colorActionPressed
            case .errorSelected, .errorUnselected, .errorUndeterminate:
                return theme.colors.colorActionNegativePressed
            }
        }

        if item == .label {
            return state == .disabled ? disabledColor : theme.colors.colorContentDefault
        }

        if item == .helper {
            return state == .disabled ? disabledColor : theme.colors.colorContentMuted
        }

        OL.warning("Item of OUDSCheckbox not managed to compute pressed color in foreground modifier O_ô")
        return theme.colors.colorActionEnabled
    }

    private var disabledColor: MultipleColorSemanticTokens {
        guard !status.isError else {
            OL.fatal("An OUDSCheckbox with a disabled state and an error OUDSCheckbox.Status has been detected, which is not allowed are not allowed."
                     + " Only non-error OUDSCheckbox.Status are allowed to have a disabled state.")
        }
        return theme.colors.colorActionDisabled
    }
}
