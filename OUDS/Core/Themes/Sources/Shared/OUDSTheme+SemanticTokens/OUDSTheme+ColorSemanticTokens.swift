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
import OUDSFoundations
import OUDSTokensPrimitive
import OUDSTokensSemantic

extension OUDSTheme: ColorSemanticTokens {
    
    // MARK: Semantic token - Colors - Alias - Primary

    @objc open var sysColorBrandPrimaryLowest: ColorAliasSemanticToken?{ get { nil } set { } }
    @objc open var sysColorBrandPrimaryLower: ColorAliasSemanticToken? { get { nil } set { } }
    @objc open var sysColorBrandPrimaryLow: ColorAliasSemanticToken? { get { nil } set { } }
    @objc open var sysColorBrandPrimaryDefault: ColorAliasSemanticToken? { get { nil } set { } }
    @objc open var sysColorBrandPrimaryHigh: ColorAliasSemanticToken? { get { nil } set { } }
    @objc open var sysColorBrandPrimaryHigher: ColorAliasSemanticToken? { get { nil } set { } }
    @objc open var sysColorBrandPrimaryHighest: ColorAliasSemanticToken? { get { nil } set { } }

    // MARK: Semantic token - Colors - Alias - Secondary

    @objc open var sysColorBrandSecondaryLowest: ColorAliasSemanticToken? { get { nil } set { } }
    @objc open var sysColorBrandSecondaryLower: ColorAliasSemanticToken? { get { nil } set { } }
    @objc open var sysColorBrandSecondaryLow: ColorAliasSemanticToken? { get { nil } set { } }
    @objc open var sysColorBrandSecondaryDefault: ColorAliasSemanticToken? { get { nil } set { } }
    @objc open var sysColorBrandSecondaryHigh: ColorAliasSemanticToken? { get { nil } set { } }
    @objc open var sysColorBrandSecondaryHigher: ColorAliasSemanticToken? { get { nil } set { } }
    @objc open var sysColorBrandSecondaryHighest: ColorAliasSemanticToken? { get { nil } set { } }

    // MARK: Semantic token - Colors - Alias - Tertiary

    @objc open var sysColorBrandTertiaryLowest: ColorAliasSemanticToken? { get { nil } set { } }
    @objc open var sysColorBrandTertiaryLower: ColorAliasSemanticToken? { get { nil } set { } }
    @objc open var sysColorBrandTertiaryLow: ColorAliasSemanticToken? { get { nil } set { } }
    @objc open var sysColorBrandTertiaryDefault: ColorAliasSemanticToken? { get { nil } set { } }
    @objc open var sysColorBrandTertiaryHigh: ColorAliasSemanticToken? { get { nil } set { } }
    @objc open var sysColorBrandTertiaryHigher: ColorAliasSemanticToken? { get { nil } set { } }
    @objc open var sysColorBrandTertiaryHighest: ColorAliasSemanticToken? { get { nil } set { } }

    // MARK: Semantic token - Colors - Alias - Neutral - Muted

    @objc open var sysColorBrandNeutralMutedWhite: ColorAliasSemanticToken? { get { ColorPrimitiveTokens.colorFunctionalWhite } set { } }
    @objc open var sysColorBrandNeutralMutedLowest: ColorAliasSemanticToken? { get { ColorPrimitiveTokens.colorFunctionalLightGray80 } set { } }
    @objc open var sysColorBrandNeutralMutedLower: ColorAliasSemanticToken? { get { ColorPrimitiveTokens.colorFunctionalLightGray160 } set { } }
    @objc open var sysColorBrandNeutralMutedLow: ColorAliasSemanticToken? { get { nil } set { } }
    @objc open var sysColorBrandNeutralMutedMedium: ColorAliasSemanticToken? { get { ColorPrimitiveTokens.colorFunctionalLightGray400 } set { } }
    @objc open var sysColorBrandNeutralMutedHigh: ColorAliasSemanticToken? { get { ColorPrimitiveTokens.colorFunctionalLightGray560 } set { } }
    @objc open var sysColorBrandNeutralMutedHigher: ColorAliasSemanticToken? { get { nil } set { } }
    @objc open var sysColorBrandNeutralMutedHighest: ColorAliasSemanticToken? { get { nil } set { } }

    // MARK: Semantic token - Colors - Alias - Neutral - Emphasis

