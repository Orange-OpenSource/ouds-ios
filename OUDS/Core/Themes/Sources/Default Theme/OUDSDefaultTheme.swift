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
import OUDSThemesFoundations

/// Use an open Swift class will help users to make their own themes by overriding this current theme.
/// Any properties of an overridable theme should be defined so as to provide deffaults values.
/// We allow this theme to be derivated / be overriden.
open class OUDSDefaultTheme: OUDSThemeContract {
    
    init() { }
    
    // MARK: - From OUDSThemeContract / BorderSemanticTokens
    
    // MARK: Semantic token - Border - Width

    public var borderWidthNone: BorderWidthSemanticToken = BorderPrimitiveTokens.borderWidth0
    public var borderWidthDefault: BorderWidthSemanticToken = BorderPrimitiveTokens.borderWidth25
    public var borderWidthThin: BorderWidthSemanticToken = BorderPrimitiveTokens.borderWidth25
    public var borderWidthThick: BorderWidthSemanticToken = BorderPrimitiveTokens.borderWidth50
    public var borderWidthThicker: BorderWidthSemanticToken = BorderPrimitiveTokens.borderWidth75
    public var borderWidthThickest: BorderWidthSemanticToken = BorderPrimitiveTokens.borderWidth100
    public var borderWidthInterfactivePrimaryFocus: BorderWidthSemanticToken = BorderPrimitiveTokens.borderWidth100

    // MARK: Semantic token - Border - Radius

    public var borderRadiusNone: BorderRadiusSemanticToken = BorderPrimitiveTokens.borderRadius0
    public var borderRadiusDefault: BorderRadiusSemanticToken = BorderPrimitiveTokens.borderRadius0
    public var borderRadiusShort: BorderRadiusSemanticToken = BorderPrimitiveTokens.borderRadius75
    public var borderRadiusMedium: BorderRadiusSemanticToken = BorderPrimitiveTokens.borderRadius150
    public var borderRadiusTall: BorderRadiusSemanticToken = BorderPrimitiveTokens.borderRadius300
    public var borderRadiusPill: BorderRadiusSemanticToken = BorderPrimitiveTokens.borderRadius9999

    // MARK: Semantic token - Border - Style

    public var borderStyleDefault: BorderStyleSemanticToken = BorderPrimitiveTokens.borderStyleSolid
    public var borderStyleDrag: BorderStyleSemanticToken = BorderPrimitiveTokens.borderStyleDashed

    // MARK: - From OUDSThemeContract / ColorSemanticTokens
    
    // MARK: Semantic token - Colors - Alias - Primary

    public var sysColorBrandPrimaryLowest: ColorAliasSemanticToken? = nil
    public var sysColorBrandPrimaryLower: ColorAliasSemanticToken? = nil
    public var sysColorBrandPrimaryLow: ColorAliasSemanticToken? = ColorOrangePrimitiveTokens.colorBrandOrange500
    public var sysColorBrandPrimaryDefault: ColorAliasSemanticToken? = ColorOrangePrimitiveTokens.colorBrandOrange550
    public var sysColorBrandPrimaryHigh: ColorAliasSemanticToken? = nil
    public var sysColorBrandPrimaryHigher: ColorAliasSemanticToken? = nil
    public var sysColorBrandPrimaryHighest: ColorAliasSemanticToken? = nil

    // MARK: Semantic token - Colors - Alias - Secondary

    public var sysColorBrandSecondaryLowest: ColorAliasSemanticToken? = nil
    public var sysColorBrandSecondaryLower: ColorAliasSemanticToken? = nil
    public var sysColorBrandSecondaryLow: ColorAliasSemanticToken? = nil
    public var sysColorBrandSecondaryDefault: ColorAliasSemanticToken? = nil
    public var sysColorBrandSecondaryHigh: ColorAliasSemanticToken? = nil
    public var sysColorBrandSecondaryHigher: ColorAliasSemanticToken? = nil
    public var sysColorBrandSecondaryHighest: ColorAliasSemanticToken? = nil

