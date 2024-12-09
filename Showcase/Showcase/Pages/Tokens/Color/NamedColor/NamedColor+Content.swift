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
        case brandPrimary
        case defaultContent
        case disabled
        case muted
        case onActionDisabled
        case onActionEnabled
        case onActionFocus
        case onActionHighlighted
        case onActionHover
        case onActionLoading
        case onActionNegative
        case onActionPressed
        case onBrandPrimary
        case onOverlayEmphasized
        case onStatusEmphasized
        case onStatusEmphasizedNeutral
        case onStatusMuted
        case statusInfo
        case statusNegative
        case statusPositive
        case statusWarning

        func token(from theme: OUDSTheme) -> MultipleColorSemanticTokens {
            switch self {
            case .brandPrimary:
                return theme.colorContentBrandPrimary
            case .defaultContent:
                return theme.colorContentDefault
            case .disabled:
                return theme.colorContentDisabled
            case .muted:
                return theme.colorContentMuted
            case .onActionDisabled:
                return theme.colorContentOnActionDisabled
            case .onActionEnabled:
                return theme.colorContentOnActionEnabled
            case .onActionFocus:
                return theme.colorContentOnActionFocus
            case .onActionHighlighted:
                return theme.colorContentOnActionHighlighted
            case .onActionHover:
                return theme.colorContentOnActionHover
            case .onActionLoading:
                return theme.colorContentOnActionLoading
            case .onActionNegative:
                return theme.colorContentOnActionNegative
            case .onActionPressed:
                return theme.colorContentOnActionPressed
            case .onBrandPrimary:
                return theme.colorContentOnBrandPrimary
            case .onOverlayEmphasized:
                return theme.colorContentOnOverlayEmphasized
            case .onStatusEmphasized:
                return theme.colorContentOnStatusEmphasized
            case .onStatusEmphasizedNeutral:
                return theme.colorContentOnStatusEmphasizedNeutral
            case .onStatusMuted:
                return theme.colorContentOnStatusMuted
            case .statusInfo:
                return theme.colorContentStatusInfo
            case .statusNegative:
                return theme.colorContentStatusNegative
            case .statusPositive:
                return theme.colorContentStatusPositive
            case .statusWarning:
                return theme.colorContentStatusWarning
            }
        }
    }
}

// swiftlint:enable identifier_name
// swiftlint:enable function_body_length
