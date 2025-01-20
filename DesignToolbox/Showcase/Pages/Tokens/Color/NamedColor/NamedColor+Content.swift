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
        case colorContentOnActionPressed
        case colorContentOnBrandPrimary
        case colorContentOnOverlayEmphasized
        case colorContentOnStatusEmphasized
        case colorContentOnStatusEmphasizedAlt
        case colorContentOnStatusMuted
        case colorContentStatusInfo
        case colorContentStatusNegative
        case colorContentStatusPositive
        case colorContentStatusWarning

        func token(from theme: OUDSTheme) -> MultipleColorSemanticTokens {
            switch self {
            case .colorContentBrandPrimary:
                return theme.colors.colorContentBrandPrimary
            case .colorContentDefault:
                return theme.colors.colorContentDefault
            case .colorContentDisabled:
                return theme.colors.colorContentDisabled
            case .colorContentMuted:
                return theme.colors.colorContentMuted
            case .colorContentOnActionDisabled:
                return theme.colors.colorContentOnActionDisabled
            case .colorContentOnActionEnabled:
                return theme.colors.colorContentOnActionEnabled
            case .colorContentOnActionFocus:
                return theme.colors.colorContentOnActionFocus
            case .colorContentOnActionHighlighted:
                return theme.colors.colorContentOnActionHighlighted
            case .colorContentOnActionHover:
                return theme.colors.colorContentOnActionHover
            case .colorContentOnActionLoading:
                return theme.colors.colorContentOnActionLoading
            case .colorContentOnActionPressed:
                return theme.colors.colorContentOnActionPressed
            case .colorContentOnBrandPrimary:
                return theme.colors.colorContentOnBrandPrimary
            case .colorContentOnOverlayEmphasized:
                return theme.colors.colorContentOnOverlayEmphasized
            case .colorContentOnStatusEmphasized:
                return theme.colors.colorContentOnStatusEmphasized
            case .colorContentOnStatusEmphasizedAlt:
                return theme.colors.colorContentOnStatusEmphasizedAlt
            case .colorContentOnStatusMuted:
                return theme.colors.colorContentOnStatusMuted
            case .colorContentStatusInfo:
                return theme.colors.colorContentStatusInfo
            case .colorContentStatusNegative:
                return theme.colors.colorContentStatusNegative
            case .colorContentStatusPositive:
                return theme.colors.colorContentStatusPositive
            case .colorContentStatusWarning:
                return theme.colors.colorContentStatusWarning
            }
        }
    }
}
