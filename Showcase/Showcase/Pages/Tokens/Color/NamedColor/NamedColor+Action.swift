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

// swiftlint:disable identifier_name
// swiftlint:disable function_body_length

extension NamedColor {

    enum Action: String, CaseIterable {
        case colorActionDisabled
        case colorActionEnabled
        case colorActionFocus
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
                return theme.colorActionDisabled
            case .colorActionEnabled:
                return theme.colorActionEnabled
            case .colorActionFocus:
                return theme.colorActionFocus
            case .colorActionHighlighted:
                return theme.colorActionHighlighted
            case .colorActionHover:
                return theme.colorActionHover
            case .colorActionLoading:
                return theme.colorActionLoading
            case .colorActionNegativeEnabled:
                return theme.colorActionNegativeEnabled
            case .colorActionNegativeFocus:
                return theme.colorActionNegativeFocus
            case .colorActionNegativeHover:
                return theme.colorActionNegativeHover
            case .colorActionNegativeLoading:
                return theme.colorActionNegativeLoading
            case .colorActionNegativePressed:
                return theme.colorActionNegativePressed
            case .colorActionPressed:
                return theme.colorActionPressed
            case .colorActionSelected:
                return theme.colorActionSelected
            case .colorActionSupportEnabled:
                return theme.colorActionSupportEnabled
            case .colorActionSupportFocus:
                return theme.colorActionSupportFocus
            case .colorActionSupportHover:
                return theme.colorActionSupportHover
            case .colorActionSupportLoading:
                return theme.colorActionSupportLoading
            case .colorActionSupportPressed:
                return theme.colorActionSupportPressed
            case .colorActionVisited:
                return theme.colorActionVisited
            }
        }
    }
}

// swiftlint:enable identifier_name
// swiftlint:enable function_body_length
