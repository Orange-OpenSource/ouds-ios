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
        // case colorBackgroundTertiary
        case colorBackgroundEmphasized
        case colorBackgroundBrandPrimary
        // case colorBackgroundBrandSecondary
        case colorBackgroundBrandTertiary
        case colorBackgroundStatusNeutral
        case colorBackgroundStatusNeutralOnBackgroundEmphasized
        case colorBackgroundStatusPositiveMuted
        case colorBackgroundStatusPositiveMutedOnBackgroundEmphasized
        case colorBackgroundStatusPositiveEmphasized
        case colorBackgroundStatusInfoMuted
        case colorBackgroundStatusInfoMutedOnBackgroundEmphasized
        case colorBackgroundStatusInfoEmphasized
        case colorBackgroundStatusWarningMuted
        case colorBackgroundStatusWarningMutedOnBackgroundEmphasized
        case colorBackgroundStatusWarningEmphasized
        case colorBackgroundStatusNegativeMuted
        case colorBackgroundStatusNegativeMutedOnBackgroundEmphasized
        case colorBackgroundStatusNegativeEmphasized
        case colorBackgroundStatusAccentMuted
        case colorBackgroundStatusAccentMutedOnBackgroundEmphasized
        case colorBackgroundStatusAccentEmphasized

        func token(from theme: OUDSTheme) -> ColorSemanticToken {
            switch self {
            case .colorBackgroundPrimary:
                return theme.colorBackgroundPrimary
            case .colorBackgroundSecondary:
                return theme.colorBackgroundSecondary
//            case .colorBackgroundTertiary:
//                return theme.colorBackgroundTertiary
            case .colorBackgroundEmphasized:
                return theme.colorBackgroundEmphasized
            case .colorBackgroundBrandPrimary:
                return theme.colorBackgroundBrandPrimary
//            case .colorBackgroundBrandSecondary:
//                return theme.colorBackgroundBrandSecondary
            case .colorBackgroundBrandTertiary:
                return theme.colorBackgroundBrandTertiary
            case .colorBackgroundStatusNeutral:
                return theme.colorBackgroundStatusNeutral
            case .colorBackgroundStatusNeutralOnBackgroundEmphasized:
                return theme.colorBackgroundStatusNeutralOnBackgroundEmphasized
            case .colorBackgroundStatusPositiveMuted:
                return theme.colorBackgroundStatusPositiveMuted
            case .colorBackgroundStatusPositiveMutedOnBackgroundEmphasized:
                return theme.colorBackgroundStatusPositiveMutedOnBackgroundEmphasized
            case .colorBackgroundStatusPositiveEmphasized:
                return theme.colorBackgroundStatusPositiveEmphasized
            case .colorBackgroundStatusInfoMuted:
                return theme.colorBackgroundStatusInfoMuted
            case .colorBackgroundStatusInfoMutedOnBackgroundEmphasized:
                return theme.colorBackgroundStatusInfoMutedOnBackgroundEmphasized
            case .colorBackgroundStatusInfoEmphasized:
                return theme.colorBackgroundStatusInfoEmphasized
            case .colorBackgroundStatusWarningMuted:
                return theme.colorBackgroundStatusWarningMuted
            case .colorBackgroundStatusWarningMutedOnBackgroundEmphasized:
                return theme.colorBackgroundStatusWarningMutedOnBackgroundEmphasized
            case .colorBackgroundStatusWarningEmphasized:
                return theme.colorBackgroundStatusWarningEmphasized
            case .colorBackgroundStatusNegativeMuted:
                return theme.colorBackgroundStatusNegativeMuted
            case .colorBackgroundStatusNegativeMutedOnBackgroundEmphasized:
                return theme.colorBackgroundStatusNegativeMutedOnBackgroundEmphasized
            case .colorBackgroundStatusNegativeEmphasized:
                return theme.colorBackgroundStatusNegativeEmphasized
            case .colorBackgroundStatusAccentMuted:
                return theme.colorBackgroundStatusAccentMuted
            case .colorBackgroundStatusAccentMutedOnBackgroundEmphasized:
                return theme.colorBackgroundStatusAccentMutedOnBackgroundEmphasized
            case .colorBackgroundStatusAccentEmphasized:
                return theme.colorBackgroundStatusAccentEmphasized
            }
        }
    }
}

// swiftlint:enable identifier_name
