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

    enum Background: String, CaseIterable {
        case colorBgPrimary
        case colorBgSecondary
        // NOTE: #124 - Following case(s) is / are not managed because not defined values!
        // case colorBgTertiary
        case colorBgEmphasized
        case colorBgBrandPrimary
        // NOTE: #124 - Following case(s) is / are not managed because not defined values!
        // case colorBgBrandSecondary
        // case colorBgBrandTertiary
        case colorBgStatusNeutral
        case colorBgStatusNeutralOnBgEmphasized
        case colorBgStatusPositiveMuted
        case colorBgStatusPositiveMutedOnBgEmphasized
        case colorBgStatusPositiveEmphasized
        case colorBgStatusInfoMuted
        case colorBgStatusInfoMutedOnBgEmphasized
        case colorBgStatusInfoEmphasized
        case colorBgStatusWarningMuted
        case colorBgStatusWarningMutedOnBgEmphasized
        case colorBgStatusWarningEmphasized
        case colorBgStatusNegativeMuted
        case colorBgStatusNegativeMutedOnBgEmphasized
        case colorBgStatusNegativeEmphasized
        case colorBgStatusAccentMuted
        case colorBgStatusAccentMutedOnBgEmphasized
        case colorBgStatusAccentEmphasized

        func token(from theme: OUDSTheme) -> ColorSemanticToken {
            switch self {
            case .colorBgPrimary:
                return theme.colorBgPrimary
            case .colorBgSecondary:
                return theme.colorBgSecondary
            // NOTE: #124 - Following case(s) is / are not managed because not defined values!
//            case .colorBgTertiary:
//                return theme.colorBgTertiary
            case .colorBgEmphasized:
                return theme.colorBgEmphasized
            case .colorBgBrandPrimary:
                return theme.colorBgBrandPrimary
            // NOTE: #124 - Following case(s) is / are not managed because not defined values!
//            case .colorBgBrandSecondary:
//                return theme.colorBgBrandSecondary
//            case .colorBgBrandTertiary:
//                return theme.colorBgBrandTertiary
            case .colorBgStatusNeutral:
                return theme.colorBgStatusNeutral
            case .colorBgStatusNeutralOnBgEmphasized:
                return theme.colorBgStatusNeutralOnBgEmphasized
            case .colorBgStatusPositiveMuted:
                return theme.colorBgStatusPositiveMuted
            case .colorBgStatusPositiveMutedOnBgEmphasized:
                return theme.colorBgStatusPositiveMutedOnBgEmphasized
            case .colorBgStatusPositiveEmphasized:
                return theme.colorBgStatusPositiveEmphasized
            case .colorBgStatusInfoMuted:
                return theme.colorBgStatusInfoMuted
            case .colorBgStatusInfoMutedOnBgEmphasized:
                return theme.colorBgStatusInfoMutedOnBgEmphasized
            case .colorBgStatusInfoEmphasized:
                return theme.colorBgStatusInfoEmphasized
            case .colorBgStatusWarningMuted:
                return theme.colorBgStatusWarningMuted
            case .colorBgStatusWarningMutedOnBgEmphasized:
                return theme.colorBgStatusWarningMutedOnBgEmphasized
            case .colorBgStatusWarningEmphasized:
                return theme.colorBgStatusWarningEmphasized
            case .colorBgStatusNegativeMuted:
                return theme.colorBgStatusNegativeMuted
            case .colorBgStatusNegativeMutedOnBgEmphasized:
                return theme.colorBgStatusNegativeMutedOnBgEmphasized
            case .colorBgStatusNegativeEmphasized:
                return theme.colorBgStatusNegativeEmphasized
            case .colorBgStatusAccentMuted:
                return theme.colorBgStatusAccentMuted
            case .colorBgStatusAccentMutedOnBgEmphasized:
                return theme.colorBgStatusAccentMutedOnBgEmphasized
            case .colorBgStatusAccentEmphasized:
                return theme.colorBgStatusAccentEmphasized
            }
        }
    }
}
