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

import Foundation
import SwiftUI

// MARK: - Type aliases to keep grammar clear

public typealias ColorSemanticToken = ColorGlobalPrimitiveTokens
public typealias ColorAliasSemanticToken = SwiftUI.Color

// MARK: - Semantic tokens

public struct ColorSemanticTokens {
    
    // MARK: Semantic token - Colors - Alias - Primary

    static let sysColorBrandPrimaryLowest: ColorAliasSemanticToken? = nil
    static let sysColorBrandPrimaryLower: ColorAliasSemanticToken? = nil
    static let sysColorBrandPrimaryLow: ColorAliasSemanticToken? = ColorOrangePrimitiveTokens.colorBrandOrange500
    static let sysColorBrandPrimaryDefault: ColorAliasSemanticToken? = ColorOrangePrimitiveTokens.colorBrandOrange550
    static let sysColorBrandPrimaryHigh: ColorAliasSemanticToken? = nil
    static let sysColorBrandPrimaryHigher: ColorAliasSemanticToken? = nil
    static let sysColorBrandPrimaryHighest: ColorAliasSemanticToken? = nil

    // MARK: Semantic token - Colors - Alias - Secondary

    static let sysColorBrandSecondaryLowest: ColorAliasSemanticToken? = nil
    static let sysColorBrandSecondaryLower: ColorAliasSemanticToken? = nil
    static let sysColorBrandSecondaryLow: ColorAliasSemanticToken? = nil
    static let sysColorBrandSecondaryDefault: ColorAliasSemanticToken? = nil
    static let sysColorBrandSecondaryHigh: ColorAliasSemanticToken? = nil
    static let sysColorBrandSecondaryHigher: ColorAliasSemanticToken? = nil
    static let sysColorBrandSecondaryHighest: ColorAliasSemanticToken? = nil

    // MARK: Semantic token - Colors - Alias - Tertiary

    static let sysColorBrandTertiaryLowest: ColorAliasSemanticToken? = nil
    static let sysColorBrandTertiaryLower: ColorAliasSemanticToken? = nil
    static let sysColorBrandTertiaryLow: ColorAliasSemanticToken? = nil
    static let sysColorBrandTertiaryDefault: ColorAliasSemanticToken? = nil
    static let sysColorBrandTertiaryHigh: ColorAliasSemanticToken? = nil
    static let sysColorBrandTertiaryHigher: ColorAliasSemanticToken? = nil
    static let sysColorBrandTertiaryHighest: ColorAliasSemanticToken? = nil

    // MARK: Semantic token - Colors - Alias - Neutral - Muted

    static let sysColorBrandNeutralMutedWhite: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalWhite
    static let sysColorBrandNeutralMutedLowest: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalLightGray80
    static let sysColorBrandNeutralMutedLower: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalLightGray160
    static let sysColorBrandNeutralMutedLow: ColorAliasSemanticToken? = nil
    static let sysColorBrandNeutralMutedMedium: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalLightGray400
    static let sysColorBrandNeutralMutedHigh: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalLightGray560
    static let sysColorBrandNeutralMutedHigher: ColorAliasSemanticToken? = nil
    static let sysColorBrandNeutralMutedHighest: ColorAliasSemanticToken? = nil

    // MARK: Semantic token - Colors - Alias - Neutral - Emphasis

    static let sysColorBrandNeutralEmphasisLowest: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalDarkGray400
    static let sysColorBrandNeutralEmphasisLower: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalDarkGray480
    static let sysColorBrandNeutralEmphasisLow: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalDarkGray560
    static let sysColorBrandNeutralEmphasisMedium: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalDarkGray640
    static let sysColorBrandNeutralEmphasisHigh: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalDarkGray720
    static let sysColorBrandNeutralEmphasisHigher: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalDarkGray800
    static let sysColorBrandNeutralEmphasisHighest: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalDarkGray880
    static let sysColorBrandNeutralEmphasisBlack: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalBlack

    // MARK: Semantic token - Colors - Alias - Positive

    static let sysColorBrandPositiveLowest: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalMalachite100
    static let sysColorBrandPositiveLower: ColorAliasSemanticToken? = nil
    static let sysColorBrandPositiveLow: ColorAliasSemanticToken? = nil
    static let sysColorBrandPositiveMedium: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalMalachite500
    static let sysColorBrandPositiveHigh: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalMalachite600
    static let sysColorBrandPositiveHigher: ColorAliasSemanticToken? = nil
    static let sysColorBrandPositiveHighest: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalMalachite800

    // MARK: Semantic token - Colors - Alias - Information

    static let sysColorBrandInformationLowest: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalDodgerBlue100
    static let sysColorBrandInformationLower: ColorAliasSemanticToken? = nil
    static let sysColorBrandInformationLow: ColorAliasSemanticToken? = nil
    static let sysColorBrandInformationMedium: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalDodgerBlue500
    static let sysColorBrandInformationHigh: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalDodgerBlue600
    static let sysColorBrandInformationHigher: ColorAliasSemanticToken? = nil
    static let sysColorBrandInformationHighest: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalDodgerBlue800

    // MARK: Semantic token - Colors - Alias - Warning

    static let sysColorBrandWarningLowest: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalSun100
    static let sysColorBrandWarningLower: ColorAliasSemanticToken? = nil
    static let sysColorBrandWarningLow: ColorAliasSemanticToken? = nil
    static let sysColorBrandWarningMedium: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalSun500
    static let sysColorBrandWarningHigh: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalSun600
    static let sysColorBrandWarningHigher: ColorAliasSemanticToken? = nil
    static let sysColorBrandWarningHighest: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalSun800

    // MARK: Semantic token - Colors - Alias - Negative

    static let sysColorBrandNegativeLowest: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalScarlet100
    static let sysColorBrandNegativeLower: ColorAliasSemanticToken? = nil
    static let sysColorBrandNegativeLow: ColorAliasSemanticToken? = nil
    static let sysColorBrandNegativeMedium: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalScarlet500
    static let sysColorBrandNegativeHigh: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalScarlet600
    static let sysColorBrandNegativeHigher: ColorAliasSemanticToken? = nil
    static let sysColorBrandNegativeHighest: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalScarlet800

    // MARK: Semantic token - Colors - Alias - Attractive

    static let sysColorBrandAttractiveLowest: ColorAliasSemanticToken? = ColorOrangePrimitiveTokens.colorBrandWarmGray100
    static let sysColorBrandAttractiveLower: ColorAliasSemanticToken? = nil
    static let sysColorBrandAttractiveLow: ColorAliasSemanticToken? = nil
    static let sysColorBrandAttractiveMedium: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalSun500
    static let sysColorBrandAttractiveHigh: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalSun600
    static let sysColorBrandAttractiveHigher: ColorAliasSemanticToken? = nil
    static let sysColorBrandAttractiveHighest: ColorAliasSemanticToken? = ColorOrangePrimitiveTokens.colorBrandWarmGray900

}
