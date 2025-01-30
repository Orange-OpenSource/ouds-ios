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

// swiftlint:disable function_body_length

extension NamedColor {

    enum Repository: String, CaseIterable {
        case colorRepositoryAccentDefault
        case colorRepositoryAccentHighest
        case colorRepositoryAccentLow
        case colorRepositoryAccentLowest
        case colorRepositoryInfoDefault
        case colorRepositoryInfoHighest
        case colorRepositoryInfoLow
        case colorRepositoryInfoLowest
        case colorRepositoryNegativeDefault
        case colorRepositoryNegativeHigh
        case colorRepositoryNegativeHigher
        case colorRepositoryNegativeHighest
        case colorRepositoryNegativeLow
        case colorRepositoryNegativeLower
        case colorRepositoryNegativeLowest
        case colorRepositoryNeutralEmphasizedBlack
        case colorRepositoryNeutralEmphasizedHigh
        case colorRepositoryNeutralEmphasizedHigher
        case colorRepositoryNeutralEmphasizedHighest
        case colorRepositoryNeutralEmphasizedMedium
        case colorRepositoryNeutralMutedLower
        case colorRepositoryNeutralMutedLowest
        case colorRepositoryNeutralMutedWhite
        case colorRepositoryOpacityBlackHigh
        case colorRepositoryOpacityBlackHigher
        case colorRepositoryOpacityBlackHighest
        case colorRepositoryOpacityBlackLow
        case colorRepositoryOpacityBlackLower
        case colorRepositoryOpacityBlackLowest
        case colorRepositoryOpacityBlackMedium
        case colorRepositoryOpacityBlackSoft
        case colorRepositoryOpacityBlackTransparent
        case colorRepositoryOpacityInfo
        case colorRepositoryOpacityNegative
        case colorRepositoryOpacityPositive
        case colorRepositoryOpacityWarning
        case colorRepositoryOpacityWhiteHigh
        case colorRepositoryOpacityWhiteHigher
        case colorRepositoryOpacityWhiteHighest
        case colorRepositoryOpacityWhiteMedium
        case colorRepositoryOpacityWhiteLow
        case colorRepositoryOpacityWhiteLower
        case colorRepositoryOpacityWhiteLowest
        case colorRepositoryOpacityWhiteTransparent
        case colorRepositoryPositiveDefault
        case colorRepositoryPositiveHigh
        case colorRepositoryPositiveHighest
        case colorRepositoryPositiveLow
        case colorRepositoryPositiveLowest
        case colorRepositoryPrimaryDefault
        case colorRepositoryPrimaryLow
        case colorRepositoryWarningDefault
        case colorRepositoryWarningHighest
        case colorRepositoryWarningLow
        case colorRepositoryWarningLowest