    // MARK: Semantic token - Colors - Alias - Tertiary

    public var sysColorBrandTertiaryLowest: ColorAliasSemanticToken? = nil
    public var sysColorBrandTertiaryLower: ColorAliasSemanticToken? = nil
    public var sysColorBrandTertiaryLow: ColorAliasSemanticToken? = nil
    public var sysColorBrandTertiaryDefault: ColorAliasSemanticToken? = nil
    public var sysColorBrandTertiaryHigh: ColorAliasSemanticToken? = nil
    public var sysColorBrandTertiaryHigher: ColorAliasSemanticToken? = nil
    public var sysColorBrandTertiaryHighest: ColorAliasSemanticToken? = nil

    // MARK: Semantic token - Colors - Alias - Neutral - Muted

    public var sysColorBrandNeutralMutedWhite: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalWhite
    public var sysColorBrandNeutralMutedLowest: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalLightGray80
    public var sysColorBrandNeutralMutedLower: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalLightGray160
    public var sysColorBrandNeutralMutedLow: ColorAliasSemanticToken? = nil
    public var sysColorBrandNeutralMutedMedium: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalLightGray400
    public var sysColorBrandNeutralMutedHigh: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalLightGray560
    public var sysColorBrandNeutralMutedHigher: ColorAliasSemanticToken? = nil
    public var sysColorBrandNeutralMutedHighest: ColorAliasSemanticToken? = nil

    // MARK: Semantic token - Colors - Alias - Neutral - Emphasis

    public var sysColorBrandNeutralEmphasisLowest: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalDarkGray400
    public var sysColorBrandNeutralEmphasisLower: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalDarkGray480
    public var sysColorBrandNeutralEmphasisLow: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalDarkGray560
    public var sysColorBrandNeutralEmphasisMedium: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalDarkGray640
    public var sysColorBrandNeutralEmphasisHigh: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalDarkGray720
    public var sysColorBrandNeutralEmphasisHigher: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalDarkGray800
    public var sysColorBrandNeutralEmphasisHighest: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalDarkGray880
    public var sysColorBrandNeutralEmphasisBlack: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalBlack

    // MARK: Semantic token - Colors - Alias - Positive

    public var sysColorBrandPositiveLowest: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalMalachite100
    public var sysColorBrandPositiveLower: ColorAliasSemanticToken? = nil
    public var sysColorBrandPositiveLow: ColorAliasSemanticToken? = nil
    public var sysColorBrandPositiveDefault: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalMalachite500
    public var sysColorBrandPositiveHigh: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalMalachite600
    public var sysColorBrandPositiveHigher: ColorAliasSemanticToken? = nil
    public var sysColorBrandPositiveHighest: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalMalachite800

    // MARK: Semantic token - Colors - Alias - Information

    public var sysColorBrandInformationLowest: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalDodgerBlue100
    public var sysColorBrandInformationLower: ColorAliasSemanticToken? = nil
    public var sysColorBrandInformationLow: ColorAliasSemanticToken? = nil
    public var sysColorBrandInformationDefault: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalDodgerBlue500
    public var sysColorBrandInformationHigh: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalDodgerBlue600
    public var sysColorBrandInformationHigher: ColorAliasSemanticToken? = nil
    public var sysColorBrandInformationHighest: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalDodgerBlue800

    // MARK: Semantic token - Colors - Alias - Warning

    public var sysColorBrandWarningLowest: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalSun100
    public var sysColorBrandWarningLower: ColorAliasSemanticToken? = nil
    public var sysColorBrandWarningLow: ColorAliasSemanticToken? = nil
    public var sysColorBrandWarningDefault: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalSun500
    public var sysColorBrandWarningHigh: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalSun600
    public var sysColorBrandWarningHigher: ColorAliasSemanticToken? = nil
    public var sysColorBrandWarningHighest: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalSun800

