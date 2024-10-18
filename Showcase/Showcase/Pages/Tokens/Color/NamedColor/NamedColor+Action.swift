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
// swiftlint:disable line_length
// swiftlint:disable function_body_length

extension NamedColor {

    enum Action: String, CaseIterable {
        case colorActionSelected
        case colorActionSelectedOnBackgroundEmphasized
        case colorActionDisabled
        case colorActionDisabledOnBackgroundEmphasized
        case colorActionVisited
        case colorActionVistedOnBackgroundEmphasized
        case colorActionPrimaryEnabled
        case colorActionPrimaryEnabledOnBackgroundEmphasized
        case colorActionPrimaryHover
        case colorActionPrimaryHoverOnBackgroundEmphasized
        // case colorActionPrimaryPressed
        case colorActionPrimaryPressedOnBackgroundEmphasized
        case colorActionPrimaryLoading
        case colorActionPrimaryLoadingOnBackgroundEmphasized
        case colorActionPrimaryFocus
        case colorActionPrimaryFocusOnBackgroundEmphasized
        case colorActionSecondaryEnabled
        case colorActionSecondaryEnabledOnBackgroundEmphasized
        case colorActionSecondaryHover
        case colorActionSecondaryHoverOnBackgroundEmphasized
        case colorActionSecondaryPressed
        case colorActionSecondaryPressedOnBackgroundEmphasized
        case colorActionSecondaryLoading
        case colorActionSecondaryLoadingOnBackgroundEmphasized
        case colorActionSecondaryFocus
        case colorActionSecondaryFocusOnBackgroundEmphasized
        case colorActionNegativeEnabled
        case colorActionNegativeHover
        case colorActionNegativePressed
        case colorActionNegativeLoading
        case colorActionNegativeFocus
        case colorActionOnBackgroundActionDisabled
        case colorActionOnBackgroundActionDisabledOnBackgroundEmphasized
        case colorActionOnBackgroundActionNegative
        case colorActionOnBackgroundActionPrimaryEnabled
        case colorActionOnBackgroundActionPrimaryEnabledOnBackgroundEmphasized
        case colorActionOnBackgroundActionPrimaryHover
        case colorActionOnBackgroundActionPrimaryHoverOnBackgroundEmphasized
        case colorActionOnBackgroundActionPrimaryPressed
        case colorActionOnBackgroundActionPrimaryPressedOnBackgroundEmphasized
        case colorActionOnBackgroundActionPrimaryLoading
        case colorActionOnBackgroundActionPrimaryLoadingOnBackgroundEmphasized
        case colorActionOnBackgroundActionPrimaryFocus
        case colorActionOnBackgroundActionPrimaryFocusOnBackgroundEmphasized
        // case colorActionOnBackgroundActionSecondaryEnabled
        // case colorActionOnBackgroundActionSecondaryEnabledOnBackgroundEmphasized
        // case colorActionOnBackgroundActionSecondaryHover
        // case colorActionOnBackgroundActionSecondaryHoverOnBackgroundEmphasized
        // case colorActionOnBackgroundActionSecondaryPressed
        // case colorActionOnBackgroundActionSecondaryPressedOnBackgroundEmphasized
        // case colorActionOnBackgroundActionSecondaryLoading
        // case colorActionOnBackgroundActionSecondaryLoadingOnBackgroundEmphasized
        // case colorActionOnBackgroundActionSecondaryFocus
//         case colorActionOnBackgroundActionSecondaryFocusOnBackgroundEmphasized

