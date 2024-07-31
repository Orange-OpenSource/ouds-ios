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

public typealias ColorSemanticToken = SwiftUI.Color
public typealias ColorAliasSemanticToken = SwiftUI.Color

// MARK: - Semantic tokens

public struct ColorSemanticTokens {
    
    // MARK: - Aliases
    
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
    static let sysColorBrandPositiveDefault: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalMalachite500
    static let sysColorBrandPositiveHigh: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalMalachite600
    static let sysColorBrandPositiveHigher: ColorAliasSemanticToken? = nil
    static let sysColorBrandPositiveHighest: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalMalachite800

    // MARK: Semantic token - Colors - Alias - Information

    static let sysColorBrandInformationLowest: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalDodgerBlue100
    static let sysColorBrandInformationLower: ColorAliasSemanticToken? = nil
    static let sysColorBrandInformationLow: ColorAliasSemanticToken? = nil
    static let sysColorBrandInformationDefault: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalDodgerBlue500
    static let sysColorBrandInformationHigh: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalDodgerBlue600
    static let sysColorBrandInformationHigher: ColorAliasSemanticToken? = nil
    static let sysColorBrandInformationHighest: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalDodgerBlue800

    // MARK: Semantic token - Colors - Alias - Warning

    static let sysColorBrandWarningLowest: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalSun100
    static let sysColorBrandWarningLower: ColorAliasSemanticToken? = nil
    static let sysColorBrandWarningLow: ColorAliasSemanticToken? = nil
    static let sysColorBrandWarningDefault: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalSun500
    static let sysColorBrandWarningHigh: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalSun600
    static let sysColorBrandWarningHigher: ColorAliasSemanticToken? = nil
    static let sysColorBrandWarningHighest: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalSun800

    // MARK: Semantic token - Colors - Alias - Negative

    static let sysColorBrandNegativeLowest: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalScarlet100
    static let sysColorBrandNegativeLower: ColorAliasSemanticToken? = nil
    static let sysColorBrandNegativeLow: ColorAliasSemanticToken? = nil
    static let sysColorBrandNegativeDefault: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalScarlet500
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

    // MARK: - Background
    
    // MARK: Semantic token - Colors - Background - Default - Primary

    static let colorBackgroundDefaultPrimaryLight: ColorSemanticToken? = sysColorBrandNeutralMutedWhite
    static let colorBackgroundDefaultPrimaryInverse: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    static let colorBackgroundDefaultPrimaryDark: ColorSemanticToken? = sysColorBrandNeutralEmphasisHighest

    // MARK: Semantic token - Colors - Background - Default - Secondary

    static let colorBackgroundDefaultSecondaryLight: ColorSemanticToken? = sysColorBrandNeutralMutedLowest
    static let colorBackgroundDefaultSecondaryInverse: ColorSemanticToken? = sysColorBrandNeutralEmphasisMedium
    static let colorBackgroundDefaultSecondaryDark: ColorSemanticToken? = sysColorBrandNeutralEmphasisHigher

    // MARK: Semantic token - Colors - Background - Default - Tertiary

    static let colorBackgroundDefaultTertiaryLight: ColorSemanticToken? = sysColorBrandAttractiveLowest
    static let colorBackgroundDefaultTertiaryInverse: ColorSemanticToken? = sysColorBrandAttractiveHighest
    static let colorBackgroundDefaultTertiaryDark: ColorSemanticToken? = sysColorBrandAttractiveHighest

    // MARK: Semantic token - Colors - Background - Emphasis - Primary

    static let colorBackgroundEmphasisPrimaryLight: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    static let colorBackgroundEmphasisPrimaryInverse: ColorSemanticToken? = sysColorBrandNeutralMutedWhite
    static let colorBackgroundEmphasisPrimaryDark: ColorSemanticToken? = sysColorBrandNeutralEmphasisMedium

    // MARK: Semantic token - Colors - Background - Emphasis - Secondary

