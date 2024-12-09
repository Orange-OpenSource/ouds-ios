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
            case .colorChartFunctionalInformation:
                return theme.colorChartFunctionalInformation
            case .colorChartFunctionalNegative:
                return theme.colorChartFunctionalNegative
            case .colorChartFunctionalPositive:
                return theme.colorChartFunctionalPositive
            case .colorChartFunctionalWarning:
                return theme.colorChartFunctionalWarning
            case .colorChartGridlines:
                return theme.colorChartGridlines
            case .colorChartHighlight:
                return theme.colorChartHighlight
            case .colorChartNeutral:
                return theme.colorChartNeutral
            }
        }
    }
}

// swiftlint:enable function_body_length
