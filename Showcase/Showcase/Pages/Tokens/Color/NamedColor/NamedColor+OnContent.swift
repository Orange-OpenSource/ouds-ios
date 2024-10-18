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

    enum ContentOnBackground: String, CaseIterable {
        case colorContentOnBackgroundPrimary
        // NOTE: #124 - Following case(s) is / are not managed because not defined values!
        // case colorContentOnBackgroundSecondary
        // case colorContentOnBackgroundTertiary
        case colorContentOnBackgroundStatusPositiveMuted
        case colorContentOnBackgroundStatusPositiveMutedOnBackgroundEmphasized
        case colorContentOnBackgroundStatusPositiveEmphasized
        case colorContentOnBackgroundStatusInfoMuted
        case colorContentOnBackgroundStatusInfoMutedOnBackgroundEmphasized
        case colorContentOnBackgroundStatusInfoEmphasized
        case colorContentOnBackgroundStatusWarningMuted
        case colorContentOnBackgroundStatusWarningMutedOnBackgroundEmphasized
        case colorContentOnBackgroundStatusWarningEmphasized
        case colorContentOnBackgroundStatusNegativeMuted
        case colorContentOnBackgroundStatusNegativeMutedOnBackgroundEmphasized
        case colorContentOnBackgroundStatusNegativeEmphasized
        case colorContentOnBackgroundStatusAccentMuted
        case colorContentOnBackgroundStatusAccentMutedOnBackgroundEmphasized
        case colorContentOnBackgroundStatusAccentedEmphasized

        func token(from theme: OUDSTheme) -> ColorSemanticToken {
            switch self {
            case .colorContentOnBackgroundPrimary:
                return theme.colorContentOnBackgroundPrimary
            // NOTE: #124 - Following case(s) is / are not managed because not defined values!
//            case .colorContentOnBackgroundSecondary:
//                return theme.colorContentOnBackgroundSecondary
//            case .colorContentOnBackgroundTertiary:
//                return theme.colorContentOnBackgroundTertiary
            case .colorContentOnBackgroundStatusPositiveMuted:
                return theme.colorContentOnBackgroundStatusPositiveMuted
            case .colorContentOnBackgroundStatusPositiveMutedOnBackgroundEmphasized:
                return theme.colorContentOnBackgroundStatusPositiveMutedOnBackgroundEmphasized
            case .colorContentOnBackgroundStatusPositiveEmphasized:
                return theme.colorContentOnBackgroundStatusPositiveEmphasized
            case .colorContentOnBackgroundStatusInfoMuted:
                return theme.colorContentOnBackgroundStatusInfoMuted
            case .colorContentOnBackgroundStatusInfoMutedOnBackgroundEmphasized:
                return theme.colorContentOnBackgroundStatusInfoMutedOnBackgroundEmphasized
            case .colorContentOnBackgroundStatusInfoEmphasized:
                return theme.colorContentOnBackgroundStatusInfoEmphasized
            case .colorContentOnBackgroundStatusWarningMuted:
                return theme.colorContentOnBackgroundStatusWarningMuted
            case .colorContentOnBackgroundStatusWarningMutedOnBackgroundEmphasized:
                return theme.colorContentOnBackgroundStatusWarningMutedOnBackgroundEmphasized
            case .colorContentOnBackgroundStatusWarningEmphasized:
                return theme.colorContentOnBackgroundStatusWarningEmphasized
            case .colorContentOnBackgroundStatusNegativeMuted:
                return theme.colorContentOnBackgroundStatusNegativeMuted
            case .colorContentOnBackgroundStatusNegativeMutedOnBackgroundEmphasized:
                return theme.colorContentOnBackgroundStatusNegativeMutedOnBackgroundEmphasized
            case .colorContentOnBackgroundStatusNegativeEmphasized:
                return theme.colorContentOnBackgroundStatusNegativeEmphasized
            case .colorContentOnBackgroundStatusAccentMuted:
                return theme.colorContentOnBackgroundStatusAccentMuted
            case .colorContentOnBackgroundStatusAccentMutedOnBackgroundEmphasized:
                return theme.colorContentOnBackgroundStatusAccentMutedOnBackgroundEmphasized
            case .colorContentOnBackgroundStatusAccentedEmphasized:
                return theme.colorContentOnBackgroundStatusAccentedEmphasized
            }
        }
    }
}

// swiftlint:enable identifier_name
