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
import OUDSTokensSemantic

extension NamedColor {

    enum Action: String, CaseIterable {
        case colorActionDisabled
        case colorActionEnabled
        case colorActionFocus
        case colorActionFocus2
        case colorActionHighlighted
        case colorActionHover
        case colorActionLoading
        case colorActionNegativeEnabled
        case colorActionNegativeFocus
        case colorActionNegativeHover
        case colorActionNegativeLoading
        case colorActionNegativePressed
        case colorActionPressed
        case colorActionSelected
        case colorActionSupportEnabled
        case colorActionSupportFocus
        case colorActionSupportHover
        case colorActionSupportLoading
        case colorActionSupportPressed
        case colorActionVisited

        func token(from theme: OUDSTheme) -> MultipleColorSemanticTokens {
            switch self {
            case .colorActionDisabled:
                return theme.colors.colorActionDisabled
            case .colorActionEnabled:
                return theme.colors.colorActionEnabled
            case .colorActionFocus:
                return theme.colors.colorActionFocus
            case .colorActionFocus2:
                return theme.colors.colorActionFocus2
            case .colorActionHighlighted:
                return theme.colors.colorActionHighlighted
            case .colorActionHover:
                return theme.colors.colorActionHover
            case .colorActionLoading:
                return theme.colors.colorActionLoading
            case .colorActionNegativeEnabled:
                return theme.colors.colorActionNegativeEnabled
            case .colorActionNegativeFocus:
                return theme.colors.colorActionNegativeFocus
            case .colorActionNegativeHover:
                return theme.colors.colorActionNegativeHover
            case .colorActionNegativeLoading:
                return theme.colors.colorActionNegativeLoading
            case .colorActionNegativePressed:
                return theme.colors.colorActionNegativePressed
            case .colorActionPressed:
                return theme.colors.colorActionPressed
            case .colorActionSelected:
                return theme.colors.colorActionSelected
            case .colorActionSupportEnabled:
                return theme.colors.colorActionSupportEnabled
            case .colorActionSupportFocus:
                return theme.colors.colorActionSupportFocus
            case .colorActionSupportHover:
                return theme.colors.colorActionSupportHover
            case .colorActionSupportLoading:
                return theme.colors.colorActionSupportLoading
            case .colorActionSupportPressed:
                return theme.colors.colorActionSupportPressed
            case .colorActionVisited:
                return theme.colors.colorActionVisited
            }
        }
    }
}