    static let colorBackgroundEmphasisSecondaryLight: ColorSemanticToken? = sysColorBrandNeutralEmphasisMedium
    static let colorBackgroundEmphasisSecondaryInverse: ColorSemanticToken? = sysColorBrandNeutralMutedLowest
    static let colorBackgroundEmphasisSecondaryDark: ColorSemanticToken? = sysColorBrandNeutralEmphasisHigh

    // MARK: Semantic token - Colors - Background - Brand - Primary

    static let colorBackgroundBrandPrimaryLight: ColorSemanticToken? = sysColorBrandPrimaryDefault
    static let colorBackgroundBrandPrimaryInverse: ColorSemanticToken? = sysColorBrandPrimaryDefault
    static let colorBackgroundBrandPrimaryDark: ColorSemanticToken? = sysColorBrandPrimaryLow

    // MARK: Semantic token - Colors - Background - Brand - Secondary

    static let colorBackgroundBrandSecondary: ColorSemanticToken? = nil

    // MARK: Semantic token - Colors - Background - Brand - Tertiary

    static let colorBackgroundBrandTertiary: ColorSemanticToken? = nil

    // MARK: Semantic token - Colors - Background - Status - Attractive - Muted

    static let colorBackgroundStatusAttractiveMutedLight: ColorSemanticToken? = sysColorBrandAttractiveLowest
    static let colorBackgroundStatusAttractiveMutedInverse: ColorSemanticToken? = sysColorBrandAttractiveLowest
    static let colorBackgroundStatusAttractiveMutedDark: ColorSemanticToken? = sysColorBrandAttractiveHighest

    // MARK: Semantic token - Colors - Background - Status - Attractive - Emphasis

    static let colorBackgroundStatusAttractiveEmphasisLight: ColorSemanticToken? = sysColorBrandWarningDefault
    static let colorBackgroundStatusAttractiveEmphasisInverse: ColorSemanticToken? = sysColorBrandWarningDefault
    static let colorBackgroundStatusAttractiveEmphasisDark: ColorSemanticToken? = sysColorBrandWarningHighest

    // MARK: Semantic token - Colors - Background - Status - Warning - Muted

    static let colorBackgroundStatusWarningMutedLight: ColorSemanticToken? = sysColorBrandWarningLowest
    static let colorBackgroundStatusWarningMutedInverse: ColorSemanticToken? = sysColorBrandWarningLowest
    static let colorBackgroundStatusWarningMutedDark: ColorSemanticToken? = sysColorBrandNeutralEmphasisHigh

    // MARK: Semantic token - Colors - Background - Status - Warning - Emphasis

    static let colorBackgroundStatusWarningEmphasisLight: ColorSemanticToken? = sysColorBrandWarningDefault
    static let colorBackgroundStatusWarningEmphasisInverse: ColorSemanticToken? = sysColorBrandWarningDefault
    static let colorBackgroundStatusWarningEmphasisDark: ColorSemanticToken? = sysColorBrandWarningHighest

    // MARK: Semantic token - Colors - Background - Status - Negative - Muted

    static let colorBackgroundStatusNegativeMutedLight: ColorSemanticToken? = sysColorBrandNegativeLowest
    static let colorBackgroundStatusNegativeMutedInverse: ColorSemanticToken? = sysColorBrandNegativeLowest
    static let colorBackgroundStatusNegativeMutedDark: ColorSemanticToken? = sysColorBrandNeutralEmphasisHigh

    // MARK: Semantic token - Colors - Background - Status - Negative - Emphasis

    static let colorBackgroundStatusNegativeEmphasisLight: ColorSemanticToken? = sysColorBrandNegativeDefault
    static let colorBackgroundStatusNegativeEmphasisInverse: ColorSemanticToken? = sysColorBrandNegativeDefault
    static let colorBackgroundStatusNegativeEmphasisDark: ColorSemanticToken? = sysColorBrandNegativeHighest

    // MARK: Semantic token - Colors - Background - Status - Positive - Muted

