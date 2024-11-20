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
        case colorActionSelected
        case colorActionSelectedOnBgEmphasized
        case colorActionDisabled
        case colorActionDisabledOnBgEmphasized
        case colorActionVisited
        case colorActionVistedOnBgEmphasized
        case colorActionPrimaryEnabled
        case colorActionPrimaryEnabledOnBgEmphasized
        case colorActionPrimaryHover
        case colorActionPrimaryHoverOnBgEmphasized
        case colorActionPrimaryPressed
        case colorActionPrimaryPressedOnBgEmphasized
        case colorActionPrimaryLoading
        case colorActionPrimaryLoadingOnBgEmphasized
        case colorActionPrimaryFocus
        case colorActionPrimaryFocusOnBgEmphasized
        case colorActionSecondaryEnabled
        case colorActionSecondaryEnabledOnBgEmphasized
        case colorActionSecondaryHover
        case colorActionSecondaryHoverOnBgEmphasized
        case colorActionSecondaryPressed
        case colorActionSecondaryPressedOnBgEmphasized
        case colorActionSecondaryLoading
        case colorActionSecondaryLoadingOnBgEmphasized
        case colorActionSecondaryFocus
        case colorActionSecondaryFocusOnBgEmphasized
        case colorActionNegativeEnabled
        case colorActionNegativeHover
        case colorActionNegativePressed
        case colorActionNegativeLoading
        case colorActionNegativeFocus
        case colorActionOnBgActionDisabled
        case colorActionOnBgActionDisabledOnBgEmphasized
        case colorActionOnBgActionNegative
        case colorActionOnBgActionPrimaryEnabled
        case colorActionOnBgActionPrimaryEnabledOnBgEmphasized
        case colorActionOnBgActionPrimaryHover
        case colorActionOnBgActionPrimaryHoverOnBgEmphasized
        case colorActionOnBgActionPrimaryPressed
        case colorActionOnBgActionPrimaryPressedOnBgEmphasized
        case colorActionOnBgActionPrimaryLoading
        case colorActionOnBgActionPrimaryLoadingOnBgEmphasized
        case colorActionOnBgActionPrimaryFocus
        case colorActionOnBgActionPrimaryFocusOnBgEmphasized
        // NOTE: #124 - Following case(s) is / are not managed because not defined values!
