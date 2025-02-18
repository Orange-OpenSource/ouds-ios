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
import OUDSTokensRaw
import OUDSTokensSemantic

// swiftlint:disable identifier_name

extension OrangeThemeColorSemanticTokensProvider: ColorSemanticTokens {
    @objc public final var colorRepositoryNeutralMutedWhite: ColorSemanticToken { ColorRawTokens.colorFunctionalWhite }
    @objc public final var colorRepositoryNeutralMutedLowest: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray80 }
    @objc public final var colorRepositoryNeutralMutedLower: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray160 }
    @objc public final var colorRepositoryNeutralEmphasizedHighest: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray880 }
    @objc public final var colorRepositoryNeutralEmphasizedBlack: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }
    @objc public final var colorRepositoryNeutralEmphasizedHigh: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray720 }
    @objc public final var colorRepositoryNeutralEmphasizedMedium: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray640 }
    @objc public final var colorRepositoryNeutralEmphasizedHigher: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray800 }
    @objc public final var colorRepositoryAccentLowest: ColorSemanticToken { OrangeBrandColorRawTokens.colorWarmGray100 }
    @objc public final var colorRepositoryAccentLow: ColorSemanticToken { ColorRawTokens.colorFunctionalSun300 }
    @objc public final var colorRepositoryAccentDefault: ColorSemanticToken { ColorRawTokens.colorFunctionalSun500 }
    @objc public final var colorRepositoryAccentHighest: ColorSemanticToken { OrangeBrandColorRawTokens.colorWarmGray900 }
    @objc public final var colorRepositoryPrimaryLow: ColorSemanticToken { OrangeBrandColorRawTokens.colorOrange500 }
    @objc public final var colorRepositoryPrimaryDefault: ColorSemanticToken { OrangeBrandColorRawTokens.colorOrange550 }
    @objc public final var colorRepositoryOpacityBlackLowest: ColorSemanticToken { ColorRawTokens.colorOpacityBlack40 }
    @objc public final var colorRepositoryOpacityBlackLow: ColorSemanticToken { ColorRawTokens.colorOpacityBlack200 }
    @objc public final var colorRepositoryOpacityBlackHigh: ColorSemanticToken { ColorRawTokens.colorOpacityBlack520 }
    @objc public final var colorRepositoryOpacityBlackHigher: ColorSemanticToken { ColorRawTokens.colorOpacityBlack680 }
    @objc public final var colorRepositoryOpacityBlackHighest: ColorSemanticToken { ColorRawTokens.colorOpacityBlack840 }
    @objc public final var colorRepositoryOpacityBlackTransparent: ColorSemanticToken { ColorRawTokens.colorOpacityBlack0 }
    @objc public final var colorRepositoryOpacityBlackLower: ColorSemanticToken { ColorRawTokens.colorOpacityBlack80 }
    @objc public final var colorRepositoryOpacityBlackSoft: ColorSemanticToken { ColorRawTokens.colorOpacityBlack280 }
    @objc public final var colorRepositoryOpacityBlackMedium: ColorSemanticToken { ColorRawTokens.colorOpacityBlack440 }
    @objc public final var colorRepositoryOpacityWhiteHighest: ColorSemanticToken { ColorRawTokens.colorOpacityWhite920 }
    @objc public final var colorRepositoryOpacityWhiteHigh: ColorSemanticToken { ColorRawTokens.colorOpacityWhite640 }
    @objc public final var colorRepositoryOpacityWhiteLow: ColorSemanticToken { ColorRawTokens.colorOpacityWhite200 }
    @objc public final var colorRepositoryOpacityWhiteLowest: ColorSemanticToken { ColorRawTokens.colorOpacityWhite40 }
    @objc public final var colorRepositoryOpacityWhiteLower: ColorSemanticToken { ColorRawTokens.colorOpacityWhite80 }
    @objc public final var colorRepositoryOpacityWhiteTransparent: ColorSemanticToken { ColorRawTokens.colorOpacityWhite0 }
    @objc public final var colorRepositoryOpacityWhiteHigher: ColorSemanticToken { ColorRawTokens.colorOpacityWhite800 }
    @objc public final var colorRepositoryOpacityWhiteMedium: ColorSemanticToken { ColorRawTokens.colorOpacityWhite560 }
    @objc public final var colorRepositoryOpacityWarning: ColorSemanticToken { ColorRawTokens.colorOpacitySun }
    @objc public final var colorRepositoryOpacityNegative: ColorSemanticToken { ColorRawTokens.colorOpacityScarlet }
    @objc public final var colorRepositoryOpacityPositive: ColorSemanticToken { ColorRawTokens.colorOpacityMalachite }
    @objc public final var colorRepositoryOpacityInfo: ColorSemanticToken { ColorRawTokens.colorOpacityDodgerBlue }
    @objc public final var colorRepositoryPositiveLowest: ColorSemanticToken { ColorRawTokens.colorFunctionalMalachite100 }
    @objc public final var colorRepositoryPositiveLow: ColorSemanticToken { ColorRawTokens.colorFunctionalMalachite300 }
    @objc public final var colorRepositoryPositiveDefault: ColorSemanticToken { ColorRawTokens.colorFunctionalMalachite500 }
    @objc public final var colorRepositoryPositiveHigh: ColorSemanticToken { ColorRawTokens.colorFunctionalMalachite600 }
    @objc public final var colorRepositoryPositiveHighest: ColorSemanticToken { ColorRawTokens.colorFunctionalMalachite900 }
    @objc public final var colorRepositoryInfoLowest: ColorSemanticToken { ColorRawTokens.colorFunctionalDodgerBlue100 }
    @objc public final var colorRepositoryInfoLow: ColorSemanticToken { ColorRawTokens.colorFunctionalDodgerBlue300 }
    @objc public final var colorRepositoryInfoDefault: ColorSemanticToken { ColorRawTokens.colorFunctionalDodgerBlue500 }
    @objc public final var colorRepositoryInfoHighest: ColorSemanticToken { ColorRawTokens.colorFunctionalDodgerBlue900 }
    @objc public final var colorRepositoryWarningLowest: ColorSemanticToken { ColorRawTokens.colorFunctionalSun100 }
    @objc public final var colorRepositoryWarningLow: ColorSemanticToken { ColorRawTokens.colorFunctionalSun300 }
    @objc public final var colorRepositoryWarningDefault: ColorSemanticToken { ColorRawTokens.colorFunctionalSun500 }
    @objc public final var colorRepositoryWarningHighest: ColorSemanticToken { ColorRawTokens.colorFunctionalSun900 }
    @objc public final var colorRepositoryNegativeLowest: ColorSemanticToken { ColorRawTokens.colorFunctionalScarlet100 }
    @objc public final var colorRepositoryNegativeLower: ColorSemanticToken { ColorRawTokens.colorFunctionalScarlet200 }
    @objc public final var colorRepositoryNegativeLow: ColorSemanticToken { ColorRawTokens.colorFunctionalScarlet300 }
    @objc public final var colorRepositoryNegativeDefault: ColorSemanticToken { ColorRawTokens.colorFunctionalScarlet600 }
    @objc public final var colorRepositoryNegativeHigh: ColorSemanticToken { ColorRawTokens.colorFunctionalScarlet700 }
    @objc public final var colorRepositoryNegativeHigher: ColorSemanticToken { ColorRawTokens.colorFunctionalScarlet800 }
    @objc public final var colorRepositoryNegativeHighest: ColorSemanticToken { ColorRawTokens.colorFunctionalScarlet900 }
    @objc open var colorActionVisited: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst400 }
    @objc open var colorActionVisitedInverse: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst400 }
    @objc open var colorDecorativeBrandPrimary: ColorSemanticToken { OrangeBrandColorRawTokens.colorOrange500 }
    @objc open var colorDecorativeBrandSecondary: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }
    @objc open var colorDecorativeBrandTertiary: ColorSemanticToken { ColorRawTokens.colorFunctionalWhite }
    @objc open var colorDecorativeAccent1Muted: ColorSemanticToken { ColorRawTokens.colorDecorativeEmerald200 }
    @objc open var colorDecorativeAccent1Default: ColorSemanticToken { ColorRawTokens.colorDecorativeEmerald500 }
    @objc open var colorDecorativeAccent1Emphasized: ColorSemanticToken { ColorRawTokens.colorDecorativeEmerald700 }
    @objc open var colorDecorativeAccent2Muted: ColorSemanticToken { ColorRawTokens.colorDecorativeSky200 }
    @objc open var colorDecorativeAccent2Default: ColorSemanticToken { ColorRawTokens.colorDecorativeSky400 }
    @objc open var colorDecorativeAccent2Emphasized: ColorSemanticToken { ColorRawTokens.colorDecorativeSky700 }
    @objc open var colorDecorativeAccent3Muted: ColorSemanticToken { ColorRawTokens.colorFunctionalSun200 }
    @objc open var colorDecorativeAccent3Default: ColorSemanticToken { ColorRawTokens.colorFunctionalSun500 }
    @objc open var colorDecorativeAccent3Emphasized: ColorSemanticToken { ColorRawTokens.colorDecorativeAmber500 }
    @objc open var colorDecorativeAccent4Muted: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst200 }
    @objc open var colorDecorativeAccent4Default: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst400 }
    @objc open var colorDecorativeAccent4Emphasized: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst800 }
    @objc open var colorDecorativeAccent5Muted: ColorSemanticToken { ColorRawTokens.colorDecorativeShockingPink100 }
    @objc open var colorDecorativeAccent5Default: ColorSemanticToken { ColorRawTokens.colorDecorativeShockingPink200 }
    @objc open var colorDecorativeAccent5Emphasized: ColorSemanticToken { ColorRawTokens.colorDecorativeShockingPink300 }
    @objc open var colorDecorativeSkinTint100: ColorSemanticToken { ColorRawTokens.colorDecorativeDeepPeach100 }
    @objc open var colorDecorativeSkinTint200: ColorSemanticToken { ColorRawTokens.colorDecorativeDeepPeach200 }
    @objc open var colorDecorativeSkinTint300: ColorSemanticToken { ColorRawTokens.colorDecorativeDeepPeach300 }
    @objc open var colorDecorativeSkinTint400: ColorSemanticToken { ColorRawTokens.colorDecorativeDeepPeach400 }
    @objc open var colorDecorativeSkinTint500: ColorSemanticToken { ColorRawTokens.colorDecorativeDeepPeach500 }
    @objc open var colorDecorativeSkinTint600: ColorSemanticToken { ColorRawTokens.colorDecorativeDeepPeach600 }
    @objc open var colorDecorativeSkinTint700: ColorSemanticToken { ColorRawTokens.colorDecorativeDeepPeach700 }
    @objc open var colorDecorativeSkinTint800: ColorSemanticToken { ColorRawTokens.colorDecorativeDeepPeach800 }
    @objc open var colorDecorativeSkinTint900: ColorSemanticToken { ColorRawTokens.colorDecorativeDeepPeach900 }
    @objc open var colorDecorativeNeutralMutedLowest: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray80 }
    @objc open var colorDecorativeNeutralMutedLower: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray160 }
    @objc open var colorDecorativeNeutralMutedLow: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray240 }
    @objc open var colorDecorativeNeutralMutedMedium: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray320 }
    @objc open var colorDecorativeNeutralMutedHigh: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray400 }
    @objc open var colorDecorativeNeutralMutedHigher: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray800 }
    @objc open var colorDecorativeNeutralMutedHighest: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray960 }
    @objc open var colorDecorativeNeutralEmphasizedLowest: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray240 }
    @objc open var colorDecorativeNeutralEmphasizedLower: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray320 }
    @objc open var colorDecorativeNeutralEmphasizedLow: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray400 }
    @objc open var colorDecorativeNeutralEmphasizedHigher: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray640 }
    @objc open var colorChartGridlines: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray240 }
    @objc open var colorChartSequentialAccent1Tint100: ColorSemanticToken { ColorRawTokens.colorDecorativeSky900 }
    @objc open var colorChartSequentialAccent1Tint200: ColorSemanticToken { ColorRawTokens.colorDecorativeSky800 }
    @objc open var colorChartSequentialAccent1Tint300: ColorSemanticToken { ColorRawTokens.colorDecorativeSky700 }
    @objc open var colorChartSequentialAccent1Tint400: ColorSemanticToken { ColorRawTokens.colorDecorativeSky600 }
    @objc open var colorChartSequentialAccent1Tint500: ColorSemanticToken { ColorRawTokens.colorDecorativeSky500 }
    @objc open var colorChartSequentialAccent1Tint600: ColorSemanticToken { ColorRawTokens.colorDecorativeSky400 }
    @objc open var colorChartSequentialAccent1Tint700: ColorSemanticToken { ColorRawTokens.colorDecorativeSky300 }
    @objc open var colorChartSequentialAccent1Tint800: ColorSemanticToken { ColorRawTokens.colorDecorativeSky200 }
    @objc open var colorChartSequentialAccent1Tint900: ColorSemanticToken { ColorRawTokens.colorDecorativeSky100 }
    @objc open var colorChartSequentialAccent2Tint100: ColorSemanticToken { ColorRawTokens.colorDecorativeEmerald900 }
    @objc open var colorChartSequentialAccent2Tint200: ColorSemanticToken { ColorRawTokens.colorDecorativeEmerald800 }
    @objc open var colorChartSequentialAccent2Tint300: ColorSemanticToken { ColorRawTokens.colorDecorativeEmerald700 }
    @objc open var colorChartSequentialAccent2Tint400: ColorSemanticToken { ColorRawTokens.colorDecorativeEmerald600 }
    @objc open var colorChartSequentialAccent2Tint500: ColorSemanticToken { ColorRawTokens.colorDecorativeEmerald500 }
    @objc open var colorChartSequentialAccent2Tint600: ColorSemanticToken { ColorRawTokens.colorDecorativeEmerald400 }
    @objc open var colorChartSequentialAccent2Tint700: ColorSemanticToken { ColorRawTokens.colorDecorativeEmerald300 }
    @objc open var colorChartSequentialAccent2Tint800: ColorSemanticToken { ColorRawTokens.colorDecorativeEmerald200 }
    @objc open var colorChartSequentialAccent2Tint900: ColorSemanticToken { ColorRawTokens.colorDecorativeEmerald100 }
    @objc open var colorChartSequentialAccent3Tint100: ColorSemanticToken { ColorRawTokens.colorDecorativeShockingPink900 }
    @objc open var colorChartSequentialAccent3Tint200: ColorSemanticToken { ColorRawTokens.colorDecorativeShockingPink800 }
    @objc open var colorChartSequentialAccent3Tint300: ColorSemanticToken { ColorRawTokens.colorDecorativeShockingPink700 }
    @objc open var colorChartSequentialAccent3Tint400: ColorSemanticToken { ColorRawTokens.colorDecorativeShockingPink600 }
    @objc open var colorChartSequentialAccent3Tint500: ColorSemanticToken { ColorRawTokens.colorDecorativeShockingPink500 }
    @objc open var colorChartSequentialAccent3Tint600: ColorSemanticToken { ColorRawTokens.colorDecorativeShockingPink400 }
    @objc open var colorChartSequentialAccent3Tint700: ColorSemanticToken { ColorRawTokens.colorDecorativeShockingPink300 }
    @objc open var colorChartSequentialAccent3Tint800: ColorSemanticToken { ColorRawTokens.colorDecorativeShockingPink200 }
    @objc open var colorChartSequentialAccent3Tint900: ColorSemanticToken { ColorRawTokens.colorDecorativeShockingPink100 }
    @objc open var colorChartSequentialAccent4Tint100: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst900 }
    @objc open var colorChartSequentialAccent4Tint200: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst800 }
    @objc open var colorChartSequentialAccent4Tint300: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst700 }
    @objc open var colorChartSequentialAccent4Tint400: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst600 }
    @objc open var colorChartSequentialAccent4Tint500: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst500 }
    @objc open var colorChartSequentialAccent4Tint600: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst400 }
    @objc open var colorChartSequentialAccent4Tint700: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst300 }
    @objc open var colorChartSequentialAccent4Tint800: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst200 }
    @objc open var colorChartSequentialAccent4Tint900: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst100 }
    @objc open var colorChartSequentialAccent5Tint100: ColorSemanticToken { ColorRawTokens.colorDecorativeAmber900 }
    @objc open var colorChartSequentialAccent5Tint200: ColorSemanticToken { ColorRawTokens.colorDecorativeAmber800 }
    @objc open var colorChartSequentialAccent5Tint300: ColorSemanticToken { ColorRawTokens.colorDecorativeAmber700 }
    @objc open var colorChartSequentialAccent5Tint400: ColorSemanticToken { ColorRawTokens.colorDecorativeAmber600 }
    @objc open var colorChartSequentialAccent5Tint500: ColorSemanticToken { ColorRawTokens.colorDecorativeAmber500 }
    @objc open var colorChartSequentialAccent5Tint600: ColorSemanticToken { ColorRawTokens.colorDecorativeAmber400 }
    @objc open var colorChartSequentialAccent5Tint700: ColorSemanticToken { ColorRawTokens.colorDecorativeAmber300 }
    @objc open var colorChartSequentialAccent5Tint800: ColorSemanticToken { ColorRawTokens.colorDecorativeAmber200 }
    @objc open var colorChartSequentialAccent5Tint900: ColorSemanticToken { ColorRawTokens.colorDecorativeAmber100 }
    @objc open var colorChartHighlight: ColorSemanticToken { OrangeBrandColorRawTokens.colorOrange500 }
    @objc open var colorChartFunctionalPositive: ColorSemanticToken { ColorRawTokens.colorFunctionalMalachite600 }
    @objc open var colorChartFunctionalNegative: ColorSemanticToken { ColorRawTokens.colorFunctionalScarlet400 }
    @objc open var colorChartFunctionalWarning: ColorSemanticToken { ColorRawTokens.colorFunctionalSun500 }
    @objc open var colorChartFunctionalInfo: ColorSemanticToken { ColorRawTokens.colorFunctionalDodgerBlue500 }
    @objc open var colorChartCategoricalTier1: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst400 }
    @objc open var colorChartCategoricalTier2: ColorSemanticToken { ColorRawTokens.colorDecorativeEmerald500 }
    @objc open var colorChartCategoricalTier3: ColorSemanticToken { ColorRawTokens.colorDecorativeShockingPink300 }
    @objc open var colorChartCategoricalTier4: ColorSemanticToken { ColorRawTokens.colorDecorativeAmber600 }
    @objc open var colorChartCategoricalTier5: ColorSemanticToken { ColorRawTokens.colorDecorativeSky300 }
    @objc open var colorChartCategoricalTier6: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst500 }
    @objc open var colorChartCategoricalTier7: ColorSemanticToken { ColorRawTokens.colorDecorativeEmerald300 }
    @objc open var colorChartCategoricalTier8: ColorSemanticToken { ColorRawTokens.colorDecorativeShockingPink400 }
    @objc open var colorChartCategoricalTier9: ColorSemanticToken { ColorRawTokens.colorDecorativeAmber300 }
    @objc open var colorChartCategoricalTier10: ColorSemanticToken { ColorRawTokens.colorDecorativeSky500 }
    @objc open var colorChartNeutral: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray960 }
    @objc open var colorChartBorder: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray880 }
    @objc open var colorChartBorderContrast: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }
    @objc open var colorOpacityTransparent: ColorSemanticToken { ColorRawTokens.color🔥_repositoryOpacityWhiteTransparent }
    @objc open var colorOpacityTransparentInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryOpacityWhiteTransparent }
    @objc open var colorOpacityLower: ColorSemanticToken { ColorRawTokens.color🔥_repositoryOpacityWhiteLower }
    @objc open var colorOpacityLowerInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryOpacityWhiteLower }
    @objc open var colorOpacityLowest: ColorSemanticToken { ColorRawTokens.color🔥_repositoryOpacityWhiteLowest }
    @objc open var colorOpacityLowestInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryOpacityWhiteLowest }
    @objc open var colorBgPrimary: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralEmphasizedHighest }
    @objc open var colorBgSecondary: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralEmphasizedHigher }
    @objc open var colorBgTertiary: ColorSemanticToken { ColorRawTokens.color🔥_repositoryAccentHighest }
    @objc open var colorBgEmphasized: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralEmphasizedMedium }
    @objc open var colorSurfaceBrandPrimary: ColorSemanticToken { ColorRawTokens.color🔥_repositoryPrimaryLow }
    @objc open var colorSurfaceBrandPrimaryInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryPrimaryLow }
    @objc open var colorSurfaceStatusAccentMuted: ColorSemanticToken { ColorRawTokens.color🔥_repositoryAccentHighest }
    @objc open var colorSurfaceStatusAccentEmphasized: ColorSemanticToken { ColorRawTokens.color🔥_repositoryWarningLow }
    @objc open var colorSurfaceStatusAccentMutedInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryAccentHighest }
    @objc open var colorSurfaceStatusAccentEmphasizedInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryWarningLow }
    @objc open var colorSurfaceStatusWarningMuted: ColorSemanticToken { ColorRawTokens.color🔥_repositoryWarningHighest }
    @objc open var colorSurfaceStatusWarningEmphasized: ColorSemanticToken { ColorRawTokens.color🔥_repositoryWarningLow }
    @objc open var colorSurfaceStatusWarningMutedInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryWarningHighest }
    @objc open var colorSurfaceStatusWarningEmphasizedInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryWarningLow }
    @objc open var colorSurfaceStatusNegativeMuted: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNegativeHighest }
    @objc open var colorSurfaceStatusNegativeEmphasized: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNegativeLow }
    @objc open var colorSurfaceStatusNegativeMutedInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNegativeHighest }
    @objc open var colorSurfaceStatusNegativeEmphasizedInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNegativeLow }
    @objc open var colorSurfaceStatusPositiveMuted: ColorSemanticToken { ColorRawTokens.color🔥_repositoryPositiveHighest }
    @objc open var colorSurfaceStatusPositiveEmphasized: ColorSemanticToken { ColorRawTokens.color🔥_repositoryPositiveLow }
    @objc open var colorSurfaceStatusPositiveMutedInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryPositiveHighest }
    @objc open var colorSurfaceStatusPositiveEmphasizedInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryPositiveLow }
    @objc open var colorSurfaceStatusInfoMuted: ColorSemanticToken { ColorRawTokens.color🔥_repositoryInfoHighest }
    @objc open var colorSurfaceStatusInfoEmphasized: ColorSemanticToken { ColorRawTokens.color🔥_repositoryInfoLow }
    @objc open var colorSurfaceStatusInfoMutedInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryInfoHighest }
    @objc open var colorSurfaceStatusInfoEmphasizedInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryInfoLow }
    @objc open var colorSurfaceStatusNeutralMuted: ColorSemanticToken { ColorRawTokens.color🔥_repositoryOpacityWhiteLower }
    @objc open var colorSurfaceStatusNeutralMutedInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryOpacityWhiteLower }
    @objc open var colorSurfaceStatusNeutralEmphasized: ColorSemanticToken { ColorRawTokens.color🔥_repositoryOpacityWhiteHigher }
    @objc open var colorSurfaceStatusNeutralEmphasizedInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryOpacityWhiteHigher }
    @objc open var colorAlwaysBlack: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralEmphasizedBlack }
    @objc open var colorAlwaysWhite: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralMutedWhite }
    @objc open var colorAlwaysOnBlack: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralMutedLower }
    @objc open var colorAlwaysOnWhite: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralEmphasizedBlack }
    @objc open var colorOverlayDrag: ColorSemanticToken { ColorRawTokens.color🔥_repositoryOpacityWhiteLow }
    @objc open var colorOverlayDefault: ColorSemanticToken { ColorRawTokens.color🔥_repositoryOpacityWhiteLower }
    @objc open var colorOverlayEmphasized: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralMutedLower }
    @objc open var colorOverlayModal: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralEmphasizedMedium }
    @objc open var colorOverlayDragInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryOpacityWhiteLow }
    @objc open var colorOverlayDefaultInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryOpacityWhiteLower }
    @objc open var colorOverlayEmphasizedInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralMutedLower }
    @objc open var colorContentDefault: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralMutedLower }
    @objc open var colorContentBrandPrimary: ColorSemanticToken { ColorRawTokens.color🔥_repositoryPrimaryLow }
    @objc open var colorContentStatusWarning: ColorSemanticToken { ColorRawTokens.color🔥_repositoryWarningDefault }
    @objc open var colorContentStatusNegative: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNegativeDefault }
    @objc open var colorContentStatusPositive: ColorSemanticToken { ColorRawTokens.color🔥_repositoryPositiveDefault }
    @objc open var colorContentStatusInfo: ColorSemanticToken { ColorRawTokens.color🔥_repositoryInfoDefault }
    @objc open var colorContentMuted: ColorSemanticToken { ColorRawTokens.color🔥_repositoryOpacityWhiteHigh }
    @objc open var colorContentOnActionEnabled: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralEmphasizedBlack }
    @objc open var colorContentOnActionHover: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralEmphasizedBlack }
    @objc open var colorContentOnActionPressed: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralEmphasizedBlack }
    @objc open var colorContentOnActionDisabled: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralEmphasizedBlack }
    @objc open var colorContentOnActionFocus: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralEmphasizedBlack }
    @objc open var colorContentOnActionEnabledInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralEmphasizedBlack }
    @objc open var colorContentOnActionHoverInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralEmphasizedBlack }
    @objc open var colorContentOnActionPressedInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralEmphasizedBlack }
    @objc open var colorContentOnActionDisabledInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralEmphasizedBlack }
    @objc open var colorContentOnActionFocusInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralEmphasizedBlack }
    @objc open var colorContentOnActionLoading: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralEmphasizedBlack }
    @objc open var colorContentOnActionLoadingInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralEmphasizedBlack }
    @objc open var colorContentOnActionHighlighted: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralEmphasizedBlack }
    @objc open var colorContentOnActionHighlightedInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralMutedWhite }
    @objc open var colorContentOnStatusMuted: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralMutedLower }
    @objc open var colorContentOnStatusEmphasized: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralEmphasizedBlack }
    @objc open var colorContentOnStatusMutedInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralMutedLower }
    @objc open var colorContentOnStatusEmphasizedAlt: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralEmphasizedBlack }
    @objc open var colorContentOnStatusEmphasizedAltInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralEmphasizedBlack }
    @objc open var colorContentOnStatusEmphasizedInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralEmphasizedBlack }
    @objc open var colorContentOnBrandPrimary: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralEmphasizedBlack }
    @objc open var colorContentOnBrandPrimaryInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralEmphasizedBlack }
    @objc open var colorContentOnOverlayEmphasized: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralEmphasizedBlack }
    @objc open var colorContentOnOverlayEmphasizedInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralEmphasizedBlack }
    @objc open var colorContentDefaultInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralMutedLower }
    @objc open var colorContentMutedInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryOpacityWhiteHigh }
    @objc open var colorContentBrandPrimaryInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryPrimaryLow }
    @objc open var colorContentDisabledInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryOpacityWhiteLow }
    @objc open var colorContentDisabled: ColorSemanticToken { ColorRawTokens.color🔥_repositoryOpacityWhiteLow }
    @objc open var colorActionEnabled: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralMutedLower }
    @objc open var colorActionHover: ColorSemanticToken { ColorRawTokens.color🔥_repositoryOpacityWhiteHigh }
    @objc open var colorActionPressed: ColorSemanticToken { ColorRawTokens.color🔥_repositoryPrimaryLow }
    @objc open var colorActionDisabled: ColorSemanticToken { ColorRawTokens.color🔥_repositoryOpacityWhiteLow }
    @objc open var colorActionFocus: ColorSemanticToken { ColorRawTokens.color🔥_repositoryOpacityWhiteHigh }
    @objc open var colorActionEnabledInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralMutedLower }
    @objc open var colorActionHoverInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryOpacityWhiteHigh }
    @objc open var colorActionPressedInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryPrimaryLow }
    @objc open var colorActionDisabledInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryOpacityWhiteLow }
    @objc open var colorActionFocusInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryOpacityWhiteHigh }
    @objc open var colorActionSelected: ColorSemanticToken { ColorRawTokens.color🔥_repositoryPrimaryLow }
    @objc open var colorActionSelectedInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryPrimaryLow }
    @objc open var colorActionLoading: ColorSemanticToken { ColorRawTokens.color🔥_repositoryPrimaryLow }
    @objc open var colorActionLoadingInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryPrimaryLow }
    @objc open var colorActionSupportEnabledInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryOpacityWhiteLowest }
    @objc open var colorActionSupportEnabled: ColorSemanticToken { ColorRawTokens.color🔥_repositoryOpacityWhiteLowest }
    @objc open var colorActionSupportHover: ColorSemanticToken { ColorRawTokens.color🔥_repositoryOpacityWhiteLower }
    @objc open var colorActionSupportPressed: ColorSemanticToken { ColorRawTokens.color🔥_repositoryOpacityWhiteLower }
    @objc open var colorActionSupportLoading: ColorSemanticToken { ColorRawTokens.color🔥_repositoryOpacityWhiteLower }
    @objc open var colorActionSupportFocus: ColorSemanticToken { ColorRawTokens.color🔥_repositoryOpacityWhiteLower }
    @objc open var colorActionSupportHoverInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryOpacityWhiteLower }
    @objc open var colorActionSupportPressedInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryOpacityWhiteLower }
    @objc open var colorActionSupportLoadingInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryOpacityWhiteLower }
    @objc open var colorActionSupportFocusInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryOpacityWhiteLower }
    @objc open var colorActionNegativeEnabled: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNegativeLow }
    @objc open var colorActionNegativeHover: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNegativeLower }
    @objc open var colorActionNegativePressed: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNegativeLowest }
    @objc open var colorActionNegativeFocus: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNegativeLower }
    @objc open var colorActionNegativeLoading: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNegativeLowest }
    @objc open var colorActionNegativeEnabledInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNegativeLow }
    @objc open var colorActionNegativeHoverInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNegativeLower }
    @objc open var colorActionNegativePressedInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNegativeLowest }
    @objc open var colorActionNegativeLoadingInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNegativeLowest }
    @objc open var colorActionNegativeFocusInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNegativeLower }
    @objc open var colorActionHighlighted: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralMutedLower }
    @objc open var colorActionHighlightedInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralMutedLower }
    @objc open var colorBorderDefault: ColorSemanticToken { ColorRawTokens.color🔥_repositoryOpacityWhiteLow }
    @objc open var colorBorderEmphasized: ColorSemanticToken { ColorRawTokens.color🔥_repositoryOpacityWhiteHighest }
    @objc open var colorBorderBrandPrimary: ColorSemanticToken { ColorRawTokens.color🔥_repositoryPrimaryLow }
    @objc open var colorBorderOnBrandPrimary: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralEmphasizedBlack }
    @objc open var colorBorderOnBrandPrimaryInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralEmphasizedBlack }
    @objc open var colorBorderDefaultInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryOpacityWhiteLow }
    @objc open var colorBorderEmphasizedInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryOpacityWhiteHighest }
    @objc open var colorBorderBrandPrimaryInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryPrimaryLow }
    @objc open var colorBorderFocusInset: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralEmphasizedHighest }
    @objc open var colorBorderFocus: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralMutedLower }
    @objc open var colorBorderFocusInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralMutedLower }
    @objc open var colorBorderFocusInsetInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryNeutralEmphasizedHighest }
    @objc open var colorBorderMuted: ColorSemanticToken { ColorRawTokens.color🔥_repositoryOpacityWhiteLower }
    @objc open var colorBorderMutedInverse: ColorSemanticToken { ColorRawTokens.color🔥_repositoryOpacityWhiteLower }
    @objc open var colorContentDefault2: ColorSemanticToken { colorContentDefault }
    @objc open var colorActionFocus2: ColorSemanticToken { colorActionFocus }
}

// swiftlint:enable identifier_name