    static let colorBackgroundStatusPositiveMutedLight: ColorSemanticToken? = sysColorBrandPositiveLowest
    static let colorBackgroundStatusPositiveMutedInverse: ColorSemanticToken? = sysColorBrandPositiveLowest
    static let colorBackgroundStatusPositiveMutedDark: ColorSemanticToken? = sysColorBrandNeutralEmphasisHigh

    // MARK: Semantic token - Colors - Background - Status - Positive - Emphasis

    static let colorBackgroundStatusPositiveEmphasisLight: ColorSemanticToken? = sysColorBrandPositiveDefault
    static let colorBackgroundStatusPositiveEmphasisInverse: ColorSemanticToken? = sysColorBrandPositiveDefault
    static let colorBackgroundStatusPositiveEmphasisDark: ColorSemanticToken? = sysColorBrandPositiveHighest

    // MARK: Semantic token - Colors - Background - Status - Information - Muted

    static let colorBackgroundStatusInformationMutedLight: ColorSemanticToken? = sysColorBrandInformationLowest
    static let colorBackgroundStatusInformationMutedInverse: ColorSemanticToken? = sysColorBrandInformationLowest
    static let colorBackgroundStatusInformationMutedDark: ColorSemanticToken? = sysColorBrandNeutralEmphasisHigh

    // MARK: Semantic token - Colors - Background - Status - Information - Emphasis

    static let colorBackgroundStatusInformationEmphasisLight: ColorSemanticToken? = sysColorBrandInformationDefault
    static let colorBackgroundStatusInformationEmphasisInverse: ColorSemanticToken? = sysColorBrandInformationDefault
    static let colorBackgroundStatusInformationEmphasisDark: ColorSemanticToken? = sysColorBrandInformationHighest

    // MARK: - Content
    
    // MARK: Semantic token - Colors - Content - Default

    static let colorContentDefaultLight: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    static let colorContentDefaultInverse: ColorSemanticToken? = sysColorBrandNeutralMutedWhite
    static let colorContentDefaultDark: ColorSemanticToken? = sysColorBrandNeutralMutedLower

    // MARK: Semantic token - Colors - Content - Default - On background emphasis

    static let colorContentDefaultOnBackgroundEmphasisLight: ColorSemanticToken? = sysColorBrandNeutralMutedWhite
    static let colorContentDefaultOnBackgroundEmphasisInverse: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    static let colorContentDefaultOnBackgroundEmphasisDark: ColorSemanticToken? = sysColorBrandNeutralMutedLower

    // MARK: Semantic token - Colors - Content - Muted

    static let colorContentMutedLight: ColorSemanticToken? = sysColorBrandNeutralEmphasisLowest
    static let colorContentMutedInverse: ColorSemanticToken? = sysColorBrandNeutralEmphasisMedium
    static let colorContentMutedDark: ColorSemanticToken? = sysColorBrandNeutralEmphasisHigh

    // MARK: Semantic token - Colors - Content - Muted - On background emphasis

    static let colorContentMutedOnBackgroundEmphasisLight: ColorSemanticToken? = sysColorBrandNeutralMutedMedium
    static let colorContentMutedOnBackgroundEmphasisInverse: ColorSemanticToken? = sysColorBrandNeutralEmphasisLowest
    static let colorContentMutedOnBackgroundEmphasisDark: ColorSemanticToken? = sysColorBrandNeutralMutedHigh

    // MARK: Semantic token - Colors - Content - Brand - Primary

    static let colorContentBrandPrimaryLight: ColorSemanticToken? = sysColorBrandPrimaryDefault
    static let colorContentBrandPrimaryInverse: ColorSemanticToken? = sysColorBrandPrimaryLow
    static let colorContentBrandPrimaryDark: ColorSemanticToken? = sysColorBrandPrimaryLow

    // MARK: Semantic token - Colors - Content - Brand - Primary - On background emphasis

    static let colorContentBrandPrimaryOnBackgroundEmphasisLight: ColorSemanticToken? = sysColorBrandPrimaryLow
    static let colorContentBrandPrimaryOnBackgroundEmphasisInverse: ColorSemanticToken? = sysColorBrandPrimaryDefault
    static let colorContentBrandPrimaryOnBackgroundEmphasisDark: ColorSemanticToken? = sysColorBrandPrimaryLow

