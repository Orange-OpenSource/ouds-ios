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

    enum Content: String, CaseIterable {
        case colorContentBrandPrimary
        case colorContentDefault
        case colorContentDisabled
        case colorContentMuted
        case colorContentOnActionDisabled
        case colorContentOnActionEnabled
        case colorContentOnActionFocus
        case colorContentOnActionHighlighted
        case colorContentOnActionHover
        case colorContentOnActionLoading
        case colorContentOnActionNegative
        case colorContentOnActionPressed
        case colorContentOnBrandPrimary
        case colorContentOnOverlayEmphasized
        case colorContentOnStatusEmphasized
        case colorContentOnStatusEmphasizedNeutral
        case colorContentOnStatusMuted
        case colorContentStatusInfo
        case colorContentStatusNegative
        case colorContentStatusPositive
        case colorContentStatusWarning

        func token(from theme: OUDSTheme) -> MultipleColorSemanticTokens {
            switch self {
            case .colorContentBrandPrimary:
                return theme.colorContentBrandPrimary
            case .colorContentDefault:
                return theme.colorContentDefault
            case .colorContentDisabled:
                return theme.colorContentDisabled
            case .colorContentMuted:
                return theme.colorContentMuted
            case .colorContentOnActionDisabled:
                return theme.colorContentOnActionDisabled
            case .colorContentOnActionEnabled:
                return theme.colorContentOnActionEnabled
            case .colorContentOnActionFocus:
                return theme.colorContentOnActionFocus
            case .colorContentOnActionHighlighted:
                return theme.colorContentOnActionHighlighted
            case .colorContentOnActionHover:
                return theme.colorContentOnActionHover
            case .colorContentOnActionLoading:
                return theme.colorContentOnActionLoading
            case .colorContentOnActionNegative:
                return theme.colorContentOnActionNegative
            case .colorContentOnActionPressed:
                return theme.colorContentOnActionPressed
            case .colorContentOnBrandPrimary:
                return theme.colorContentOnBrandPrimary
            case .colorContentOnOverlayEmphasized:
                return theme.colorContentOnOverlayEmphasized
            case .colorContentOnStatusEmphasized:
                return theme.colorContentOnStatusEmphasized
            case .colorContentOnStatusEmphasizedNeutral:
                return theme.colorContentOnStatusEmphasizedNeutral
            case .colorContentOnStatusMuted:
                return theme.colorContentOnStatusMuted
            case .colorContentStatusInfo:
                return theme.colorContentStatusInfo
            case .colorContentStatusNegative:
                return theme.colorContentStatusNegative
            case .colorContentStatusPositive:
                return theme.colorContentStatusPositive
            case .colorContentStatusWarning:
                return theme.colorContentStatusWarning
            }
        }
    }
}

// swiftlint:enable identifier_name
// swiftlint:enable function_body_length
