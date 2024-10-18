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
        case colorDecorativeBrandPrimary
        // NOTE: #124 - Following case(s) is / are not managed because not defined values!
        // case colorDecorativeBrandPrimaryMuted
        // case colorDecorativeBrandPrimaryEmphasized
        case colorDecorativeSecondary
        // NOTE: #124 - Following case(s) is / are not managed because not defined values!
        // case colorDecorativeSecondaryMuted
        // case colorDecorativeSecondaryEmphasized
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
        case colorDecorativeSkintTint100
        case colorDecorativeSkintTint200
        case colorDecorativeSkintTint300
        case colorDecorativeSkintTint400
        case colorDecorativeSkintTint500
        case colorDecorativeSkintTint600
        case colorDecorativeSkintTint700
        case colorDecorativeSkintTint800
        case colorDecorativeSkintTint900

        func token(from theme: OUDSTheme) -> ColorSemanticToken {
            switch self {
            case .colorDecorativeBrandPrimary:
                return theme.colorDecorativeBrandPrimary
            // NOTE: #124 - Following case(s) is / are not managed because not defined values!
//            case .colorDecorativeBrandPrimaryMuted:
//                return theme.colorDecorativeBrandPrimaryMuted
//            case .colorDecorativeBrandPrimaryEmphasized:
//                return theme.colorDecorativeBrandPrimaryEmphasized
            case .colorDecorativeSecondary:
                return theme.colorDecorativeSecondary
            // NOTE: #124 - Following case(s) is / are not managed because not defined values!
//            case .colorDecorativeSecondaryMuted:
//                return theme.colorDecorativeSecondaryMuted
//            case .colorDecorativeSecondaryEmphasized:
//                return theme.colorDecorativeSecondaryEmphasized
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
            case .colorDecorativeSkintTint100:
                return theme.colorDecorativeSkintTint100
            case .colorDecorativeSkintTint200:
                return theme.colorDecorativeSkintTint200
            case .colorDecorativeSkintTint300:
                return theme.colorDecorativeSkintTint300
            case .colorDecorativeSkintTint400:
                return theme.colorDecorativeSkintTint400
            case .colorDecorativeSkintTint500:
                return theme.colorDecorativeSkintTint500
            case .colorDecorativeSkintTint600:
                return theme.colorDecorativeSkintTint600
            case .colorDecorativeSkintTint700:
                return theme.colorDecorativeSkintTint700
            case .colorDecorativeSkintTint800:
                return theme.colorDecorativeSkintTint800
            case .colorDecorativeSkintTint900:
                return theme.colorDecorativeSkintTint900
            }
        }
    }
}

// swiftlint:enable function_body_length
