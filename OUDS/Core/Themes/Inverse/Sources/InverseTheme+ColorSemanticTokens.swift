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

    override public var colorBackgroundStatusNeutralOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray80) }

    override public var colorBackgroundStatusPositiveMuted: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalMalachite100) }

    override public var colorBackgroundStatusPositiveMutedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalMalachite100) }

    override public var colorBackgroundStatusPositiveEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalMalachite500) }

    override public var colorBackgroundStatusInfoMuted: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDodgerBlue900) }

    override public var colorBackgroundStatusInfoMutedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDodgerBlue100) }

    override public var colorBackgroundStatusInfoEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDodgerBlue500) }

    override public var colorBackgroundStatusWarningMuted: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalSun900) }

    override public var colorBackgroundStatusWarningMutedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalSun100) }

    override public var colorBackgroundStatusWarningEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalSun500) }

    override public var colorBackgroundStatusNegativeMuted: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet900) }

    override public var colorBackgroundStatusNegativeMutedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet100) }

    override public var colorBackgroundStatusNegativeEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet600) }

    override public var colorBackgroundStatusAccentMuted: ColorSemanticToken { MultipleColorTokens(OrangeBrandColorRawTokens.colorWarmGray900) }

    override public var colorBackgroundStatusAccentMutedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(OrangeBrandColorRawTokens.colorWarmGray100) }

    override public var colorBackgroundStatusAccentEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalSun500) }

    // MARK: Semantic token - Colors - Content

    override public var colorContentDefault: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorContentContentDefaultOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorContentMuted: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray400) }

    override public var colorContentContentMutedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray400) }

    override public var colorContentDisabled: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray400) }

    override public var colorContentContentDisabledOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray400) }

    override public var colorContentBrandPrimary: ColorSemanticToken { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange500) }

    override public var colorContentBrandSecondary: ColorSemanticToken { fatalError("🤖 No value defined for colorContentBrandSecondary!") }

    override public var colorContentBrandTertiary: ColorSemanticToken { fatalError("🤖 No value defined for colorContentBrandTertiary!") }

    override public var colorContentStatusPositive: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalMalachite500) }

    override public var colorContentStatusInfo: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDodgerBlue500) }

    override public var colorContentStatusWarning: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalSun500) }

    override public var colorContentStatusNegative: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet600) }

    override public var colorContentStatusAccent: ColorSemanticToken { fatalError("🤖 No value defined for colorContentStatusAccent!") }

    // MARK: Semantic token - Colors - Content - On Background

    override public var colorContentOnBackgroundPrimary: ColorSemanticToken { MultipleColorTokens( ColorRawTokens.colorFunctionalBlack) }

    override public var colorContentOnBackgroundSecondary: ColorSemanticToken { fatalError("🤖 No value defined for colorContentOnBackgroundSecondary!") }

    override public var colorContentOnBackgroundTertiary: ColorSemanticToken { fatalError("🤖 No value defined for colorContentOnBackgroundTertiary!") }

    override public var colorContentOnBackgroundStatusPositiveMuted: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorContentOnBackgroundStatusPositiveMutedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorContentOnBackgroundStatusPositiveEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorContentOnBackgroundStatusInfoMuted: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorContentOnBackgroundStatusInfoMutedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorContentOnBackgroundStatusInfoEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorContentOnBackgroundStatusWarningMuted: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorContentOnBackgroundStatusWarningMutedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorContentOnBackgroundStatusWarningEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorContentOnBackgroundStatusNegativeMuted: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorContentOnBackgroundStatusNegativeMutedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorContentOnBackgroundStatusNegativeEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorContentOnBackgroundStatusAccentMuted: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorContentOnBackgroundStatusAccentMutedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorContentOnBackgroundStatusAccentedEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    // MARK: Semantic token - Colors - Border

    override public var colorBorderDefault: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray400) }

    override public var colorBorderDefaultOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray400) }

    override public var colorBorderEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorBorderEmphasizedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorBorderFocus: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray880) }

    override public var colorBorderBrandPrimaryOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange550) }

    override public var colorBorderBrandPrimary: ColorSemanticToken { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange500) }

    override public var colorBorderBrandSecondary: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderBrandSecondary!") }

    override public var colorBorderBrandTertiary: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderBrandTertiary!") }

    override public var colorBorderStatusPositive: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderStatusPositive!") }

    override public var colorBorderStatusInfo: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderStatusInfo!") }

    override public var colorBorderStatusWarning: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderStatusWarning!") }

    override public var colorBorderStatusNegative: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderStatusNegative!") }

    override public var colorBorderStatusAccent: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderStatusAccent!") }

    override public var colorBorderOnBackgroundBrandPrimary: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorBorderOnBackgroundBrandSecondary: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderOnBackgroundBrandSecondary!") }

    override public var colorBorderOnBackgroundBrandTertiary: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderOnBackgroundBrandTertiary!") }

    // MARK: Semantic token - Colors - Action

    override public var colorActionSelected: ColorSemanticToken { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange500) }

    override public var colorActionSelectedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange550) }

    override public var colorActionDisabled: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray400) }

    override public var colorActionDisabledOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray400) }

    override public var colorActionVisited: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeAmethyst400) }

    override public var colorActionVistedOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeAmethyst600) }

    override public var colorActionPrimaryEnabled: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorActionPrimaryEnabledOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorActionPrimaryHover: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray400) }

    override public var colorActionPrimaryHoverOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray400) }

    override public var colorActionPrimaryPressed: ColorSemanticToken { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange500) }

    override public var colorActionPrimaryPressedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange550) }

    override public var colorActionPrimaryLoading: ColorSemanticToken { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange500) }

    override public var colorActionPrimaryLoadingOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange550) }

    override public var colorActionPrimaryFocus: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray400) }

    override public var colorActionPrimaryFocusOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray400) }

    override public var colorActionSecondaryEnabled: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorActionSecondaryEnabledOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray80) }

    override public var colorActionSecondaryHover: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray640) }

    override public var colorActionSecondaryHoverOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorActionSecondaryPressed: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray640) }

    override public var colorActionSecondaryPressedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorActionSecondaryLoading: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray640) }

    override public var colorActionSecondaryLoadingOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorActionSecondaryFocus: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray640) }

    override public var colorActionSecondaryFocusOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorActionNegativeEnabled: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet600) }

    override public var colorActionNegativeHover: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet700) }

    override public var colorActionNegativePressed: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet800) }

    override public var colorActionNegativeLoading: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet800) }

    override public var colorActionNegativeFocus: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet700) }

    override public var colorActionOnBackgroundActionDisabled: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorActionOnBackgroundActionDisabledOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorActionOnBackgroundActionNegative: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorActionOnBackgroundActionPrimaryEnabled: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorActionOnBackgroundActionPrimaryEnabledOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorActionOnBackgroundActionPrimaryHover: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorActionOnBackgroundActionPrimaryHoverOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorActionOnBackgroundActionPrimaryPressed: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorActionOnBackgroundActionPrimaryPressedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorActionOnBackgroundActionPrimaryLoading: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorActionOnBackgroundActionPrimaryLoadingOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorActionOnBackgroundActionPrimaryFocus: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorActionOnBackgroundActionPrimaryFocusOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorActionOnBackgroundActionSecondaryEnabled: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBackgroundActionSecondaryEnabled!") }

    override public var colorActionOnBackgroundActionSecondaryEnabledOnBackgroundEmphasized: ColorSemanticToken {  fatalError("🤖 No value defined for colorActionOnBackgroundActionSecondaryEnabledOnBackgroundEmphasized!") }

    override public var colorActionOnBackgroundActionSecondaryHover: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBackgroundActionSecondaryHover!") }

    override public var colorActionOnBackgroundActionSecondaryHoverOnBackgroundEmphasized: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBackgroundActionSecondaryHoverOnBackgroundEmphasized!") }

    override public var colorActionOnBackgroundActionSecondaryPressed: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBackgroundActionSecondaryPressed!") }

    override public var colorActionOnBackgroundActionSecondaryPressedOnBackgroundEmphasized: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBackgroundActionSecondaryPressedOnBackgroundEmphasized!") }

    override public var colorActionOnBackgroundActionSecondaryLoading: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBackgroundActionSecondaryLoading!") }

    override public var colorActionOnBackgroundActionSecondaryLoadingOnBackgroundEmphasized: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBackgroundActionSecondaryLoadingOnBackgroundEmphasized!") }

    override public var colorActionOnBackgroundActionSecondaryFocus: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBackgroundActionSecondaryFocus!") }

    override public var colorActionOnBackgroundActionSecondaryFocusOnBackgroundEmphasized: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBackgroundActionSecondaryFocusOnBackgroundEmphasized!") }

    // MARK: Semantic token - Colors - Elevation

    override public var colorElevationRaised: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray800) }

    override public var colorElevationRaisedOnBackgroundSecondary: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray640) }

    override public var colorElevationRaisedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorElevationDrag: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray720) }

    override public var colorElevationDragOnBackgroundSecondary: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray480) }

    override public var colorElevationDragOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray80) }

    override public var colorElevationOverlayDefault: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray720) }

    override public var colorElevationOverlayDefaultOnBackgroundSecondary: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray560) }

    override public var colorElevationOverlayDefaultOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorElevationOverlayEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray80) }

    override public var colorElevationOverlayEmphasizedOnBackgroundSecondary: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray80) }

    override public var colorElevationOverlayEmphasizedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray640) }

    override public var colorElevationModal: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray640) }

    // MARK: Semantic token - Colors - Decorative

    override public var colorDecorativePrimary: ColorSemanticToken { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange500) }

    override public var colorDecorativeBrandPrimaryMuted: ColorSemanticToken { fatalError("🤖 No value defined for colorDecorativeBrandPrimaryMuted!") }

    override public var colorDecorativeBrandPrimaryEmphasized: ColorSemanticToken { fatalError("🤖 No value defined for colorDecorativeBrandPrimaryEmphasized!") }

    override public var colorDecorativeSecondary: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorDecorativeSecondaryMuted: ColorSemanticToken { fatalError("🤖 No value defined for colorDecorativeSecondaryMuted!") }

    override public var colorDecorativeSecondaryEmphasized: ColorSemanticToken { fatalError("🤖 No value defined for colorDecorativeSecondaryEmphasized!") }

    override public var colorDecorativeBrandTertiary: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorDecorativeBrandTertiaryMuted: ColorSemanticToken { fatalError("🤖 No value defined for colorDecorativeBrandTertiaryMuted!") }

    override public var colorDecorativeBrandTertiaryEmphasized: ColorSemanticToken { fatalError("🤖 No value defined for colorDecorativeBrandTertiaryEmphasized!") }

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
