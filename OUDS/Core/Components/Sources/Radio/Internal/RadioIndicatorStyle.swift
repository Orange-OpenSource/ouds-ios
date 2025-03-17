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

// MARK: - Radio Indicator Style

/// A `ViewModier` to apply to the ``RadioIndicator`` component.
/// It will define the look and feel of the indicator depending to the ``ControlItemInternalState`` and some flags
struct RadioIndicatorStyle: ViewModifier {

    // MARK: - Properties

    let state: ControlItemInternalState
    let isOn: Bool
    let isError: Bool

    // MARK: - Body

    func body(content: Content) -> some View {
        content
            .modifier(RadioIndicatorBorderModifier(state: state, isOn: isOn, isError: isError))
            .modifier(RadioIndicatorForegroundModifier(state: state, isOn: isOn, isError: isError))
            .modifier(RadioIndicatorBackgroundModifier(state: state, isOn: isOn, isError: isError))
    }
}

// MARK: - Radio Indicator Foreground Modifier

private struct RadioIndicatorForegroundModifier: ViewModifier {

    // MARK: - Properties

    let state: ControlItemInternalState
    let isOn: Bool
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
            return isOn ? theme.colors.colorActionSelected : theme.colors.colorActionEnabled
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
            OL.fatal("An OUDSRadio with a disabled state and an error situation has been detected, which is not allowed."
                     + " Only non-error situation are allowed to have a disabled state.")
        }
        return theme.colors.colorActionDisabled
    }
}

// MARK: - Radio Indicator Background Modifier

private struct RadioIndicatorBackgroundModifier: ViewModifier {

    // MARK: - Properties

    let state: ControlItemInternalState
    let isOn: Bool
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
        Color.clear
    }

    private var hoverColor: Color {
        Color.clear
    }

    private var pressedColor: Color {
        Color.clear
    }

    private var disabledColor: Color {
        guard !isError else {
            OL.fatal("An OUDSRadio with a disabled state and an error situation has been detected, which is not allowed."
                     + " Only non-error situation are allowed to have a disabled state.")
        }
        return Color.clear
    }
}

// MARK: - Radio Indicator Border Modifier

private struct RadioIndicatorBorderModifier: ViewModifier {

    // MARK: - Properties

    let state: ControlItemInternalState
    let isOn: Bool
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
            return isOn ? theme.colors.colorActionSelected : theme.colors.colorActionEnabled
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
            OL.fatal("An OUDSRadio with a disabled state and an error situation has been detected, which is not allowed"
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
        isOn ? theme.radioButton.radioButtonBorderWidthSelected : theme.radioButton.radioButtonBorderWidthUnselected
    }

    private var hoverWidth: CGFloat {
        isOn ? theme.radioButton.radioButtonBorderWidthSelectedHover : theme.radioButton.radioButtonBorderWidthUnselectedHover
    }

    private var pressedWidth: CGFloat {
        isOn ? theme.radioButton.radioButtonBorderWidthSelectedPressed : theme.radioButton.radioButtonBorderWidthUnselectedPressed
    }

    private var disabledWidth: CGFloat {
        isOn ? theme.radioButton.radioButtonBorderWidthSelected : theme.radioButton.radioButtonBorderWidthUnselected
    }

    // MARK: - Border radius

    private var appliedBorderRadius: CGFloat {
        theme.radioButton.radioButtonBorderRadius
    }
}