    @objc open var sysColorBrandNeutralEmphasisLowest: ColorAliasSemanticToken? { get { ColorPrimitiveTokens.colorFunctionalDarkGray400 } set { } }
    @objc open var sysColorBrandNeutralEmphasisLower: ColorAliasSemanticToken? { get { ColorPrimitiveTokens.colorFunctionalDarkGray480 } set { } }
    @objc open var sysColorBrandNeutralEmphasisLow: ColorAliasSemanticToken? { get { ColorPrimitiveTokens.colorFunctionalDarkGray560 } set { } }
    @objc open var sysColorBrandNeutralEmphasisMedium: ColorAliasSemanticToken? { get { ColorPrimitiveTokens.colorFunctionalDarkGray640 } set { } }
    @objc open var sysColorBrandNeutralEmphasisHigh: ColorAliasSemanticToken? { get { ColorPrimitiveTokens.colorFunctionalDarkGray720 } set { } }
    @objc open var sysColorBrandNeutralEmphasisHigher: ColorAliasSemanticToken? { get { ColorPrimitiveTokens.colorFunctionalDarkGray800 } set { } }
    @objc open var sysColorBrandNeutralEmphasisHighest: ColorAliasSemanticToken? { get { ColorPrimitiveTokens.colorFunctionalDarkGray880 } set { } }
    @objc open var sysColorBrandNeutralEmphasisBlack: ColorAliasSemanticToken? { get { ColorPrimitiveTokens.colorFunctionalBlack } set { } }

    // MARK: Semantic token - Colors - Alias - Positive

    @objc open var sysColorBrandPositiveLowest: ColorAliasSemanticToken? { get { ColorPrimitiveTokens.colorFunctionalMalachite100 } set { } }
    @objc open var sysColorBrandPositiveLower: ColorAliasSemanticToken? { get { nil } set { } }
    @objc open var sysColorBrandPositiveLow: ColorAliasSemanticToken? { get { nil } set { } }
    @objc open var sysColorBrandPositiveDefault: ColorAliasSemanticToken? { get { ColorPrimitiveTokens.colorFunctionalMalachite500 } set { } }
    @objc open var sysColorBrandPositiveHigh: ColorAliasSemanticToken? { get { ColorPrimitiveTokens.colorFunctionalMalachite600 } set { } }
    @objc open var sysColorBrandPositiveHigher: ColorAliasSemanticToken? { get { nil } set { } }
    @objc open var sysColorBrandPositiveHighest: ColorAliasSemanticToken? { get { ColorPrimitiveTokens.colorFunctionalMalachite800 } set { } }

    // MARK: Semantic token - Colors - Alias - Information

    @objc open var sysColorBrandInformationLowest: ColorAliasSemanticToken? { get { ColorPrimitiveTokens.colorFunctionalDodgerBlue100 } set { } }
    @objc open var sysColorBrandInformationLower: ColorAliasSemanticToken? { get { nil } set { } }
    @objc open var sysColorBrandInformationLow: ColorAliasSemanticToken? { get { nil } set { } }
    @objc open var sysColorBrandInformationDefault: ColorAliasSemanticToken? { get { ColorPrimitiveTokens.colorFunctionalDodgerBlue500 } set { } }
    @objc open var sysColorBrandInformationHigh: ColorAliasSemanticToken? { get { ColorPrimitiveTokens.colorFunctionalDodgerBlue600 } set { } }
    @objc open var sysColorBrandInformationHigher: ColorAliasSemanticToken? { get { nil } set { } }
    @objc open var sysColorBrandInformationHighest: ColorAliasSemanticToken? { get { ColorPrimitiveTokens.colorFunctionalDodgerBlue800 } set { } }

    // MARK: Semantic token - Colors - Alias - Warning

    @objc open var sysColorBrandWarningLowest: ColorAliasSemanticToken? { get { ColorPrimitiveTokens.colorFunctionalSun100 } set { } }
    @objc open var sysColorBrandWarningLower: ColorAliasSemanticToken? { get { nil } set { } }
    @objc open var sysColorBrandWarningLow: ColorAliasSemanticToken? { get { nil } set { } }
    @objc open var sysColorBrandWarningDefault: ColorAliasSemanticToken? { get { ColorPrimitiveTokens.colorFunctionalSun500 } set { } }
    @objc open var sysColorBrandWarningHigh: ColorAliasSemanticToken? { get { ColorPrimitiveTokens.colorFunctionalSun600 } set { } }
    @objc open var sysColorBrandWarningHigher: ColorAliasSemanticToken? { get { nil } set { } }
    @objc open var sysColorBrandWarningHighest: ColorAliasSemanticToken? { get { ColorPrimitiveTokens.colorFunctionalSun800 } set { } }