        func token(from theme: OUDSTheme) -> MultipleColorSemanticTokens {
            switch self {
            case .colorRepositoryAccentDefault:
                return theme.colors.colorRepositoryAccentDefault
            case .colorRepositoryAccentHighest:
                return theme.colors.colorRepositoryAccentHighest
            case .colorRepositoryAccentLow:
                return theme.colors.colorRepositoryAccentLow
            case .colorRepositoryAccentLowest:
                return theme.colors.colorRepositoryAccentLowest
            case .colorRepositoryInfoDefault:
                return theme.colors.colorRepositoryInfoDefault
            case .colorRepositoryInfoHighest:
                return theme.colors.colorRepositoryInfoHighest
            case .colorRepositoryInfoLow:
                return theme.colors.colorRepositoryInfoLow
            case .colorRepositoryInfoLowest:
                return theme.colors.colorRepositoryInfoLowest
            case .colorRepositoryNegativeDefault:
                return theme.colors.colorRepositoryNegativeDefault
            case .colorRepositoryNegativeHigh:
                return theme.colors.colorRepositoryNegativeHigh
            case .colorRepositoryNegativeHigher:
                return theme.colors.colorRepositoryNegativeHigher
            case .colorRepositoryNegativeHighest:
                return theme.colors.colorRepositoryNegativeHighest
            case .colorRepositoryNegativeLow:
                return theme.colors.colorRepositoryNegativeLow
            case .colorRepositoryNegativeLower:
                return theme.colors.colorRepositoryNegativeLower
            case .colorRepositoryNegativeLowest:
                return theme.colors.colorRepositoryNegativeLowest
            case .colorRepositoryNeutralEmphasizedBlack:
                return theme.colors.colorRepositoryNeutralEmphasizedBlack
            case .colorRepositoryNeutralEmphasizedHigh:
                return theme.colors.colorRepositoryNeutralEmphasizedHigh
            case .colorRepositoryNeutralEmphasizedHigher:
                return theme.colors.colorRepositoryNeutralEmphasizedHigher
            case .colorRepositoryNeutralEmphasizedHighest:
                return theme.colors.colorRepositoryNeutralEmphasizedHighest
            case .colorRepositoryNeutralEmphasizedMedium:
                return theme.colors.colorRepositoryNeutralEmphasizedMedium
            case .colorRepositoryNeutralMutedLower:
                return theme.colors.colorRepositoryNeutralMutedLower
            case .colorRepositoryNeutralMutedLowest:
                return theme.colors.colorRepositoryNeutralMutedLowest
            case .colorRepositoryNeutralMutedWhite:
                return theme.colors.colorRepositoryNeutralMutedWhite
            case .colorRepositoryOpacityBlackHigh:
                return theme.colors.colorRepositoryOpacityBlackHigh
            case .colorRepositoryOpacityBlackHigher:
                return theme.colors.colorRepositoryOpacityBlackHigher
            case .colorRepositoryOpacityBlackHighest:
                return theme.colors.colorRepositoryOpacityBlackHighest
            case .colorRepositoryOpacityBlackLow:
                return theme.colors.colorRepositoryOpacityBlackLow
            case .colorRepositoryOpacityBlackLower:
                return theme.colors.colorRepositoryOpacityBlackLower
            case .colorRepositoryOpacityBlackLowest:
                return theme.colors.colorRepositoryOpacityBlackLowest
            case .colorRepositoryOpacityBlackMedium:
                return theme.colors.colorRepositoryOpacityBlackMedium
            case .colorRepositoryOpacityBlackSoft:
                return theme.colors.colorRepositoryOpacityBlackSoft
            case .colorRepositoryOpacityBlackTransparent:
                return theme.colors.colorRepositoryOpacityBlackTransparent
            case .colorRepositoryOpacityInfo:
                return theme.colors.colorRepositoryOpacityInfo
            case .colorRepositoryOpacityNegative:
                return theme.colors.colorRepositoryOpacityNegative
            case .colorRepositoryOpacityPositive:
                return theme.colors.colorRepositoryOpacityPositive
            case .colorRepositoryOpacityWarning:
                return theme.colors.colorRepositoryOpacityWarning
            case .colorRepositoryOpacityWhiteHigh:
                return theme.colors.colorRepositoryOpacityWhiteHigh
            case .colorRepositoryOpacityWhiteHigher:
                return theme.colors.colorRepositoryOpacityWhiteHigher
            case .colorRepositoryOpacityWhiteHighest:
                return theme.colors.colorRepositoryOpacityWhiteHighest
            case .colorRepositoryOpacityWhiteMedium:
                return theme.colors.colorRepositoryOpacityWhiteMedium
            case .colorRepositoryOpacityWhiteLow:
                return theme.colors.colorRepositoryOpacityWhiteLow
            case .colorRepositoryOpacityWhiteLower:
                return theme.colors.colorRepositoryOpacityWhiteLower
            case .colorRepositoryOpacityWhiteLowest:
                return theme.colors.colorRepositoryOpacityWhiteLowest
            case .colorRepositoryOpacityWhiteTransparent:
                return theme.colors.colorRepositoryOpacityWhiteTransparent
            case .colorRepositoryPositiveDefault:
                return theme.colors.colorRepositoryPositiveDefault
            case .colorRepositoryPositiveHigh:
                return theme.colors.colorRepositoryPositiveHigh
            case .colorRepositoryPositiveHighest:
                return theme.colors.colorRepositoryPositiveHighest
            case .colorRepositoryPositiveLow:
                return theme.colors.colorRepositoryPositiveLow
            case .colorRepositoryPositiveLowest:
                return theme.colors.colorRepositoryPositiveLowest
            case .colorRepositoryPrimaryDefault:
                return theme.colors.colorRepositoryPrimaryDefault
            case .colorRepositoryPrimaryLow:
                return theme.colors.colorRepositoryPrimaryLow
            case .colorRepositoryWarningDefault:
                return theme.colors.colorRepositoryWarningDefault
            case .colorRepositoryWarningHighest:
                return theme.colors.colorRepositoryWarningHighest
            case .colorRepositoryWarningLow:
                return theme.colors.colorRepositoryWarningLow
            case .colorRepositoryWarningLowest:
                return theme.colors.colorRepositoryWarningLowest
            }
        }
    }
}

// swiftlint:enable function_body_length