    // MARK: Semantic token - Colors - Alias - Negative

    public var sysColorBrandNegativeLowest: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalScarlet100
    public var sysColorBrandNegativeLower: ColorAliasSemanticToken? = nil
    public var sysColorBrandNegativeLow: ColorAliasSemanticToken? = nil
    public var sysColorBrandNegativeDefault: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalScarlet500
    public var sysColorBrandNegativeHigh: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalScarlet600
    public var sysColorBrandNegativeHigher: ColorAliasSemanticToken? = nil
    public var sysColorBrandNegativeHighest: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalScarlet800

    // MARK: Semantic token - Colors - Alias - Attractive

    public var sysColorBrandAttractiveLowest: ColorAliasSemanticToken? = ColorOrangePrimitiveTokens.colorBrandWarmGray100
    public var sysColorBrandAttractiveLower: ColorAliasSemanticToken? = nil
    public var sysColorBrandAttractiveLow: ColorAliasSemanticToken? = nil
    public var sysColorBrandAttractiveMedium: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalSun500
    public var sysColorBrandAttractiveHigh: ColorAliasSemanticToken? = ColorGlobalPrimitiveTokens.colorFunctionalSun600
    public var sysColorBrandAttractiveHigher: ColorAliasSemanticToken? = nil
    public var sysColorBrandAttractiveHighest: ColorAliasSemanticToken? = ColorOrangePrimitiveTokens.colorBrandWarmGray900

    // MARK: Semantic token - Colors - Background - Default - Primary

    public var colorBackgroundDefaultPrimaryLight: ColorSemanticToken? = sysColorBrandNeutralMutedWhite
    public var colorBackgroundDefaultPrimaryInverse: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    public var colorBackgroundDefaultPrimaryDark: ColorSemanticToken? = sysColorBrandNeutralEmphasisHighest

    // MARK: Semantic token - Colors - Background - Default - Secondary

    public var colorBackgroundDefaultSecondaryLight: ColorSemanticToken? = sysColorBrandNeutralMutedLowest
    public var colorBackgroundDefaultSecondaryInverse: ColorSemanticToken? = sysColorBrandNeutralEmphasisMedium
    public var colorBackgroundDefaultSecondaryDark: ColorSemanticToken? = sysColorBrandNeutralEmphasisHigher

    // MARK: Semantic token - Colors - Background - Default - Tertiary

    public var colorBackgroundDefaultTertiaryLight: ColorSemanticToken? = sysColorBrandAttractiveLowest
    public var colorBackgroundDefaultTertiaryInverse: ColorSemanticToken? = sysColorBrandAttractiveHighest
    public var colorBackgroundDefaultTertiaryDark: ColorSemanticToken? = sysColorBrandAttractiveHighest

    // MARK: Semantic token - Colors - Background - Emphasis - Primary

    public var colorBackgroundEmphasisPrimaryLight: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    public var colorBackgroundEmphasisPrimaryInverse: ColorSemanticToken? = sysColorBrandNeutralMutedWhite
    public var colorBackgroundEmphasisPrimaryDark: ColorSemanticToken? = sysColorBrandNeutralEmphasisMedium

    // MARK: Semantic token - Colors - Background - Emphasis - Secondary

    public var colorBackgroundEmphasisSecondaryLight: ColorSemanticToken? = sysColorBrandNeutralEmphasisMedium
    public var colorBackgroundEmphasisSecondaryInverse: ColorSemanticToken? = sysColorBrandNeutralMutedLowest
    public var colorBackgroundEmphasisSecondaryDark: ColorSemanticToken? = sysColorBrandNeutralEmphasisHigh

    // MARK: Semantic token - Colors - Background - Brand - Primary

