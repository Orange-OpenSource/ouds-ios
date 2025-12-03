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

/// A `ViewModifier` to apply to `ControlItem` views so as to define an outline effect, i.e. draw kind of borders around the object, or a divider.
/// As they are not supposed to be displayed at the same time, even if it is requested the divider is not displayed if the outline effect is active.
/// If this view modifier is used to draw an outline in an error context for a disabled component, a *fatal error* will happen because this behaviour is forbidden by design.
/// This `ViewModifier` manages also the high contrast mode in light color scheme so as to use a dedicated color for borders.
struct ControlItemBordersModifier: ViewModifier {

    // MARK: Properties

    let interactionState: InteractionState
    let layoutData: ControlItemLabel.LayoutData
    let isOn: Bool

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.colorSchemeContrast) private var colorSchemeContrast

    // MARK: Body

    func body(content: Content) -> some View {
        if layoutData.isOutlined, let borderColor {
            content
                .oudsBorder(style: theme.borders.styleDefault,
                            width: theme.borders.widthDefault,
                            radius: radius,
                            color: borderColor)
        } else {
            if layoutData.hasDivider {
                // Divider must be inside
                ZStack(alignment: .bottom) {
                    content
                    Divider().horizontalDivider(force: dividerColor)
                }
            } else {
                content
            }
        }
    }

    // MARK: Private helpers

    private var dividerColor: MultipleColorSemanticTokens {
        layoutData.isError ? errorColor : theme.colors.borderDefault
    }

    private var borderColor: MultipleColorSemanticTokens? {
        layoutData.isError ? errorColor : successColor
    }

    private var errorColor: MultipleColorSemanticTokens {
        switch interactionState {
        case .enabled:
            theme.colors.actionNegativeEnabled
        case .pressed:
            theme.colors.actionNegativePressed
        case .hover:
            theme.colors.actionNegativeHover
        case .readOnly, .disabled:
            OL.fatal("An outlined ControlItem with a disabled or read only state and an error situation has been detected, which is not allowed."
                + " Only non-error / non-read only situation are allowed to have a disabled state.")
        }
    }

    private var successColor: MultipleColorSemanticTokens? {
        switch interactionState {
        case .enabled:
            if colorSchemeContrast == .increased, colorScheme == .light {
                isOn ? theme.colors.contentDefault : nil
            } else {
                isOn ? theme.colors.actionSelected : nil
            }
        case .hover:
            theme.colors.actionHover
        case .pressed:
            theme.colors.actionPressed
        case .disabled:
            isOn ? theme.colors.actionDisabled : nil
        case .readOnly:
            isOn ? theme.colors.actionDisabled : nil
        }
    }

    private var radius: BorderRadiusSemanticToken {
        interactionState == .readOnly ?
            theme.controlItem.borderRadiusItemOnly :
            theme.controlItem.borderRadius
    }
}
