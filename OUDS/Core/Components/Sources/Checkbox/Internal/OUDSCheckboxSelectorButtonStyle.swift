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
import OUDSTokensSemantic
import SwiftUI

// MARK: - Checkbox Selector Button Style

/// A `ViewModier` to apply to the ``OUDSCheckbox`` selector component.
/// It will define the look and feel of the selector depending to the ``OUDSInternalCheckboxState``,
/// the ``OUDSCheckbox.SelectorState`` and if there is an error context or not.
struct OUDSCheckboxSelectorButtonStyle: ViewModifier {

    // MARK: - Properties

    let state: OUDSInternalCheckboxState
    let selectorState: OUDSCheckbox.SelectorState
    let isError: Bool

    // MARK: - Body

    func body(content: Content) -> some View {
        content
            .modifier(CheckboxSelectorButtonBorderModifier(state: state, selectorState: selectorState, isError: isError))
            .modifier(CheckboxSelectorButtonForegroundModifier(state: state, selectorState: selectorState, isError: isError))
            .modifier(CheckboxSelectorButtonBackgroundModifier(state: state, selectorState: selectorState))
    }
}

// MARK: - Checkbox Selector Button Foreground Modifier

private struct CheckboxSelectorButtonForegroundModifier: ViewModifier {

    // MARK: - Properties

    let state: OUDSInternalCheckboxState
    let selectorState: OUDSCheckbox.SelectorState
    let isError: Bool

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: - Body

    func body(content: Content) -> some View {
        content
            .foregroundColor(appliedColor)
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
        case .disabled:
            return disabledColor.color(for: colorScheme)
        }
    }

    private var enabledColor: MultipleColorSemanticTokens {
        if isError {
            return theme.colors.colorActionNegativeEnabled
        } else {
            switch selectorState {
            case .selected, .undeterminate:
                return theme.colors.colorActionSelected
            case .unselected:
                return theme.colors.colorActionEnabled
            }
        }
    }

    private var hoverColor: MultipleColorSemanticTokens {
        isError ? theme.colors.colorActionNegativeHover : theme.colors.colorActionHover
    }

    private var pressedColor: MultipleColorSemanticTokens {
        isError ? theme.colors.colorActionNegativePressed : theme.colors.colorActionPressed
    }

    private var disabledColor: MultipleColorSemanticTokens {
        guard !isError else {
            OL.fatal("An OUDSCheckbox with a disabled state and an error situation has been detected, which is not allowed."
                     + " Only non-error situation are allowed to have a disabled state.")
        }
        return theme.colors.colorActionDisabled
    }
}

// MARK: - Checkbox Selector Button Background Modifier

private struct CheckboxSelectorButtonBackgroundModifier: ViewModifier {

    // MARK: - Properties

    let state: OUDSInternalCheckboxState
    let selectorState: OUDSCheckbox.SelectorState

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: - Body

    func body(content: Content) -> some View {
        content
            .background(appliedColor)
    }

    // MARK: - Colors

    private var appliedColor: Color {
        switch state {
        case .hover:
            return theme.listItem.listItemColorBgHover.color(for: colorScheme)
        case .pressed:
            return theme.listItem.listItemColorBgPressed.color(for: colorScheme)
        default:
            return Color.clear
        }
    }
}

// MARK: - Checkbox Selector Button Border Modifier

private struct CheckboxSelectorButtonBorderModifier: ViewModifier {

    // MARK: - Properties

    let state: OUDSInternalCheckboxState
    let selectorState: OUDSCheckbox.SelectorState
    let isError: Bool

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

    // MARK: - Colors

    private var appliedColor: MultipleColorSemanticTokens {
        switch state {
        case .enabled:
            return enabledColor
        case .hover:
            return hoverColor
        case .pressed:
            return pressedColor
        case .disabled:
            return disabledColor
        }
    }

    private var enabledColor: MultipleColorSemanticTokens {
        if isError {
            return theme.colors.colorActionNegativeEnabled
        } else {
            switch selectorState {
            case .selected, .undeterminate:
                return theme.colors.colorActionSelected
            case .unselected:
                return theme.colors.colorActionEnabled
            }
        }
    }

    private var hoverColor: MultipleColorSemanticTokens {
        if isError {
            return theme.colors.colorActionNegativeHover
        } else {
            return theme.colors.colorActionHover
        }
    }

    private var pressedColor: MultipleColorSemanticTokens {
        if isError {
            return theme.colors.colorActionNegativePressed
        } else {
            return theme.colors.colorActionPressed
        }
    }

    private var disabledColor: MultipleColorSemanticTokens {
        guard !isError else {
            OL.fatal("An OUDSCheckbox with a disabled state and an error situation has been detected, which is not allowed"
                     + " Only non-error situation are allowed to have a disabled state.")
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
        case .disabled:
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
