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
        case colorRepositoryOpacityBlackHigher
        case colorRepositoryOpacityBlackHighest
        case colorRepositoryOpacityBlackLow
        case colorRepositoryOpacityBlackLower
        case colorRepositoryOpacityBlackLowest
        case colorRepositoryOpacityBlackMedium
        case colorRepositoryOpacityBlackTransparent
        case colorRepositoryOpacityInfo
        case colorRepositoryOpacityNegative
        case colorRepositoryOpacityPositive
        case colorRepositoryOpacityWarning
        case colorRepositoryOpacityWhiteHigh
        case colorRepositoryOpacityWhiteHigher
        case colorRepositoryOpacityWhiteHighest
        case colorRepositoryOpacityWhiteLow
        case colorRepositoryOpacityWhiteLower
        case colorRepositoryOpacityWhiteLowest
        case colorRepositoryOpacityWhiteTransparent
        case colorRepositoryPositiveDefault
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
                return theme.colorRepositoryAccentDefault
            case .colorRepositoryAccentHighest:
                return theme.colorRepositoryAccentHighest
            case .colorRepositoryAccentLow:
                return theme.colorRepositoryAccentLow
            case .colorRepositoryAccentLowest:
                return theme.colorRepositoryAccentLowest
            case .colorRepositoryInfoDefault:
                return theme.colorRepositoryInfoDefault
            case .colorRepositoryInfoHighest:
                return theme.colorRepositoryInfoHighest
            case .colorRepositoryInfoLow:
                return theme.colorRepositoryInfoLow
            case .colorRepositoryInfoLowest:
                return theme.colorRepositoryInfoLowest
            case .colorRepositoryNegativeDefault:
                return theme.colorRepositoryNegativeDefault
            case .colorRepositoryNegativeHigh:
                return theme.colorRepositoryNegativeHigh
            case .colorRepositoryNegativeHigher:
                return theme.colorRepositoryNegativeHigher
            case .colorRepositoryNegativeHighest:
                return theme.colorRepositoryNegativeHighest
            case .colorRepositoryNegativeLow:
                return theme.colorRepositoryNegativeLow
            case .colorRepositoryNegativeLower:
                return theme.colorRepositoryNegativeLower
            case .colorRepositoryNegativeLowest:
                return theme.colorRepositoryNegativeLowest
            case .colorRepositoryNeutralEmphasizedBlack:
                return theme.colorRepositoryNeutralEmphasizedBlack
            case .colorRepositoryNeutralEmphasizedHigh:
                return theme.colorRepositoryNeutralEmphasizedHigh
            case .colorRepositoryNeutralEmphasizedHigher:
                return theme.colorRepositoryNeutralEmphasizedHigher
            case .colorRepositoryNeutralEmphasizedHighest:
                return theme.colorRepositoryNeutralEmphasizedHighest
            case .colorRepositoryNeutralEmphasizedMedium:
                return theme.colorRepositoryNeutralEmphasizedMedium
            case .colorRepositoryNeutralMutedLower:
                return theme.colorRepositoryNeutralMutedLower
            case .colorRepositoryNeutralMutedLowest:
                return theme.colorRepositoryNeutralMutedLowest
            case .colorRepositoryNeutralMutedWhite:
                return theme.colorRepositoryNeutralMutedWhite
            case .colorRepositoryOpacityBlackHigher:
                return theme.colorRepositoryOpacityBlackHigher
            case .colorRepositoryOpacityBlackHighest:
                return theme.colorRepositoryOpacityBlackHighest
            case .colorRepositoryOpacityBlackLow:
                return theme.colorRepositoryOpacityBlackLow
            case .colorRepositoryOpacityBlackLower:
                return theme.colorRepositoryOpacityBlackLower
            case .colorRepositoryOpacityBlackLowest:
                return theme.colorRepositoryOpacityBlackLowest
            case .colorRepositoryOpacityBlackMedium:
                return theme.colorRepositoryOpacityBlackMedium
            case .colorRepositoryOpacityBlackTransparent:
                return theme.colorRepositoryOpacityBlackTransparent
            case .colorRepositoryOpacityInfo:
                return theme.colorRepositoryOpacityInfo
            case .colorRepositoryOpacityNegative:
                return theme.colorRepositoryOpacityNegative
            case .colorRepositoryOpacityPositive:
                return theme.colorRepositoryOpacityPositive
            case .colorRepositoryOpacityWarning:
                return theme.colorRepositoryOpacityWarning
            case .colorRepositoryOpacityWhiteHigh:
                return theme.colorRepositoryOpacityWhiteHigh
            case .colorRepositoryOpacityWhiteHigher:
                return theme.colorRepositoryOpacityWhiteHigher
            case .colorRepositoryOpacityWhiteHighest:
                return theme.colorRepositoryOpacityWhiteHighest
            case .colorRepositoryOpacityWhiteLow:
                return theme.colorRepositoryOpacityWhiteLow
            case .colorRepositoryOpacityWhiteLower:
                return theme.colorRepositoryOpacityWhiteLower
            case .colorRepositoryOpacityWhiteLowest:
                return theme.colorRepositoryOpacityWhiteLowest
            case .colorRepositoryOpacityWhiteTransparent:
                return theme.colorRepositoryOpacityWhiteTransparent
            case .colorRepositoryPositiveDefault:
                return theme.colorRepositoryPositiveDefault
            case .colorRepositoryPositiveHighest:
                return theme.colorRepositoryPositiveHighest
            case .colorRepositoryPositiveLow:
                return theme.colorRepositoryPositiveLow
            case .colorRepositoryPositiveLowest:
                return theme.colorRepositoryPositiveLowest
            case .colorRepositoryPrimaryDefault:
                return theme.colorRepositoryPrimaryDefault
            case .colorRepositoryPrimaryLow:
                return theme.colorRepositoryPrimaryLow
            case .colorRepositoryWarningDefault:
                return theme.colorRepositoryWarningDefault
            case .colorRepositoryWarningHighest:
                return theme.colorRepositoryWarningHighest
            case .colorRepositoryWarningLow:
                return theme.colorRepositoryWarningLow
            case .colorRepositoryWarningLowest:
                return theme.colorRepositoryWarningLowest
            }
        }
    }
}

// swiftlint:enable function_body_length
