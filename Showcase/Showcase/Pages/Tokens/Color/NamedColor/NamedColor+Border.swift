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

extension NamedColor {

    enum Border: String, CaseIterable {
        case colorBorderDefault
        case colorBorderDefaultOnBackgroundEmphasized
        case colorBorderEmphasized
        case colorBorderEmphasizedOnBackgroundEmphasized
        case colorBorderFocus
        case colorBorderBrandPrimaryOnBackgroundEmphasized
        case colorBorderBrandPrimary
        // NOTE: #124 - Following case(s) is / are not managed because not defined values!
        // case colorBorderBrandSecondary
        // case colorBorderBrandTertiary
        // case colorBorderStatusPositive
        // case colorBorderStatusInfo
        // case colorBorderStatusWarning
        // case colorBorderStatusNegative
        // case colorBorderStatusAccent
        case colorBorderOnBackgroundBrandPrimary
        // NOTE: #124 - Following case(s) is / are not managed because not defined values!
        // case colorBorderOnBackgroundBrandSecondary
        // case colorBorderOnBackgroundBrandTertiary

        func token(from theme: OUDSTheme) -> ColorSemanticToken {
            switch self {
            case .colorBorderDefault:
                return theme.colorBorderDefault
            case .colorBorderDefaultOnBackgroundEmphasized:
                return theme.colorBorderDefaultOnBackgroundEmphasized
            case .colorBorderEmphasized:
                return theme.colorBorderEmphasized
            case .colorBorderEmphasizedOnBackgroundEmphasized:
                return theme.colorBorderEmphasizedOnBackgroundEmphasized
            case .colorBorderFocus:
                return theme.colorBorderFocus
            case .colorBorderBrandPrimaryOnBackgroundEmphasized:
                return theme.colorBorderBrandPrimaryOnBackgroundEmphasized
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
            case .colorBorderOnBackgroundBrandPrimary:
                return theme.colorBorderOnBackgroundBrandPrimary
            // NOTE: #124 - Following case(s) is / are not managed because not defined values!
//            case .colorBorderOnBackgroundBrandSecondary:
//                return theme.colorBorderOnBackgroundBrandSecondary
//            case .colorBorderOnBackgroundBrandTertiary:
//                return theme.colorBorderOnBackgroundBrandTertiary
            }
        }
    }
}

// swiftlint:enable identifier_name
