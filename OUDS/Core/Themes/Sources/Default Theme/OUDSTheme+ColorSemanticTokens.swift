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
import OUDSTokensPrimitive
import OUDSTokensSemantic

extension OUDSTheme: ColorSemanticTokens {
    
    // MARK: Semantic token - Colors - Alias - Primary

    public var sysColorBrandPrimaryLowest: ColorAliasSemanticToken? { get { nil } set { } }
    public var sysColorBrandPrimaryLower: ColorAliasSemanticToken? { get { nil } set { } }
    public var sysColorBrandPrimaryLow: ColorAliasSemanticToken? { get { ColorOrangePrimitiveTokens.colorBrandOrange500 } set { } }
    public var sysColorBrandPrimaryDefault: ColorAliasSemanticToken? { get { ColorOrangePrimitiveTokens.colorBrandOrange550 } set { } }
    public var sysColorBrandPrimaryHigh: ColorAliasSemanticToken? { get { nil } set { } }
    public var sysColorBrandPrimaryHigher: ColorAliasSemanticToken? { get { nil } set { } }
    public var sysColorBrandPrimaryHighest: ColorAliasSemanticToken? { get { nil } set { } }

    // MARK: Semantic token - Colors - Alias - Secondary

    public var sysColorBrandSecondaryLowest: ColorAliasSemanticToken? { get { nil } set { } }
    public var sysColorBrandSecondaryLower: ColorAliasSemanticToken? { get { nil } set { } }
    public var sysColorBrandSecondaryLow: ColorAliasSemanticToken? { get { nil } set { } }
    public var sysColorBrandSecondaryDefault: ColorAliasSemanticToken? { get { nil } set { } }
    public var sysColorBrandSecondaryHigh: ColorAliasSemanticToken? { get { nil } set { } }
    public var sysColorBrandSecondaryHigher: ColorAliasSemanticToken? { get { nil } set { } }
    public var sysColorBrandSecondaryHighest: ColorAliasSemanticToken? { get { nil } set { } }

    // MARK: Semantic token - Colors - Alias - Tertiary

    public var sysColorBrandTertiaryLowest: ColorAliasSemanticToken? { get { nil } set { } }
    public var sysColorBrandTertiaryLower: ColorAliasSemanticToken? { get { nil } set { } }
    public var sysColorBrandTertiaryLow: ColorAliasSemanticToken? { get { nil } set { } }
    public var sysColorBrandTertiaryDefault: ColorAliasSemanticToken? { get { nil } set { } }
    public var sysColorBrandTertiaryHigh: ColorAliasSemanticToken? { get { nil } set { } }
    public var sysColorBrandTertiaryHigher: ColorAliasSemanticToken? { get { nil } set { } }
    public var sysColorBrandTertiaryHighest: ColorAliasSemanticToken? { get { nil } set { } }

    // MARK: Semantic token - Colors - Alias - Neutral - Muted

    public var sysColorBrandNeutralMutedWhite: ColorAliasSemanticToken? { get { ColorGlobalPrimitiveTokens.colorFunctionalWhite } set { } }
    public var sysColorBrandNeutralMutedLowest: ColorAliasSemanticToken? { get { ColorGlobalPrimitiveTokens.colorFunctionalLightGray80 } set { } }
    public var sysColorBrandNeutralMutedLower: ColorAliasSemanticToken? { get { ColorGlobalPrimitiveTokens.colorFunctionalLightGray160 } set { } }
    public var sysColorBrandNeutralMutedLow: ColorAliasSemanticToken? { get { nil } set { } }
    public var sysColorBrandNeutralMutedMedium: ColorAliasSemanticToken? { get { ColorGlobalPrimitiveTokens.colorFunctionalLightGray400 } set { } }
    public var sysColorBrandNeutralMutedHigh: ColorAliasSemanticToken? { get { ColorGlobalPrimitiveTokens.colorFunctionalLightGray560 } set { } }
    public var sysColorBrandNeutralMutedHigher: ColorAliasSemanticToken? { get { nil } set { } }
    public var sysColorBrandNeutralMutedHighest: ColorAliasSemanticToken? { get { nil } set { } }

    // MARK: Semantic token - Colors - Alias - Neutral - Emphasis

