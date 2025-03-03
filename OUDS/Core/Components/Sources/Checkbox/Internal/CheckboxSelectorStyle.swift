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

// MARK: - Checkbox Selector Style

/// A `ViewModier` to apply to the ``CheckboxSelector`` component.
/// It will define the look and feel of the selector depending to the ``ControlItemInternalState``,
/// the ``OUDSCheckboxSelectorState`` and if there is an error context or not.
struct CheckboxSelectorStyle: ViewModifier {

    // MARK: - Properties

    let state: ControlItemInternalState
    let selectorState: OUDSCheckboxSelectorState
    let isError: Bool

    // MARK: - Body

    func body(content: Content) -> some View {
        content
            .modifier(CheckboxSelectorBorderModifier(state: state, selectorState: selectorState, isError: isError))
            .modifier(CheckboxSelectorForegroundModifier(state: state, selectorState: selectorState, isError: isError))
            .modifier(CheckboxSelectorBackgroundModifier(state: state, selectorState: selectorState, isError: isError))
    }
}

// MARK: - Checkbox Selector Foreground Modifier

private struct CheckboxSelectorForegroundModifier: ViewModifier {

    // MARK: - Properties

    let state: ControlItemInternalState
    let selectorState: OUDSCheckboxSelectorState
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
        case .disabled, .readOnly:
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
            OL.fatal("An OUDS Checkbox with a disabled state and an error situation has been detected, which is not allowed."
                     + " Only non-error situation are allowed to have a disabled state.")
        }
        return theme.colors.colorActionDisabled
    }
}

// MARK: - Checkbox Selector Background Modifier

private struct CheckboxSelectorBackgroundModifier: ViewModifier {

    // MARK: - Properties

    let state: ControlItemInternalState
    let selectorState: OUDSCheckboxSelectorState
    let isError: Bool

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

    private var enabledColor: Color {
        if isError {
            switch selectorState {
            case .selected, .undeterminate:
                return theme.colors.colorActionNegativeEnabled.color(for: colorScheme)
                    .opacity(theme.checkbox.checkboxOpacityBgSelected)
            case .unselected:
                return theme.colors.colorActionNegativeEnabled.color(for: colorScheme)
                    .opacity(theme.checkbox.checkboxOpacityBgUnselected)
            }
        } else {
            switch selectorState {
            case .selected, .undeterminate:
                return theme.colors.colorActionSelected.color(for: colorScheme)
                    .opacity(theme.checkbox.checkboxOpacityBgSelected)
            case .unselected:
                return theme.colors.colorActionEnabled.color(for: colorScheme)
                    .opacity(theme.checkbox.checkboxOpacityBgUnselected)
            }
        }
    }

    private var hoverColor: Color {
        if isError {
            switch selectorState {
            case .selected, .undeterminate:
                return theme.colors.colorActionNegativeHover.color(for: colorScheme)
                    .opacity(theme.checkbox.checkboxOpacityBgSelectedHover)
            case .unselected:
                return theme.colors.colorActionNegativeHover.color(for: colorScheme)
                    .opacity(theme.checkbox.checkboxOpacityBgUnselectedHover)
            }
        } else {
            switch selectorState {
            case .selected, .undeterminate:
                return theme.colors.colorActionHover.color(for: colorScheme)
                    .opacity(theme.checkbox.checkboxOpacityBgSelectedHover)
            case .unselected:
                return theme.colors.colorActionHover.color(for: colorScheme)
                    .opacity(theme.checkbox.checkboxOpacityBgUnselectedHover)
            }
        }
    }

    private var pressedColor: Color {
        if isError {
            switch selectorState {
            case .selected, .undeterminate:
                return theme.colors.colorActionNegativePressed.color(for: colorScheme)
                    .opacity(theme.checkbox.checkboxOpacityBgSelectedPressed)
            case .unselected:
                return theme.colors.colorActionNegativePressed.color(for: colorScheme)
                    .opacity(theme.checkbox.checkboxOpacityBgUnselectedPressed)
            }
        } else {
            switch selectorState {
            case .selected, .undeterminate:
                return theme.colors.colorActionPressed.color(for: colorScheme)
                    .opacity(theme.checkbox.checkboxOpacityBgSelectedPressed)
            case .unselected:
                return theme.colors.colorActionPressed.color(for: colorScheme)
                    .opacity(theme.checkbox.checkboxOpacityBgUnselectedPressed)
            }
        }
    }

    private var disabledColor: Color {
        guard !isError else {
            OL.fatal("An OUDS Checkbox with a disabled state and an error situation has been detected, which is not allowed."
                     + " Only non-error situation are allowed to have a disabled state.")
        }
        switch selectorState {
        case .selected, .undeterminate:
            return theme.colors.colorActionDisabled.color(for: colorScheme)
                .opacity(theme.checkbox.checkboxOpacityBgSelected)
        case .unselected:
            return theme.colors.colorActionDisabled.color(for: colorScheme)
                .opacity(theme.checkbox.checkboxOpacityBgUnselected)
        }
    }
}

// MARK: - Checkbox Selector Border Modifier

private struct CheckboxSelectorBorderModifier: ViewModifier {

    // MARK: - Properties

    let state: ControlItemInternalState
    let selectorState: OUDSCheckboxSelectorState
    let isError: Bool

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: - Body

    func body(content: Content) -> some View {
        content
            .oudsBorder(style: theme.borders.borderStyleDefault,
                        width: appliedBorderWidth,
                        radius: appliedBorderRadius,
                        color: appliedColor)
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
        case .disabled, .readOnly:
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
            OL.fatal("An OUDS Checkbox with a disabled state and an error situation has been detected, which is not allowed"
                     + " Only non-error situation are allowed to have a disabled state.")
        }
        return theme.colors.colorActionDisabled
    }

    // MARK: - Border width

    private var appliedBorderWidth: CGFloat {
        switch state {
        case .enabled:
            return enabledWidth
        case .hover:
            return hoverWidth
        case .pressed:
            return pressedWidth
        case .disabled, .readOnly:
            return disabledWidth
        }
    }

    private var enabledWidth: CGFloat {
        switch selectorState {
        case .selected, .undeterminate:
            return theme.checkbox.checkboxBorderWidthSelected
        case .unselected:
            return theme.checkbox.checkboxBorderWidthUnselected
        }
    }

    private var hoverWidth: CGFloat {
        switch selectorState {
        case .selected, .undeterminate:
            return theme.checkbox.checkboxBorderWidthSelectedHover
        case .unselected:
            return theme.checkbox.checkboxBorderWidthUnselectedHover
        }
    }

    private var pressedWidth: CGFloat {
        switch selectorState {
        case .selected, .undeterminate:
            return theme.checkbox.checkboxBorderWidthSelectedPressed
        case .unselected:
            return theme.checkbox.checkboxBorderWidthUnselectedPressed
        }
    }

    private var disabledWidth: CGFloat {
        switch selectorState {
        case .selected, .undeterminate:
            return theme.checkbox.checkboxBorderWidthSelected
        case .unselected:
            return theme.checkbox.checkboxBorderWidthUnselected
        }
    }

    // MARK: - Border radius

    private var appliedBorderRadius: CGFloat {
        theme.checkbox.checkboxBorderRadius
    }
}