    public var colorBackgroundBrandPrimaryLight: ColorSemanticToken? = sysColorBrandPrimaryDefault
    public var colorBackgroundBrandPrimaryInverse: ColorSemanticToken? = sysColorBrandPrimaryDefault
    public var colorBackgroundBrandPrimaryDark: ColorSemanticToken? = sysColorBrandPrimaryLow

    // MARK: Semantic token - Colors - Background - Brand - Secondary

    public var colorBackgroundBrandSecondary: ColorSemanticToken? = nil

    // MARK: Semantic token - Colors - Background - Brand - Tertiary

    public var colorBackgroundBrandTertiary: ColorSemanticToken? = nil

    // MARK: Semantic token - Colors - Background - Status - Attractive - Muted

    public var colorBackgroundStatusAttractiveMutedLight: ColorSemanticToken? = sysColorBrandAttractiveLowest
    public var colorBackgroundStatusAttractiveMutedInverse: ColorSemanticToken? = sysColorBrandAttractiveLowest
    public var colorBackgroundStatusAttractiveMutedDark: ColorSemanticToken? = sysColorBrandAttractiveHighest

    // MARK: Semantic token - Colors - Background - Status - Attractive - Emphasis

    public var colorBackgroundStatusAttractiveEmphasisLight: ColorSemanticToken? = sysColorBrandWarningDefault
    public var colorBackgroundStatusAttractiveEmphasisInverse: ColorSemanticToken? = sysColorBrandWarningDefault
    public var colorBackgroundStatusAttractiveEmphasisDark: ColorSemanticToken? = sysColorBrandWarningHighest

    // MARK: Semantic token - Colors - Background - Status - Warning - Muted

    public var colorBackgroundStatusWarningMutedLight: ColorSemanticToken? = sysColorBrandWarningLowest
    public var colorBackgroundStatusWarningMutedInverse: ColorSemanticToken? = sysColorBrandWarningLowest
    public var colorBackgroundStatusWarningMutedDark: ColorSemanticToken? = sysColorBrandNeutralEmphasisHigh

    // MARK: Semantic token - Colors - Background - Status - Warning - Emphasis

    public var colorBackgroundStatusWarningEmphasisLight: ColorSemanticToken? = sysColorBrandWarningDefault
    public var colorBackgroundStatusWarningEmphasisInverse: ColorSemanticToken? = sysColorBrandWarningDefault
    public var colorBackgroundStatusWarningEmphasisDark: ColorSemanticToken? = sysColorBrandWarningHighest

    // MARK: Semantic token - Colors - Background - Status - Negative - Muted

    public var colorBackgroundStatusNegativeMutedLight: ColorSemanticToken? = sysColorBrandNegativeLowest
    public var colorBackgroundStatusNegativeMutedInverse: ColorSemanticToken? = sysColorBrandNegativeLowest
    public var colorBackgroundStatusNegativeMutedDark: ColorSemanticToken? = sysColorBrandNeutralEmphasisHigh

    // MARK: Semantic token - Colors - Background - Status - Negative - Emphasis

    public var colorBackgroundStatusNegativeEmphasisLight: ColorSemanticToken? = sysColorBrandNegativeDefault
    public var colorBackgroundStatusNegativeEmphasisInverse: ColorSemanticToken? = sysColorBrandNegativeDefault
    public var colorBackgroundStatusNegativeEmphasisDark: ColorSemanticToken? = sysColorBrandNegativeHighest

    // MARK: Semantic token - Colors - Background - Status - Positive - Muted

    public var colorBackgroundStatusPositiveMutedLight: ColorSemanticToken? = sysColorBrandPositiveLowest
    public var colorBackgroundStatusPositiveMutedInverse: ColorSemanticToken? = sysColorBrandPositiveLowest
    public var colorBackgroundStatusPositiveMutedDark: ColorSemanticToken? = sysColorBrandNeutralEmphasisHigh

    // MARK: Semantic token - Colors - Background - Status - Positive - Emphasis

