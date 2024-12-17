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

extension NamedColor {

    enum Chart: String, CaseIterable {
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
        case colorChartFunctionalInformation
        case colorChartFunctionalNegative
        case colorChartFunctionalPositive
        case colorChartFunctionalWarning
        case colorChartGridlines
        case colorChartHighlight
        case colorChartNeutral

        func token(from theme: OUDSTheme) -> MultipleColorSemanticTokens {
            switch self {
            case .colorChartCategoricalTier1:
                return theme.colors.colorChartCategoricalTier1
            case .colorChartCategoricalTier2:
                return theme.colors.colorChartCategoricalTier2
            case .colorChartCategoricalTier3:
                return theme.colors.colorChartCategoricalTier3
            case .colorChartCategoricalTier4:
                return theme.colors.colorChartCategoricalTier4
            case .colorChartCategoricalTier5:
                return theme.colors.colorChartCategoricalTier5
            case .colorChartCategoricalTier6:
                return theme.colors.colorChartCategoricalTier6
            case .colorChartCategoricalTier7:
                return theme.colors.colorChartCategoricalTier7
            case .colorChartCategoricalTier8:
                return theme.colors.colorChartCategoricalTier8
            case .colorChartCategoricalTier9:
                return theme.colors.colorChartCategoricalTier9
            case .colorChartCategoricalTier10:
                return theme.colors.colorChartCategoricalTier10
            case .colorChartFunctionalInformation:
                return theme.colors.colorChartFunctionalInformation
            case .colorChartFunctionalNegative:
                return theme.colors.colorChartFunctionalNegative
            case .colorChartFunctionalPositive:
                return theme.colors.colorChartFunctionalPositive
            case .colorChartFunctionalWarning:
                return theme.colors.colorChartFunctionalWarning
            case .colorChartGridlines:
                return theme.colors.colorChartGridlines
            case .colorChartHighlight:
                return theme.colors.colorChartHighlight
            case .colorChartNeutral:
                return theme.colors.colorChartNeutral
            }
        }
    }
}
