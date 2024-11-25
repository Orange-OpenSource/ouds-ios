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

    enum Border: String, CaseIterable {
        case colorBorderDefault
        case colorBorderDefaultOnBgEmphasized
        case colorBorderEmphasized
        case colorBorderEmphasizedOnBgEmphasized
        case colorBorderFocus
        case colorBorderBrandPrimaryOnBgEmphasized
        case colorBorderBrandPrimary
        // NOTE: #124 - Following case(s) is / are not managed because not defined values!
        // case colorBorderBrandSecondary
        // case colorBorderBrandTertiary
        // case colorBorderStatusPositive
        // case colorBorderStatusInfo
        // case colorBorderStatusWarning
        // case colorBorderStatusNegative
        // case colorBorderStatusAccent
        case colorBorderOnBgBrandPrimary
        // NOTE: #124 - Following case(s) is / are not managed because not defined values!
        // case colorBorderOnBgBrandSecondary
        // case colorBorderOnBgBrandTertiary

        func token(from theme: OUDSTheme) -> MultipleColorSemanticTokens {
            switch self {
            case .colorBorderDefault:
                return theme.colorBorderDefault
            case .colorBorderDefaultOnBgEmphasized:
                return theme.colorBorderDefaultOnBgEmphasized
            case .colorBorderEmphasized:
                return theme.colorBorderEmphasized
            case .colorBorderEmphasizedOnBgEmphasized:
                return theme.colorBorderEmphasizedOnBgEmphasized
            case .colorBorderFocus:
                return theme.colorBorderFocus
            case .colorBorderBrandPrimaryOnBgEmphasized:
                return theme.colorBorderBrandPrimaryOnBgEmphasized
            case .colorBorderBrandPrimary:
                return theme.colorBorderBrandPrimary
            // NOTE: #124 - Following case(s) is / are not managed because not defined values!
//            case .colorBorderBrandSecondary:
//                return theme.colorBorderBrandSecondary
//            case .colorBorderBrandTertiary:
//                return theme.colorBorderBrandTertiary
//            case .colorBorderStatusPositive:
//                return theme.colorBorderStatusPositive
//            case .colorBorderStatusInfo:
//                return theme.colorBorderStatusInfo
//            case .colorBorderStatusWarning:
//                return theme.colorBorderStatusWarning
//            case .colorBorderStatusNegative:
//                return theme.colorBorderStatusNegative
//            case .colorBorderStatusAccent:
//                return theme.colorBorderStatusAccent
            case .colorBorderOnBgBrandPrimary:
                return theme.colorBorderOnBgBrandPrimary
            // NOTE: #124 - Following case(s) is / are not managed because not defined values!
//            case .colorBorderOnBgBrandSecondary:
//                return theme.colorBorderOnBgBrandSecondary
//            case .colorBorderOnBgBrandTertiary:
//                return theme.colorBorderOnBgBrandTertiary
            }
        }
    }
}