    // MARK: Semantic token - Colors - Content - Brand - Secondary

    static let colorContentBrandSecondaryLight: ColorSemanticToken? = nil
    static let colorContentBrandSecondaryInverse: ColorSemanticToken? = nil
    static let colorContentBrandSecondaryDark: ColorSemanticToken? = nil

    // MARK: Semantic token - Colors - Content - Brand - Tertiary

    static let colorContentBrandTertiaryLight: ColorSemanticToken? = nil
    static let colorContentBrandTertiaryInverse: ColorSemanticToken? = nil
    static let colorContentBrandTertiaryDark: ColorSemanticToken? = nil

    // MARK: Semantic token - Colors - Content - Status - Attractive

    static let colorContentStatusAttractiveLight: ColorSemanticToken? = nil
    static let colorContentStatusAttractiveInverse: ColorSemanticToken? = nil
    static let colorContentStatusAttractiveDark: ColorSemanticToken? = nil

    // MARK: Semantic token - Colors - Content - Status - Negative

    static let colorContentStatusNegativeLight: ColorSemanticToken? = sysColorBrandNegativeDefault
    static let colorContentStatusNegativeInverse: ColorSemanticToken? = sysColorBrandNegativeDefault
    static let colorContentStatusNegativeDark: ColorSemanticToken? = sysColorBrandNegativeDefault

    // MARK: Semantic token - Colors - Content - Status - Positive

    static let colorContentStatusPositiveLight: ColorSemanticToken? = sysColorBrandPositiveDefault
    static let colorContentStatusPositiveInverse: ColorSemanticToken? = sysColorBrandPositiveDefault
    static let colorContentStatusPositiveDark: ColorSemanticToken? = sysColorBrandPositiveDefault

    // MARK: Semantic token - Colors - Content - Status - Information

    static let colorContentStatusInformationLight: ColorSemanticToken? = sysColorBrandInformationDefault
    static let colorContentStatusInformationInverse: ColorSemanticToken? = sysColorBrandInformationDefault
    static let colorContentStatusInformationDark: ColorSemanticToken? = sysColorBrandInformationDefault

    // MARK: Semantic token - Colors - Border - Default

    static let colorBorderDefaultLight: ColorSemanticToken? = sysColorBrandNeutralMutedMedium
    static let colorBorderDefaultInverse: ColorSemanticToken? = sysColorBrandNeutralEmphasisLowest
    static let colorBorderDefaultDark: ColorSemanticToken? = sysColorBrandNeutralEmphasisLowest

    // MARK: Semantic token - Colors - Border - Default - On background emphasis

    static let colorBorderDefaultOnBackgroundEmphasisLight: ColorSemanticToken? = sysColorBrandNeutralEmphasisLowest
    static let colorBorderDefaultOnBackgroundEmphasisInverse: ColorSemanticToken? = sysColorBrandNeutralMutedMedium
    static let colorBorderDefaultOnBackgroundEmphasisDark: ColorSemanticToken? = sysColorBrandNeutralEmphasisLowest

    // MARK: Semantic token - Colors - Border - Emphasis

    static let colorBorderEmphasisLight: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    static let colorBorderEmphasisInverse: ColorSemanticToken? = sysColorBrandNeutralMutedWhite
    static let colorBorderEmphasisDark: ColorSemanticToken? = sysColorBrandNeutralMutedLower

    // MARK: Semantic token - Colors - Border - Emphasis - On background emphasis

    static let colorBorderEmphasisOnBackgroundEmphasisLight: ColorSemanticToken? = sysColorBrandNeutralMutedWhite
    static let colorBorderEmphasisOnBackgroundEmphasisInverse: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    static let colorBorderEmphasisOnBackgroundEmphasisDark: ColorSemanticToken? = sysColorBrandNeutralMutedLower

    // MARK: Semantic token - Colors - Border - Brand - Primary

