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
        case colorDecorativePrimary
        case colorDecorativeSecondary
        case colorDecorativeBrandTertiary
        // NOTE: #124 - Following case(s) is / are not managed because not defined values!
        // case colorDecorativeBrandTertiaryMuted
        // case colorDecorativeBrandTertiaryEmphasized
        case colorDecorativeNeutralMuted
        case colorDecorativeNeutralDefault
        case colorDecorativeNeutralEmphasized
        case colorDecorativeAccent1Muted
        case colorDecorativeAccent1Default
        case colorDecorativeAccent1Emphasized
        case colorDecorativeAccent2Muted
        case colorDecorativeAccent2Default
        case colorDecorativeAccent2Emphasized
        case colorDecorativeAccent3Muted
        case colorDecorativeAccent3Default
        case colorDecorativeAccent3Emphasized
        case colorDecorativeAccent4Muted
        case colorDecorativeAccent4Default
        case colorDecorativeAccent4Emphasized
        case colorDecorativeAccent5Muted
        case colorDecorativeAccent5Default
        case colorDecorativeAccent5Emphasized
        case colorDecorativeSkinTint100
        case colorDecorativeSkinTint200
        case colorDecorativeSkinTint300
        case colorDecorativeSkinTint400
        case colorDecorativeSkinTint500
        case colorDecorativeSkinTint600
        case colorDecorativeSkinTint700
        case colorDecorativeSkinTint800
        case colorDecorativeSkinTint900

        func token(from theme: OUDSTheme) -> ColorSemanticToken {
            switch self {
            case .colorDecorativePrimary:
                return theme.colorDecorativePrimary
            case .colorDecorativeSecondary:
                return theme.colorDecorativeSecondary
            case .colorDecorativeBrandTertiary:
                return theme.colorDecorativeBrandTertiary
            // NOTE: #124 - Following case(s) is / are not managed because not defined values!
//            case .colorDecorativeBrandTertiaryMuted:
//                return theme.colorDecorativeBrandTertiaryMuted
//            case .colorDecorativeBrandTertiaryEmphasized:
//                return theme.colorDecorativeBrandTertiaryEmphasized
            case .colorDecorativeNeutralMuted:
                return theme.colorDecorativeNeutralMuted
            case .colorDecorativeNeutralDefault:
                return theme.colorDecorativeNeutralDefault
            case .colorDecorativeNeutralEmphasized:
                return theme.colorDecorativeNeutralEmphasized
            case .colorDecorativeAccent1Muted:
                return theme.colorDecorativeAccent1Muted
            case .colorDecorativeAccent1Default:
                return theme.colorDecorativeAccent1Default
            case .colorDecorativeAccent1Emphasized:
                return theme.colorDecorativeAccent1Emphasized
            case .colorDecorativeAccent2Muted:
                return theme.colorDecorativeAccent2Muted
            case .colorDecorativeAccent2Default:
                return theme.colorDecorativeAccent2Default
            case .colorDecorativeAccent2Emphasized:
                return theme.colorDecorativeAccent2Emphasized
            case .colorDecorativeAccent3Muted:
                return theme.colorDecorativeAccent3Muted
            case .colorDecorativeAccent3Default:
                return theme.colorDecorativeAccent3Default
            case .colorDecorativeAccent3Emphasized:
                return theme.colorDecorativeAccent3Emphasized
            case .colorDecorativeAccent4Muted:
                return theme.colorDecorativeAccent4Muted
            case .colorDecorativeAccent4Default:
                return theme.colorDecorativeAccent4Default
            case .colorDecorativeAccent4Emphasized:
                return theme.colorDecorativeAccent4Emphasized
            case .colorDecorativeAccent5Muted:
                return theme.colorDecorativeAccent5Muted
            case .colorDecorativeAccent5Default:
                return theme.colorDecorativeAccent5Default
            case .colorDecorativeAccent5Emphasized:
                return theme.colorDecorativeAccent5Emphasized
            case .colorDecorativeSkinTint100:
                return theme.colorDecorativeSkinTint100
            case .colorDecorativeSkinTint200:
                return theme.colorDecorativeSkinTint200
            case .colorDecorativeSkinTint300:
                return theme.colorDecorativeSkinTint300
            case .colorDecorativeSkinTint400:
                return theme.colorDecorativeSkinTint400
            case .colorDecorativeSkinTint500:
                return theme.colorDecorativeSkinTint500
            case .colorDecorativeSkinTint600:
                return theme.colorDecorativeSkinTint600
            case .colorDecorativeSkinTint700:
                return theme.colorDecorativeSkinTint700
            case .colorDecorativeSkinTint800:
                return theme.colorDecorativeSkinTint800
            case .colorDecorativeSkinTint900:
                return theme.colorDecorativeSkinTint900
            }
        }
    }
}

// swiftlint:enable function_body_length
