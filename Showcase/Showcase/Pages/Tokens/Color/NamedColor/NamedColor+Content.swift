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

    enum Content: String, CaseIterable {
        case colorContentDefault
        case colorContentContentDefaultOnBackgroundEmphasized
        case colorContentMuted
        case colorContentContentMutedOnBackgroundEmphasized
        case colorContentDisabled
        case colorContentContentDisabledOnBackgroundEmphasized
        case colorContentBrandPrimary
        // case colorContentBrandSecondary
        // case colorContentBrandTertiary
        case colorContentStatusPositive
        case colorContentStatusInfo
        case colorContentStatusWarning
        case colorContentStatusNegative
//        case colorContentStatusAccent

        func token(from theme: OUDSTheme) -> ColorSemanticToken {
            switch self {
            case .colorContentDefault:
                return theme.colorContentDefault
            case .colorContentContentDefaultOnBackgroundEmphasized:
                return theme.colorContentContentDefaultOnBackgroundEmphasized
            case .colorContentMuted:
                return theme.colorContentMuted
            case .colorContentContentMutedOnBackgroundEmphasized:
                return theme.colorContentContentMutedOnBackgroundEmphasized
            case .colorContentDisabled:
                return theme.colorContentDisabled
            case .colorContentContentDisabledOnBackgroundEmphasized:
                return theme.colorContentContentDisabledOnBackgroundEmphasized
            case .colorContentBrandPrimary:
                return theme.colorContentBrandPrimary
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
//            case .colorContentStatusAccent:
//                return theme.colorContentStatusAccent
            }
        }
    }
}

// swiftlint:enable identifier_name
