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
import OUDSThemesOrange
import OUDSTokensRaw
import OUDSTokensSemantic

// ଘ( ･ω･)_/ﾟ･:*:･｡☆
// [File to generate with the tokenator]
// WARNING: Not synchronized anymore with the Figjam

// swiftlint:disable line_length
// swiftlint:disable file_length

/// Overrides some colors using values defined in extension of `ColorRawTokens` in this current module.
/// Some tokens do not have values assigned in the design system, and must be overriden.
extension InverseTheme {

    // MARK: Semantic token - Colors - Background

    override public var colorBackgroundPrimary: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray880) }

    override public var colorBackgroundSecondary: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray720) }

    override public var colorBackgroundTertiary: ColorSemanticToken { MultipleColorTokens(OrangeBrandColorRawTokens.colorWarmGray900) }

    override public var colorBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorBackgroundBrandPrimary: ColorSemanticToken { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange500) }

    override public var colorBackgroundBrandSecondary: ColorSemanticToken { fatalError("🤖 No value defined for colorBackgroundBrandSecondary!") }

    override public var colorBackgroundBrandTertiary: ColorSemanticToken { fatalError("🤖 No value defined for colorBackgroundBrandTertiary!") }

    override public var colorBackgroundStatusNeutral: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray720) }

    override public var colorBackgroundStatusNeutralOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray80) }

    override public var colorBackgroundStatusPositiveMuted: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalMalachite100) }

    override public var colorBackgroundStatusPositiveMutedOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalMalachite100) }

    override public var colorBackgroundStatusPositiveEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalMalachite500) }

    override public var colorBackgroundStatusInfoMuted: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDodgerBlue900) }

    override public var colorBackgroundStatusInfoMutedOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDodgerBlue100) }

    override public var colorBackgroundStatusInfoEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDodgerBlue500) }

    override public var colorBackgroundStatusWarningMuted: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalSun900) }

    override public var colorBackgroundStatusWarningMutedOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalSun100) }

    override public var colorBackgroundStatusWarningEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalSun500) }

    override public var colorBackgroundStatusNegativeMuted: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet900) }

    override public var colorBackgroundStatusNegativeMutedOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet100) }

    override public var colorBackgroundStatusNegativeEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet600) }

    override public var colorBackgroundStatusAccentMuted: ColorSemanticToken { MultipleColorTokens(OrangeBrandColorRawTokens.colorWarmGray900) }

    override public var colorBackgroundStatusAccentMutedOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(OrangeBrandColorRawTokens.colorWarmGray100) }

    override public var colorBackgroundStatusAccentEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalSun500) }

    // MARK: Semantic token - Colors - Content

    override public var colorContentDefault: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorContentContentDefaultOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorContentMuted: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray400) }

    override public var colorContentContentMutedOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray400) }

    override public var colorContentDisabled: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray400) }

    override public var colorContentContentDisabledOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray400) }

    override public var colorContentBrandPrimary: ColorSemanticToken { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange500) }

    override public var colorContentBrandSecondary: ColorSemanticToken { fatalError("🤖 No value defined for colorContentBrandSecondary!") }

    override public var colorContentBrandTertiary: ColorSemanticToken { fatalError("🤖 No value defined for colorContentBrandTertiary!") }

    override public var colorContentStatusPositive: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalMalachite500) }

    override public var colorContentStatusInfo: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDodgerBlue500) }

    override public var colorContentStatusWarning: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalSun500) }

    override public var colorContentStatusNegative: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet600) }

    override public var colorContentStatusAccent: ColorSemanticToken { fatalError("🤖 No value defined for colorContentStatusAccent!") }

    // MARK: Semantic token - Colors - Content - On Background

    override public var colorContentOnBgPrimary: ColorSemanticToken { MultipleColorTokens( ColorRawTokens.colorFunctionalBlack) }

    override public var colorContentOnBgSecondary: ColorSemanticToken { fatalError("🤖 No value defined for colorContentOnBgSecondary!") }

    override public var colorContentOnBgTertiary: ColorSemanticToken { fatalError("🤖 No value defined for colorContentOnBgTertiary!") }

    override public var colorContentOnBgStatusPositiveMuted: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorContentOnBgStatusPositiveMutedOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorContentOnBgStatusPositiveEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorContentOnBgStatusInfoMuted: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorContentOnBgStatusInfoMutedOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorContentOnBgStatusInfoEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorContentOnBgStatusWarningMuted: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorContentOnBgStatusWarningMutedOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorContentOnBgStatusWarningEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorContentOnBgStatusNegativeMuted: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorContentOnBgStatusNegativeMutedOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorContentOnBgStatusNegativeEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorContentOnBgStatusAccentMuted: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorContentOnBgStatusAccentMutedOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorContentOnBgStatusAccentedEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    // MARK: Semantic token - Colors - Border

    override public var colorBorderDefault: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray400) }

    override public var colorBorderDefaultOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray400) }

    override public var colorBorderEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorBorderEmphasizedOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorBorderFocus: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray880) }

    override public var colorBorderBrandPrimaryOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange550) }

    override public var colorBorderBrandPrimary: ColorSemanticToken { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange500) }

    override public var colorBorderBrandSecondary: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderBrandSecondary!") }

    override public var colorBorderBrandTertiary: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderBrandTertiary!") }

    override public var colorBorderStatusPositive: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderStatusPositive!") }

    override public var colorBorderStatusInfo: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderStatusInfo!") }

    override public var colorBorderStatusWarning: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderStatusWarning!") }

    override public var colorBorderStatusNegative: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderStatusNegative!") }

    override public var colorBorderStatusAccent: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderStatusAccent!") }

    override public var colorBorderOnBgBrandPrimary: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorBorderOnBgBrandSecondary: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderOnBgBrandSecondary!") }

    override public var colorBorderOnBgBrandTertiary: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderOnBgBrandTertiary!") }

    // MARK: Semantic token - Colors - Action

    override public var colorActionSelected: ColorSemanticToken { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange500) }

    override public var colorActionSelectedOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange550) }

    override public var colorActionDisabled: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray400) }

    override public var colorActionDisabledOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray400) }

    override public var colorActionVisited: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeAmethyst400) }

    override public var colorActionVistedOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeAmethyst600) }

    override public var colorActionPrimaryEnabled: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorActionPrimaryEnabledOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorActionPrimaryHover: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray400) }

    override public var colorActionPrimaryHoverOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray400) }

    override public var colorActionPrimaryPressed: ColorSemanticToken { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange500) }

    override public var colorActionPrimaryPressedOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange550) }

    override public var colorActionPrimaryLoading: ColorSemanticToken { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange500) }

    override public var colorActionPrimaryLoadingOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange550) }

    override public var colorActionPrimaryFocus: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray400) }

    override public var colorActionPrimaryFocusOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray400) }

    override public var colorActionSecondaryEnabled: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorActionSecondaryEnabledOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray80) }

    override public var colorActionSecondaryHover: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray640) }

    override public var colorActionSecondaryHoverOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorActionSecondaryPressed: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray640) }

    override public var colorActionSecondaryPressedOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorActionSecondaryLoading: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray640) }

    override public var colorActionSecondaryLoadingOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorActionSecondaryFocus: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray640) }

    override public var colorActionSecondaryFocusOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorActionNegativeEnabled: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet600) }

    override public var colorActionNegativeHover: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet700) }

    override public var colorActionNegativePressed: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet800) }

    override public var colorActionNegativeLoading: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet800) }

    override public var colorActionNegativeFocus: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet700) }

    override public var colorActionOnBgActionDisabled: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorActionOnBgActionDisabledOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorActionOnBgActionNegative: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorActionOnBgActionPrimaryEnabled: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorActionOnBgActionPrimaryEnabledOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorActionOnBgActionPrimaryHover: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorActionOnBgActionPrimaryHoverOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorActionOnBgActionPrimaryPressed: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorActionOnBgActionPrimaryPressedOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorActionOnBgActionPrimaryLoading: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorActionOnBgActionPrimaryLoadingOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorActionOnBgActionPrimaryFocus: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorActionOnBgActionPrimaryFocusOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorActionOnBgActionSecondaryEnabled: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryEnabled!") }

    override public var colorActionOnBgActionSecondaryEnabledOnBgEmphasized: ColorSemanticToken {  fatalError("🤖 No value defined for colorActionOnBgActionSecondaryEnabledOnBgEmphasized!") }

    override public var colorActionOnBgActionSecondaryHover: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryHover!") }

    override public var colorActionOnBgActionSecondaryHoverOnBgEmphasized: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryHoverOnBgEmphasized!") }

    override public var colorActionOnBgActionSecondaryPressed: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryPressed!") }

    override public var colorActionOnBgActionSecondaryPressedOnBgEmphasized: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryPressedOnBgEmphasized!") }

    override public var colorActionOnBgActionSecondaryLoading: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryLoading!") }

    override public var colorActionOnBgActionSecondaryLoadingOnBgEmphasized: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryLoadingOnBgEmphasized!") }

    override public var colorActionOnBgActionSecondaryFocus: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryFocus!") }

    override public var colorActionOnBgActionSecondaryFocusOnBgEmphasized: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryFocusOnBgEmphasized!") }

    // MARK: Semantic token - Colors - Elevation

    override public var colorElevationRaised: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray800) }

    override public var colorElevationRaisedOnBgSecondary: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray640) }

    override public var colorElevationRaisedOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorElevationDrag: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray720) }

    override public var colorElevationDragOnBgSecondary: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray480) }

    override public var colorElevationDragOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray80) }

    override public var colorElevationOverlayDefault: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray720) }

    override public var colorElevationOverlayDefaultOnBgSecondary: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray560) }

    override public var colorElevationOverlayDefaultOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorElevationOverlayEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray80) }

    override public var colorElevationOverlayEmphasizedOnBgSecondary: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray80) }

    override public var colorElevationOverlayEmphasizedOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray640) }

    override public var colorElevationModal: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray640) }

    // MARK: Semantic token - Colors - Decorative

    override public var colorDecorativePrimary: ColorSemanticToken { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange500) }

    override public var colorDecorativeSecondary: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorDecorativeTertiary: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorDecorativeNeutralMuted: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray640) }

    override public var colorDecorativeNeutralDefault: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray400) }

    override public var colorDecorativeNeutralEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorDecorativeAccent1Muted: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeEmerald200) }

    override public var colorDecorativeAccent1Default: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeEmerald500) }

    override public var colorDecorativeAccent1Emphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeEmerald700) }

    override public var colorDecorativeAccent2Muted: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeSky200) }

    override public var colorDecorativeAccent2Default: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeSky400) }

    override public var colorDecorativeAccent2Emphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeSky700) }

    override public var colorDecorativeAccent3Muted: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalSun200) }

    override public var colorDecorativeAccent3Default: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalSun500) }

    override public var colorDecorativeAccent3Emphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeAmber500) }

    override public var colorDecorativeAccent4Muted: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeAmethyst200) }

    override public var colorDecorativeAccent4Default: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeAmethyst400) }

    override public var colorDecorativeAccent4Emphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeAmethyst800) }

    override public var colorDecorativeAccent5Muted: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeShockingPink100) }

    override public var colorDecorativeAccent5Default: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeShockingPink200) }

    override public var colorDecorativeAccent5Emphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeShockingPink300) }

    override public var colorDecorativeSkinTint100: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeDeepPeach100) }

    override public var colorDecorativeSkinTint200: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeDeepPeach200) }

    override public var colorDecorativeSkinTint300: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeDeepPeach300) }

    override public var colorDecorativeSkinTint400: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeDeepPeach400) }

    override public var colorDecorativeSkinTint500: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeDeepPeach500) }

    override public var colorDecorativeSkinTint600: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeDeepPeach600) }

    override public var colorDecorativeSkinTint700: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeDeepPeach700) }

    override public var colorDecorativeSkinTint800: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeDeepPeach800) }

    override public var colorDecorativeSkinTint900: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeDeepPeach900) }

    // MARK: Semantic token - Colors - Chart

    override public var colorChartCategoricalNeutral: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray640) }

    override public var colorChartCategoricalBrand: ColorSemanticToken { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange500) }

    override public var colorChartCategoricalPositive: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalMalachite500) }

    override public var colorChartCategoricalNegative: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet600) }

    override public var colorChartCategoricalTier1: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeAmethyst500) }

    override public var colorChartCategoricalTier2: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeShockingPink400) }

    override public var colorChartCategoricalTier3: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeEmerald600) }

    override public var colorChartCategoricalTier4: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeSky200) }

    override public var colorChartCategoricalTier5: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeAmber700) }

    override public var colorChartCategoricalTier6: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeAmethyst600) }

    override public var colorChartCategoricalTier7: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeShockingPink600) }

    override public var colorChartCategoricalTier8: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeEmerald400) }

    override public var colorChartCategoricalTier9: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeSky500) }

    override public var colorChartCategoricalTier10: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeAmber300) }

    override public var colorChartSequentialAccent1Tint100: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeSky900) }

    override public var colorChartSequentialAccent1Tint200: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeSky800) }

    override public var colorChartSequentialAccent1Tint300: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeSky700) }

    override public var colorChartSequentialAccent1Tint400: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeSky600) }

    override public var colorChartSequentialAccent1Tint500: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeSky500) }

    override public  var colorChartSequentialAccent1Tint600: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeSky400) }

    override public var colorChartSequentialAccent1Tint700: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeSky300) }

    override public var colorChartSequentialAccent1Tint800: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeSky200) }

    override public var colorChartSequentialAccent1Tint900: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeSky100) }

    override public var colorChartSequentialAccent2Tint100: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeEmerald900) }

    override public var colorChartSequentialAccent2Tint200: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeEmerald800) }

    override public var colorChartSequentialAccent2Tint300: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeEmerald700) }

    override public var colorChartSequentialAccent2Tint400: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeEmerald600) }

    override public var colorChartSequentialAccent2Tint500: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeEmerald500) }

    override public var colorChartSequentialAccent2Tint600: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeEmerald400) }

    override public var colorChartSequentialAccent2Tint700: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeEmerald300) }

    override public var colorChartSequentialAccent2Tint800: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeEmerald200) }

    override public var colorChartSequentialAccent2Tint900: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeEmerald100) }

    override public var colorChartSequentialAccent3Tint100: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeShockingPink900) }

    override public var colorChartSequentialAccent3Tint200: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeShockingPink800) }

    override public var colorChartSequentialAccent3Tint300: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeShockingPink700) }

    override public var colorChartSequentialAccent3Tint400: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeShockingPink600) }

    override public var colorChartSequentialAccent3Tint500: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeShockingPink500) }

    override public var colorChartSequentialAccent3Tint600: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeShockingPink400) }

    override public var colorChartSequentialAccent3Tint700: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeShockingPink300) }

    override public var colorChartSequentialAccent3Tint800: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeShockingPink200) }

    override public var colorChartSequentialAccent3Tint900: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeShockingPink100) }

    override public var colorChartSequentialAccent4Tint100: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeAmethyst900) }

    override public var colorChartSequentialAccent4Tint200: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeAmethyst800) }

    override public var colorChartSequentialAccent4Tint300: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeAmethyst700) }

    override public var colorChartSequentialAccent4Tint400: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeAmethyst600) }

    override public var colorChartSequentialAccent4Tint500: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeAmethyst500) }

    override public var colorChartSequentialAccent4Tint600: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeAmethyst400) }

    override public var colorChartSequentialAccent4Tint700: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeAmethyst300) }

    override public var colorChartSequentialAccent4Tint800: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeAmethyst200) }

    override public var colorChartSequentialAccent4Tint900: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeAmethyst100) }

    override public var colorChartSequentialAccent5Tint100: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalSun900) }

    override public var colorChartSequentialAccent5Tint200: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalSun800) }

    override public var colorChartSequentialAccent5Tint300: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalSun700) }

    override public var colorChartSequentialAccent5Tint400: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalSun600) }

    override public var colorChartSequentialAccent5Tint500: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalSun500) }

    override public var colorChartSequentialAccent5Tint600: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalSun400) }

    override public var colorChartSequentialAccent5Tint700: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalSun300) }

    override public var colorChartSequentialAccent5Tint800: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalSun200) }

    override public var colorChartSequentialAccent5Tint900: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalSun100) }
}
// swiftlint:enable line_length