    static let colorBorderBrandPrimaryLight: ColorSemanticToken? = sysColorBrandPrimaryDefault
    static let colorBorderBrandPrimaryInverse: ColorSemanticToken? = sysColorBrandPrimaryLow
    static let colorBorderBrandPrimaryDark: ColorSemanticToken? = sysColorBrandPrimaryLow

    // MARK: Semantic token - Colors - Border - Brand - Primary - On background emphasis

    static let colorBorderBrandPrimaryOnBackgroundEmphasisLight: ColorSemanticToken? = sysColorBrandPrimaryLow
    static let colorBorderBrandPrimaryOnBackgroundEmphasisInverse: ColorSemanticToken? = sysColorBrandPrimaryDefault
    static let colorBorderBrandPrimaryOnBackgroundEmphasisDark: ColorSemanticToken? = sysColorBrandPrimaryLow

    // MARK: Semantic token - Colors - Border - Brand - Secondary

    static let colorBorderBrandSecondaryLight: ColorSemanticToken? = nil
    static let colorBorderBrandSecondaryInverse: ColorSemanticToken? = nil
    static let colorBorderBrandSecondaryDark: ColorSemanticToken? = nil

    // MARK: Semantic token - Colors - Border - Brand - Tertiary

    static let colorBorderBrandTertiaryLight: ColorSemanticToken? = nil
    static let colorBorderBrandTertiaryInverse: ColorSemanticToken? = nil
    static let colorBorderBrandTertiaryDark: ColorSemanticToken? = nil

    // MARK: Semantic token - Colors - Border - Status - Attractive

    static let colorBorderBrandStatusAttractiveLight: ColorSemanticToken? = nil
    static let colorBorderBrandStatusAttractiveInverse: ColorSemanticToken? = nil
    static let colorBorderBrandStatusAttractiveDark: ColorSemanticToken? = nil

    // MARK: Semantic token - Colors - Border - Status - Warning

    static let colorBorderBrandStatusWarningLight: ColorSemanticToken? = nil
    static let colorBorderBrandStatusWarningInverse: ColorSemanticToken? = nil
    static let colorBorderBrandStatusWarningDark: ColorSemanticToken? = nil

    // MARK: Semantic token - Colors - Border - Status - Negative

    static let colorBorderBrandStatusNegativeLight: ColorSemanticToken? = nil
    static let colorBorderBrandStatusNegativeInverse: ColorSemanticToken? = nil
    static let colorBorderBrandStatusNegativeDark: ColorSemanticToken? = nil

    // MARK: Semantic token - Colors - Border - Status - Positive

    static let colorBorderBrandStatusPositiveLight: ColorSemanticToken? = nil
    static let colorBorderBrandStatusPositiveInverse: ColorSemanticToken? = nil
    static let colorBorderBrandStatusPositiveDark: ColorSemanticToken? = nil

    // MARK: Semantic token - Colors - Border - Status - Information

    static let colorBorderBrandStatusInformationLight: ColorSemanticToken? = nil
    static let colorBorderBrandStatusInformationInverse: ColorSemanticToken? = nil
    static let colorBorderBrandStatusInformationDark: ColorSemanticToken? = nil

    // MARK: Semantic token - Colors - Border - On background - Primary

    static let colorOnBackgroundPrimaryLight: ColorSemanticToken? = sysColorBrandNeutralMutedWhite
    static let colorOnBackgroundPrimaryInverse: ColorSemanticToken? = sysColorBrandNeutralMutedWhite
    static let colorOnBackgroundPrimaryDark: ColorSemanticToken? = sysColorBrandNeutralEmphasisHighest

    // MARK: Semantic token - Colors - Border - On background - Secondary

    static let colorOnBackgroundSecondaryLight: ColorSemanticToken? = nil
    static let colorOnBackgroundSecondaryInverse: ColorSemanticToken? = nil
    static let colorOnBackgroundSecondaryDark: ColorSemanticToken? = nil

    // MARK: Semantic token - Colors - Border - On background - Tertiary