    // MARK: Semantic token - Colors - Alias - Negative

    @objc open var sysColorBrandNegativeLowest: ColorAliasSemanticToken? { get { ColorPrimitiveTokens.colorFunctionalScarlet100 } set { } }
    @objc open var sysColorBrandNegativeLower: ColorAliasSemanticToken? { get { nil } set { } }
    @objc open var sysColorBrandNegativeLow: ColorAliasSemanticToken? { get { nil } set { } }
    @objc open var sysColorBrandNegativeDefault: ColorAliasSemanticToken? { get { ColorPrimitiveTokens.colorFunctionalScarlet500 } set { } }
    @objc open var sysColorBrandNegativeHigh: ColorAliasSemanticToken? { get { ColorPrimitiveTokens.colorFunctionalScarlet600 } set { } }
    @objc open var sysColorBrandNegativeHigher: ColorAliasSemanticToken? { get { nil } set { } }
    @objc open var sysColorBrandNegativeHighest: ColorAliasSemanticToken? { get { ColorPrimitiveTokens.colorFunctionalScarlet800 } set { } }

    // MARK: Semantic token - Colors - Alias - Attractive

    @objc open var sysColorBrandAttractiveLowest: ColorAliasSemanticToken? { get { nil } set { } }
    @objc open var sysColorBrandAttractiveLower: ColorAliasSemanticToken? { get { nil } set { } }
    @objc open var sysColorBrandAttractiveLow: ColorAliasSemanticToken? { get { nil } set { } }
    @objc open var sysColorBrandAttractiveMedium: ColorAliasSemanticToken? { get { ColorPrimitiveTokens.colorFunctionalSun500 } set { } }
    @objc open var sysColorBrandAttractiveHigh: ColorAliasSemanticToken? { get { ColorPrimitiveTokens.colorFunctionalSun600 } set { } }
    @objc open var sysColorBrandAttractiveHigher: ColorAliasSemanticToken? { get { nil } set { } }
    @objc open var sysColorBrandAttractiveHighest: ColorAliasSemanticToken? { get { nil } set { } }

    // MARK: Semantic token - Colors - Background - Default - Primary

