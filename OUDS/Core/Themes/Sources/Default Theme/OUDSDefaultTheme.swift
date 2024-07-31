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
    
    // MARK: - From OUDSThemeContract / BorderSemanticTokens
    
    // MARK: Semantic token - Border - Width
    
    public var borderWidthNone: BorderWidthSemanticToken
    public var borderWidthDefault: BorderWidthSemanticToken
    public var borderWidthThin: BorderWidthSemanticToken
    public var borderWidthThick: BorderWidthSemanticToken
    public var borderWidthThicker: BorderWidthSemanticToken
    public var borderWidthThickest: BorderWidthSemanticToken
    public var borderWidthInterfactivePrimaryFocus: BorderWidthSemanticToken
    
    // MARK: Semantic token - Border - Radius
    
    public var borderRadiusNone: BorderRadiusSemanticToken
    public var borderRadiusDefault: BorderRadiusSemanticToken
    public var borderRadiusShort: BorderRadiusSemanticToken
    public var borderRadiusMedium: BorderRadiusSemanticToken
    public var borderRadiusTall: BorderRadiusSemanticToken
    public var borderRadiusPill: BorderRadiusSemanticToken
    
    // MARK: Semantic token - Border - Style
    
    public var borderStyleDefault: BorderStyleSemanticToken
    public var borderStyleDrag: BorderStyleSemanticToken
    
    // MARK: - From OUDSThemeContract / ColorSemanticTokens
    
    
    // MARK: Semantic token - Colors - Alias - Primary
    
    public var sysColorBrandPrimaryLowest: ColorAliasSemanticToken?
    public var sysColorBrandPrimaryLower: ColorAliasSemanticToken?
    public var sysColorBrandPrimaryLow: ColorAliasSemanticToken?
    public var sysColorBrandPrimaryDefault: ColorAliasSemanticToken?
    public var sysColorBrandPrimaryHigh: ColorAliasSemanticToken?
    public var sysColorBrandPrimaryHigher: ColorAliasSemanticToken?
    public var sysColorBrandPrimaryHighest: ColorAliasSemanticToken?
    
    // MARK: Semantic token - Colors - Alias - Secondary
    
    public var sysColorBrandSecondaryLowest: ColorAliasSemanticToken?
    public var sysColorBrandSecondaryLower: ColorAliasSemanticToken?
    public var sysColorBrandSecondaryLow: ColorAliasSemanticToken?
    public var sysColorBrandSecondaryDefault: ColorAliasSemanticToken?
    public var sysColorBrandSecondaryHigh: ColorAliasSemanticToken?
    public var sysColorBrandSecondaryHigher: ColorAliasSemanticToken?
    public var sysColorBrandSecondaryHighest: ColorAliasSemanticToken?
    
    // MARK: Semantic token - Colors - Alias - Tertiary
    
    public var sysColorBrandTertiaryLowest: ColorAliasSemanticToken?
    public var sysColorBrandTertiaryLower: ColorAliasSemanticToken?
    public var sysColorBrandTertiaryLow: ColorAliasSemanticToken?
    public var sysColorBrandTertiaryDefault: ColorAliasSemanticToken?
    public var sysColorBrandTertiaryHigh: ColorAliasSemanticToken?
    public var sysColorBrandTertiaryHigher: ColorAliasSemanticToken?
    public var sysColorBrandTertiaryHighest: ColorAliasSemanticToken?
    
    // MARK: Semantic token - Colors - Alias - Neutral - Muted
    
    public var sysColorBrandNeutralMutedWhite: ColorAliasSemanticToken?
    public var sysColorBrandNeutralMutedLowest: ColorAliasSemanticToken?
    public var sysColorBrandNeutralMutedLower: ColorAliasSemanticToken?
    public var sysColorBrandNeutralMutedLow: ColorAliasSemanticToken?
    public var sysColorBrandNeutralMutedMedium: ColorAliasSemanticToken?
    public var sysColorBrandNeutralMutedHigh: ColorAliasSemanticToken?
    public var sysColorBrandNeutralMutedHigher: ColorAliasSemanticToken?
    public var sysColorBrandNeutralMutedHighest: ColorAliasSemanticToken?
    
    // MARK: Semantic token - Colors - Alias - Neutral - Emphasis
    
    public var sysColorBrandNeutralEmphasisLowest: ColorAliasSemanticToken?
    public var sysColorBrandNeutralEmphasisLower: ColorAliasSemanticToken?
    public var sysColorBrandNeutralEmphasisLow: ColorAliasSemanticToken?
    public var sysColorBrandNeutralEmphasisMedium: ColorAliasSemanticToken?
    public var sysColorBrandNeutralEmphasisHigh: ColorAliasSemanticToken?
    public var sysColorBrandNeutralEmphasisHigher: ColorAliasSemanticToken?
    public var sysColorBrandNeutralEmphasisHighest: ColorAliasSemanticToken?
    public var sysColorBrandNeutralEmphasisBlack: ColorAliasSemanticToken?
    
    // MARK: Semantic token - Colors - Alias - Positive
    
    public var sysColorBrandPositiveLowest: ColorAliasSemanticToken?
    public var sysColorBrandPositiveLower: ColorAliasSemanticToken?
    public var sysColorBrandPositiveLow: ColorAliasSemanticToken?
    public var sysColorBrandPositiveDefault: ColorAliasSemanticToken?
    public var sysColorBrandPositiveHigh: ColorAliasSemanticToken?
    public var sysColorBrandPositiveHigher: ColorAliasSemanticToken?
    public var sysColorBrandPositiveHighest: ColorAliasSemanticToken?
    
    // MARK: Semantic token - Colors - Alias - Information
    
    public var sysColorBrandInformationLowest: ColorAliasSemanticToken?
    public var sysColorBrandInformationLower: ColorAliasSemanticToken?
    public var sysColorBrandInformationLow: ColorAliasSemanticToken?
    public var sysColorBrandInformationDefault: ColorAliasSemanticToken?
    public var sysColorBrandInformationHigh: ColorAliasSemanticToken?
    public var sysColorBrandInformationHigher: ColorAliasSemanticToken?
    public var sysColorBrandInformationHighest: ColorAliasSemanticToken?
    
    // MARK: Semantic token - Colors - Alias - Warning
    
    public var sysColorBrandWarningLowest: ColorAliasSemanticToken?
    public var sysColorBrandWarningLower: ColorAliasSemanticToken?
    public var sysColorBrandWarningLow: ColorAliasSemanticToken?
    public var sysColorBrandWarningDefault: ColorAliasSemanticToken?
    public var sysColorBrandWarningHigh: ColorAliasSemanticToken?
    public var sysColorBrandWarningHigher: ColorAliasSemanticToken?
    public var sysColorBrandWarningHighest: ColorAliasSemanticToken?
    
    // MARK: Semantic token - Colors - Alias - Negative
    
    public var sysColorBrandNegativeLowest: ColorAliasSemanticToken?
    public var sysColorBrandNegativeLower: ColorAliasSemanticToken?
    public var sysColorBrandNegativeLow: ColorAliasSemanticToken?
    public var sysColorBrandNegativeDefault: ColorAliasSemanticToken?
    public var sysColorBrandNegativeHigh: ColorAliasSemanticToken?
    public var sysColorBrandNegativeHigher: ColorAliasSemanticToken?
    public var sysColorBrandNegativeHighest: ColorAliasSemanticToken?
    
    // MARK: Semantic token - Colors - Alias - Attractive
    
    public var sysColorBrandAttractiveLowest: ColorAliasSemanticToken?
    public var sysColorBrandAttractiveLower: ColorAliasSemanticToken?
    public var sysColorBrandAttractiveLow: ColorAliasSemanticToken?
    public var sysColorBrandAttractiveMedium: ColorAliasSemanticToken?
    public var sysColorBrandAttractiveHigh: ColorAliasSemanticToken?
    public var sysColorBrandAttractiveHigher: ColorAliasSemanticToken?
    public var sysColorBrandAttractiveHighest: ColorAliasSemanticToken?
    
    // MARK: Semantic token - Colors - Background - Default - Primary
    
    public var colorBackgroundDefaultPrimaryLight: ColorSemanticToken?
    public var colorBackgroundDefaultPrimaryInverse: ColorSemanticToken?
    public var colorBackgroundDefaultPrimaryDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - Background - Default - Secondary
    
    public var colorBackgroundDefaultSecondaryLight: ColorSemanticToken?
    public var colorBackgroundDefaultSecondaryInverse: ColorSemanticToken?
    public var colorBackgroundDefaultSecondaryDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - Background - Default - Tertiary
    
    public var colorBackgroundDefaultTertiaryLight: ColorSemanticToken?
    public var colorBackgroundDefaultTertiaryInverse: ColorSemanticToken?
    public var colorBackgroundDefaultTertiaryDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - Background - Emphasis - Primary
    
    public var colorBackgroundEmphasisPrimaryLight: ColorSemanticToken?
    public var colorBackgroundEmphasisPrimaryInverse: ColorSemanticToken?
    public var colorBackgroundEmphasisPrimaryDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - Background - Emphasis - Secondary
    
    public var colorBackgroundEmphasisSecondaryLight: ColorSemanticToken?
    public var colorBackgroundEmphasisSecondaryInverse: ColorSemanticToken?
    public var colorBackgroundEmphasisSecondaryDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - Background - Brand - Primary
    
    public var colorBackgroundBrandPrimaryLight: ColorSemanticToken?
    public var colorBackgroundBrandPrimaryInverse: ColorSemanticToken?
    public var colorBackgroundBrandPrimaryDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - Background - Brand - Secondary
    
    public var colorBackgroundBrandSecondary: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - Background - Brand - Tertiary
    
    public var colorBackgroundBrandTertiary: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - Background - Status - Attractive - Muted
    
    public var colorBackgroundStatusAttractiveMutedLight: ColorSemanticToken?
    public var colorBackgroundStatusAttractiveMutedInverse: ColorSemanticToken?
    public var colorBackgroundStatusAttractiveMutedDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - Background - Status - Attractive - Emphasis
    
    public var colorBackgroundStatusAttractiveEmphasisLight: ColorSemanticToken?
    public var colorBackgroundStatusAttractiveEmphasisInverse: ColorSemanticToken?
    public var colorBackgroundStatusAttractiveEmphasisDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - Background - Status - Warning - Muted
    
    public var colorBackgroundStatusWarningMutedLight: ColorSemanticToken?
    public var colorBackgroundStatusWarningMutedInverse: ColorSemanticToken?
    public var colorBackgroundStatusWarningMutedDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - Background - Status - Warning - Emphasis
    
    public var colorBackgroundStatusWarningEmphasisLight: ColorSemanticToken?
    public var colorBackgroundStatusWarningEmphasisInverse: ColorSemanticToken?
    public var colorBackgroundStatusWarningEmphasisDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - Background - Status - Negative - Muted
    
    public var colorBackgroundStatusNegativeMutedLight: ColorSemanticToken?
    public var colorBackgroundStatusNegativeMutedInverse: ColorSemanticToken?
    public var colorBackgroundStatusNegativeMutedDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - Background - Status - Negative - Emphasis
    
    public var colorBackgroundStatusNegativeEmphasisLight: ColorSemanticToken?
    public var colorBackgroundStatusNegativeEmphasisInverse: ColorSemanticToken?
    public var colorBackgroundStatusNegativeEmphasisDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - Background - Status - Positive - Muted
    
    public var colorBackgroundStatusPositiveMutedLight: ColorSemanticToken?
    public var colorBackgroundStatusPositiveMutedInverse: ColorSemanticToken?
    public var colorBackgroundStatusPositiveMutedDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - Background - Status - Positive - Emphasis
    
    public var colorBackgroundStatusPositiveEmphasisLight: ColorSemanticToken?
    public var colorBackgroundStatusPositiveEmphasisInverse: ColorSemanticToken?
    public var colorBackgroundStatusPositiveEmphasisDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - Background - Status - Information - Muted
    
    public var colorBackgroundStatusInformationMutedLight: ColorSemanticToken?
    public var colorBackgroundStatusInformationMutedInverse: ColorSemanticToken?
    public var colorBackgroundStatusInformationMutedDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - Background - Status - Information - Emphasis
    
    public var colorBackgroundStatusInformationEmphasisLight: ColorSemanticToken?
    public var colorBackgroundStatusInformationEmphasisInverse: ColorSemanticToken?
    public var colorBackgroundStatusInformationEmphasisDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - Content - Default
    
    public var colorContentDefaultLight: ColorSemanticToken?
    public var colorContentDefaultInverse: ColorSemanticToken?
    public var colorContentDefaultDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - Content - Default - On background emphasis
    
    public var colorContentDefaultOnBackgroundEmphasisLight: ColorSemanticToken?
    public var colorContentDefaultOnBackgroundEmphasisInverse: ColorSemanticToken?
    public var colorContentDefaultOnBackgroundEmphasisDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - Content - Muted
    
    public var colorContentMutedLight: ColorSemanticToken?
    public var colorContentMutedInverse: ColorSemanticToken?
    public var colorContentMutedDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - Content - Muted - On background emphasis
    
    public var colorContentMutedOnBackgroundEmphasisLight: ColorSemanticToken?
    public var colorContentMutedOnBackgroundEmphasisInverse: ColorSemanticToken?
    public var colorContentMutedOnBackgroundEmphasisDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - Content - Brand - Primary
    
    public var colorContentBrandPrimaryLight: ColorSemanticToken?
    public var colorContentBrandPrimaryInverse: ColorSemanticToken?
    public var colorContentBrandPrimaryDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - Content - Brand - Primary - On background emphasis
    
    public var colorContentBrandPrimaryOnBackgroundEmphasisLight: ColorSemanticToken?
    public var colorContentBrandPrimaryOnBackgroundEmphasisInverse: ColorSemanticToken?
    public var colorContentBrandPrimaryOnBackgroundEmphasisDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - Content - Brand - Secondary
    
    public var colorContentBrandSecondaryLight: ColorSemanticToken?
    public var colorContentBrandSecondaryInverse: ColorSemanticToken?
    public var colorContentBrandSecondaryDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - Content - Brand - Tertiary
    
    public var colorContentBrandTertiaryLight: ColorSemanticToken?
    public var colorContentBrandTertiaryInverse: ColorSemanticToken?
    public var colorContentBrandTertiaryDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - Content - Status - Attractive
    
    public var colorContentStatusAttractiveLight: ColorSemanticToken?
    public var colorContentStatusAttractiveInverse: ColorSemanticToken?
    public var colorContentStatusAttractiveDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - Content - Status - Negative
    
    public var colorContentStatusNegativeLight: ColorSemanticToken?
    public var colorContentStatusNegativeInverse: ColorSemanticToken?
    public var colorContentStatusNegativeDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - Content - Status - Positive
    
    public var colorContentStatusPositiveLight: ColorSemanticToken?
    public var colorContentStatusPositiveInverse: ColorSemanticToken?
    public var colorContentStatusPositiveDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - Content - Status - Information
    
    public var colorContentStatusInformationLight: ColorSemanticToken?
    public var colorContentStatusInformationInverse: ColorSemanticToken?
    public var colorContentStatusInformationDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - Border - Default
    
    public var colorBorderDefaultLight: ColorSemanticToken?
    public var colorBorderDefaultInverse: ColorSemanticToken?
    public var colorBorderDefaultDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - Border - Default - On background emphasis
    
    public var colorBorderDefaultOnBackgroundEmphasisLight: ColorSemanticToken?
    public var colorBorderDefaultOnBackgroundEmphasisInverse: ColorSemanticToken?
    public var colorBorderDefaultOnBackgroundEmphasisDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - Border - Emphasis
    
    public var colorBorderEmphasisLight: ColorSemanticToken?
    public var colorBorderEmphasisInverse: ColorSemanticToken?
    public var colorBorderEmphasisDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - Border - Emphasis - On background emphasis
    
    public var colorBorderEmphasisOnBackgroundEmphasisLight: ColorSemanticToken?
    public var colorBorderEmphasisOnBackgroundEmphasisInverse: ColorSemanticToken?
    public var colorBorderEmphasisOnBackgroundEmphasisDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - Border - Brand - Primary
    
    public var colorBorderBrandPrimaryLight: ColorSemanticToken?
    public var colorBorderBrandPrimaryInverse: ColorSemanticToken?
    public var colorBorderBrandPrimaryDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - Border - Brand - Primary - On background emphasis
    
    public var colorBorderBrandPrimaryOnBackgroundEmphasisLight: ColorSemanticToken?
    public var colorBorderBrandPrimaryOnBackgroundEmphasisInverse: ColorSemanticToken?
    public var colorBorderBrandPrimaryOnBackgroundEmphasisDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - Border - Brand - Secondary
    
    public var colorBorderBrandSecondaryLight: ColorSemanticToken?
    public var colorBorderBrandSecondaryInverse: ColorSemanticToken?
    public var colorBorderBrandSecondaryDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - Border - Brand - Tertiary
    
    public var colorBorderBrandTertiaryLight: ColorSemanticToken?
    public var colorBorderBrandTertiaryInverse: ColorSemanticToken?
    public var colorBorderBrandTertiaryDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - Border - Status - Attractive
    
    public var colorBorderBrandStatusAttractiveLight: ColorSemanticToken?
    public var colorBorderBrandStatusAttractiveInverse: ColorSemanticToken?
    public var colorBorderBrandStatusAttractiveDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - Border - Status - Warning
    
    public var colorBorderBrandStatusWarningLight: ColorSemanticToken?
    public var colorBorderBrandStatusWarningInverse: ColorSemanticToken?
    public var colorBorderBrandStatusWarningDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - Border - Status - Negative
    
    public var colorBorderBrandStatusNegativeLight: ColorSemanticToken?
    public var colorBorderBrandStatusNegativeInverse: ColorSemanticToken?
    public var colorBorderBrandStatusNegativeDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - Border - Status - Positive
    
    public var colorBorderBrandStatusPositiveLight: ColorSemanticToken?
    public var colorBorderBrandStatusPositiveInverse: ColorSemanticToken?
    public var colorBorderBrandStatusPositiveDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - Border - Status - Information
    
    public var colorBorderBrandStatusInformationLight: ColorSemanticToken?
    public var colorBorderBrandStatusInformationInverse: ColorSemanticToken?
    public var colorBorderBrandStatusInformationDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - On background - Primary
    
    public var colorOnBackgroundPrimaryLight: ColorSemanticToken?
    public var colorOnBackgroundPrimaryInverse: ColorSemanticToken?
    public var colorOnBackgroundPrimaryDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - On background - Secondary
    
    public var colorOnBackgroundSecondaryLight: ColorSemanticToken?
    public var colorOnBackgroundSecondaryInverse: ColorSemanticToken?
    public var colorOnBackgroundSecondaryDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - On background - Tertiary
    
    public var colorOnBackgroundTertiaryLight: ColorSemanticToken?
    public var colorOnBackgroundTertiaryInverse: ColorSemanticToken?
    public var colorOnBackgroundTertiaryDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - On background - Status - Attrative - Muted
    
    public var colorOnBackgroundStatusAttractiveMutedLight: ColorSemanticToken?
    public var colorOnBackgroundStatusAttractiveMutedInverse: ColorSemanticToken?
    public var colorOnBackgroundStatusAttractiveMutedDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - On background - Status - Attrative - Emphasis
    
    public var colorOnBackgroundStatusAttractiveEmphasisLight: ColorSemanticToken?
    public var colorOnBackgroundStatusAttractiveEmphasisInverse: ColorSemanticToken?
    public var colorOnBackgroundStatusAttractiveEmphasisDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - On background - Status - Warning - Muted
    
    public var colorOnBackgroundStatusWarningMutedLight: ColorSemanticToken?
    public var colorOnBackgroundStatusWarningMutedInverse: ColorSemanticToken?
    public var colorOnBackgroundStatusWarningMutedDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - On background - Status - Warning - Emphasis
    
    public var colorOnBackgroundStatusWarningEmphasisLight: ColorSemanticToken?
    public var colorOnBackgroundStatusWarningEmphasisInverse: ColorSemanticToken?
    public var colorOnBackgroundStatusWarningEmphasisDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - On background - Status - Negative - Muted
    
    public var colorOnBackgroundStatusNegativeMutedLight: ColorSemanticToken?
    public var colorOnBackgroundStatusNegativeMutedInverse: ColorSemanticToken?
    public var colorOnBackgroundStatusNegativeMutedDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - On background - Status - Negative - Emphasis
    
    public var colorOnBackgroundStatusNegativeEmphasisLight: ColorSemanticToken?
    public var colorOnBackgroundStatusNegativeEmphasisInverse: ColorSemanticToken?
    public var colorOnBackgroundStatusNegativeEmphasisDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - On background - Status - Positive - Muted
    
    public var colorOnBackgroundStatusPositiveMutedLight: ColorSemanticToken?
    public var colorOnBackgroundStatusPositiveMutedInverse: ColorSemanticToken?
    public var colorOnBackgroundStatusPositiveMutedDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - On background - Status - Positive - Emphasis
    
    public var colorOnBackgroundStatusPositiveEmphasisLight: ColorSemanticToken?
    public var colorOnBackgroundStatusPositiveEmphasisInverse: ColorSemanticToken?
    public var colorOnBackgroundStatusPositiveEmphasisDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - On background - Status - Information - Muted
    
    public var colorOnBackgroundStatusInformationMutedLight: ColorSemanticToken?
    public var colorOnBackgroundStatusInformationMutedInverse: ColorSemanticToken?
    public var colorOnBackgroundStatusInformationMutedDark: ColorSemanticToken?
    
    // MARK: Semantic token - Colors - On background - Status - Information - Emphasis
    
    public var colorOnBackgroundStatusInformationEmphasisLight: ColorSemanticToken?
    public var colorOnBackgroundStatusInformationEmphasisInverse: ColorSemanticToken?
    public var colorOnBackgroundStatusInformationEmphasisDark: ColorSemanticToken?
    
    
    // MARK: - Initializer
    
    init() {
        borderWidthNone = BorderPrimitiveTokens.borderWidth0
        borderWidthDefault = BorderPrimitiveTokens.borderWidth25
        borderWidthThin = BorderPrimitiveTokens.borderWidth25
        borderWidthThick = BorderPrimitiveTokens.borderWidth50
        borderWidthThicker = BorderPrimitiveTokens.borderWidth75
        borderWidthThickest = BorderPrimitiveTokens.borderWidth100
        borderWidthInterfactivePrimaryFocus = BorderPrimitiveTokens.borderWidth100
        
        borderRadiusNone = BorderPrimitiveTokens.borderRadius0
        borderRadiusDefault = BorderPrimitiveTokens.borderRadius0
        borderRadiusShort = BorderPrimitiveTokens.borderRadius75
        borderRadiusMedium = BorderPrimitiveTokens.borderRadius150
        borderRadiusTall = BorderPrimitiveTokens.borderRadius300
        borderRadiusPill = BorderPrimitiveTokens.borderRadius9999
        
        borderStyleDefault = BorderPrimitiveTokens.borderStyleSolid
        borderStyleDrag = BorderPrimitiveTokens.borderStyleDashed
        
        sysColorBrandPrimaryLowest = nil
        sysColorBrandPrimaryLower = nil
        sysColorBrandPrimaryLow = ColorOrangePrimitiveTokens.colorBrandOrange500
        sysColorBrandPrimaryDefault = ColorOrangePrimitiveTokens.colorBrandOrange550
        sysColorBrandPrimaryHigh = nil
        sysColorBrandPrimaryHigher = nil
        sysColorBrandPrimaryHighest = nil

        sysColorBrandSecondaryLowest = nil
        sysColorBrandSecondaryLower = nil
        sysColorBrandSecondaryLow = nil
        sysColorBrandSecondaryDefault = nil
        sysColorBrandSecondaryHigh = nil
        sysColorBrandSecondaryHigher = nil
        sysColorBrandSecondaryHighest = nil

        sysColorBrandTertiaryLowest = nil
        sysColorBrandTertiaryLower = nil
        sysColorBrandTertiaryLow = nil
        sysColorBrandTertiaryDefault = nil
        sysColorBrandTertiaryHigh = nil
        sysColorBrandTertiaryHigher = nil
        sysColorBrandTertiaryHighest = nil

        sysColorBrandNeutralMutedWhite = ColorGlobalPrimitiveTokens.colorFunctionalWhite
        sysColorBrandNeutralMutedLowest = ColorGlobalPrimitiveTokens.colorFunctionalLightGray80
        sysColorBrandNeutralMutedLower = ColorGlobalPrimitiveTokens.colorFunctionalLightGray160
        sysColorBrandNeutralMutedLow = nil
        sysColorBrandNeutralMutedMedium = ColorGlobalPrimitiveTokens.colorFunctionalLightGray400
        sysColorBrandNeutralMutedHigh = ColorGlobalPrimitiveTokens.colorFunctionalLightGray560
        sysColorBrandNeutralMutedHigher = nil
        sysColorBrandNeutralMutedHighest = nil

        sysColorBrandNeutralEmphasisLowest = ColorGlobalPrimitiveTokens.colorFunctionalDarkGray400
        sysColorBrandNeutralEmphasisLower = ColorGlobalPrimitiveTokens.colorFunctionalDarkGray480
        sysColorBrandNeutralEmphasisLow = ColorGlobalPrimitiveTokens.colorFunctionalDarkGray560
        sysColorBrandNeutralEmphasisMedium = ColorGlobalPrimitiveTokens.colorFunctionalDarkGray640
        sysColorBrandNeutralEmphasisHigh = ColorGlobalPrimitiveTokens.colorFunctionalDarkGray720
        sysColorBrandNeutralEmphasisHigher = ColorGlobalPrimitiveTokens.colorFunctionalDarkGray800
        sysColorBrandNeutralEmphasisHighest = ColorGlobalPrimitiveTokens.colorFunctionalDarkGray880
        sysColorBrandNeutralEmphasisBlack = ColorGlobalPrimitiveTokens.colorFunctionalBlack

        sysColorBrandPositiveLowest = ColorGlobalPrimitiveTokens.colorFunctionalMalachite100
        sysColorBrandPositiveLower = nil
        sysColorBrandPositiveLow = nil
        sysColorBrandPositiveDefault = ColorGlobalPrimitiveTokens.colorFunctionalMalachite500
        sysColorBrandPositiveHigh = ColorGlobalPrimitiveTokens.colorFunctionalMalachite600
        sysColorBrandPositiveHigher = nil
        sysColorBrandPositiveHighest = ColorGlobalPrimitiveTokens.colorFunctionalMalachite800

        sysColorBrandInformationLowest = ColorGlobalPrimitiveTokens.colorFunctionalDodgerBlue100
        sysColorBrandInformationLower = nil
        sysColorBrandInformationLow = nil
        sysColorBrandInformationDefault = ColorGlobalPrimitiveTokens.colorFunctionalDodgerBlue500
        sysColorBrandInformationHigh = ColorGlobalPrimitiveTokens.colorFunctionalDodgerBlue600
        sysColorBrandInformationHigher = nil
        sysColorBrandInformationHighest = ColorGlobalPrimitiveTokens.colorFunctionalDodgerBlue800

        sysColorBrandWarningLowest = ColorGlobalPrimitiveTokens.colorFunctionalSun100
        sysColorBrandWarningLower = nil
        sysColorBrandWarningLow = nil
        sysColorBrandWarningDefault = ColorGlobalPrimitiveTokens.colorFunctionalSun500
        sysColorBrandWarningHigh = ColorGlobalPrimitiveTokens.colorFunctionalSun600
        sysColorBrandWarningHigher = nil
        sysColorBrandWarningHighest = ColorGlobalPrimitiveTokens.colorFunctionalSun800

        sysColorBrandNegativeLowest = ColorGlobalPrimitiveTokens.colorFunctionalScarlet100
        sysColorBrandNegativeLower = nil
        sysColorBrandNegativeLow = nil
        sysColorBrandNegativeDefault = ColorGlobalPrimitiveTokens.colorFunctionalScarlet500
        sysColorBrandNegativeHigh = ColorGlobalPrimitiveTokens.colorFunctionalScarlet600
        sysColorBrandNegativeHigher = nil
        sysColorBrandNegativeHighest = ColorGlobalPrimitiveTokens.colorFunctionalScarlet800

        sysColorBrandAttractiveLowest = ColorOrangePrimitiveTokens.colorBrandWarmGray100
        sysColorBrandAttractiveLower = nil
        sysColorBrandAttractiveLow = nil
        sysColorBrandAttractiveMedium = ColorGlobalPrimitiveTokens.colorFunctionalSun500
        sysColorBrandAttractiveHigh = ColorGlobalPrimitiveTokens.colorFunctionalSun600
        sysColorBrandAttractiveHigher = nil
        sysColorBrandAttractiveHighest = ColorOrangePrimitiveTokens.colorBrandWarmGray900

        colorBackgroundDefaultPrimaryLight = sysColorBrandNeutralMutedWhite
        colorBackgroundDefaultPrimaryInverse = sysColorBrandNeutralEmphasisBlack
        colorBackgroundDefaultPrimaryDark = sysColorBrandNeutralEmphasisHighest

        colorBackgroundDefaultSecondaryLight = sysColorBrandNeutralMutedLowest
        colorBackgroundDefaultSecondaryInverse = sysColorBrandNeutralEmphasisMedium
        colorBackgroundDefaultSecondaryDark = sysColorBrandNeutralEmphasisHigher

        colorBackgroundDefaultTertiaryLight = sysColorBrandAttractiveLowest
        colorBackgroundDefaultTertiaryInverse = sysColorBrandAttractiveHighest
        colorBackgroundDefaultTertiaryDark = sysColorBrandAttractiveHighest

        colorBackgroundEmphasisPrimaryLight = sysColorBrandNeutralEmphasisBlack
        colorBackgroundEmphasisPrimaryInverse = sysColorBrandNeutralMutedWhite
        colorBackgroundEmphasisPrimaryDark = sysColorBrandNeutralEmphasisMedium

        colorBackgroundEmphasisSecondaryLight = sysColorBrandNeutralEmphasisMedium
        colorBackgroundEmphasisSecondaryInverse = sysColorBrandNeutralMutedLowest
        colorBackgroundEmphasisSecondaryDark = sysColorBrandNeutralEmphasisHigh

        colorBackgroundBrandPrimaryLight = sysColorBrandPrimaryDefault
        colorBackgroundBrandPrimaryInverse = sysColorBrandPrimaryDefault
        colorBackgroundBrandPrimaryDark = sysColorBrandPrimaryLow

        colorBackgroundBrandSecondary = nil

        colorBackgroundBrandTertiary = nil

        colorBackgroundStatusAttractiveMutedLight = sysColorBrandAttractiveLowest
        colorBackgroundStatusAttractiveMutedInverse = sysColorBrandAttractiveLowest
        colorBackgroundStatusAttractiveMutedDark = sysColorBrandAttractiveHighest

        colorBackgroundStatusAttractiveEmphasisLight = sysColorBrandWarningDefault
        colorBackgroundStatusAttractiveEmphasisInverse = sysColorBrandWarningDefault
        colorBackgroundStatusAttractiveEmphasisDark = sysColorBrandWarningHighest

        colorBackgroundStatusWarningMutedLight = sysColorBrandWarningLowest
        colorBackgroundStatusWarningMutedInverse = sysColorBrandWarningLowest
        colorBackgroundStatusWarningMutedDark = sysColorBrandNeutralEmphasisHigh

        colorBackgroundStatusWarningEmphasisLight = sysColorBrandWarningDefault
        colorBackgroundStatusWarningEmphasisInverse = sysColorBrandWarningDefault
        colorBackgroundStatusWarningEmphasisDark = sysColorBrandWarningHighest

        colorBackgroundStatusNegativeMutedLight = sysColorBrandNegativeLowest
        colorBackgroundStatusNegativeMutedInverse = sysColorBrandNegativeLowest
        colorBackgroundStatusNegativeMutedDark = sysColorBrandNeutralEmphasisHigh

        colorBackgroundStatusNegativeEmphasisLight = sysColorBrandNegativeDefault
        colorBackgroundStatusNegativeEmphasisInverse = sysColorBrandNegativeDefault
        colorBackgroundStatusNegativeEmphasisDark = sysColorBrandNegativeHighest

        colorBackgroundStatusPositiveMutedLight = sysColorBrandPositiveLowest
        colorBackgroundStatusPositiveMutedInverse = sysColorBrandPositiveLowest
        colorBackgroundStatusPositiveMutedDark = sysColorBrandNeutralEmphasisHigh

        colorBackgroundStatusPositiveEmphasisLight = sysColorBrandPositiveDefault
        colorBackgroundStatusPositiveEmphasisInverse = sysColorBrandPositiveDefault
        colorBackgroundStatusPositiveEmphasisDark = sysColorBrandPositiveHighest

        colorBackgroundStatusInformationMutedLight = sysColorBrandInformationLowest
        colorBackgroundStatusInformationMutedInverse = sysColorBrandInformationLowest
        colorBackgroundStatusInformationMutedDark = sysColorBrandNeutralEmphasisHigh

        colorBackgroundStatusInformationEmphasisLight = sysColorBrandInformationDefault
        colorBackgroundStatusInformationEmphasisInverse = sysColorBrandInformationDefault
        colorBackgroundStatusInformationEmphasisDark = sysColorBrandInformationHighest

        colorContentDefaultLight = sysColorBrandNeutralEmphasisBlack
        colorContentDefaultInverse = sysColorBrandNeutralMutedWhite
        colorContentDefaultDark = sysColorBrandNeutralMutedLower

        colorContentDefaultOnBackgroundEmphasisLight = sysColorBrandNeutralMutedWhite
        colorContentDefaultOnBackgroundEmphasisInverse = sysColorBrandNeutralEmphasisBlack
        colorContentDefaultOnBackgroundEmphasisDark = sysColorBrandNeutralMutedLower

        colorContentMutedLight = sysColorBrandNeutralEmphasisLowest
        colorContentMutedInverse = sysColorBrandNeutralEmphasisMedium
        colorContentMutedDark = sysColorBrandNeutralEmphasisHigh

        colorContentMutedOnBackgroundEmphasisLight = sysColorBrandNeutralMutedMedium
        colorContentMutedOnBackgroundEmphasisInverse = sysColorBrandNeutralEmphasisLowest
        colorContentMutedOnBackgroundEmphasisDark = sysColorBrandNeutralMutedHigh

        colorContentBrandPrimaryLight = sysColorBrandPrimaryDefault
        colorContentBrandPrimaryInverse = sysColorBrandPrimaryLow
        colorContentBrandPrimaryDark = sysColorBrandPrimaryLow

        colorContentBrandPrimaryOnBackgroundEmphasisLight = sysColorBrandPrimaryLow
        colorContentBrandPrimaryOnBackgroundEmphasisInverse = sysColorBrandPrimaryDefault
        colorContentBrandPrimaryOnBackgroundEmphasisDark = sysColorBrandPrimaryLow

        colorContentBrandSecondaryLight = nil
        colorContentBrandSecondaryInverse = nil
        colorContentBrandSecondaryDark = nil

        colorContentBrandTertiaryLight = nil
        colorContentBrandTertiaryInverse = nil
        colorContentBrandTertiaryDark = nil

        colorContentStatusAttractiveLight = nil
        colorContentStatusAttractiveInverse = nil
        colorContentStatusAttractiveDark = nil

        colorContentStatusNegativeLight = sysColorBrandNegativeDefault
        colorContentStatusNegativeInverse = sysColorBrandNegativeDefault
        colorContentStatusNegativeDark = sysColorBrandNegativeDefault

        colorContentStatusPositiveLight = sysColorBrandPositiveDefault
        colorContentStatusPositiveInverse = sysColorBrandPositiveDefault
        colorContentStatusPositiveDark = sysColorBrandPositiveDefault

        colorContentStatusInformationLight = sysColorBrandInformationDefault
        colorContentStatusInformationInverse = sysColorBrandInformationDefault
        colorContentStatusInformationDark = sysColorBrandInformationDefault

        colorBorderDefaultLight = sysColorBrandNeutralMutedMedium
        colorBorderDefaultInverse = sysColorBrandNeutralEmphasisLowest
        colorBorderDefaultDark = sysColorBrandNeutralEmphasisLowest

        colorBorderDefaultOnBackgroundEmphasisLight = sysColorBrandNeutralEmphasisLowest
        colorBorderDefaultOnBackgroundEmphasisInverse = sysColorBrandNeutralMutedMedium
        colorBorderDefaultOnBackgroundEmphasisDark = sysColorBrandNeutralEmphasisLowest

        colorBorderEmphasisLight = sysColorBrandNeutralEmphasisBlack
        colorBorderEmphasisInverse = sysColorBrandNeutralMutedWhite
        colorBorderEmphasisDark = sysColorBrandNeutralMutedLower

        colorBorderEmphasisOnBackgroundEmphasisLight = sysColorBrandNeutralMutedWhite
        colorBorderEmphasisOnBackgroundEmphasisInverse = sysColorBrandNeutralEmphasisBlack
        colorBorderEmphasisOnBackgroundEmphasisDark = sysColorBrandNeutralMutedLower

        colorBorderBrandPrimaryLight = sysColorBrandPrimaryDefault
        colorBorderBrandPrimaryInverse = sysColorBrandPrimaryLow
        colorBorderBrandPrimaryDark = sysColorBrandPrimaryLow

        colorBorderBrandPrimaryOnBackgroundEmphasisLight = sysColorBrandPrimaryLow
        colorBorderBrandPrimaryOnBackgroundEmphasisInverse = sysColorBrandPrimaryDefault
        colorBorderBrandPrimaryOnBackgroundEmphasisDark = sysColorBrandPrimaryLow

        colorBorderBrandSecondaryLight = nil
        colorBorderBrandSecondaryInverse = nil
        colorBorderBrandSecondaryDark = nil

        colorBorderBrandTertiaryLight = nil
        colorBorderBrandTertiaryInverse = nil
        colorBorderBrandTertiaryDark = nil

        colorBorderBrandStatusAttractiveLight = nil
        colorBorderBrandStatusAttractiveInverse = nil
        colorBorderBrandStatusAttractiveDark = nil

        colorBorderBrandStatusWarningLight = nil
        colorBorderBrandStatusWarningInverse = nil
        colorBorderBrandStatusWarningDark = nil

        colorBorderBrandStatusNegativeLight = nil
        colorBorderBrandStatusNegativeInverse = nil
        colorBorderBrandStatusNegativeDark = nil

        colorBorderBrandStatusPositiveLight = nil
        colorBorderBrandStatusPositiveInverse = nil
        colorBorderBrandStatusPositiveDark = nil

        colorBorderBrandStatusInformationLight = nil
        colorBorderBrandStatusInformationInverse = nil
        colorBorderBrandStatusInformationDark = nil

        colorOnBackgroundPrimaryLight = sysColorBrandNeutralMutedWhite
        colorOnBackgroundPrimaryInverse = sysColorBrandNeutralMutedWhite
        colorOnBackgroundPrimaryDark = sysColorBrandNeutralEmphasisHighest

        colorOnBackgroundSecondaryLight = nil
        colorOnBackgroundSecondaryInverse = nil
        colorOnBackgroundSecondaryDark = nil

        colorOnBackgroundTertiaryLight = nil
        colorOnBackgroundTertiaryInverse = nil
        colorOnBackgroundTertiaryDark = nil

        colorOnBackgroundStatusAttractiveMutedLight = sysColorBrandNeutralEmphasisBlack
        colorOnBackgroundStatusAttractiveMutedInverse = sysColorBrandNeutralEmphasisBlack
        colorOnBackgroundStatusAttractiveMutedDark = sysColorBrandNeutralMutedLower

        colorOnBackgroundStatusAttractiveEmphasisLight = sysColorBrandNeutralEmphasisBlack
        colorOnBackgroundStatusAttractiveEmphasisInverse = sysColorBrandNeutralEmphasisBlack
        colorOnBackgroundStatusAttractiveEmphasisDark = sysColorBrandNeutralMutedLower

        colorOnBackgroundStatusWarningMutedLight = sysColorBrandNeutralEmphasisBlack
        colorOnBackgroundStatusWarningMutedInverse = sysColorBrandNeutralEmphasisBlack
        colorOnBackgroundStatusWarningMutedDark = sysColorBrandNeutralMutedLower

        colorOnBackgroundStatusWarningEmphasisLight = sysColorBrandNeutralEmphasisBlack
        colorOnBackgroundStatusWarningEmphasisInverse = sysColorBrandNeutralEmphasisBlack
        colorOnBackgroundStatusWarningEmphasisDark = sysColorBrandNeutralMutedLower

        colorOnBackgroundStatusNegativeMutedLight = sysColorBrandNeutralEmphasisBlack
        colorOnBackgroundStatusNegativeMutedInverse = sysColorBrandNeutralEmphasisBlack
        colorOnBackgroundStatusNegativeMutedDark = sysColorBrandNeutralMutedLower

        colorOnBackgroundStatusNegativeEmphasisLight = sysColorBrandNeutralMutedWhite
        colorOnBackgroundStatusNegativeEmphasisInverse = sysColorBrandNeutralMutedWhite
        colorOnBackgroundStatusNegativeEmphasisDark = sysColorBrandNeutralMutedLower

        colorOnBackgroundStatusPositiveMutedLight = sysColorBrandNeutralEmphasisBlack
        colorOnBackgroundStatusPositiveMutedInverse = sysColorBrandNeutralEmphasisBlack
        colorOnBackgroundStatusPositiveMutedDark = sysColorBrandNeutralMutedLower

        colorOnBackgroundStatusPositiveEmphasisLight = sysColorBrandNeutralEmphasisBlack
        colorOnBackgroundStatusPositiveEmphasisInverse = sysColorBrandNeutralEmphasisBlack
        colorOnBackgroundStatusPositiveEmphasisDark = sysColorBrandNeutralMutedLower

        colorOnBackgroundStatusInformationMutedLight = sysColorBrandNeutralEmphasisBlack
        colorOnBackgroundStatusInformationMutedInverse = sysColorBrandNeutralEmphasisBlack
        colorOnBackgroundStatusInformationMutedDark = sysColorBrandNeutralMutedLower

        colorOnBackgroundStatusInformationEmphasisLight = sysColorBrandNeutralEmphasisBlack
        colorOnBackgroundStatusInformationEmphasisInverse = sysColorBrandNeutralEmphasisBlack
        colorOnBackgroundStatusInformationEmphasisDark = sysColorBrandNeutralMutedLower


    }
}