//        case colorActionOnBgActionSecondaryEnabled
//        case colorActionOnBgActionSecondaryEnabledOnBgEmphasized
//        case colorActionOnBgActionSecondaryHover
//        case colorActionOnBgActionSecondaryHoverOnBgEmphasized
//        case colorActionOnBgActionSecondaryPressed
//        case colorActionOnBgActionSecondaryPressedOnBgEmphasized
//        case colorActionOnBgActionSecondaryLoading
//        case colorActionOnBgActionSecondaryLoadingOnBgEmphasized
//        case colorActionOnBgActionSecondaryFocus
//        case colorActionOnBgActionSecondaryFocusOnBgEmphasized

        func token(from theme: OUDSTheme) -> MultipleColorTokens {
            switch self {
            case .colorActionSelected:
                return theme.colorActionSelected
            case .colorActionSelectedOnBgEmphasized:
                return theme.colorActionSelectedOnBgEmphasized
            case .colorActionDisabled:
                return theme.colorActionDisabled
            case .colorActionDisabledOnBgEmphasized:
                return theme.colorActionDisabledOnBgEmphasized
            case .colorActionVisited:
                return theme.colorActionVisited
            case .colorActionVistedOnBgEmphasized:
                return theme.colorActionVistedOnBgEmphasized
            case .colorActionPrimaryEnabled:
                return theme.colorActionPrimaryEnabled
            case .colorActionPrimaryEnabledOnBgEmphasized:
                return theme.colorActionPrimaryEnabledOnBgEmphasized
            case .colorActionPrimaryHover:
                return theme.colorActionPrimaryHover
            case .colorActionPrimaryHoverOnBgEmphasized:
                return theme.colorActionPrimaryHoverOnBgEmphasized
            // NOTE: #124 - Following case(s) is / are not managed because not defined values!
            case .colorActionPrimaryPressed:
                return theme.colorActionPrimaryPressed
            case .colorActionPrimaryPressedOnBgEmphasized:
                return theme.colorActionPrimaryPressedOnBgEmphasized
            case .colorActionPrimaryLoading:
                return theme.colorActionPrimaryLoading
            case .colorActionPrimaryLoadingOnBgEmphasized:
                return theme.colorActionPrimaryLoadingOnBgEmphasized
            case .colorActionPrimaryFocus:
                return theme.colorActionPrimaryFocus
            case .colorActionPrimaryFocusOnBgEmphasized:
                return theme.colorActionPrimaryFocusOnBgEmphasized
            case .colorActionSecondaryEnabled:
                return theme.colorActionSecondaryEnabled
            case .colorActionSecondaryEnabledOnBgEmphasized:
                return theme.colorActionSecondaryEnabledOnBgEmphasized
            case .colorActionSecondaryHover:
                return theme.colorActionSecondaryHover
            case .colorActionSecondaryHoverOnBgEmphasized:
                return theme.colorActionSecondaryHoverOnBgEmphasized
            case .colorActionSecondaryPressed:
                return theme.colorActionSecondaryPressed
            case .colorActionSecondaryPressedOnBgEmphasized:
                return theme.colorActionSecondaryPressedOnBgEmphasized
            case .colorActionSecondaryLoading:
                return theme.colorActionSecondaryLoading
            case .colorActionSecondaryLoadingOnBgEmphasized:
                return theme.colorActionSecondaryLoadingOnBgEmphasized
            case .colorActionSecondaryFocus:
                return theme.colorActionSecondaryFocus
            case .colorActionSecondaryFocusOnBgEmphasized:
                return theme.colorActionSecondaryFocusOnBgEmphasized
            case .colorActionNegativeEnabled:
                return theme.colorActionNegativeEnabled
            case .colorActionNegativeHover:
                return theme.colorActionNegativeHover
            case .colorActionNegativePressed:
                return theme.colorActionNegativePressed
            case .colorActionNegativeLoading:
                return theme.colorActionNegativeLoading
            case .colorActionNegativeFocus:
                return theme.colorActionNegativeFocus
            case .colorActionOnBgActionDisabled:
                return theme.colorActionOnBgActionDisabled
            case .colorActionOnBgActionDisabledOnBgEmphasized:
                return theme.colorActionOnBgActionDisabledOnBgEmphasized
            case .colorActionOnBgActionNegative:
                return theme.colorActionOnBgActionNegative
            case .colorActionOnBgActionPrimaryEnabled:
                return theme.colorActionOnBgActionPrimaryEnabled
            case .colorActionOnBgActionPrimaryEnabledOnBgEmphasized:
                return theme.colorActionOnBgActionPrimaryEnabledOnBgEmphasized
            case .colorActionOnBgActionPrimaryHover:
                return theme.colorActionOnBgActionPrimaryHover
            case .colorActionOnBgActionPrimaryHoverOnBgEmphasized:
                return theme.colorActionOnBgActionPrimaryHoverOnBgEmphasized
            case .colorActionOnBgActionPrimaryPressed:
                return theme.colorActionOnBgActionPrimaryPressed
            case .colorActionOnBgActionPrimaryPressedOnBgEmphasized:
                return theme.colorActionOnBgActionPrimaryPressedOnBgEmphasized
            case .colorActionOnBgActionPrimaryLoading:
                return theme.colorActionOnBgActionPrimaryLoading
            case .colorActionOnBgActionPrimaryLoadingOnBgEmphasized:
                return theme.colorActionOnBgActionPrimaryLoadingOnBgEmphasized
            case .colorActionOnBgActionPrimaryFocus:
                return theme.colorActionOnBgActionPrimaryFocus
            case .colorActionOnBgActionPrimaryFocusOnBgEmphasized:
                return theme.colorActionOnBgActionPrimaryFocusOnBgEmphasized
            // NOTE: #124 - Following case(s) is / are not managed because not defined values!
//            case .colorActionOnBgActionSecondaryEnabled:
//                return theme.colorActionOnBgActionSecondaryEnabled
//            case .colorActionOnBgActionSecondaryEnabledOnBgEmphasized:
//                return theme.colorActionOnBgActionSecondaryEnabledOnBgEmphasized
//            case .colorActionOnBgActionSecondaryHover:
//                return theme.colorActionOnBgActionSecondaryHover
//            case .colorActionOnBgActionSecondaryHoverOnBgEmphasized:
//                return theme.colorActionOnBgActionSecondaryHoverOnBgEmphasized
//            case .colorActionOnBgActionSecondaryPressed:
//                return theme.colorActionOnBgActionSecondaryPressed
//            case .colorActionOnBgActionSecondaryPressedOnBgEmphasized:
//                return theme.colorActionOnBgActionSecondaryPressedOnBgEmphasized
//            case .colorActionOnBgActionSecondaryLoading:
//                return theme.colorActionOnBgActionSecondaryLoading
//            case .colorActionOnBgActionSecondaryLoadingOnBgEmphasized:
//                return theme.colorActionOnBgActionSecondaryLoadingOnBgEmphasized
//            case .colorActionOnBgActionSecondaryFocus:
//                return theme.colorActionOnBgActionSecondaryFocus
//            case .colorActionOnBgActionSecondaryFocusOnBgEmphasized:
//                return theme.colorActionOnBgActionSecondaryFocusOnBgEmphasized
            }
        }
    }
}

// swiftlint:enable identifier_name
// swiftlint:enable function_body_length
