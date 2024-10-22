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

    enum Background: String, CaseIterable {
        case colorBackgroundPrimary
        case colorBackgroundSecondary
        // NOTE: #124 - Following case(s) is / are not managed because not defined values!
        // case colorBackgroundTertiary
        case colorBackgroundEmphasized
        case colorBackgroundBrandPrimary
        // NOTE: #124 - Following case(s) is / are not managed because not defined values!
        // case colorBackgroundBrandSecondary
        // case colorBackgroundBrandTertiary
        case colorBackgroundStatusNeutral
        case colorBackgroundStatusNeutralOnBgEmphasized
        case colorBackgroundStatusPositiveMuted
        case colorBackgroundStatusPositiveMutedOnBgEmphasized
        case colorBackgroundStatusPositiveEmphasized
        case colorBackgroundStatusInfoMuted
        case colorBackgroundStatusInfoMutedOnBgEmphasized
        case colorBackgroundStatusInfoEmphasized
        case colorBackgroundStatusWarningMuted
        case colorBackgroundStatusWarningMutedOnBgEmphasized
        case colorBackgroundStatusWarningEmphasized
        case colorBackgroundStatusNegativeMuted
        case colorBackgroundStatusNegativeMutedOnBgEmphasized
        case colorBackgroundStatusNegativeEmphasized
        case colorBackgroundStatusAccentMuted
        case colorBackgroundStatusAccentMutedOnBgEmphasized
        case colorBackgroundStatusAccentEmphasized

        func token(from theme: OUDSTheme) -> ColorSemanticToken {
            switch self {
            case .colorBackgroundPrimary:
                return theme.colorBackgroundPrimary
            case .colorBackgroundSecondary:
                return theme.colorBackgroundSecondary
            // NOTE: #124 - Following case(s) is / are not managed because not defined values!
//            case .colorBackgroundTertiary:
//                return theme.colorBackgroundTertiary
            case .colorBackgroundEmphasized:
                return theme.colorBackgroundEmphasized
            case .colorBackgroundBrandPrimary:
                return theme.colorBackgroundBrandPrimary
            // NOTE: #124 - Following case(s) is / are not managed because not defined values!
//            case .colorBackgroundBrandSecondary:
//                return theme.colorBackgroundBrandSecondary
//            case .colorBackgroundBrandTertiary:
//                return theme.colorBackgroundBrandTertiary
            case .colorBackgroundStatusNeutral:
                return theme.colorBackgroundStatusNeutral
            case .colorBackgroundStatusNeutralOnBgEmphasized:
                return theme.colorBackgroundStatusNeutralOnBgEmphasized
            case .colorBackgroundStatusPositiveMuted:
                return theme.colorBackgroundStatusPositiveMuted
            case .colorBackgroundStatusPositiveMutedOnBgEmphasized:
                return theme.colorBackgroundStatusPositiveMutedOnBgEmphasized
            case .colorBackgroundStatusPositiveEmphasized:
                return theme.colorBackgroundStatusPositiveEmphasized
            case .colorBackgroundStatusInfoMuted:
                return theme.colorBackgroundStatusInfoMuted
            case .colorBackgroundStatusInfoMutedOnBgEmphasized:
                return theme.colorBackgroundStatusInfoMutedOnBgEmphasized
            case .colorBackgroundStatusInfoEmphasized:
                return theme.colorBackgroundStatusInfoEmphasized
            case .colorBackgroundStatusWarningMuted:
                return theme.colorBackgroundStatusWarningMuted
            case .colorBackgroundStatusWarningMutedOnBgEmphasized:
                return theme.colorBackgroundStatusWarningMutedOnBgEmphasized
            case .colorBackgroundStatusWarningEmphasized:
                return theme.colorBackgroundStatusWarningEmphasized
            case .colorBackgroundStatusNegativeMuted:
                return theme.colorBackgroundStatusNegativeMuted
            case .colorBackgroundStatusNegativeMutedOnBgEmphasized:
                return theme.colorBackgroundStatusNegativeMutedOnBgEmphasized
            case .colorBackgroundStatusNegativeEmphasized:
                return theme.colorBackgroundStatusNegativeEmphasized
            case .colorBackgroundStatusAccentMuted:
                return theme.colorBackgroundStatusAccentMuted
            case .colorBackgroundStatusAccentMutedOnBgEmphasized:
                return theme.colorBackgroundStatusAccentMutedOnBgEmphasized
            case .colorBackgroundStatusAccentEmphasized:
                return theme.colorBackgroundStatusAccentEmphasized
            }
        }
    }
}

// swiftlint:enable identifier_name
