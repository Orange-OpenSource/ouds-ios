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

struct ControlItemStyleOutlinedModifier: ViewModifier {

    // MARK: Stored properties

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    let internalState: ControlItemInternalState
    let layoutData: ControlItemLabel.LayoutData
    let isOn: Bool

    // MARK: Body

    func body(content: Content) -> some View {
        if layoutData.isOutlined, let borderColor {
            content
                .oudsBorder(style: theme.borders.borderStyleDefault,
                            width: theme.borders.borderWidthDefault,
                            radius: theme.borders.borderRadiusNone,
                            color: borderColor)
        } else {
            content
        }
    }

    // MARK: Private helpers

    private var borderColor: MultipleColorSemanticTokens? {
        switch internalState {
        case .enabled:
            enabledColor
        case .pressed:
            pressedColor
        case .hover:
            hoverColor
        case .readOnly, .disabled:
            disabledColor
        }
    }

    private var enabledColor: MultipleColorSemanticTokens? {
        if layoutData.isError {
            return isOn ? theme.colors.colorActionNegativeEnabled : nil
        } else {
            return isOn ? theme.colors.colorActionSelected : nil
        }
    }

    private var pressedColor: MultipleColorSemanticTokens? {
        layoutData.isError ? theme.colors.colorActionNegativePressed : theme.colors.colorActionPressed
    }

    private var hoverColor: MultipleColorSemanticTokens? {
        layoutData.isError ? theme.colors.colorActionNegativeHover : theme.colors.colorActionHover
    }

    private var disabledColor: MultipleColorSemanticTokens? {
        guard !layoutData.isError else {
            OL.fatal("An outlined ConttolItem  with a disabled state and an error situation has been detected, which is not allowed."
                     + " Only non-error situation are allowed to have a disabled state.")
        }
        return isOn ? theme.colors.colorActionDisabled : nil
    }
}