    public var sysColorBrandNeutralEmphasisLowest: ColorAliasSemanticToken? { get { ColorGlobalPrimitiveTokens.colorFunctionalDarkGray400 } set { } }
    public var sysColorBrandNeutralEmphasisLower: ColorAliasSemanticToken? { get { ColorGlobalPrimitiveTokens.colorFunctionalDarkGray480 } set { } }
    public var sysColorBrandNeutralEmphasisLow: ColorAliasSemanticToken? { get { ColorGlobalPrimitiveTokens.colorFunctionalDarkGray560 } set { } }
    public var sysColorBrandNeutralEmphasisMedium: ColorAliasSemanticToken? { get { ColorGlobalPrimitiveTokens.colorFunctionalDarkGray640 } set { } }
    public var sysColorBrandNeutralEmphasisHigh: ColorAliasSemanticToken? { get { ColorGlobalPrimitiveTokens.colorFunctionalDarkGray720 } set { } }
    public var sysColorBrandNeutralEmphasisHigher: ColorAliasSemanticToken? { get { ColorGlobalPrimitiveTokens.colorFunctionalDarkGray800 } set { } }
    public var sysColorBrandNeutralEmphasisHighest: ColorAliasSemanticToken? { get { ColorGlobalPrimitiveTokens.colorFunctionalDarkGray880 } set { } }
    public var sysColorBrandNeutralEmphasisBlack: ColorAliasSemanticToken? { get { ColorGlobalPrimitiveTokens.colorFunctionalBlack } set { } }

    // MARK: Semantic token - Colors - Alias - Positive

    public var sysColorBrandPositiveLowest: ColorAliasSemanticToken? { get { ColorGlobalPrimitiveTokens.colorFunctionalMalachite100 } set { } }
    public var sysColorBrandPositiveLower: ColorAliasSemanticToken? { get { nil } set { } }
    public var sysColorBrandPositiveLow: ColorAliasSemanticToken? { get { nil } set { } }
    public var sysColorBrandPositiveDefault: ColorAliasSemanticToken? { get { ColorGlobalPrimitiveTokens.colorFunctionalMalachite500 } set { } }
    public var sysColorBrandPositiveHigh: ColorAliasSemanticToken? { get { ColorGlobalPrimitiveTokens.colorFunctionalMalachite600 } set { } }
    public var sysColorBrandPositiveHigher: ColorAliasSemanticToken? { get { nil } set { } }
    public var sysColorBrandPositiveHighest: ColorAliasSemanticToken? { get { ColorGlobalPrimitiveTokens.colorFunctionalMalachite800 } set { } }

    // MARK: Semantic token - Colors - Alias - Information

    public var sysColorBrandInformationLowest: ColorAliasSemanticToken? { get { ColorGlobalPrimitiveTokens.colorFunctionalDodgerBlue100 } set { } }
    public var sysColorBrandInformationLower: ColorAliasSemanticToken? { get { nil } set { } }
    public var sysColorBrandInformationLow: ColorAliasSemanticToken? { get { nil } set { } }
    public var sysColorBrandInformationDefault: ColorAliasSemanticToken? { get { ColorGlobalPrimitiveTokens.colorFunctionalDodgerBlue500 } set { } }
    public var sysColorBrandInformationHigh: ColorAliasSemanticToken? { get { ColorGlobalPrimitiveTokens.colorFunctionalDodgerBlue600 } set { } }
    public var sysColorBrandInformationHigher: ColorAliasSemanticToken? { get { nil } set { } }
    public var sysColorBrandInformationHighest: ColorAliasSemanticToken? { get { ColorGlobalPrimitiveTokens.colorFunctionalDodgerBlue800 } set { } }

    // MARK: Semantic token - Colors - Alias - Warning

    public var sysColorBrandWarningLowest: ColorAliasSemanticToken? { get { ColorGlobalPrimitiveTokens.colorFunctionalSun100 } set { } }
    public var sysColorBrandWarningLower: ColorAliasSemanticToken? { get { nil } set { } }
    public var sysColorBrandWarningLow: ColorAliasSemanticToken? { get { nil } set { } }
    public var sysColorBrandWarningDefault: ColorAliasSemanticToken? { get { ColorGlobalPrimitiveTokens.colorFunctionalSun500 } set { } }
    public var sysColorBrandWarningHigh: ColorAliasSemanticToken? { get { ColorGlobalPrimitiveTokens.colorFunctionalSun600 } set { } }
    public var sysColorBrandWarningHigher: ColorAliasSemanticToken? { get { nil } set { } }
    public var sysColorBrandWarningHighest: ColorAliasSemanticToken? { get { ColorGlobalPrimitiveTokens.colorFunctionalSun800 } set { } }