        func token(from theme: OUDSTheme) -> ColorSemanticToken {
            switch self {
            case .colorActionSelected:
                return theme.colorActionSelected
            case .colorActionSelectedOnBackgroundEmphasized:
                return theme.colorActionSelectedOnBackgroundEmphasized
            case .colorActionDisabled:
                return theme.colorActionDisabled
            case .colorActionDisabledOnBackgroundEmphasized:
                return theme.colorActionDisabledOnBackgroundEmphasized
            case .colorActionVisited:
                return theme.colorActionVisited
            case .colorActionVistedOnBackgroundEmphasized:
                return theme.colorActionVistedOnBackgroundEmphasized
            case .colorActionPrimaryEnabled:
                return theme.colorActionPrimaryEnabled
            case .colorActionPrimaryEnabledOnBackgroundEmphasized:
                return theme.colorActionPrimaryEnabledOnBackgroundEmphasized
            case .colorActionPrimaryHover:
                return theme.colorActionPrimaryHover
            case .colorActionPrimaryHoverOnBackgroundEmphasized:
                return theme.colorActionPrimaryHoverOnBackgroundEmphasized
//            case .colorActionPrimaryPressed:
//                return theme.colorActionPrimaryPressed
            case .colorActionPrimaryPressedOnBackgroundEmphasized:
                return theme.colorActionPrimaryPressedOnBackgroundEmphasized
            case .colorActionPrimaryLoading:
                return theme.colorActionPrimaryLoading
            case .colorActionPrimaryLoadingOnBackgroundEmphasized:
                return theme.colorActionPrimaryLoadingOnBackgroundEmphasized
            case .colorActionPrimaryFocus:
                return theme.colorActionPrimaryFocus
            case .colorActionPrimaryFocusOnBackgroundEmphasized:
                return theme.colorActionPrimaryFocusOnBackgroundEmphasized
            case .colorActionSecondaryEnabled:
                return theme.colorActionSecondaryEnabled
            case .colorActionSecondaryEnabledOnBackgroundEmphasized:
                return theme.colorActionSecondaryEnabledOnBackgroundEmphasized
            case .colorActionSecondaryHover:
                return theme.colorActionSecondaryHover
            case .colorActionSecondaryHoverOnBackgroundEmphasized:
                return theme.colorActionSecondaryHoverOnBackgroundEmphasized
            case .colorActionSecondaryPressed:
                return theme.colorActionSecondaryPressed
            case .colorActionSecondaryPressedOnBackgroundEmphasized:
                return theme.colorActionSecondaryPressedOnBackgroundEmphasized
            case .colorActionSecondaryLoading:
                return theme.colorActionSecondaryLoading
            case .colorActionSecondaryLoadingOnBackgroundEmphasized:
                return theme.colorActionSecondaryLoadingOnBackgroundEmphasized
            case .colorActionSecondaryFocus:
                return theme.colorActionSecondaryFocus
            case .colorActionSecondaryFocusOnBackgroundEmphasized:
                return theme.colorActionSecondaryFocusOnBackgroundEmphasized
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
            case .colorActionOnBackgroundActionDisabled:
                return theme.colorActionOnBackgroundActionDisabled
            case .colorActionOnBackgroundActionDisabledOnBackgroundEmphasized:
                return theme.colorActionOnBackgroundActionDisabledOnBackgroundEmphasized
            case .colorActionOnBackgroundActionNegative:
                return theme.colorActionOnBackgroundActionNegative
            case .colorActionOnBackgroundActionPrimaryEnabled:
                return theme.colorActionOnBackgroundActionPrimaryEnabled
            case .colorActionOnBackgroundActionPrimaryEnabledOnBackgroundEmphasized:
                return theme.colorActionOnBackgroundActionPrimaryEnabledOnBackgroundEmphasized
            case .colorActionOnBackgroundActionPrimaryHover:
                return theme.colorActionOnBackgroundActionPrimaryHover
            case .colorActionOnBackgroundActionPrimaryHoverOnBackgroundEmphasized:
                return theme.colorActionOnBackgroundActionPrimaryHoverOnBackgroundEmphasized
            case .colorActionOnBackgroundActionPrimaryPressed:
                return theme.colorActionOnBackgroundActionPrimaryPressed
            case .colorActionOnBackgroundActionPrimaryPressedOnBackgroundEmphasized:
                return theme.colorActionOnBackgroundActionPrimaryPressedOnBackgroundEmphasized
            case .colorActionOnBackgroundActionPrimaryLoading:
                return theme.colorActionOnBackgroundActionPrimaryLoading
            case .colorActionOnBackgroundActionPrimaryLoadingOnBackgroundEmphasized:
                return theme.colorActionOnBackgroundActionPrimaryLoadingOnBackgroundEmphasized
            case .colorActionOnBackgroundActionPrimaryFocus:
                return theme.colorActionOnBackgroundActionPrimaryFocus
            case .colorActionOnBackgroundActionPrimaryFocusOnBackgroundEmphasized:
                return theme.colorActionOnBackgroundActionPrimaryFocusOnBackgroundEmphasized
//            case .colorActionOnBackgroundActionSecondaryEnabled:
//                return theme.colorActionOnBackgroundActionSecondaryEnabled
//            case .colorActionOnBackgroundActionSecondaryEnabledOnBackgroundEmphasized:
//                return theme.colorActionOnBackgroundActionSecondaryEnabledOnBackgroundEmphasized
//            case .colorActionOnBackgroundActionSecondaryHover:
//                return theme.colorActionOnBackgroundActionSecondaryHover
//            case .colorActionOnBackgroundActionSecondaryHoverOnBackgroundEmphasized:
//                return theme.colorActionOnBackgroundActionSecondaryHoverOnBackgroundEmphasized
//            case .colorActionOnBackgroundActionSecondaryPressed:
//                return theme.colorActionOnBackgroundActionSecondaryPressed
//            case .colorActionOnBackgroundActionSecondaryPressedOnBackgroundEmphasized:
//                return theme.colorActionOnBackgroundActionSecondaryPressedOnBackgroundEmphasized
//            case .colorActionOnBackgroundActionSecondaryLoading:
//                return theme.colorActionOnBackgroundActionSecondaryLoading
//            case .colorActionOnBackgroundActionSecondaryLoadingOnBackgroundEmphasized:
//                return theme.colorActionOnBackgroundActionSecondaryLoadingOnBackgroundEmphasized
//            case .colorActionOnBackgroundActionSecondaryFocus:
//                return theme.colorActionOnBackgroundActionSecondaryFocus
//            case .colorActionOnBackgroundActionSecondaryFocusOnBackgroundEmphasized:
//                return theme.colorActionOnBackgroundActionSecondaryFocusOnBackgroundEmphasized
            }
        }
    }
}

// swiftlint:enable identifier_name
// swiftlint:enable line_length
// swiftlint:enable function_body_length
