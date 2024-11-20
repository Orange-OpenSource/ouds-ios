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

    enum ContentOnBg: String, CaseIterable {
        case colorContentOnBgPrimary
        // NOTE: #124 - Following case(s) is / are not managed because not defined values!
        // case colorContentOnBgSecondary
        // case colorContentOnBgTertiary
        case colorContentOnBgStatusPositiveMuted
        case colorContentOnBgStatusPositiveMutedOnBgEmphasized
        case colorContentOnBgStatusPositiveEmphasized
        case colorContentOnBgStatusInfoMuted
        case colorContentOnBgStatusInfoMutedOnBgEmphasized
        case colorContentOnBgStatusInfoEmphasized
        case colorContentOnBgStatusWarningMuted
        case colorContentOnBgStatusWarningMutedOnBgEmphasized
        case colorContentOnBgStatusWarningEmphasized
        case colorContentOnBgStatusNegativeMuted
        case colorContentOnBgStatusNegativeMutedOnBgEmphasized
        case colorContentOnBgStatusNegativeEmphasized
        case colorContentOnBgStatusAccentMuted
        case colorContentOnBgStatusAccentMutedOnBgEmphasized
        case colorContentOnBgStatusAccentedEmphasized

        func token(from theme: OUDSTheme) -> MultipleColorTokens {
            switch self {
            case .colorContentOnBgPrimary:
                return theme.colorContentOnBgPrimary
            // NOTE: #124 - Following case(s) is / are not managed because not defined values!
//            case .colorContentOnBgSecondary:
//                return theme.colorContentOnBgSecondary
//            case .colorContentOnBgTertiary:
//                return theme.colorContentOnBgTertiary
            case .colorContentOnBgStatusPositiveMuted:
                return theme.colorContentOnBgStatusPositiveMuted
            case .colorContentOnBgStatusPositiveMutedOnBgEmphasized:
                return theme.colorContentOnBgStatusPositiveMutedOnBgEmphasized
            case .colorContentOnBgStatusPositiveEmphasized:
                return theme.colorContentOnBgStatusPositiveEmphasized
            case .colorContentOnBgStatusInfoMuted:
                return theme.colorContentOnBgStatusInfoMuted
            case .colorContentOnBgStatusInfoMutedOnBgEmphasized:
                return theme.colorContentOnBgStatusInfoMutedOnBgEmphasized
            case .colorContentOnBgStatusInfoEmphasized:
                return theme.colorContentOnBgStatusInfoEmphasized
            case .colorContentOnBgStatusWarningMuted:
                return theme.colorContentOnBgStatusWarningMuted
            case .colorContentOnBgStatusWarningMutedOnBgEmphasized:
                return theme.colorContentOnBgStatusWarningMutedOnBgEmphasized
            case .colorContentOnBgStatusWarningEmphasized:
                return theme.colorContentOnBgStatusWarningEmphasized
            case .colorContentOnBgStatusNegativeMuted:
                return theme.colorContentOnBgStatusNegativeMuted
            case .colorContentOnBgStatusNegativeMutedOnBgEmphasized:
                return theme.colorContentOnBgStatusNegativeMutedOnBgEmphasized
            case .colorContentOnBgStatusNegativeEmphasized:
                return theme.colorContentOnBgStatusNegativeEmphasized
            case .colorContentOnBgStatusAccentMuted:
                return theme.colorContentOnBgStatusAccentMuted
            case .colorContentOnBgStatusAccentMutedOnBgEmphasized:
                return theme.colorContentOnBgStatusAccentMutedOnBgEmphasized
            case .colorContentOnBgStatusAccentedEmphasized:
                return theme.colorContentOnBgStatusAccentedEmphasized
            }
        }
    }
}

// swiftlint:enable identifier_name
