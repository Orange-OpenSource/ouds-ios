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

// MARK: - Checkbox Indicator Modifier

/// A `ViewModier` to apply to the ``CheckboxIndicator`` component.
/// It will define the look and feel of the indicator depending to the ``InteractionState``,
/// the ``OUDSCheckboxIndicatorState`` and if there is an error context or not.
struct CheckboxIndicatorModifier: ViewModifier {

    // MARK: - Properties

    let interactionState: InteractionState
    let indicatorState: OUDSCheckboxIndicatorState
    let isError: Bool

    // MARK: - Body

    func body(content: Content) -> some View {
        content
            .modifier(SizeFrameModifier())
            .modifier(CheckboxIndicatorBorderModifier(interactionState: interactionState, indicatorState: indicatorState, isError: isError))
            .modifier(CheckboxIndicatorForegroundModifier(interactionState: interactionState, indicatorState: indicatorState, isError: isError))
            .modifier(CheckboxIndicatorBackgroundModifier(interactionState: interactionState, indicatorState: indicatorState, isError: isError))
    }
}

// MARK: - Checkbox Indicator Foreground Modifier

private struct CheckboxIndicatorForegroundModifier: ViewModifier {

    // MARK: - Properties

    let interactionState: InteractionState
    let indicatorState: OUDSCheckboxIndicatorState
    let isError: Bool

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: - Body

    func body(content: Content) -> some View {
        content
            .oudsForegroundColor(appliedColor)
    }

    // MARK: - Colors

    private var appliedColor: MultipleColorSemanticTokens {
        switch interactionState {
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
            switch indicatorState {
            case .selected, .indeterminate:
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

// MARK: - Checkbox Indicator Background Modifier

private struct CheckboxIndicatorBackgroundModifier: ViewModifier {

    // MARK: - Properties

    let interactionState: InteractionState
    let indicatorState: OUDSCheckboxIndicatorState
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
        switch interactionState {
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
        Color.clear
    }

    private var hoverColor: Color {
        theme.controlItem.controlItemColorBgHover.color(for: colorScheme)
    }

    private var pressedColor: Color {
        theme.controlItem.controlItemColorBgPressed.color(for: colorScheme)
    }

    private var disabledColor: Color {
        guard !isError else {
            OL.fatal("An OUDS Checkbox with a disabled state and an error situation has been detected, which is not allowed."
                     + " Only non-error situation are allowed to have a disabled state.")
        }
        return Color.clear
    }
}

// MARK: - Checkbox IndicIndicatorator Border Modifier

private struct CheckboxIndicatorBorderModifier: ViewModifier {

    // MARK: - Properties

    let interactionState: InteractionState
    let indicatorState: OUDSCheckboxIndicatorState
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
        switch interactionState {
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
            switch indicatorState {
            case .selected, .indeterminate:
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
        switch interactionState {
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
        switch indicatorState {
        case .selected, .indeterminate:
            return theme.checkbox.checkboxBorderWidthSelected
        case .unselected:
            return theme.checkbox.checkboxBorderWidthUnselected
        }
    }

    private var hoverWidth: CGFloat {
        switch indicatorState {
        case .selected, .indeterminate:
            return theme.checkbox.checkboxBorderWidthSelectedHover
        case .unselected:
            return theme.checkbox.checkboxBorderWidthUnselectedHover
        }
    }

    private var pressedWidth: CGFloat {
        switch indicatorState {
        case .selected, .indeterminate:
            return theme.checkbox.checkboxBorderWidthSelectedPressed
        case .unselected:
            return theme.checkbox.checkboxBorderWidthUnselectedPressed
        }
    }

    private var disabledWidth: CGFloat {
        switch indicatorState {
        case .selected, .indeterminate:
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

// MARK: - Size Frame Modifier

private struct SizeFrameModifier: ViewModifier {

    @Environment(\.theme) private var theme

    func body(content: Content) -> some View {
        content
            .frame(width: theme.checkbox.checkboxSizeIndicator,
                   height: theme.checkbox.checkboxSizeIndicator)
    }
}