    // MARK: Semantic token - Colors - Alias - Negative

    public var sysColorBrandNegativeLowest: ColorAliasSemanticToken? { get { ColorGlobalPrimitiveTokens.colorFunctionalScarlet100 } set { } }
    public var sysColorBrandNegativeLower: ColorAliasSemanticToken? { get { nil } set { } }
    public var sysColorBrandNegativeLow: ColorAliasSemanticToken? { get { nil } set { } }
    public var sysColorBrandNegativeDefault: ColorAliasSemanticToken? { get { ColorGlobalPrimitiveTokens.colorFunctionalScarlet500 } set { } }
    public var sysColorBrandNegativeHigh: ColorAliasSemanticToken? { get { ColorGlobalPrimitiveTokens.colorFunctionalScarlet600 } set { } }
    public var sysColorBrandNegativeHigher: ColorAliasSemanticToken? { get { nil } set { } }
    public var sysColorBrandNegativeHighest: ColorAliasSemanticToken? { get { ColorGlobalPrimitiveTokens.colorFunctionalScarlet800 } set { } }

    // MARK: Semantic token - Colors - Alias - Attractive

    public var sysColorBrandAttractiveLowest: ColorAliasSemanticToken? { get { ColorOrangePrimitiveTokens.colorBrandWarmGray100 } set { } }
    public var sysColorBrandAttractiveLower: ColorAliasSemanticToken? { get { nil } set { } }
    public var sysColorBrandAttractiveLow: ColorAliasSemanticToken? { get { nil } set { } }
    public var sysColorBrandAttractiveMedium: ColorAliasSemanticToken? { get { ColorGlobalPrimitiveTokens.colorFunctionalSun500 } set { } }
    public var sysColorBrandAttractiveHigh: ColorAliasSemanticToken? { get { ColorGlobalPrimitiveTokens.colorFunctionalSun600 } set { } }
    public var sysColorBrandAttractiveHigher: ColorAliasSemanticToken? { get { nil } set { } }
    public var sysColorBrandAttractiveHighest: ColorAliasSemanticToken? { get { ColorOrangePrimitiveTokens.colorBrandWarmGray900 } set { } }

    // MARK: Semantic token - Colors - Background - Default - Primary