    public var colorBackgroundStatusPositiveEmphasisLight: ColorSemanticToken? = sysColorBrandPositiveDefault
    public var colorBackgroundStatusPositiveEmphasisInverse: ColorSemanticToken? = sysColorBrandPositiveDefault
    public var colorBackgroundStatusPositiveEmphasisDark: ColorSemanticToken? = sysColorBrandPositiveHighest

    // MARK: Semantic token - Colors - Background - Status - Information - Muted

    public var colorBackgroundStatusInformationMutedLight: ColorSemanticToken? = sysColorBrandInformationLowest
    public var colorBackgroundStatusInformationMutedInverse: ColorSemanticToken? = sysColorBrandInformationLowest
    public var colorBackgroundStatusInformationMutedDark: ColorSemanticToken? = sysColorBrandNeutralEmphasisHigh

    // MARK: Semantic token - Colors - Background - Status - Information - Emphasis

    public var colorBackgroundStatusInformationEmphasisLight: ColorSemanticToken? = sysColorBrandInformationDefault
    public var colorBackgroundStatusInformationEmphasisInverse: ColorSemanticToken? = sysColorBrandInformationDefault
    public var colorBackgroundStatusInformationEmphasisDark: ColorSemanticToken? = sysColorBrandInformationHighest

    // MARK: Semantic token - Colors - Content - Default

    public var colorContentDefaultLight: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    public var colorContentDefaultInverse: ColorSemanticToken? = sysColorBrandNeutralMutedWhite
    public var colorContentDefaultDark: ColorSemanticToken? = sysColorBrandNeutralMutedLower

    // MARK: Semantic token - Colors - Content - Default - On background emphasis

    public var colorContentDefaultOnBackgroundEmphasisLight: ColorSemanticToken? = sysColorBrandNeutralMutedWhite
    public var colorContentDefaultOnBackgroundEmphasisInverse: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    public var colorContentDefaultOnBackgroundEmphasisDark: ColorSemanticToken? = sysColorBrandNeutralMutedLower

    // MARK: Semantic token - Colors - Content - Muted

    public var colorContentMutedLight: ColorSemanticToken? = sysColorBrandNeutralEmphasisLowest
    public var colorContentMutedInverse: ColorSemanticToken? = sysColorBrandNeutralEmphasisMedium
    public var colorContentMutedDark: ColorSemanticToken? = sysColorBrandNeutralEmphasisHigh

    // MARK: Semantic token - Colors - Content - Muted - On background emphasis

    public var colorContentMutedOnBackgroundEmphasisLight: ColorSemanticToken? = sysColorBrandNeutralMutedMedium
    public var colorContentMutedOnBackgroundEmphasisInverse: ColorSemanticToken? = sysColorBrandNeutralEmphasisLowest
    public var colorContentMutedOnBackgroundEmphasisDark: ColorSemanticToken? = sysColorBrandNeutralMutedHigh

    // MARK: Semantic token - Colors - Content - Brand - Primary

    public var colorContentBrandPrimaryLight: ColorSemanticToken? = sysColorBrandPrimaryDefault
    public var colorContentBrandPrimaryInverse: ColorSemanticToken? = sysColorBrandPrimaryLow
    public var colorContentBrandPrimaryDark: ColorSemanticToken? = sysColorBrandPrimaryLow

    // MARK: Semantic token - Colors - Content - Brand - Primary - On background emphasis

    public var colorContentBrandPrimaryOnBackgroundEmphasisLight: ColorSemanticToken? = sysColorBrandPrimaryLow
    public var colorContentBrandPrimaryOnBackgroundEmphasisInverse: ColorSemanticToken? = sysColorBrandPrimaryDefault
    public var colorContentBrandPrimaryOnBackgroundEmphasisDark: ColorSemanticToken? = sysColorBrandPrimaryLow

    // MARK: Semantic token - Colors - Content - Brand - Secondary