    static let colorOnBackgroundTertiaryLight: ColorSemanticToken? = nil
    static let colorOnBackgroundTertiaryInverse: ColorSemanticToken? = nil
    static let colorOnBackgroundTertiaryDark: ColorSemanticToken? = nil

    // MARK: Semantic token - Colors - Border - On background - Status - Attrative - Muted

    static let colorOnBackgroundStatusAttractiveMutedLight: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    static let colorOnBackgroundStatusAttractiveMutedInverse: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    static let colorOnBackgroundStatusAttractiveMutedDark: ColorSemanticToken? = sysColorBrandNeutralMutedLower

    // MARK: Semantic token - Colors - Border - On background - Status - Attrative - Emphasis

    static let colorOnBackgroundStatusAttractiveEmphasisLight: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    static let colorOnBackgroundStatusAttractiveEmphasisInverse: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    static let colorOnBackgroundStatusAttractiveEmphasisDark: ColorSemanticToken? = sysColorBrandNeutralMutedLower

    // MARK: Semantic token - Colors - Border - On background - Status - Warning - Muted

    static let colorOnBackgroundStatusWarningMutedLight: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    static let colorOnBackgroundStatusWarningMutedInverse: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    static let colorOnBackgroundStatusWarningMutedDark: ColorSemanticToken? = sysColorBrandNeutralMutedLower

    // MARK: Semantic token - Colors - Border - On background - Status - Warning - Emphasis

    static let colorOnBackgroundStatusWarningEmphasisLight: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    static let colorOnBackgroundStatusWarningEmphasisInverse: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    static let colorOnBackgroundStatusWarningEmphasisDark: ColorSemanticToken? = sysColorBrandNeutralMutedLower

    // MARK: Semantic token - Colors - Border - On background - Status - Negative - Muted

    static let colorOnBackgroundStatusNegativeMutedLight: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    static let colorOnBackgroundStatusNegativeMutedInverse: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    static let colorOnBackgroundStatusNegativeMutedDark: ColorSemanticToken? = sysColorBrandNeutralMutedLower

    // MARK: Semantic token - Colors - Border - On background - Status - Negative - Emphasis

    static let colorOnBackgroundStatusNegativeEmphasisLight: ColorSemanticToken? = sysColorBrandNeutralMutedWhite
    static let colorOnBackgroundStatusNegativeEmphasisInverse: ColorSemanticToken? = sysColorBrandNeutralMutedWhite
    static let colorOnBackgroundStatusNegativeEmphasisDark: ColorSemanticToken? = sysColorBrandNeutralMutedLower

    // MARK: Semantic token - Colors - Border - On background - Status - Positive - Muted

    static let colorOnBackgroundStatusPositiveMutedLight: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    static let colorOnBackgroundStatusPositiveMutedInverse: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    static let colorOnBackgroundStatusPositiveMutedDark: ColorSemanticToken? = sysColorBrandNeutralMutedLower

    // MARK: Semantic token - Colors - Border - On background - Status - Positive - Emphasis

    static let colorOnBackgroundStatusPositiveEmphasisLight: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    static let colorOnBackgroundStatusPositiveEmphasisInverse: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    static let colorOnBackgroundStatusPositiveEmphasisDark: ColorSemanticToken? = sysColorBrandNeutralMutedLower

    // MARK: Semantic token - Colors - Border - On background - Status - Information - Muted

    static let colorOnBackgroundStatusInformationMutedLight: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    static let colorOnBackgroundStatusInformationMutedInverse: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    static let colorOnBackgroundStatusInformationMutedDark: ColorSemanticToken? = sysColorBrandNeutralMutedLower

    // MARK: Semantic token - Colors - Border - On background - Status - Information - Emphasis

    static let colorOnBackgroundStatusInformationEmphasisLight: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    static let colorOnBackgroundStatusInformationEmphasisInverse: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    static let colorOnBackgroundStatusInformationEmphasisDark: ColorSemanticToken? = sysColorBrandNeutralMutedLower





    
    // TODO: Border, on background, decorative, charts
}
