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
        case colorContentDefault
        case colorContentDefaultOnBgEmphasized
        case colorContentMuted
        case colorContentMutedOnBgEmphasized
        case colorContentDisabled
        case colorContentDisabledOnBgEmphasized
        case colorContentBrandPrimary
        // NOTE: #124 - Following case(s) is / are not managed because not defined values!
        // case colorContentBrandSecondary
        // case colorContentBrandTertiary
        case colorContentStatusPositive
        case colorContentStatusInfo
        case colorContentStatusWarning
        case colorContentStatusNegative
        // NOTE: #124 - Following case(s) is / are not managed because not defined values!
        // case colorContentStatusAccent

        func token(from theme: OUDSTheme) -> MultipleColorSemanticTokens {
            switch self {
            case .colorContentDefault:
                return theme.colorContentDefault
            case .colorContentDefaultOnBgEmphasized:
                return theme.colorContentDefaultOnBgEmphasized
            case .colorContentMuted:
                return theme.colorContentMuted
            case .colorContentMutedOnBgEmphasized:
                return theme.colorContentMutedOnBgEmphasized
            case .colorContentDisabled:
                return theme.colorContentDisabled
            case .colorContentDisabledOnBgEmphasized:
                return theme.colorContentDisabledOnBgEmphasized
            case .colorContentBrandPrimary:
                return theme.colorContentBrandPrimary
            // NOTE: #124 - Following case(s) is / are not managed because not defined values!
//            case .colorContentBrandSecondary:
//                return theme.colorContentBrandSecondary
//            case .colorContentBrandTertiary:
//                return theme.colorContentBrandTertiary
            case .colorContentStatusPositive:
                return theme.colorContentStatusPositive
            case .colorContentStatusInfo:
                return theme.colorContentStatusInfo
            case .colorContentStatusWarning:
                return theme.colorContentStatusWarning
            case .colorContentStatusNegative:
                return theme.colorContentStatusNegative
            // NOTE: #124 - Following case(s) is / are not managed because not defined values!
//            case .colorContentStatusAccent:
//                return theme.colorContentStatusAccent
            }
        }
    }
}