    public var colorBackgroundDefaultPrimaryLight: ColorSemanticToken? { get { sysColorBrandNeutralMutedWhite } set { } }
    public var colorBackgroundDefaultPrimaryInverse: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    public var colorBackgroundDefaultPrimaryDark: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisHighest } set { } }

    // MARK: Semantic token - Colors - Background - Default - Secondary

    public var colorBackgroundDefaultSecondaryLight: ColorSemanticToken? { get { sysColorBrandNeutralMutedLowest } set { } }
    public var colorBackgroundDefaultSecondaryInverse: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisMedium } set { } }
    public var colorBackgroundDefaultSecondaryDark: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisHigher } set { } }

    // MARK: Semantic token - Colors - Background - Default - Tertiary

    public var colorBackgroundDefaultTertiaryLight: ColorSemanticToken? { get { sysColorBrandAttractiveLowest } set { } }
    public var colorBackgroundDefaultTertiaryInverse: ColorSemanticToken? { get { sysColorBrandAttractiveHighest } set { } }
    public var colorBackgroundDefaultTertiaryDark: ColorSemanticToken? { get { sysColorBrandAttractiveHighest } set { } }

    // MARK: Semantic token - Colors - Background - Emphasis - Primary

    public var colorBackgroundEmphasisPrimaryLight: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    public var colorBackgroundEmphasisPrimaryInverse: ColorSemanticToken? { get { sysColorBrandNeutralMutedWhite } set { } }
    public var colorBackgroundEmphasisPrimaryDark: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisMedium } set { } }

    // MARK: Semantic token - Colors - Background - Emphasis - Secondary

    public var colorBackgroundEmphasisSecondaryLight: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisMedium } set { } }
    public var colorBackgroundEmphasisSecondaryInverse: ColorSemanticToken? { get { sysColorBrandNeutralMutedLowest } set { } }
    public var colorBackgroundEmphasisSecondaryDark: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisHigh } set { } }

    // MARK: Semantic token - Colors - Background - Brand - Primary

    public var colorBackgroundBrandPrimaryLight: ColorSemanticToken? { get { sysColorBrandPrimaryDefault } set { } }
    public var colorBackgroundBrandPrimaryInverse: ColorSemanticToken? { get { sysColorBrandPrimaryDefault } set { } }
    public var colorBackgroundBrandPrimaryDark: ColorSemanticToken? { get { sysColorBrandPrimaryLow } set { } }

    // MARK: Semantic token - Colors - Background - Brand - Secondary

    public var colorBackgroundBrandSecondary: ColorSemanticToken? { get { nil } set { } }

    // MARK: Semantic token - Colors - Background - Brand - Tertiary

    public var colorBackgroundBrandTertiary: ColorSemanticToken? { get { nil } set { } }

    // MARK: Semantic token - Colors - Background - Status - Attractive - Muted

    public var colorBackgroundStatusAttractiveMutedLight: ColorSemanticToken? { get { sysColorBrandAttractiveLowest } set { } }
    public var colorBackgroundStatusAttractiveMutedInverse: ColorSemanticToken? { get { sysColorBrandAttractiveLowest } set { } }
    public var colorBackgroundStatusAttractiveMutedDark: ColorSemanticToken? { get { sysColorBrandAttractiveHighest } set { } }

    // MARK: Semantic token - Colors - Background - Status - Attractive - Emphasis

    public var colorBackgroundStatusAttractiveEmphasisLight: ColorSemanticToken? { get { sysColorBrandWarningDefault } set { } }
    public var colorBackgroundStatusAttractiveEmphasisInverse: ColorSemanticToken? { get { sysColorBrandWarningDefault } set { } }
    public var colorBackgroundStatusAttractiveEmphasisDark: ColorSemanticToken? { get { sysColorBrandWarningHighest } set { } }

    // MARK: Semantic token - Colors - Background - Status - Warning - Muted

    public var colorBackgroundStatusWarningMutedLight: ColorSemanticToken? { get { sysColorBrandWarningLowest } set { } }
    public var colorBackgroundStatusWarningMutedInverse: ColorSemanticToken? { get { sysColorBrandWarningLowest } set { } }
    public var colorBackgroundStatusWarningMutedDark: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisHigh } set { } }

    // MARK: Semantic token - Colors - Background - Status - Warning - Emphasis

    public var colorBackgroundStatusWarningEmphasisLight: ColorSemanticToken? { get { sysColorBrandWarningDefault } set { } }
    public var colorBackgroundStatusWarningEmphasisInverse: ColorSemanticToken? { get { sysColorBrandWarningDefault } set { } }
    public var colorBackgroundStatusWarningEmphasisDark: ColorSemanticToken? { get { sysColorBrandWarningHighest } set { } }

    // MARK: Semantic token - Colors - Background - Status - Negative - Muted

    public var colorBackgroundStatusNegativeMutedLight: ColorSemanticToken? { get { sysColorBrandNegativeLowest } set { } }
    public var colorBackgroundStatusNegativeMutedInverse: ColorSemanticToken? { get { sysColorBrandNegativeLowest } set { } }
    public var colorBackgroundStatusNegativeMutedDark: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisHigh } set { } }

    // MARK: Semantic token - Colors - Background - Status - Negative - Emphasis

    public var colorBackgroundStatusNegativeEmphasisLight: ColorSemanticToken? { get { sysColorBrandNegativeDefault } set { } }
    public var colorBackgroundStatusNegativeEmphasisInverse: ColorSemanticToken? { get { sysColorBrandNegativeDefault } set { } }
    public var colorBackgroundStatusNegativeEmphasisDark: ColorSemanticToken? { get { sysColorBrandNegativeHighest } set { } }

    // MARK: Semantic token - Colors - Background - Status - Positive - Muted

    public var colorBackgroundStatusPositiveMutedLight: ColorSemanticToken? { get { sysColorBrandPositiveLowest } set { } }
    public var colorBackgroundStatusPositiveMutedInverse: ColorSemanticToken? { get { sysColorBrandPositiveLowest } set { } }
    public var colorBackgroundStatusPositiveMutedDark: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisHigh } set { } }

    // MARK: Semantic token - Colors - Background - Status - Positive - Emphasis

    public var colorBackgroundStatusPositiveEmphasisLight: ColorSemanticToken? { get { sysColorBrandPositiveDefault } set { } }
    public var colorBackgroundStatusPositiveEmphasisInverse: ColorSemanticToken? { get { sysColorBrandPositiveDefault } set { } }
    public var colorBackgroundStatusPositiveEmphasisDark: ColorSemanticToken? { get { sysColorBrandPositiveHighest } set { } }

    // MARK: Semantic token - Colors - Background - Status - Information - Muted

    public var colorBackgroundStatusInformationMutedLight: ColorSemanticToken? { get { sysColorBrandInformationLowest } set { } }
    public var colorBackgroundStatusInformationMutedInverse: ColorSemanticToken? { get { sysColorBrandInformationLowest } set { } }
    public var colorBackgroundStatusInformationMutedDark: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisHigh } set { } }

    // MARK: Semantic token - Colors - Background - Status - Information - Emphasis

    public var colorBackgroundStatusInformationEmphasisLight: ColorSemanticToken? { get { sysColorBrandInformationDefault } set { } }
    public var colorBackgroundStatusInformationEmphasisInverse: ColorSemanticToken? { get { sysColorBrandInformationDefault } set { } }
    public var colorBackgroundStatusInformationEmphasisDark: ColorSemanticToken? { get { sysColorBrandInformationHighest } set { } }

    // MARK: Semantic token - Colors - Content - Default

    public var colorContentDefaultLight: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    public var colorContentDefaultInverse: ColorSemanticToken? { get { sysColorBrandNeutralMutedWhite } set { } }
    public var colorContentDefaultDark: ColorSemanticToken? { get { sysColorBrandNeutralMutedLower } set { } }

    // MARK: Semantic token - Colors - Content - Default - On background emphasis

    public var colorContentDefaultOnBackgroundEmphasisLight: ColorSemanticToken? { get { sysColorBrandNeutralMutedWhite } set { } }
    public var colorContentDefaultOnBackgroundEmphasisInverse: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    public var colorContentDefaultOnBackgroundEmphasisDark: ColorSemanticToken? { get { sysColorBrandNeutralMutedLower } set { } }

    // MARK: Semantic token - Colors - Content - Muted

    public var colorContentMutedLight: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisLowest } set { } }
    public var colorContentMutedInverse: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisMedium } set { } }
    public var colorContentMutedDark: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisHigh } set { } }

    // MARK: Semantic token - Colors - Content - Muted - On background emphasis

    public var colorContentMutedOnBackgroundEmphasisLight: ColorSemanticToken? { get { sysColorBrandNeutralMutedMedium } set { } }
    public var colorContentMutedOnBackgroundEmphasisInverse: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisLowest } set { } }
    public var colorContentMutedOnBackgroundEmphasisDark: ColorSemanticToken? { get { sysColorBrandNeutralMutedHigh } set { } }

    // MARK: Semantic token - Colors - Content - Brand - Primary

    public var colorContentBrandPrimaryLight: ColorSemanticToken? { get { sysColorBrandPrimaryDefault } set { } }
    public var colorContentBrandPrimaryInverse: ColorSemanticToken? { get { sysColorBrandPrimaryLow } set { } }
    public var colorContentBrandPrimaryDark: ColorSemanticToken? { get { sysColorBrandPrimaryLow } set { } }

    // MARK: Semantic token - Colors - Content - Brand - Primary - On background emphasis

    public var colorContentBrandPrimaryOnBackgroundEmphasisLight: ColorSemanticToken? { get { sysColorBrandPrimaryLow } set { } }
    public var colorContentBrandPrimaryOnBackgroundEmphasisInverse: ColorSemanticToken? { get { sysColorBrandPrimaryDefault } set { } }
    public var colorContentBrandPrimaryOnBackgroundEmphasisDark: ColorSemanticToken? { get { sysColorBrandPrimaryLow } set { } }

    // MARK: Semantic token - Colors - Content - Brand - Secondary

    public var colorContentBrandSecondaryLight: ColorSemanticToken? { get { nil } set { } }
    public var colorContentBrandSecondaryInverse: ColorSemanticToken? { get { nil } set { } }
    public var colorContentBrandSecondaryDark: ColorSemanticToken? { get { nil } set { } }

    // MARK: Semantic token - Colors - Content - Brand - Tertiary

    public var colorContentBrandTertiaryLight: ColorSemanticToken? { get { nil } set { } }
    public var colorContentBrandTertiaryInverse: ColorSemanticToken? { get { nil } set { } }
    public var colorContentBrandTertiaryDark: ColorSemanticToken? { get { nil } set { } }

    // MARK: Semantic token - Colors - Content - Status - Attractive

    public var colorContentStatusAttractiveLight: ColorSemanticToken? { get { nil } set { } }
    public var colorContentStatusAttractiveInverse: ColorSemanticToken? { get { nil } set { } }
    public var colorContentStatusAttractiveDark: ColorSemanticToken? { get { nil } set { } }

    // MARK: Semantic token - Colors - Content - Status - Negative

    public var colorContentStatusNegativeLight: ColorSemanticToken? { get { sysColorBrandNegativeDefault } set { } }
    public var colorContentStatusNegativeInverse: ColorSemanticToken? { get { sysColorBrandNegativeDefault } set { } }
    public var colorContentStatusNegativeDark: ColorSemanticToken? { get { sysColorBrandNegativeDefault } set { } }

    // MARK: Semantic token - Colors - Content - Status - Positive

    public var colorContentStatusPositiveLight: ColorSemanticToken? { get { sysColorBrandPositiveDefault } set { } }
    public var colorContentStatusPositiveInverse: ColorSemanticToken? { get { sysColorBrandPositiveDefault } set { } }
    public var colorContentStatusPositiveDark: ColorSemanticToken? { get { sysColorBrandPositiveDefault } set { } }

    // MARK: Semantic token - Colors - Content - Status - Information

    public var colorContentStatusInformationLight: ColorSemanticToken? { get { sysColorBrandInformationDefault } set { } }
    public var colorContentStatusInformationInverse: ColorSemanticToken? { get { sysColorBrandInformationDefault } set { } }
    public var colorContentStatusInformationDark: ColorSemanticToken? { get { sysColorBrandInformationDefault } set { } }

    // MARK: Semantic token - Colors - Border - Default

    public var colorBorderDefaultLight: ColorSemanticToken? { get { sysColorBrandNeutralMutedMedium } set { } }
    public var colorBorderDefaultInverse: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisLowest } set { } }
    public var colorBorderDefaultDark: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisLowest } set { } }

    // MARK: Semantic token - Colors - Border - Default - On background emphasis

    public var colorBorderDefaultOnBackgroundEmphasisLight: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisLowest } set { } }
    public var colorBorderDefaultOnBackgroundEmphasisInverse: ColorSemanticToken? { get { sysColorBrandNeutralMutedMedium } set { } }
    public var colorBorderDefaultOnBackgroundEmphasisDark: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisLowest } set { } }

    // MARK: Semantic token - Colors - Border - Emphasis

    public var colorBorderEmphasisLight: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    public var colorBorderEmphasisInverse: ColorSemanticToken? { get { sysColorBrandNeutralMutedWhite } set { } }
    public var colorBorderEmphasisDark: ColorSemanticToken? { get { sysColorBrandNeutralMutedLower } set { } }

    // MARK: Semantic token - Colors - Border - Emphasis - On background emphasis

    public var colorBorderEmphasisOnBackgroundEmphasisLight: ColorSemanticToken? { get { sysColorBrandNeutralMutedWhite } set { } }
    public var colorBorderEmphasisOnBackgroundEmphasisInverse: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    public var colorBorderEmphasisOnBackgroundEmphasisDark: ColorSemanticToken? { get { sysColorBrandNeutralMutedLower } set { } }

    // MARK: Semantic token - Colors - Border - Brand - Primary

    public var colorBorderBrandPrimaryLight: ColorSemanticToken? { get { sysColorBrandPrimaryDefault } set { } }
    public var colorBorderBrandPrimaryInverse: ColorSemanticToken? { get { sysColorBrandPrimaryLow } set { } }
    public var colorBorderBrandPrimaryDark: ColorSemanticToken? { get { sysColorBrandPrimaryLow } set { } }

    // MARK: Semantic token - Colors - Border - Brand - Primary - On background emphasis

    public var colorBorderBrandPrimaryOnBackgroundEmphasisLight: ColorSemanticToken? { get { sysColorBrandPrimaryLow } set { } }
    public var colorBorderBrandPrimaryOnBackgroundEmphasisInverse: ColorSemanticToken? { get { sysColorBrandPrimaryDefault } set { } }
    public var colorBorderBrandPrimaryOnBackgroundEmphasisDark: ColorSemanticToken? { get { sysColorBrandPrimaryLow } set { } }

    // MARK: Semantic token - Colors - Border - Brand - Secondary

    public var colorBorderBrandSecondaryLight: ColorSemanticToken? { get { nil } set { } }
    public var colorBorderBrandSecondaryInverse: ColorSemanticToken? { get { nil } set { } }
    public var colorBorderBrandSecondaryDark: ColorSemanticToken? { get { nil } set { } }

    // MARK: Semantic token - Colors - Border - Brand - Tertiary

    public var colorBorderBrandTertiaryLight: ColorSemanticToken? { get { nil } set { } }
    public var colorBorderBrandTertiaryInverse: ColorSemanticToken? { get { nil } set { } }
    public var colorBorderBrandTertiaryDark: ColorSemanticToken? { get { nil } set { } }

    // MARK: Semantic token - Colors - Border - Status - Attractive

    public var colorBorderBrandStatusAttractiveLight: ColorSemanticToken? { get { nil } set { } }
    public var colorBorderBrandStatusAttractiveInverse: ColorSemanticToken? { get { nil } set { } }
    public var colorBorderBrandStatusAttractiveDark: ColorSemanticToken? { get { nil } set { } }

    // MARK: Semantic token - Colors - Border - Status - Warning

    public var colorBorderBrandStatusWarningLight: ColorSemanticToken? { get { nil } set { } }
    public var colorBorderBrandStatusWarningInverse: ColorSemanticToken? { get { nil } set { } }
    public var colorBorderBrandStatusWarningDark: ColorSemanticToken? { get { nil } set { } }

    // MARK: Semantic token - Colors - Border - Status - Negative

    public var colorBorderBrandStatusNegativeLight: ColorSemanticToken? { get { nil } set { } }
    public var colorBorderBrandStatusNegativeInverse: ColorSemanticToken? { get { nil } set { } }
    public var colorBorderBrandStatusNegativeDark: ColorSemanticToken? { get { nil } set { } }

    // MARK: Semantic token - Colors - Border - Status - Positive

    public var colorBorderBrandStatusPositiveLight: ColorSemanticToken? { get { nil } set { } }
    public var colorBorderBrandStatusPositiveInverse: ColorSemanticToken? { get { nil } set { } }
    public var colorBorderBrandStatusPositiveDark: ColorSemanticToken? { get { nil } set { } }

    // MARK: Semantic token - Colors - Border - Status - Information

    public var colorBorderBrandStatusInformationLight: ColorSemanticToken? { get { nil } set { } }
    public var colorBorderBrandStatusInformationInverse: ColorSemanticToken? { get { nil } set { } }
    public var colorBorderBrandStatusInformationDark: ColorSemanticToken? { get { nil } set { } }

    // MARK: Semantic token - Colors - On background - Primary

    public var colorOnBackgroundPrimaryLight: ColorSemanticToken? { get { sysColorBrandNeutralMutedWhite } set { } }
    public var colorOnBackgroundPrimaryInverse: ColorSemanticToken? { get { sysColorBrandNeutralMutedWhite } set { } }
    public var colorOnBackgroundPrimaryDark: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisHighest } set { } }

    // MARK: Semantic token - Colors - On background - Secondary

    public var colorOnBackgroundSecondaryLight: ColorSemanticToken? { get { nil } set { } }
    public var colorOnBackgroundSecondaryInverse: ColorSemanticToken? { get { nil } set { } }
    public var colorOnBackgroundSecondaryDark: ColorSemanticToken? { get { nil } set { } }

    // MARK: Semantic token - Colors - On background - Tertiary

    public var colorOnBackgroundTertiaryLight: ColorSemanticToken? { get { nil } set { } }
    public var colorOnBackgroundTertiaryInverse: ColorSemanticToken? { get { nil } set { } }
    public var colorOnBackgroundTertiaryDark: ColorSemanticToken? { get { nil } set { } }

    // MARK: Semantic token - Colors - On background - Status - Attrative - Muted

    public var colorOnBackgroundStatusAttractiveMutedLight: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    public var colorOnBackgroundStatusAttractiveMutedInverse: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    public var colorOnBackgroundStatusAttractiveMutedDark: ColorSemanticToken? { get { sysColorBrandNeutralMutedLower } set { } }

    // MARK: Semantic token - Colors - On background - Status - Attrative - Emphasis

    public var colorOnBackgroundStatusAttractiveEmphasisLight: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    public var colorOnBackgroundStatusAttractiveEmphasisInverse: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    public var colorOnBackgroundStatusAttractiveEmphasisDark: ColorSemanticToken? { get { sysColorBrandNeutralMutedLower } set { } }

    // MARK: Semantic token - Colors - On background - Status - Warning - Muted

    public var colorOnBackgroundStatusWarningMutedLight: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    public var colorOnBackgroundStatusWarningMutedInverse: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    public var colorOnBackgroundStatusWarningMutedDark: ColorSemanticToken? { get { sysColorBrandNeutralMutedLower } set { } }

    // MARK: Semantic token - Colors - On background - Status - Warning - Emphasis

    public var colorOnBackgroundStatusWarningEmphasisLight: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    public var colorOnBackgroundStatusWarningEmphasisInverse: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    public var colorOnBackgroundStatusWarningEmphasisDark: ColorSemanticToken? { get { sysColorBrandNeutralMutedLower } set { } }

    // MARK: Semantic token - Colors - On background - Status - Negative - Muted

    public var colorOnBackgroundStatusNegativeMutedLight: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    public var colorOnBackgroundStatusNegativeMutedInverse: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    public var colorOnBackgroundStatusNegativeMutedDark: ColorSemanticToken? { get { sysColorBrandNeutralMutedLower } set { } }

    // MARK: Semantic token - Colors - On background - Status - Negative - Emphasis

    public var colorOnBackgroundStatusNegativeEmphasisLight: ColorSemanticToken? { get { sysColorBrandNeutralMutedWhite } set { } }
    public var colorOnBackgroundStatusNegativeEmphasisInverse: ColorSemanticToken? { get { sysColorBrandNeutralMutedWhite } set { } }
    public var colorOnBackgroundStatusNegativeEmphasisDark: ColorSemanticToken? { get { sysColorBrandNeutralMutedLower } set { } }

    // MARK: Semantic token - Colors - On background - Status - Positive - Muted

    public var colorOnBackgroundStatusPositiveMutedLight: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    public var colorOnBackgroundStatusPositiveMutedInverse: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    public var colorOnBackgroundStatusPositiveMutedDark: ColorSemanticToken? { get { sysColorBrandNeutralMutedLower } set { } }

    // MARK: Semantic token - Colors - On background - Status - Positive - Emphasis

    public var colorOnBackgroundStatusPositiveEmphasisLight: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    public var colorOnBackgroundStatusPositiveEmphasisInverse: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    public var colorOnBackgroundStatusPositiveEmphasisDark: ColorSemanticToken? { get { sysColorBrandNeutralMutedLower } set { } }

    // MARK: Semantic token - Colors - On background - Status - Information - Muted

    public var colorOnBackgroundStatusInformationMutedLight: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    public var colorOnBackgroundStatusInformationMutedInverse: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    public var colorOnBackgroundStatusInformationMutedDark: ColorSemanticToken? { get { sysColorBrandNeutralMutedLower } set { } }

    // MARK: Semantic token - Colors - On background - Status - Information - Emphasis

    public var colorOnBackgroundStatusInformationEmphasisLight: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    public var colorOnBackgroundStatusInformationEmphasisInverse: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    public var colorOnBackgroundStatusInformationEmphasisDark: ColorSemanticToken? { get { sysColorBrandNeutralMutedLower } set { } }

}
