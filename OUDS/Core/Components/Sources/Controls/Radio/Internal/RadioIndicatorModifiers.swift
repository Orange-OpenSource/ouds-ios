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

import OUDSFoundations
import OUDSThemesContract
import OUDSTokensSemantic
import SwiftUI

// MARK: - Radio Indicator Modifier

/// A `ViewModier` to apply to the ``RadioIndicator`` component.
/// It will define the look and feel of the indicator depending to the ``InteractionState`` and some flags
/// This `View` manages also the high contrast mode in light color scheme so as to use a dedicated color for indicator.
struct RadioIndicatorModifier: ViewModifier {

    // MARK: - Properties

    let interactionState: InteractionState
    let isOn: Bool
    let isError: Bool

    // MARK: - Body

    func body(content: Content) -> some View {
        content
            .modifier(SizeFrameModifier())
            .modifier(RadioIndicatorBorderModifier(interactionState: interactionState, isOn: isOn, isError: isError))
            .modifier(RadioIndicatorForegroundModifier(interactionState: interactionState, isOn: isOn, isError: isError))
            .modifier(RadioIndicatorBackgroundModifier(interactionState: interactionState, isError: isError))
    }
}

// MARK: - Radio Indicator Foreground Modifier

private struct RadioIndicatorForegroundModifier: ViewModifier {

    // MARK: - Properties

    let interactionState: InteractionState
    let isOn: Bool
    let isError: Bool

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.colorSchemeContrast) private var colorSchemeContrast

    // MARK: - Body

    func body(content: Content) -> some View {
        content
            .oudsForegroundColor(appliedColor)
    }

    // MARK: - Colors

    private var appliedColor: MultipleColorSemanticToken {
        switch interactionState {
        case .enabled:
            enabledColor
        case .hover:
            hoverColor
        case .pressed:
            pressedColor
        case .readOnly:
            readOnlyColor
        case .disabled:
            disabledColor
        }
    }

    private var enabledColor: MultipleColorSemanticToken {
        if isError {
            theme.colors.actionNegativeEnabled
        } else {
            if colorSchemeContrast == .increased, colorScheme == .light {
                theme.colors.contentDefault
            } else {
                isOn ? theme.colors.actionSelected : theme.colors.actionEnabled
            }
        }
    }

    private var hoverColor: MultipleColorSemanticToken {
        isError ? theme.colors.actionNegativeHover : theme.colors.actionHover
    }

    private var pressedColor: MultipleColorSemanticToken {
        isError ? theme.colors.actionNegativePressed : theme.colors.actionPressed
    }

    private var readOnlyColor: MultipleColorSemanticToken {
        guard !isError else {
            OL.fatal("An OUDSRadio with a read only state and an error situation has been detected, which is not allowed."
                + " Only non-error situation are allowed to have a read only state.")
        }
        return theme.colors.actionReadOnlyPrimary
    }

    private var disabledColor: MultipleColorSemanticToken {
        guard !isError else {
            OL.fatal("An OUDSRadio with a disabled state and an error situation has been detected, which is not allowed."
                + " Only non-error situation are allowed to have a disabled state.")
        }
        return theme.colors.actionDisabled
    }
}

// MARK: - Radio Indicator Background Modifier

private struct RadioIndicatorBackgroundModifier: ViewModifier {

    // MARK: - Properties

    let interactionState: InteractionState
    let isError: Bool

    // MARK: - Body

    func body(content: Content) -> some View {
        content
            .background(appliedColor)
    }

    // MARK: - Colors

    private var appliedColor: Color {
        switch interactionState {
        case .enabled:
            enabledColor
        case .hover:
            hoverColor
        case .pressed:
            pressedColor
        case .disabled, .readOnly:
            disabledColor
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

    let interactionState: InteractionState
    let isOn: Bool
    let isError: Bool

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.colorSchemeContrast) private var colorSchemeContrast

    // MARK: - Body

    func body(content: Content) -> some View {
        content
            .oudsBorder(style: theme.borders.styleDefault,
                        width: appliedBorderWidth,
                        radius: appliedBorderRadius,
                        color: appliedColor)
    }

    // MARK: - Colors

    private var appliedColor: MultipleColorSemanticToken {
        switch interactionState {
        case .enabled:
            enabledColor
        case .hover:
            hoverColor
        case .pressed:
            pressedColor
        case .readOnly:
            readOnlyColor
        case .disabled:
            disabledColor
        }
    }

    private var enabledColor: MultipleColorSemanticToken {
        if isError {
            theme.colors.actionNegativeEnabled
        } else {
            if colorSchemeContrast == .increased, colorScheme == .light {
                theme.colors.contentDefault
            } else {
                isOn ? theme.colors.actionSelected : theme.colors.actionEnabled
            }
        }
    }

    private var hoverColor: MultipleColorSemanticToken {
        if isError {
            theme.colors.actionNegativeHover
        } else {
            theme.colors.actionHover
        }
    }

    private var pressedColor: MultipleColorSemanticToken {
        if isError {
            theme.colors.actionNegativePressed
        } else {
            theme.colors.actionPressed
        }
    }

    private var readOnlyColor: MultipleColorSemanticToken {
        guard !isError else {
            OL.fatal("An OUDSRadio with a read only state and an error situation has been detected, which is not allowed"
                + " Only non-error situation are allowed to have a disabled state.")
        }
        return theme.colors.actionReadOnlySecondary
    }

    private var disabledColor: MultipleColorSemanticToken {
        guard !isError else {
            OL.fatal("An OUDSRadio with a disabled state and an error situation has been detected, which is not allowed"
                + " Only non-error situation are allowed to have a disabled state.")
        }
        return theme.colors.actionDisabled
    }

    // MARK: - Border width

    private var appliedBorderWidth: CGFloat {
        switch interactionState {
        case .enabled:
            enabledWidth
        case .hover:
            hoverWidth
        case .pressed:
            pressedWidth
        case .disabled, .readOnly:
            disabledWidth
        }
    }

    private var enabledWidth: CGFloat {
        isOn ? theme.radioButton.borderWidthSelected : theme.radioButton.borderWidthUnselected
    }

    private var hoverWidth: CGFloat {
        isOn ? theme.radioButton.borderWidthSelectedHover : theme.radioButton.borderWidthUnselectedHover
    }

    private var pressedWidth: CGFloat {
        isOn ? theme.radioButton.borderWidthSelectedPressed : theme.radioButton.borderWidthUnselectedPressed
    }

    private var disabledWidth: CGFloat {
        isOn ? theme.radioButton.borderWidthSelected : theme.radioButton.borderWidthUnselected
    }

    // MARK: - Border radius

    private var appliedBorderRadius: CGFloat {
        theme.radioButton.borderRadius
    }
}

// MARK: - Indicator Frame Modifier

private struct SizeFrameModifier: ViewModifier {

    @Environment(\.theme) private var theme

    func body(content: Content) -> some View {
        content
            .frame(width: theme.radioButton.sizeIndicator,
                   height: theme.radioButton.sizeIndicator)
    }
}
