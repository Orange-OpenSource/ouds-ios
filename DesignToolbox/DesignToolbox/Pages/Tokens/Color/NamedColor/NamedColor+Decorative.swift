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

    enum Decorative: String, CaseIterable {
        case colorDecorativeAccent1Default
        case colorDecorativeAccent1Emphasized
        case colorDecorativeAccent1Muted
        case colorDecorativeAccent2Default
        case colorDecorativeAccent2Emphasized
        case colorDecorativeAccent2Muted
        case colorDecorativeAccent3Default
        case colorDecorativeAccent3Emphasized
        case colorDecorativeAccent3Muted
        case colorDecorativeAccent4Default
        case colorDecorativeAccent4Emphasized
        case colorDecorativeAccent4Muted
        case colorDecorativeAccent5Default
        case colorDecorativeAccent5Emphasized
        case colorDecorativeAccent5Muted
        case colorDecorativeBrandPrimary
        case colorDecorativeBrandSecondary
        case colorDecorativeBrandTertiary
        case colorDecorativeSkinTint100
        case colorDecorativeSkinTint200
        case colorDecorativeSkinTint300
        case colorDecorativeSkinTint400
        case colorDecorativeSkinTint500
        case colorDecorativeSkinTint600
        case colorDecorativeSkinTint700
        case colorDecorativeSkinTint800
        case colorDecorativeSkinTint900
        case colorDecorativeNeutralEmphasizedHigher
        case colorDecorativeNeutralEmphasizedLow
        case colorDecorativeNeutralEmphasizedLower
        case colorDecorativeNeutralEmphasizedLowest
        case colorDecorativeNeutralMutedHigh
        case colorDecorativeNeutralMutedHigher
        case colorDecorativeNeutralMutedHighest
        case colorDecorativeNeutralMutedLow
        case colorDecorativeNeutralMutedLower
        case colorDecorativeNeutralMutedLowest
        case colorDecorativeNeutralMutedMedium

        func token(from theme: OUDSTheme) -> MultipleColorSemanticTokens {
            switch self {
            case .colorDecorativeAccent1Default:
                return theme.colors.colorDecorativeAccent1Default
            case .colorDecorativeAccent1Emphasized:
                return theme.colors.colorDecorativeAccent1Emphasized
            case .colorDecorativeAccent1Muted:
                return theme.colors.colorDecorativeAccent1Muted
            case .colorDecorativeAccent2Default:
                return theme.colors.colorDecorativeAccent2Default
            case .colorDecorativeAccent2Emphasized:
                return theme.colors.colorDecorativeAccent2Emphasized
            case .colorDecorativeAccent2Muted:
                return theme.colors.colorDecorativeAccent2Muted
            case .colorDecorativeAccent3Default:
                return theme.colors.colorDecorativeAccent3Default
            case .colorDecorativeAccent3Emphasized:
                return theme.colors.colorDecorativeAccent3Emphasized
            case .colorDecorativeAccent3Muted:
                return theme.colors.colorDecorativeAccent3Muted
            case .colorDecorativeAccent4Default:
                return theme.colors.colorDecorativeAccent4Default
            case .colorDecorativeAccent4Emphasized:
                return theme.colors.colorDecorativeAccent4Emphasized
            case .colorDecorativeAccent4Muted:
                return theme.colors.colorDecorativeAccent4Muted
            case .colorDecorativeAccent5Default:
                return theme.colors.colorDecorativeAccent5Default
            case .colorDecorativeAccent5Emphasized:
                return theme.colors.colorDecorativeAccent5Emphasized
            case .colorDecorativeAccent5Muted:
                return theme.colors.colorDecorativeAccent5Muted
            case .colorDecorativeBrandPrimary:
                return theme.colors.colorDecorativeBrandPrimary
            case .colorDecorativeBrandSecondary:
                return theme.colors.colorDecorativeBrandSecondary
            case .colorDecorativeBrandTertiary:
                return theme.colors.colorDecorativeBrandTertiary
            case .colorDecorativeSkinTint100:
                return theme.colors.colorDecorativeSkinTint100
            case .colorDecorativeSkinTint200:
                return theme.colors.colorDecorativeSkinTint200
            case .colorDecorativeSkinTint300:
                return theme.colors.colorDecorativeSkinTint300
            case .colorDecorativeSkinTint400:
                return theme.colors.colorDecorativeSkinTint400
            case .colorDecorativeSkinTint500:
                return theme.colors.colorDecorativeSkinTint500
            case .colorDecorativeSkinTint600:
                return theme.colors.colorDecorativeSkinTint600
            case .colorDecorativeSkinTint700:
                return theme.colors.colorDecorativeSkinTint700
            case .colorDecorativeSkinTint800:
                return theme.colors.colorDecorativeSkinTint800
            case .colorDecorativeSkinTint900:
                return theme.colors.colorDecorativeSkinTint900
            case .colorDecorativeNeutralEmphasizedHigher:
                return theme.colors.colorDecorativeNeutralEmphasizedHigher
            case .colorDecorativeNeutralEmphasizedLow:
                return theme.colors.colorDecorativeNeutralEmphasizedLow
            case .colorDecorativeNeutralEmphasizedLower:
                return theme.colors.colorDecorativeNeutralEmphasizedLower
            case .colorDecorativeNeutralEmphasizedLowest:
                return theme.colors.colorDecorativeNeutralEmphasizedLowest
            case .colorDecorativeNeutralMutedHigh:
                return theme.colors.colorDecorativeNeutralMutedHigh
            case .colorDecorativeNeutralMutedHigher:
                return theme.colors.colorDecorativeNeutralMutedHigher
            case .colorDecorativeNeutralMutedHighest:
                return theme.colors.colorDecorativeNeutralMutedHighest
            case .colorDecorativeNeutralMutedLow:
                return theme.colors.colorDecorativeNeutralMutedLow
            case .colorDecorativeNeutralMutedLower:
                return theme.colors.colorDecorativeNeutralMutedLower
            case .colorDecorativeNeutralMutedLowest:
                return theme.colors.colorDecorativeNeutralMutedLowest
            case .colorDecorativeNeutralMutedMedium:
                return theme.colors.colorDecorativeNeutralMutedMedium
            }
        }
    }
}

// swiftlint:enable function_body_length