    public var colorContentBrandSecondaryLight: ColorSemanticToken? = nil
    public var colorContentBrandSecondaryInverse: ColorSemanticToken? = nil
    public var colorContentBrandSecondaryDark: ColorSemanticToken? = nil

    // MARK: Semantic token - Colors - Content - Brand - Tertiary

    public var colorContentBrandTertiaryLight: ColorSemanticToken? = nil
    public var colorContentBrandTertiaryInverse: ColorSemanticToken? = nil
    public var colorContentBrandTertiaryDark: ColorSemanticToken? = nil

    // MARK: Semantic token - Colors - Content - Status - Attractive

    public var colorContentStatusAttractiveLight: ColorSemanticToken? = nil
    public var colorContentStatusAttractiveInverse: ColorSemanticToken? = nil
    public var colorContentStatusAttractiveDark: ColorSemanticToken? = nil

    // MARK: Semantic token - Colors - Content - Status - Negative

    public var colorContentStatusNegativeLight: ColorSemanticToken? = sysColorBrandNegativeDefault
    public var colorContentStatusNegativeInverse: ColorSemanticToken? = sysColorBrandNegativeDefault
    public var colorContentStatusNegativeDark: ColorSemanticToken? = sysColorBrandNegativeDefault

    // MARK: Semantic token - Colors - Content - Status - Positive

    public var colorContentStatusPositiveLight: ColorSemanticToken? = sysColorBrandPositiveDefault
    public var colorContentStatusPositiveInverse: ColorSemanticToken? = sysColorBrandPositiveDefault
    public var colorContentStatusPositiveDark: ColorSemanticToken? = sysColorBrandPositiveDefault

    // MARK: Semantic token - Colors - Content - Status - Information

    public var colorContentStatusInformationLight: ColorSemanticToken? = sysColorBrandInformationDefault
    public var colorContentStatusInformationInverse: ColorSemanticToken? = sysColorBrandInformationDefault
    public var colorContentStatusInformationDark: ColorSemanticToken? = sysColorBrandInformationDefault

    // MARK: Semantic token - Colors - Border - Default

    public var colorBorderDefaultLight: ColorSemanticToken? = sysColorBrandNeutralMutedMedium
    public var colorBorderDefaultInverse: ColorSemanticToken? = sysColorBrandNeutralEmphasisLowest
    public var colorBorderDefaultDark: ColorSemanticToken? = sysColorBrandNeutralEmphasisLowest

    // MARK: Semantic token - Colors - Border - Default - On background emphasis

    public var colorBorderDefaultOnBackgroundEmphasisLight: ColorSemanticToken? = sysColorBrandNeutralEmphasisLowest
    public var colorBorderDefaultOnBackgroundEmphasisInverse: ColorSemanticToken? = sysColorBrandNeutralMutedMedium
    public var colorBorderDefaultOnBackgroundEmphasisDark: ColorSemanticToken? = sysColorBrandNeutralEmphasisLowest

    // MARK: Semantic token - Colors - Border - Emphasis

    public var colorBorderEmphasisLight: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    public var colorBorderEmphasisInverse: ColorSemanticToken? = sysColorBrandNeutralMutedWhite
    public var colorBorderEmphasisDark: ColorSemanticToken? = sysColorBrandNeutralMutedLower

    // MARK: Semantic token - Colors - Border - Emphasis - On background emphasis

    public var colorBorderEmphasisOnBackgroundEmphasisLight: ColorSemanticToken? = sysColorBrandNeutralMutedWhite
    public var colorBorderEmphasisOnBackgroundEmphasisInverse: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    public var colorBorderEmphasisOnBackgroundEmphasisDark: ColorSemanticToken? = sysColorBrandNeutralMutedLower

    // MARK: Semantic token - Colors - Border - Brand - Primary

    public var colorBorderBrandPrimaryLight: ColorSemanticToken? = sysColorBrandPrimaryDefault
    public var colorBorderBrandPrimaryInverse: ColorSemanticToken? = sysColorBrandPrimaryLow
    public var colorBorderBrandPrimaryDark: ColorSemanticToken? = sysColorBrandPrimaryLow

