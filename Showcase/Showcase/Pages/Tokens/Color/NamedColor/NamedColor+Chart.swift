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

    enum Chart: String, CaseIterable {
        case colorChartCategoricalNeutral
        case colorChartCategoricalBrand
        case colorChartCategoricalPositive
        case colorChartCategoricalNegative
        case colorChartCategoricalTier1
        case colorChartCategoricalTier2
        case colorChartCategoricalTier3
        case colorChartCategoricalTier4
        case colorChartCategoricalTier5
        case colorChartCategoricalTier6
        case colorChartCategoricalTier7
        case colorChartCategoricalTier8
        case colorChartCategoricalTier9
        case colorChartCategoricalTier10
        case colorChartSequentialAccent1Tint100
        case colorChartSequentialAccent1Tint200
        case colorChartSequentialAccent1Tint300
        case colorChartSequentialAccent1Tint400
        case colorChartSequentialAccent1Tint500
        case colorChartSequentialAccent1Tint600
        case colorChartSequentialAccent1Tint700
        case colorChartSequentialAccent1Tint800
        case colorChartSequentialAccent1Tint900
        case colorChartSequentialAccent2Tint100
        case colorChartSequentialAccent2Tint200
        case colorChartSequentialAccent2Tint300
        case colorChartSequentialAccent2Tint400
        case colorChartSequentialAccent2Tint500
        case colorChartSequentialAccent2Tint600
        case colorChartSequentialAccent2Tint700
        case colorChartSequentialAccent2Tint800
        case colorChartSequentialAccent2Tint900
        case colorChartSequentialAccent3Tint100
        case colorChartSequentialAccent3Tint200
        case colorChartSequentialAccent3Tint300
        case colorChartSequentialAccent3Tint400
        case colorChartSequentialAccent3Tint500
        case colorChartSequentialAccent3Tint600
        case colorChartSequentialAccent3Tint700
        case colorChartSequentialAccent3Tint800
        case colorChartSequentialAccent3Tint900
        case colorChartSequentialAccent4Tint100
        case colorChartSequentialAccent4Tint200
        case colorChartSequentialAccent4Tint300
        case colorChartSequentialAccent4Tint400
        case colorChartSequentialAccent4Tint500
        case colorChartSequentialAccent4Tint600
        case colorChartSequentialAccent4Tint700
        case colorChartSequentialAccent4Tint800
        case colorChartSequentialAccent4Tint900
        case colorChartSequentialAccent5Tint100
        case colorChartSequentialAccent5Tint200
        case colorChartSequentialAccent5Tint300
        case colorChartSequentialAccent5Tint400
        case colorChartSequentialAccent5Tint500
        case colorChartSequentialAccent5Tint600
        case colorChartSequentialAccent5Tint700
        case colorChartSequentialAccent5Tint800
        case colorChartSequentialAccent5Tint900

        func token(from theme: OUDSTheme) -> MultipleColorTokens {
            switch self {
            case .colorChartCategoricalNeutral:
                return theme.colorChartCategoricalNeutral
            case .colorChartCategoricalBrand:
                return theme.colorChartCategoricalBrand
            case .colorChartCategoricalPositive:
                return theme.colorChartCategoricalPositive
            case .colorChartCategoricalNegative:
                return theme.colorChartCategoricalNegative
            case .colorChartCategoricalTier1:
                return theme.colorChartCategoricalTier1
            case .colorChartCategoricalTier2:
                return theme.colorChartCategoricalTier2
            case .colorChartCategoricalTier3:
                return theme.colorChartCategoricalTier3
            case .colorChartCategoricalTier4:
                return theme.colorChartCategoricalTier4
            case .colorChartCategoricalTier5:
                return theme.colorChartCategoricalTier5
            case .colorChartCategoricalTier6:
                return theme.colorChartCategoricalTier6
            case .colorChartCategoricalTier7:
                return theme.colorChartCategoricalTier7
            case .colorChartCategoricalTier8:
                return theme.colorChartCategoricalTier8
            case .colorChartCategoricalTier9:
                return theme.colorChartCategoricalTier9
            case .colorChartCategoricalTier10:
                return theme.colorChartCategoricalTier10
            case .colorChartSequentialAccent1Tint100:
                return theme.colorChartSequentialAccent1Tint100
            case .colorChartSequentialAccent1Tint200:
                return theme.colorChartSequentialAccent1Tint200
            case .colorChartSequentialAccent1Tint300:
                return theme.colorChartSequentialAccent1Tint300
            case .colorChartSequentialAccent1Tint400:
                return theme.colorChartSequentialAccent1Tint400
            case .colorChartSequentialAccent1Tint500:
                return theme.colorChartSequentialAccent1Tint500
            case .colorChartSequentialAccent1Tint600:
                return theme.colorChartSequentialAccent1Tint600
            case .colorChartSequentialAccent1Tint700:
                return theme.colorChartSequentialAccent1Tint700
            case .colorChartSequentialAccent1Tint800:
                return theme.colorChartSequentialAccent1Tint800
            case .colorChartSequentialAccent1Tint900:
                return theme.colorChartSequentialAccent1Tint900
            case .colorChartSequentialAccent2Tint100:
                return theme.colorChartSequentialAccent2Tint100
            case .colorChartSequentialAccent2Tint200:
                return theme.colorChartSequentialAccent2Tint200
            case .colorChartSequentialAccent2Tint300:
                return theme.colorChartSequentialAccent2Tint300
            case .colorChartSequentialAccent2Tint400:
                return theme.colorChartSequentialAccent2Tint400
            case .colorChartSequentialAccent2Tint500:
                return theme.colorChartSequentialAccent2Tint500
            case .colorChartSequentialAccent2Tint600:
                return theme.colorChartSequentialAccent2Tint600
            case .colorChartSequentialAccent2Tint700:
                return theme.colorChartSequentialAccent2Tint700
            case .colorChartSequentialAccent2Tint800:
                return theme.colorChartSequentialAccent2Tint800
            case .colorChartSequentialAccent2Tint900:
                return theme.colorChartSequentialAccent2Tint900
            case .colorChartSequentialAccent3Tint100:
                return theme.colorChartSequentialAccent3Tint100
            case .colorChartSequentialAccent3Tint200:
                return theme.colorChartSequentialAccent3Tint200
            case .colorChartSequentialAccent3Tint300:
                return theme.colorChartSequentialAccent3Tint300
            case .colorChartSequentialAccent3Tint400:
                return theme.colorChartSequentialAccent3Tint400
            case .colorChartSequentialAccent3Tint500:
                return theme.colorChartSequentialAccent3Tint500
            case .colorChartSequentialAccent3Tint600:
                return theme.colorChartSequentialAccent3Tint600
            case .colorChartSequentialAccent3Tint700:
                return theme.colorChartSequentialAccent3Tint700
            case .colorChartSequentialAccent3Tint800:
                return theme.colorChartSequentialAccent3Tint800
            case .colorChartSequentialAccent3Tint900:
                return theme.colorChartSequentialAccent3Tint900
            case .colorChartSequentialAccent4Tint100:
                return theme.colorChartSequentialAccent4Tint100
            case .colorChartSequentialAccent4Tint200:
                return theme.colorChartSequentialAccent4Tint200
            case .colorChartSequentialAccent4Tint300:
                return theme.colorChartSequentialAccent4Tint300
            case .colorChartSequentialAccent4Tint400:
                return theme.colorChartSequentialAccent4Tint400
            case .colorChartSequentialAccent4Tint500:
                return theme.colorChartSequentialAccent4Tint500
            case .colorChartSequentialAccent4Tint600:
                return theme.colorChartSequentialAccent4Tint600
            case .colorChartSequentialAccent4Tint700:
                return theme.colorChartSequentialAccent4Tint700
            case .colorChartSequentialAccent4Tint800:
                return theme.colorChartSequentialAccent4Tint800
            case .colorChartSequentialAccent4Tint900:
                return theme.colorChartSequentialAccent4Tint900
            case .colorChartSequentialAccent5Tint100:
                return theme.colorChartSequentialAccent5Tint100
            case .colorChartSequentialAccent5Tint200:
                return theme.colorChartSequentialAccent5Tint200
            case .colorChartSequentialAccent5Tint300:
                return theme.colorChartSequentialAccent5Tint300
            case .colorChartSequentialAccent5Tint400:
                return theme.colorChartSequentialAccent5Tint400
            case .colorChartSequentialAccent5Tint500:
                return theme.colorChartSequentialAccent5Tint500
            case .colorChartSequentialAccent5Tint600:
                return theme.colorChartSequentialAccent5Tint600
            case .colorChartSequentialAccent5Tint700:
                return theme.colorChartSequentialAccent5Tint700
            case .colorChartSequentialAccent5Tint800:
                return theme.colorChartSequentialAccent5Tint800
            case .colorChartSequentialAccent5Tint900:
                return theme.colorChartSequentialAccent5Tint900
            }
        }
    }
}

// swiftlint:enable function_body_length