    @objc open var colorBackgroundDefaultPrimaryLight: ColorSemanticToken? { get { sysColorBrandNeutralMutedWhite } set { } }
    @objc open var colorBackgroundDefaultPrimaryInverse: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    @objc open var colorBackgroundDefaultPrimaryDark: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisHighest } set { } }

    // MARK: Semantic token - Colors - Background - Default - Secondary

    @objc open var colorBackgroundDefaultSecondaryLight: ColorSemanticToken? { get { sysColorBrandNeutralMutedLowest } set { } }
    @objc open var colorBackgroundDefaultSecondaryInverse: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisMedium } set { } }
    @objc open var colorBackgroundDefaultSecondaryDark: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisHigher } set { } }

    // MARK: Semantic token - Colors - Background - Default - Tertiary

    @objc open var colorBackgroundDefaultTertiaryLight: ColorSemanticToken? { get { sysColorBrandAttractiveLowest } set { } }
    @objc open var colorBackgroundDefaultTertiaryInverse: ColorSemanticToken? { get { sysColorBrandAttractiveHighest } set { } }
    @objc open var colorBackgroundDefaultTertiaryDark: ColorSemanticToken? { get { sysColorBrandAttractiveHighest } set { } }

    // MARK: Semantic token - Colors - Background - Emphasis - Primary

    @objc open var colorBackgroundEmphasisPrimaryLight: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    @objc open var colorBackgroundEmphasisPrimaryInverse: ColorSemanticToken? { get { sysColorBrandNeutralMutedWhite } set { } }
    @objc open var colorBackgroundEmphasisPrimaryDark: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisMedium } set { } }

    // MARK: Semantic token - Colors - Background - Emphasis - Secondary

    @objc open var colorBackgroundEmphasisSecondaryLight: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisMedium } set { } }
    @objc open var colorBackgroundEmphasisSecondaryInverse: ColorSemanticToken? { get { sysColorBrandNeutralMutedLowest } set { } }
    @objc open var colorBackgroundEmphasisSecondaryDark: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisHigh } set { } }

    // MARK: Semantic token - Colors - Background - Brand - Primary

    @objc open var colorBackgroundBrandPrimaryLight: ColorSemanticToken? { get { sysColorBrandPrimaryDefault } set { } }
    @objc open var colorBackgroundBrandPrimaryInverse: ColorSemanticToken? { get { sysColorBrandPrimaryDefault } set { } }
    @objc open var colorBackgroundBrandPrimaryDark: ColorSemanticToken? { get { sysColorBrandPrimaryLow } set { } }

    // MARK: Semantic token - Colors - Background - Brand - Secondary

    @objc open var colorBackgroundBrandSecondary: ColorSemanticToken? { get { nil } set { } }

    // MARK: Semantic token - Colors - Background - Brand - Tertiary

    @objc open var colorBackgroundBrandTertiary: ColorSemanticToken? { get { nil } set { } }

    // MARK: Semantic token - Colors - Background - Status - Attractive - Muted

    @objc open var colorBackgroundStatusAttractiveMutedLight: ColorSemanticToken? { get { sysColorBrandAttractiveLowest } set { } }
    @objc open var colorBackgroundStatusAttractiveMutedInverse: ColorSemanticToken? { get { sysColorBrandAttractiveLowest } set { } }
    @objc open var colorBackgroundStatusAttractiveMutedDark: ColorSemanticToken? { get { sysColorBrandAttractiveHighest } set { } }

    // MARK: Semantic token - Colors - Background - Status - Attractive - Emphasis

    @objc open var colorBackgroundStatusAttractiveEmphasisLight: ColorSemanticToken? { get { sysColorBrandWarningDefault } set { } }
    @objc open var colorBackgroundStatusAttractiveEmphasisInverse: ColorSemanticToken? { get { sysColorBrandWarningDefault } set { } }
    @objc open var colorBackgroundStatusAttractiveEmphasisDark: ColorSemanticToken? { get { sysColorBrandWarningHighest } set { } }

    // MARK: Semantic token - Colors - Background - Status - Warning - Muted

    @objc open var colorBackgroundStatusWarningMutedLight: ColorSemanticToken? { get { sysColorBrandWarningLowest } set { } }
    @objc open var colorBackgroundStatusWarningMutedInverse: ColorSemanticToken? { get { sysColorBrandWarningLowest } set { } }
    @objc open var colorBackgroundStatusWarningMutedDark: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisHigh } set { } }

    // MARK: Semantic token - Colors - Background - Status - Warning - Emphasis

    @objc open var colorBackgroundStatusWarningEmphasisLight: ColorSemanticToken? { get { sysColorBrandWarningDefault } set { } }
    @objc open var colorBackgroundStatusWarningEmphasisInverse: ColorSemanticToken? { get { sysColorBrandWarningDefault } set { } }
    @objc open var colorBackgroundStatusWarningEmphasisDark: ColorSemanticToken? { get { sysColorBrandWarningHighest } set { } }

    // MARK: Semantic token - Colors - Background - Status - Negative - Muted

    @objc open var colorBackgroundStatusNegativeMutedLight: ColorSemanticToken? { get { sysColorBrandNegativeLowest } set { } }
    @objc open var colorBackgroundStatusNegativeMutedInverse: ColorSemanticToken? { get { sysColorBrandNegativeLowest } set { } }
    @objc open var colorBackgroundStatusNegativeMutedDark: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisHigh } set { } }

    // MARK: Semantic token - Colors - Background - Status - Negative - Emphasis

    @objc open var colorBackgroundStatusNegativeEmphasisLight: ColorSemanticToken? { get { sysColorBrandNegativeDefault } set { } }
    @objc open var colorBackgroundStatusNegativeEmphasisInverse: ColorSemanticToken? { get { sysColorBrandNegativeDefault } set { } }
    @objc open var colorBackgroundStatusNegativeEmphasisDark: ColorSemanticToken? { get { sysColorBrandNegativeHighest } set { } }

    // MARK: Semantic token - Colors - Background - Status - Positive - Muted

    @objc open var colorBackgroundStatusPositiveMutedLight: ColorSemanticToken? { get { sysColorBrandPositiveLowest } set { } }
    @objc open var colorBackgroundStatusPositiveMutedInverse: ColorSemanticToken? { get { sysColorBrandPositiveLowest } set { } }
    @objc open var colorBackgroundStatusPositiveMutedDark: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisHigh } set { } }

    // MARK: Semantic token - Colors - Background - Status - Positive - Emphasis

    @objc open var colorBackgroundStatusPositiveEmphasisLight: ColorSemanticToken? { get { sysColorBrandPositiveDefault } set { } }
    @objc open var colorBackgroundStatusPositiveEmphasisInverse: ColorSemanticToken? { get { sysColorBrandPositiveDefault } set { } }
    @objc open var colorBackgroundStatusPositiveEmphasisDark: ColorSemanticToken? { get { sysColorBrandPositiveHighest } set { } }

    // MARK: Semantic token - Colors - Background - Status - Information - Muted

    @objc open var colorBackgroundStatusInformationMutedLight: ColorSemanticToken? { get { sysColorBrandInformationLowest } set { } }
    @objc open var colorBackgroundStatusInformationMutedInverse: ColorSemanticToken? { get { sysColorBrandInformationLowest } set { } }
    @objc open var colorBackgroundStatusInformationMutedDark: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisHigh } set { } }

    // MARK: Semantic token - Colors - Background - Status - Information - Emphasis

    @objc open var colorBackgroundStatusInformationEmphasisLight: ColorSemanticToken? { get { sysColorBrandInformationDefault } set { } }
    @objc open var colorBackgroundStatusInformationEmphasisInverse: ColorSemanticToken? { get { sysColorBrandInformationDefault } set { } }
    @objc open var colorBackgroundStatusInformationEmphasisDark: ColorSemanticToken? { get { sysColorBrandInformationHighest } set { } }

    // MARK: Semantic token - Colors - Content - Default

    @objc open var colorContentDefaultLight: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    @objc open var colorContentDefaultInverse: ColorSemanticToken? { get { sysColorBrandNeutralMutedWhite } set { } }
    @objc open var colorContentDefaultDark: ColorSemanticToken? { get { sysColorBrandNeutralMutedLower } set { } }

    // MARK: Semantic token - Colors - Content - Default - On background emphasis

    @objc open var colorContentDefaultOnBackgroundEmphasisLight: ColorSemanticToken? { get { sysColorBrandNeutralMutedWhite } set { } }
    @objc open var colorContentDefaultOnBackgroundEmphasisInverse: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    @objc open var colorContentDefaultOnBackgroundEmphasisDark: ColorSemanticToken? { get { sysColorBrandNeutralMutedLower } set { } }

    // MARK: Semantic token - Colors - Content - Muted

    @objc open var colorContentMutedLight: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisLowest } set { } }
    @objc open var colorContentMutedInverse: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisMedium } set { } }
    @objc open var colorContentMutedDark: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisHigh } set { } }

    // MARK: Semantic token - Colors - Content - Muted - On background emphasis

    @objc open var colorContentMutedOnBackgroundEmphasisLight: ColorSemanticToken? { get { sysColorBrandNeutralMutedMedium } set { } }
    @objc open var colorContentMutedOnBackgroundEmphasisInverse: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisLowest } set { } }
    @objc open var colorContentMutedOnBackgroundEmphasisDark: ColorSemanticToken? { get { sysColorBrandNeutralMutedHigh } set { } }

    // MARK: Semantic token - Colors - Content - Brand - Primary

    @objc open var colorContentBrandPrimaryLight: ColorSemanticToken? { get { sysColorBrandPrimaryDefault } set { } }
    @objc open var colorContentBrandPrimaryInverse: ColorSemanticToken? { get { sysColorBrandPrimaryLow } set { } }
    @objc open var colorContentBrandPrimaryDark: ColorSemanticToken? { get { sysColorBrandPrimaryLow } set { } }

    // MARK: Semantic token - Colors - Content - Brand - Primary - On background emphasis

    @objc open var colorContentBrandPrimaryOnBackgroundEmphasisLight: ColorSemanticToken? { get { sysColorBrandPrimaryLow } set { } }
    @objc open var colorContentBrandPrimaryOnBackgroundEmphasisInverse: ColorSemanticToken? { get { sysColorBrandPrimaryDefault } set { } }
    @objc open var colorContentBrandPrimaryOnBackgroundEmphasisDark: ColorSemanticToken? { get { sysColorBrandPrimaryLow } set { } }

    // MARK: Semantic token - Colors - Content - Brand - Secondary

    @objc open var colorContentBrandSecondaryLight: ColorSemanticToken? { get { nil } set { } }
    @objc open var colorContentBrandSecondaryInverse: ColorSemanticToken? { get { nil } set { } }
    @objc open var colorContentBrandSecondaryDark: ColorSemanticToken? { get { nil } set { } }

    // MARK: Semantic token - Colors - Content - Brand - Tertiary

    @objc open var colorContentBrandTertiaryLight: ColorSemanticToken? { get { nil } set { } }
    @objc open var colorContentBrandTertiaryInverse: ColorSemanticToken? { get { nil } set { } }
    @objc open var colorContentBrandTertiaryDark: ColorSemanticToken? { get { nil } set { } }

    // MARK: Semantic token - Colors - Content - Status - Attractive

    @objc open var colorContentStatusAttractiveLight: ColorSemanticToken? { get { nil } set { } }
    @objc open var colorContentStatusAttractiveInverse: ColorSemanticToken? { get { nil } set { } }
    @objc open var colorContentStatusAttractiveDark: ColorSemanticToken? { get { nil } set { } }

    // MARK: Semantic token - Colors - Content - Status - Negative

    @objc open var colorContentStatusNegativeLight: ColorSemanticToken? { get { sysColorBrandNegativeDefault } set { } }
    @objc open var colorContentStatusNegativeInverse: ColorSemanticToken? { get { sysColorBrandNegativeDefault } set { } }
    @objc open var colorContentStatusNegativeDark: ColorSemanticToken? { get { sysColorBrandNegativeDefault } set { } }

    // MARK: Semantic token - Colors - Content - Status - Positive

    @objc open var colorContentStatusPositiveLight: ColorSemanticToken? { get { sysColorBrandPositiveDefault } set { } }
    @objc open var colorContentStatusPositiveInverse: ColorSemanticToken? { get { sysColorBrandPositiveDefault } set { } }
    @objc open var colorContentStatusPositiveDark: ColorSemanticToken? { get { sysColorBrandPositiveDefault } set { } }

    // MARK: Semantic token - Colors - Content - Status - Information

    @objc open var colorContentStatusInformationLight: ColorSemanticToken? { get { sysColorBrandInformationDefault } set { } }
    @objc open var colorContentStatusInformationInverse: ColorSemanticToken? { get { sysColorBrandInformationDefault } set { } }
    @objc open var colorContentStatusInformationDark: ColorSemanticToken? { get { sysColorBrandInformationDefault } set { } }

    // MARK: Semantic token - Colors - Border - Default

    @objc open var colorBorderDefaultLight: ColorSemanticToken? { get { sysColorBrandNeutralMutedMedium } set { } }
    @objc open var colorBorderDefaultInverse: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisLowest } set { } }
    @objc open var colorBorderDefaultDark: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisLowest } set { } }

    // MARK: Semantic token - Colors - Border - Default - On background emphasis

    @objc open var colorBorderDefaultOnBackgroundEmphasisLight: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisLowest } set { } }
    @objc open var colorBorderDefaultOnBackgroundEmphasisInverse: ColorSemanticToken? { get { sysColorBrandNeutralMutedMedium } set { } }
    @objc open var colorBorderDefaultOnBackgroundEmphasisDark: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisLowest } set { } }

    // MARK: Semantic token - Colors - Border - Emphasis

    @objc open var colorBorderEmphasisLight: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    @objc open var colorBorderEmphasisInverse: ColorSemanticToken? { get { sysColorBrandNeutralMutedWhite } set { } }
    @objc open var colorBorderEmphasisDark: ColorSemanticToken? { get { sysColorBrandNeutralMutedLower } set { } }

    // MARK: Semantic token - Colors - Border - Emphasis - On background emphasis

    @objc open var colorBorderEmphasisOnBackgroundEmphasisLight: ColorSemanticToken? { get { sysColorBrandNeutralMutedWhite } set { } }
    @objc open var colorBorderEmphasisOnBackgroundEmphasisInverse: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    @objc open var colorBorderEmphasisOnBackgroundEmphasisDark: ColorSemanticToken? { get { sysColorBrandNeutralMutedLower } set { } }

    // MARK: Semantic token - Colors - Border - Brand - Primary

    @objc open var colorBorderBrandPrimaryLight: ColorSemanticToken? { get { sysColorBrandPrimaryDefault } set { } }
    @objc open var colorBorderBrandPrimaryInverse: ColorSemanticToken? { get { sysColorBrandPrimaryLow } set { } }
    @objc open var colorBorderBrandPrimaryDark: ColorSemanticToken? { get { sysColorBrandPrimaryLow } set { } }

    // MARK: Semantic token - Colors - Border - Brand - Primary - On background emphasis

    @objc open var colorBorderBrandPrimaryOnBackgroundEmphasisLight: ColorSemanticToken? { get { sysColorBrandPrimaryLow } set { } }
    @objc open var colorBorderBrandPrimaryOnBackgroundEmphasisInverse: ColorSemanticToken? { get { sysColorBrandPrimaryDefault } set { } }
    @objc open var colorBorderBrandPrimaryOnBackgroundEmphasisDark: ColorSemanticToken? { get { sysColorBrandPrimaryLow } set { } }

    // MARK: Semantic token - Colors - Border - Brand - Secondary

    @objc open var colorBorderBrandSecondaryLight: ColorSemanticToken? { get { nil } set { } }
    @objc open var colorBorderBrandSecondaryInverse: ColorSemanticToken? { get { nil } set { } }
    @objc open var colorBorderBrandSecondaryDark: ColorSemanticToken? { get { nil } set { } }

    // MARK: Semantic token - Colors - Border - Brand - Tertiary

    @objc open var colorBorderBrandTertiaryLight: ColorSemanticToken? { get { nil } set { } }
    @objc open var colorBorderBrandTertiaryInverse: ColorSemanticToken? { get { nil } set { } }
    @objc open var colorBorderBrandTertiaryDark: ColorSemanticToken? { get { nil } set { } }

    // MARK: Semantic token - Colors - Border - Status - Attractive

    @objc open var colorBorderBrandStatusAttractiveLight: ColorSemanticToken? { get { nil } set { } }
    @objc open var colorBorderBrandStatusAttractiveInverse: ColorSemanticToken? { get { nil } set { } }
    @objc open var colorBorderBrandStatusAttractiveDark: ColorSemanticToken? { get { nil } set { } }

    // MARK: Semantic token - Colors - Border - Status - Warning

    @objc open var colorBorderBrandStatusWarningLight: ColorSemanticToken? { get { nil } set { } }
    @objc open var colorBorderBrandStatusWarningInverse: ColorSemanticToken? { get { nil } set { } }
    @objc open var colorBorderBrandStatusWarningDark: ColorSemanticToken? { get { nil } set { } }

    // MARK: Semantic token - Colors - Border - Status - Negative

    @objc open var colorBorderBrandStatusNegativeLight: ColorSemanticToken? { get { nil } set { } }
    @objc open var colorBorderBrandStatusNegativeInverse: ColorSemanticToken? { get { nil } set { } }
    @objc open var colorBorderBrandStatusNegativeDark: ColorSemanticToken? { get { nil } set { } }

    // MARK: Semantic token - Colors - Border - Status - Positive

    @objc open var colorBorderBrandStatusPositiveLight: ColorSemanticToken? { get { nil } set { } }
    @objc open var colorBorderBrandStatusPositiveInverse: ColorSemanticToken? { get { nil } set { } }
    @objc open var colorBorderBrandStatusPositiveDark: ColorSemanticToken? { get { nil } set { } }

    // MARK: Semantic token - Colors - Border - Status - Information

    @objc open var colorBorderBrandStatusInformationLight: ColorSemanticToken? { get { nil } set { } }
    @objc open var colorBorderBrandStatusInformationInverse: ColorSemanticToken? { get { nil } set { } }
    @objc open var colorBorderBrandStatusInformationDark: ColorSemanticToken? { get { nil } set { } }

    // MARK: Semantic token - Colors - On background - Primary

    @objc open var colorOnBackgroundPrimaryLight: ColorSemanticToken? { get { sysColorBrandNeutralMutedWhite } set { } }
    @objc open var colorOnBackgroundPrimaryInverse: ColorSemanticToken? { get { sysColorBrandNeutralMutedWhite } set { } }
    @objc open var colorOnBackgroundPrimaryDark: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisHighest } set { } }

    // MARK: Semantic token - Colors - On background - Secondary

    @objc open var colorOnBackgroundSecondaryLight: ColorSemanticToken? { get { nil } set { } }
    @objc open var colorOnBackgroundSecondaryInverse: ColorSemanticToken? { get { nil } set { } }
    @objc open var colorOnBackgroundSecondaryDark: ColorSemanticToken? { get { nil } set { } }

    // MARK: Semantic token - Colors - On background - Tertiary

    @objc open var colorOnBackgroundTertiaryLight: ColorSemanticToken? { get { nil } set { } }
    @objc open var colorOnBackgroundTertiaryInverse: ColorSemanticToken? { get { nil } set { } }
    @objc open var colorOnBackgroundTertiaryDark: ColorSemanticToken? { get { nil } set { } }

    // MARK: Semantic token - Colors - On background - Status - Attrative - Muted

    @objc open var colorOnBackgroundStatusAttractiveMutedLight: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    @objc open var colorOnBackgroundStatusAttractiveMutedInverse: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    @objc open var colorOnBackgroundStatusAttractiveMutedDark: ColorSemanticToken? { get { sysColorBrandNeutralMutedLower } set { } }

    // MARK: Semantic token - Colors - On background - Status - Attrative - Emphasis

    @objc open var colorOnBackgroundStatusAttractiveEmphasisLight: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    @objc open var colorOnBackgroundStatusAttractiveEmphasisInverse: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    @objc open var colorOnBackgroundStatusAttractiveEmphasisDark: ColorSemanticToken? { get { sysColorBrandNeutralMutedLower } set { } }

    // MARK: Semantic token - Colors - On background - Status - Warning - Muted

    @objc open var colorOnBackgroundStatusWarningMutedLight: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    @objc open var colorOnBackgroundStatusWarningMutedInverse: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    @objc open var colorOnBackgroundStatusWarningMutedDark: ColorSemanticToken? { get { sysColorBrandNeutralMutedLower } set { } }

    // MARK: Semantic token - Colors - On background - Status - Warning - Emphasis

    @objc open var colorOnBackgroundStatusWarningEmphasisLight: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    @objc open var colorOnBackgroundStatusWarningEmphasisInverse: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    @objc open var colorOnBackgroundStatusWarningEmphasisDark: ColorSemanticToken? { get { sysColorBrandNeutralMutedLower } set { } }

    // MARK: Semantic token - Colors - On background - Status - Negative - Muted

    @objc open var colorOnBackgroundStatusNegativeMutedLight: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    @objc open var colorOnBackgroundStatusNegativeMutedInverse: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    @objc open var colorOnBackgroundStatusNegativeMutedDark: ColorSemanticToken? { get { sysColorBrandNeutralMutedLower } set { } }

    // MARK: Semantic token - Colors - On background - Status - Negative - Emphasis

    @objc open var colorOnBackgroundStatusNegativeEmphasisLight: ColorSemanticToken? { get { sysColorBrandNeutralMutedWhite } set { } }
    @objc open var colorOnBackgroundStatusNegativeEmphasisInverse: ColorSemanticToken? { get { sysColorBrandNeutralMutedWhite } set { } }
    @objc open var colorOnBackgroundStatusNegativeEmphasisDark: ColorSemanticToken? { get { sysColorBrandNeutralMutedLower } set { } }

    // MARK: Semantic token - Colors - On background - Status - Positive - Muted

    @objc open var colorOnBackgroundStatusPositiveMutedLight: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    @objc open var colorOnBackgroundStatusPositiveMutedInverse: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    @objc open var colorOnBackgroundStatusPositiveMutedDark: ColorSemanticToken? { get { sysColorBrandNeutralMutedLower } set { } }

    // MARK: Semantic token - Colors - On background - Status - Positive - Emphasis

    @objc open var colorOnBackgroundStatusPositiveEmphasisLight: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    @objc open var colorOnBackgroundStatusPositiveEmphasisInverse: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    @objc open var colorOnBackgroundStatusPositiveEmphasisDark: ColorSemanticToken? { get { sysColorBrandNeutralMutedLower } set { } }

    // MARK: Semantic token - Colors - On background - Status - Information - Muted

    @objc open var colorOnBackgroundStatusInformationMutedLight: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    @objc open var colorOnBackgroundStatusInformationMutedInverse: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    @objc open var colorOnBackgroundStatusInformationMutedDark: ColorSemanticToken? { get { sysColorBrandNeutralMutedLower } set { } }

    // MARK: Semantic token - Colors - On background - Status - Information - Emphasis

    @objc open var colorOnBackgroundStatusInformationEmphasisLight: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    @objc open var colorOnBackgroundStatusInformationEmphasisInverse: ColorSemanticToken? { get { sysColorBrandNeutralEmphasisBlack } set { } }
    @objc open var colorOnBackgroundStatusInformationEmphasisDark: ColorSemanticToken? { get { sysColorBrandNeutralMutedLower } set { } }

}