    // MARK: Semantic token - Colors - Border - Brand - Primary - On background emphasis

    public var colorBorderBrandPrimaryOnBackgroundEmphasisLight: ColorSemanticToken? = sysColorBrandPrimaryLow
    public var colorBorderBrandPrimaryOnBackgroundEmphasisInverse: ColorSemanticToken? = sysColorBrandPrimaryDefault
    public var colorBorderBrandPrimaryOnBackgroundEmphasisDark: ColorSemanticToken? = sysColorBrandPrimaryLow

    // MARK: Semantic token - Colors - Border - Brand - Secondary

    public var colorBorderBrandSecondaryLight: ColorSemanticToken? = nil
    public var colorBorderBrandSecondaryInverse: ColorSemanticToken? = nil
    public var colorBorderBrandSecondaryDark: ColorSemanticToken? = nil

    // MARK: Semantic token - Colors - Border - Brand - Tertiary

    public var colorBorderBrandTertiaryLight: ColorSemanticToken? = nil
    public var colorBorderBrandTertiaryInverse: ColorSemanticToken? = nil
    public var colorBorderBrandTertiaryDark: ColorSemanticToken? = nil

    // MARK: Semantic token - Colors - Border - Status - Attractive

    public var colorBorderBrandStatusAttractiveLight: ColorSemanticToken? = nil
    public var colorBorderBrandStatusAttractiveInverse: ColorSemanticToken? = nil
    public var colorBorderBrandStatusAttractiveDark: ColorSemanticToken? = nil

    // MARK: Semantic token - Colors - Border - Status - Warning

    public var colorBorderBrandStatusWarningLight: ColorSemanticToken? = nil
    public var colorBorderBrandStatusWarningInverse: ColorSemanticToken? = nil
    public var colorBorderBrandStatusWarningDark: ColorSemanticToken? = nil

    // MARK: Semantic token - Colors - Border - Status - Negative

    public var colorBorderBrandStatusNegativeLight: ColorSemanticToken? = nil
    public var colorBorderBrandStatusNegativeInverse: ColorSemanticToken? = nil
    public var colorBorderBrandStatusNegativeDark: ColorSemanticToken? = nil

    // MARK: Semantic token - Colors - Border - Status - Positive

    public var colorBorderBrandStatusPositiveLight: ColorSemanticToken? = nil
    public var colorBorderBrandStatusPositiveInverse: ColorSemanticToken? = nil
    public var colorBorderBrandStatusPositiveDark: ColorSemanticToken? = nil

    // MARK: Semantic token - Colors - Border - Status - Information

    public var colorBorderBrandStatusInformationLight: ColorSemanticToken? = nil
    public var colorBorderBrandStatusInformationInverse: ColorSemanticToken? = nil
    public var colorBorderBrandStatusInformationDark: ColorSemanticToken? = nil

    // MARK: Semantic token - Colors - On background - Primary

    public var colorOnBackgroundPrimaryLight: ColorSemanticToken? = sysColorBrandNeutralMutedWhite
    public var colorOnBackgroundPrimaryInverse: ColorSemanticToken? = sysColorBrandNeutralMutedWhite
    public var colorOnBackgroundPrimaryDark: ColorSemanticToken? = sysColorBrandNeutralEmphasisHighest

    // MARK: Semantic token - Colors - On background - Secondary

    public var colorOnBackgroundSecondaryLight: ColorSemanticToken? = nil
    public var colorOnBackgroundSecondaryInverse: ColorSemanticToken? = nil
    public var colorOnBackgroundSecondaryDark: ColorSemanticToken? = nil

    // MARK: Semantic token - Colors - On background - Tertiary

