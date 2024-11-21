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
// [File to generate by the tokenator]
// WARNING: Not synchronized anymore with the Figjam / Figma by developers team
// Create an issue for update https://github.com/Orange-OpenSource/ouds-ios/issues/new?template=token_update.yml

// swiftlint:disable line_length
// swiftlint:disable file_length

/// Overrides some colors using values defined in extension of `ColorRawTokens` in this current module.
/// Some tokens do not have values assigned in the design system, and must be overriden.
extension InverseTheme {

    // MARK: Semantic token - Colors - Background

    override public var colorBgPrimary: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray880) }

    override public var colorBgSecondary: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray720) }

    override public var colorBgTertiary: MultipleColorTokens { MultipleColorTokens(OrangeBrandColorRawTokens.colorWarmGray900) }

    override public var colorBgEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorBgBrandPrimary: MultipleColorTokens { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange500) }

    override public var colorBgBrandSecondary: MultipleColorTokens { fatalError("🤖 No value defined for colorBgBrandSecondary!") }

    override public var colorBgBrandTertiary: MultipleColorTokens { fatalError("🤖 No value defined for colorBgBrandTertiary!") }

    override public var colorBgStatusNeutral: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray720) }

    override public var colorBgStatusNeutralOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray80) }

    override public var colorBgStatusPositiveMuted: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalMalachite100) }

    override public var colorBgStatusPositiveMutedOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalMalachite100) }

    override public var colorBgStatusPositiveEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalMalachite500) }

    override public var colorBgStatusInfoMuted: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalDodgerBlue900) }

    override public var colorBgStatusInfoMutedOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalDodgerBlue100) }

    override public var colorBgStatusInfoEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalDodgerBlue500) }

    override public var colorBgStatusWarningMuted: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalSun900) }

    override public var colorBgStatusWarningMutedOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalSun100) }

    override public var colorBgStatusWarningEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalSun500) }

    override public var colorBgStatusNegativeMuted: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet900) }

    override public var colorBgStatusNegativeMutedOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet100) }

    override public var colorBgStatusNegativeEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet600) }

    override public var colorBgStatusAccentMuted: MultipleColorTokens { MultipleColorTokens(OrangeBrandColorRawTokens.colorWarmGray900) }

    override public var colorBgStatusAccentMutedOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(OrangeBrandColorRawTokens.colorWarmGray100) }

    override public var colorBgStatusAccentEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalSun500) }

    // MARK: Semantic token - Colors - Content

    override public var colorContentDefault: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorContentContentDefaultOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorContentMuted: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray400) }

    override public var colorContentContentMutedOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray400) }

    override public var colorContentDisabled: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray400) }

    override public var colorContentContentDisabledOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray400) }

    override public var colorContentBrandPrimary: MultipleColorTokens { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange500) }

    override public var colorContentBrandSecondary: MultipleColorTokens { fatalError("🤖 No value defined for colorContentBrandSecondary!") }

    override public var colorContentBrandTertiary: MultipleColorTokens { fatalError("🤖 No value defined for colorContentBrandTertiary!") }

    override public var colorContentStatusPositive: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalMalachite500) }

    override public var colorContentStatusInfo: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalDodgerBlue500) }

    override public var colorContentStatusWarning: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalSun500) }

    override public var colorContentStatusNegative: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet600) }

    override public var colorContentStatusAccent: MultipleColorTokens { fatalError("🤖 No value defined for colorContentStatusAccent!") }

    // MARK: Semantic token - Colors - Content - On Background

    override public var colorContentOnBgPrimary: MultipleColorTokens { MultipleColorTokens( ColorRawTokens.colorFunctionalBlack) }

    override public var colorContentOnBgSecondary: MultipleColorTokens { fatalError("🤖 No value defined for colorContentOnBgSecondary!") }

    override public var colorContentOnBgTertiary: MultipleColorTokens { fatalError("🤖 No value defined for colorContentOnBgTertiary!") }

    override public var colorContentOnBgStatusPositiveMuted: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorContentOnBgStatusPositiveMutedOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorContentOnBgStatusPositiveEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorContentOnBgStatusInfoMuted: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorContentOnBgStatusInfoMutedOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorContentOnBgStatusInfoEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorContentOnBgStatusWarningMuted: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorContentOnBgStatusWarningMutedOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorContentOnBgStatusWarningEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorContentOnBgStatusNegativeMuted: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorContentOnBgStatusNegativeMutedOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorContentOnBgStatusNegativeEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorContentOnBgStatusAccentMuted: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorContentOnBgStatusAccentMutedOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorContentOnBgStatusAccentedEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    // MARK: Semantic token - Colors - Border

    override public var colorBorderDefault: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray400) }

    override public var colorBorderDefaultOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray400) }

    override public var colorBorderEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorBorderEmphasizedOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorBorderFocus: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray880) }

    override public var colorBorderBrandPrimaryOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange550) }

    override public var colorBorderBrandPrimary: MultipleColorTokens { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange500) }

    override public var colorBorderBrandSecondary: MultipleColorTokens { fatalError("🤖 No value defined for colorBorderBrandSecondary!") }

    override public var colorBorderBrandTertiary: MultipleColorTokens { fatalError("🤖 No value defined for colorBorderBrandTertiary!") }

    override public var colorBorderStatusPositive: MultipleColorTokens { fatalError("🤖 No value defined for colorBorderStatusPositive!") }

    override public var colorBorderStatusInfo: MultipleColorTokens { fatalError("🤖 No value defined for colorBorderStatusInfo!") }

    override public var colorBorderStatusWarning: MultipleColorTokens { fatalError("🤖 No value defined for colorBorderStatusWarning!") }

    override public var colorBorderStatusNegative: MultipleColorTokens { fatalError("🤖 No value defined for colorBorderStatusNegative!") }

    override public var colorBorderStatusAccent: MultipleColorTokens { fatalError("🤖 No value defined for colorBorderStatusAccent!") }

    override public var colorBorderOnBgBrandPrimary: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorBorderOnBgBrandSecondary: MultipleColorTokens { fatalError("🤖 No value defined for colorBorderOnBgBrandSecondary!") }

    override public var colorBorderOnBgBrandTertiary: MultipleColorTokens { fatalError("🤖 No value defined for colorBorderOnBgBrandTertiary!") }

    // MARK: Semantic token - Colors - Action

    override public var colorActionSelected: MultipleColorTokens { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange500) }

    override public var colorActionSelectedOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange550) }

    override public var colorActionDisabled: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray400) }

    override public var colorActionDisabledOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray400) }

    override public var colorActionVisited: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeAmethyst400) }

    override public var colorActionVistedOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeAmethyst600) }

    override public var colorActionPrimaryEnabled: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorActionPrimaryEnabledOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorActionPrimaryHover: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray400) }

    override public var colorActionPrimaryHoverOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray400) }

    override public var colorActionPrimaryPressed: MultipleColorTokens { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange500) }

    override public var colorActionPrimaryPressedOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange550) }

    override public var colorActionPrimaryLoading: MultipleColorTokens { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange500) }

    override public var colorActionPrimaryLoadingOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange550) }

    override public var colorActionPrimaryFocus: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray400) }

    override public var colorActionPrimaryFocusOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray400) }

    override public var colorActionSecondaryEnabled: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorActionSecondaryEnabledOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray80) }

    override public var colorActionSecondaryHover: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray640) }

    override public var colorActionSecondaryHoverOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorActionSecondaryPressed: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray640) }

    override public var colorActionSecondaryPressedOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorActionSecondaryLoading: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray640) }

    override public var colorActionSecondaryLoadingOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorActionSecondaryFocus: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray640) }

    override public var colorActionSecondaryFocusOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorActionNegativeEnabled: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet600) }

    override public var colorActionNegativeHover: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet700) }

    override public var colorActionNegativePressed: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet800) }

    override public var colorActionNegativeLoading: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet800) }

    override public var colorActionNegativeFocus: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet700) }

    override public var colorActionOnBgActionDisabled: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorActionOnBgActionDisabledOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorActionOnBgActionNegative: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorActionOnBgActionPrimaryEnabled: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorActionOnBgActionPrimaryEnabledOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorActionOnBgActionPrimaryHover: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorActionOnBgActionPrimaryHoverOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorActionOnBgActionPrimaryPressed: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorActionOnBgActionPrimaryPressedOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorActionOnBgActionPrimaryLoading: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorActionOnBgActionPrimaryLoadingOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorActionOnBgActionPrimaryFocus: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorActionOnBgActionPrimaryFocusOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorActionOnBgActionSecondaryEnabled: MultipleColorTokens { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryEnabled!") }

    override public var colorActionOnBgActionSecondaryEnabledOnBgEmphasized: MultipleColorTokens {  fatalError("🤖 No value defined for colorActionOnBgActionSecondaryEnabledOnBgEmphasized!") }

    override public var colorActionOnBgActionSecondaryHover: MultipleColorTokens { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryHover!") }

    override public var colorActionOnBgActionSecondaryHoverOnBgEmphasized: MultipleColorTokens { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryHoverOnBgEmphasized!") }

    override public var colorActionOnBgActionSecondaryPressed: MultipleColorTokens { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryPressed!") }

    override public var colorActionOnBgActionSecondaryPressedOnBgEmphasized: MultipleColorTokens { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryPressedOnBgEmphasized!") }

    override public var colorActionOnBgActionSecondaryLoading: MultipleColorTokens { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryLoading!") }

    override public var colorActionOnBgActionSecondaryLoadingOnBgEmphasized: MultipleColorTokens { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryLoadingOnBgEmphasized!") }

    override public var colorActionOnBgActionSecondaryFocus: MultipleColorTokens { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryFocus!") }

    override public var colorActionOnBgActionSecondaryFocusOnBgEmphasized: MultipleColorTokens { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryFocusOnBgEmphasized!") }

    // MARK: Semantic token - Colors - Elevation

    override public var colorElevationRaised: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray800) }

    override public var colorElevationRaisedOnBgSecondary: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray640) }

    override public var colorElevationRaisedOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorElevationDrag: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray720) }

    override public var colorElevationDragOnBgSecondary: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray480) }

    override public var colorElevationDragOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray80) }

    override public var colorElevationOverlayDefault: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray720) }

    override public var colorElevationOverlayDefaultOnBgSecondary: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray560) }

    override public var colorElevationOverlayDefaultOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorElevationOverlayEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray80) }

    override public var colorElevationOverlayEmphasizedOnBgSecondary: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray80) }

    override public var colorElevationOverlayEmphasizedOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray640) }

    override public var colorElevationModal: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray640) }

    // MARK: Semantic token - Colors - Decorative

    override public var colorDecorativePrimary: MultipleColorTokens { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange500) }

    override public var colorDecorativeSecondary: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorDecorativeTertiary: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorDecorativeNeutralMuted: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray640) }

    override public var colorDecorativeNeutralDefault: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray400) }

    override public var colorDecorativeNeutralEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorDecorativeAccent1Muted: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeEmerald200) }

    override public var colorDecorativeAccent1Default: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeEmerald500) }

    override public var colorDecorativeAccent1Emphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeEmerald700) }

    override public var colorDecorativeAccent2Muted: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeSky200) }

    override public var colorDecorativeAccent2Default: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeSky400) }

    override public var colorDecorativeAccent2Emphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeSky700) }

    override public var colorDecorativeAccent3Muted: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalSun200) }

    override public var colorDecorativeAccent3Default: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalSun500) }

    override public var colorDecorativeAccent3Emphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeAmber500) }

    override public var colorDecorativeAccent4Muted: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeAmethyst200) }

    override public var colorDecorativeAccent4Default: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeAmethyst400) }

    override public var colorDecorativeAccent4Emphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeAmethyst800) }

    override public var colorDecorativeAccent5Muted: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeShockingPink100) }

    override public var colorDecorativeAccent5Default: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeShockingPink200) }

    override public var colorDecorativeAccent5Emphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeShockingPink300) }

    override public var colorDecorativeSkinTint100: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeDeepPeach100) }

    override public var colorDecorativeSkinTint200: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeDeepPeach200) }

    override public var colorDecorativeSkinTint300: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeDeepPeach300) }

    override public var colorDecorativeSkinTint400: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeDeepPeach400) }

    override public var colorDecorativeSkinTint500: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeDeepPeach500) }

    override public var colorDecorativeSkinTint600: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeDeepPeach600) }

    override public var colorDecorativeSkinTint700: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeDeepPeach700) }

    override public var colorDecorativeSkinTint800: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeDeepPeach800) }

    override public var colorDecorativeSkinTint900: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeDeepPeach900) }

    // MARK: Semantic token - Colors - Chart

    override public var colorChartCategoricalNeutral: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray640) }

    override public var colorChartCategoricalBrand: MultipleColorTokens { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange500) }

    override public var colorChartCategoricalPositive: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalMalachite500) }

    override public var colorChartCategoricalNegative: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet600) }

    override public var colorChartCategoricalTier1: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeAmethyst500) }

    override public var colorChartCategoricalTier2: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeShockingPink400) }

    override public var colorChartCategoricalTier3: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeEmerald600) }

    override public var colorChartCategoricalTier4: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeSky200) }

    override public var colorChartCategoricalTier5: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeAmber700) }

    override public var colorChartCategoricalTier6: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeAmethyst600) }

    override public var colorChartCategoricalTier7: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeShockingPink600) }

    override public var colorChartCategoricalTier8: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeEmerald400) }

    override public var colorChartCategoricalTier9: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeSky500) }

    override public var colorChartCategoricalTier10: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeAmber300) }

    override public var colorChartSequentialAccent1Tint100: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeSky900) }

    override public var colorChartSequentialAccent1Tint200: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeSky800) }

    override public var colorChartSequentialAccent1Tint300: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeSky700) }

    override public var colorChartSequentialAccent1Tint400: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeSky600) }

    override public var colorChartSequentialAccent1Tint500: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeSky500) }

    override public  var colorChartSequentialAccent1Tint600: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeSky400) }

    override public var colorChartSequentialAccent1Tint700: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeSky300) }

    override public var colorChartSequentialAccent1Tint800: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeSky200) }

    override public var colorChartSequentialAccent1Tint900: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeSky100) }

    override public var colorChartSequentialAccent2Tint100: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeEmerald900) }

    override public var colorChartSequentialAccent2Tint200: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeEmerald800) }

    override public var colorChartSequentialAccent2Tint300: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeEmerald700) }

    override public var colorChartSequentialAccent2Tint400: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeEmerald600) }

    override public var colorChartSequentialAccent2Tint500: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeEmerald500) }

    override public var colorChartSequentialAccent2Tint600: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeEmerald400) }

    override public var colorChartSequentialAccent2Tint700: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeEmerald300) }

    override public var colorChartSequentialAccent2Tint800: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeEmerald200) }

    override public var colorChartSequentialAccent2Tint900: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeEmerald100) }

    override public var colorChartSequentialAccent3Tint100: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeShockingPink900) }

    override public var colorChartSequentialAccent3Tint200: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeShockingPink800) }

    override public var colorChartSequentialAccent3Tint300: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeShockingPink700) }

    override public var colorChartSequentialAccent3Tint400: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeShockingPink600) }

    override public var colorChartSequentialAccent3Tint500: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeShockingPink500) }

    override public var colorChartSequentialAccent3Tint600: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeShockingPink400) }

    override public var colorChartSequentialAccent3Tint700: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeShockingPink300) }

    override public var colorChartSequentialAccent3Tint800: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeShockingPink200) }

    override public var colorChartSequentialAccent3Tint900: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeShockingPink100) }

    override public var colorChartSequentialAccent4Tint100: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeAmethyst900) }

    override public var colorChartSequentialAccent4Tint200: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeAmethyst800) }

    override public var colorChartSequentialAccent4Tint300: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeAmethyst700) }

    override public var colorChartSequentialAccent4Tint400: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeAmethyst600) }

    override public var colorChartSequentialAccent4Tint500: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeAmethyst500) }

    override public var colorChartSequentialAccent4Tint600: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeAmethyst400) }

    override public var colorChartSequentialAccent4Tint700: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeAmethyst300) }

    override public var colorChartSequentialAccent4Tint800: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeAmethyst200) }

    override public var colorChartSequentialAccent4Tint900: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorDecorativeAmethyst100) }

    override public var colorChartSequentialAccent5Tint100: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalSun900) }

    override public var colorChartSequentialAccent5Tint200: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalSun800) }

    override public var colorChartSequentialAccent5Tint300: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalSun700) }

    override public var colorChartSequentialAccent5Tint400: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalSun600) }

    override public var colorChartSequentialAccent5Tint500: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalSun500) }

    override public var colorChartSequentialAccent5Tint600: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalSun400) }

    override public var colorChartSequentialAccent5Tint700: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalSun300) }

    override public var colorChartSequentialAccent5Tint800: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalSun200) }

    override public var colorChartSequentialAccent5Tint900: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalSun100) }
}
// swiftlint:enable line_length