    public var colorOnBackgroundTertiaryLight: ColorSemanticToken? = nil
    public var colorOnBackgroundTertiaryInverse: ColorSemanticToken? = nil
    public var colorOnBackgroundTertiaryDark: ColorSemanticToken? = nil

    // MARK: Semantic token - Colors - On background - Status - Attrative - Muted

    public var colorOnBackgroundStatusAttractiveMutedLight: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    public var colorOnBackgroundStatusAttractiveMutedInverse: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    public var colorOnBackgroundStatusAttractiveMutedDark: ColorSemanticToken? = sysColorBrandNeutralMutedLower

    // MARK: Semantic token - Colors - On background - Status - Attrative - Emphasis

    public var colorOnBackgroundStatusAttractiveEmphasisLight: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    public var colorOnBackgroundStatusAttractiveEmphasisInverse: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    public var colorOnBackgroundStatusAttractiveEmphasisDark: ColorSemanticToken? = sysColorBrandNeutralMutedLower

    // MARK: Semantic token - Colors - On background - Status - Warning - Muted

    public var colorOnBackgroundStatusWarningMutedLight: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    public var colorOnBackgroundStatusWarningMutedInverse: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    public var colorOnBackgroundStatusWarningMutedDark: ColorSemanticToken? = sysColorBrandNeutralMutedLower

    // MARK: Semantic token - Colors - On background - Status - Warning - Emphasis

    public var colorOnBackgroundStatusWarningEmphasisLight: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    public var colorOnBackgroundStatusWarningEmphasisInverse: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    public var colorOnBackgroundStatusWarningEmphasisDark: ColorSemanticToken? = sysColorBrandNeutralMutedLower

    // MARK: Semantic token - Colors - On background - Status - Negative - Muted

    public var colorOnBackgroundStatusNegativeMutedLight: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    public var colorOnBackgroundStatusNegativeMutedInverse: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    public var colorOnBackgroundStatusNegativeMutedDark: ColorSemanticToken? = sysColorBrandNeutralMutedLower

    // MARK: Semantic token - Colors - On background - Status - Negative - Emphasis

    public var colorOnBackgroundStatusNegativeEmphasisLight: ColorSemanticToken? = sysColorBrandNeutralMutedWhite
    public var colorOnBackgroundStatusNegativeEmphasisInverse: ColorSemanticToken? = sysColorBrandNeutralMutedWhite
    public var colorOnBackgroundStatusNegativeEmphasisDark: ColorSemanticToken? = sysColorBrandNeutralMutedLower

    // MARK: Semantic token - Colors - On background - Status - Positive - Muted

    public var colorOnBackgroundStatusPositiveMutedLight: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    public var colorOnBackgroundStatusPositiveMutedInverse: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    public var colorOnBackgroundStatusPositiveMutedDark: ColorSemanticToken? = sysColorBrandNeutralMutedLower

    // MARK: Semantic token - Colors - On background - Status - Positive - Emphasis

    public var colorOnBackgroundStatusPositiveEmphasisLight: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    public var colorOnBackgroundStatusPositiveEmphasisInverse: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    public var colorOnBackgroundStatusPositiveEmphasisDark: ColorSemanticToken? = sysColorBrandNeutralMutedLower

    // MARK: Semantic token - Colors - On background - Status - Information - Muted

    public var colorOnBackgroundStatusInformationMutedLight: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    public var colorOnBackgroundStatusInformationMutedInverse: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    public var colorOnBackgroundStatusInformationMutedDark: ColorSemanticToken? = sysColorBrandNeutralMutedLower

    // MARK: Semantic token - Colors - On background - Status - Information - Emphasis

    public var colorOnBackgroundStatusInformationEmphasisLight: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    public var colorOnBackgroundStatusInformationEmphasisInverse: ColorSemanticToken? = sysColorBrandNeutralEmphasisBlack
    public var colorOnBackgroundStatusInformationEmphasisDark: ColorSemanticToken? = sysColorBrandNeutralMutedLower


}
