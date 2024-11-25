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

/// Overrides some colors using values defined in extension of ``ColorRawTokens`` in this current module.
/// Some tokens do not have values assigned in the design system, and must be overriden.
extension InverseTheme {

    // MARK: Semantic token - Colors - Background

    override public var colorBgPrimary: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalDarkGray880) }

    override public var colorBgSecondary: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalDarkGray720) }

    override public var colorBgTertiary: MultipleColorSemanticTokens { MultipleColorSemanticTokens(OrangeBrandColorRawTokens.colorWarmGray900) }

    override public var colorBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorBgBrandPrimary: MultipleColorSemanticTokens { MultipleColorSemanticTokens(OrangeBrandColorRawTokens.colorOrange500) }

    override public var colorBgBrandSecondary: MultipleColorSemanticTokens { fatalError("🤖 No value defined for colorBgBrandSecondary!") }

    override public var colorBgBrandTertiary: MultipleColorSemanticTokens { fatalError("🤖 No value defined for colorBgBrandTertiary!") }

    override public var colorBgStatusNeutral: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalDarkGray720) }

    override public var colorBgStatusNeutralOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalLightGray80) }

    override public var colorBgStatusPositiveMuted: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalMalachite100) }

    override public var colorBgStatusPositiveMutedOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalMalachite100) }

    override public var colorBgStatusPositiveEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalMalachite500) }

    override public var colorBgStatusInfoMuted: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalDodgerBlue900) }

    override public var colorBgStatusInfoMutedOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalDodgerBlue100) }

    override public var colorBgStatusInfoEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalDodgerBlue500) }

    override public var colorBgStatusWarningMuted: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalSun900) }

    override public var colorBgStatusWarningMutedOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalSun100) }

    override public var colorBgStatusWarningEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalSun500) }

    override public var colorBgStatusNegativeMuted: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalScarlet900) }

    override public var colorBgStatusNegativeMutedOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalScarlet100) }

    override public var colorBgStatusNegativeEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalScarlet600) }

    override public var colorBgStatusAccentMuted: MultipleColorSemanticTokens { MultipleColorSemanticTokens(OrangeBrandColorRawTokens.colorWarmGray900) }

    override public var colorBgStatusAccentMutedOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(OrangeBrandColorRawTokens.colorWarmGray100) }

    override public var colorBgStatusAccentEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalSun500) }

    // MARK: Semantic token - Colors - Content

    override public var colorContentDefault: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorContentContentDefaultOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorContentMuted: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalLightGray400) }

    override public var colorContentContentMutedOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalDarkGray400) }

    override public var colorContentDisabled: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalDarkGray400) }

    override public var colorContentContentDisabledOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalLightGray400) }

    override public var colorContentBrandPrimary: MultipleColorSemanticTokens { MultipleColorSemanticTokens(OrangeBrandColorRawTokens.colorOrange500) }

    override public var colorContentBrandSecondary: MultipleColorSemanticTokens { fatalError("🤖 No value defined for colorContentBrandSecondary!") }

    override public var colorContentBrandTertiary: MultipleColorSemanticTokens { fatalError("🤖 No value defined for colorContentBrandTertiary!") }

    override public var colorContentStatusPositive: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalMalachite500) }

    override public var colorContentStatusInfo: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalDodgerBlue500) }

    override public var colorContentStatusWarning: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalSun500) }

    override public var colorContentStatusNegative: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalScarlet600) }

    override public var colorContentStatusAccent: MultipleColorSemanticTokens { fatalError("🤖 No value defined for colorContentStatusAccent!") }

    // MARK: Semantic token - Colors - Content - On Background

    override public var colorContentOnBgPrimary: MultipleColorSemanticTokens { MultipleColorSemanticTokens( ColorRawTokens.colorFunctionalBlack) }

    override public var colorContentOnBgSecondary: MultipleColorSemanticTokens { fatalError("🤖 No value defined for colorContentOnBgSecondary!") }

    override public var colorContentOnBgTertiary: MultipleColorSemanticTokens { fatalError("🤖 No value defined for colorContentOnBgTertiary!") }

    override public var colorContentOnBgStatusPositiveMuted: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorContentOnBgStatusPositiveMutedOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorContentOnBgStatusPositiveEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorContentOnBgStatusInfoMuted: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorContentOnBgStatusInfoMutedOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorContentOnBgStatusInfoEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorContentOnBgStatusWarningMuted: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorContentOnBgStatusWarningMutedOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorContentOnBgStatusWarningEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorContentOnBgStatusNegativeMuted: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorContentOnBgStatusNegativeMutedOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorContentOnBgStatusNegativeEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorContentOnBgStatusAccentMuted: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorContentOnBgStatusAccentMutedOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorContentOnBgStatusAccentedEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalBlack) }

    // MARK: Semantic token - Colors - Border

    override public var colorBorderDefault: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalDarkGray400) }

    override public var colorBorderDefaultOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalLightGray400) }

    override public var colorBorderEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorBorderEmphasizedOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorBorderFocus: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalDarkGray880) }

    override public var colorBorderBrandPrimaryOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(OrangeBrandColorRawTokens.colorOrange550) }

    override public var colorBorderBrandPrimary: MultipleColorSemanticTokens { MultipleColorSemanticTokens(OrangeBrandColorRawTokens.colorOrange500) }

    override public var colorBorderBrandSecondary: MultipleColorSemanticTokens { fatalError("🤖 No value defined for colorBorderBrandSecondary!") }

    override public var colorBorderBrandTertiary: MultipleColorSemanticTokens { fatalError("🤖 No value defined for colorBorderBrandTertiary!") }

    override public var colorBorderStatusPositive: MultipleColorSemanticTokens { fatalError("🤖 No value defined for colorBorderStatusPositive!") }

    override public var colorBorderStatusInfo: MultipleColorSemanticTokens { fatalError("🤖 No value defined for colorBorderStatusInfo!") }

    override public var colorBorderStatusWarning: MultipleColorSemanticTokens { fatalError("🤖 No value defined for colorBorderStatusWarning!") }

    override public var colorBorderStatusNegative: MultipleColorSemanticTokens { fatalError("🤖 No value defined for colorBorderStatusNegative!") }

    override public var colorBorderStatusAccent: MultipleColorSemanticTokens { fatalError("🤖 No value defined for colorBorderStatusAccent!") }

    override public var colorBorderOnBgBrandPrimary: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorBorderOnBgBrandSecondary: MultipleColorSemanticTokens { fatalError("🤖 No value defined for colorBorderOnBgBrandSecondary!") }

    override public var colorBorderOnBgBrandTertiary: MultipleColorSemanticTokens { fatalError("🤖 No value defined for colorBorderOnBgBrandTertiary!") }

    // MARK: Semantic token - Colors - Action

    override public var colorActionSelected: MultipleColorSemanticTokens { MultipleColorSemanticTokens(OrangeBrandColorRawTokens.colorOrange500) }

    override public var colorActionSelectedOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(OrangeBrandColorRawTokens.colorOrange550) }

    override public var colorActionDisabled: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalDarkGray400) }

    override public var colorActionDisabledOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalLightGray400) }

    override public var colorActionVisited: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeAmethyst400) }

    override public var colorActionVistedOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeAmethyst600) }

    override public var colorActionPrimaryEnabled: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorActionPrimaryEnabledOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorActionPrimaryHover: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalLightGray400) }

    override public var colorActionPrimaryHoverOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalDarkGray400) }

    override public var colorActionPrimaryPressed: MultipleColorSemanticTokens { MultipleColorSemanticTokens(OrangeBrandColorRawTokens.colorOrange500) }

    override public var colorActionPrimaryPressedOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(OrangeBrandColorRawTokens.colorOrange550) }

    override public var colorActionPrimaryLoading: MultipleColorSemanticTokens { MultipleColorSemanticTokens(OrangeBrandColorRawTokens.colorOrange500) }

    override public var colorActionPrimaryLoadingOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(OrangeBrandColorRawTokens.colorOrange550) }

    override public var colorActionPrimaryFocus: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalLightGray400) }

    override public var colorActionPrimaryFocusOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalDarkGray400) }

    override public var colorActionSecondaryEnabled: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorActionSecondaryEnabledOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalLightGray80) }

    override public var colorActionSecondaryHover: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalDarkGray640) }

    override public var colorActionSecondaryHoverOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorActionSecondaryPressed: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalDarkGray640) }

    override public var colorActionSecondaryPressedOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorActionSecondaryLoading: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalDarkGray640) }

    override public var colorActionSecondaryLoadingOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorActionSecondaryFocus: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalDarkGray640) }

    override public var colorActionSecondaryFocusOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorActionNegativeEnabled: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalScarlet600) }

    override public var colorActionNegativeHover: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalScarlet700) }

    override public var colorActionNegativePressed: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalScarlet800) }

    override public var colorActionNegativeLoading: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalScarlet800) }

    override public var colorActionNegativeFocus: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalScarlet700) }

    override public var colorActionOnBgActionDisabled: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorActionOnBgActionDisabledOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorActionOnBgActionNegative: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorActionOnBgActionPrimaryEnabled: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorActionOnBgActionPrimaryEnabledOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorActionOnBgActionPrimaryHover: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorActionOnBgActionPrimaryHoverOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorActionOnBgActionPrimaryPressed: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorActionOnBgActionPrimaryPressedOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorActionOnBgActionPrimaryLoading: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorActionOnBgActionPrimaryLoadingOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorActionOnBgActionPrimaryFocus: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorActionOnBgActionPrimaryFocusOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorActionOnBgActionSecondaryEnabled: MultipleColorSemanticTokens { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryEnabled!") }

    override public var colorActionOnBgActionSecondaryEnabledOnBgEmphasized: MultipleColorSemanticTokens {  fatalError("🤖 No value defined for colorActionOnBgActionSecondaryEnabledOnBgEmphasized!") }

    override public var colorActionOnBgActionSecondaryHover: MultipleColorSemanticTokens { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryHover!") }

    override public var colorActionOnBgActionSecondaryHoverOnBgEmphasized: MultipleColorSemanticTokens { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryHoverOnBgEmphasized!") }

    override public var colorActionOnBgActionSecondaryPressed: MultipleColorSemanticTokens { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryPressed!") }

    override public var colorActionOnBgActionSecondaryPressedOnBgEmphasized: MultipleColorSemanticTokens { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryPressedOnBgEmphasized!") }

    override public var colorActionOnBgActionSecondaryLoading: MultipleColorSemanticTokens { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryLoading!") }

    override public var colorActionOnBgActionSecondaryLoadingOnBgEmphasized: MultipleColorSemanticTokens { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryLoadingOnBgEmphasized!") }

    override public var colorActionOnBgActionSecondaryFocus: MultipleColorSemanticTokens { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryFocus!") }

    override public var colorActionOnBgActionSecondaryFocusOnBgEmphasized: MultipleColorSemanticTokens { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryFocusOnBgEmphasized!") }

    // MARK: Semantic token - Colors - Elevation

    override public var colorElevationRaised: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalDarkGray800) }

    override public var colorElevationRaisedOnBgSecondary: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalDarkGray640) }

    override public var colorElevationRaisedOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorElevationDrag: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalDarkGray720) }

    override public var colorElevationDragOnBgSecondary: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalDarkGray480) }

    override public var colorElevationDragOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalLightGray80) }

    override public var colorElevationOverlayDefault: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalDarkGray720) }

    override public var colorElevationOverlayDefaultOnBgSecondary: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalDarkGray560) }

    override public var colorElevationOverlayDefaultOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorElevationOverlayEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalLightGray80) }

    override public var colorElevationOverlayEmphasizedOnBgSecondary: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalLightGray80) }

    override public var colorElevationOverlayEmphasizedOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalDarkGray640) }

    override public var colorElevationModal: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalDarkGray640) }

    // MARK: Semantic token - Colors - Decorative

    override public var colorDecorativePrimary: MultipleColorSemanticTokens { MultipleColorSemanticTokens(OrangeBrandColorRawTokens.colorOrange500) }

    override public var colorDecorativeSecondary: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorDecorativeTertiary: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalBlack) }

    override public var colorDecorativeNeutralMuted: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalDarkGray640) }

    override public var colorDecorativeNeutralDefault: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalLightGray400) }

    override public var colorDecorativeNeutralEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalLightGray160) }

    override public var colorDecorativeAccent1Muted: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeEmerald200) }

    override public var colorDecorativeAccent1Default: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeEmerald500) }

    override public var colorDecorativeAccent1Emphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeEmerald700) }

    override public var colorDecorativeAccent2Muted: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeSky200) }

    override public var colorDecorativeAccent2Default: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeSky400) }

    override public var colorDecorativeAccent2Emphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeSky700) }

    override public var colorDecorativeAccent3Muted: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalSun200) }

    override public var colorDecorativeAccent3Default: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalSun500) }

    override public var colorDecorativeAccent3Emphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeAmber500) }

    override public var colorDecorativeAccent4Muted: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeAmethyst200) }

    override public var colorDecorativeAccent4Default: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeAmethyst400) }

    override public var colorDecorativeAccent4Emphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeAmethyst800) }

    override public var colorDecorativeAccent5Muted: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeShockingPink100) }

    override public var colorDecorativeAccent5Default: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeShockingPink200) }

    override public var colorDecorativeAccent5Emphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeShockingPink300) }

    override public var colorDecorativeSkinTint100: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeDeepPeach100) }

    override public var colorDecorativeSkinTint200: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeDeepPeach200) }

    override public var colorDecorativeSkinTint300: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeDeepPeach300) }

    override public var colorDecorativeSkinTint400: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeDeepPeach400) }

    override public var colorDecorativeSkinTint500: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeDeepPeach500) }

    override public var colorDecorativeSkinTint600: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeDeepPeach600) }

    override public var colorDecorativeSkinTint700: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeDeepPeach700) }

    override public var colorDecorativeSkinTint800: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeDeepPeach800) }

    override public var colorDecorativeSkinTint900: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeDeepPeach900) }

    // MARK: Semantic token - Colors - Chart

    override public var colorChartCategoricalNeutral: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalDarkGray640) }

    override public var colorChartCategoricalBrand: MultipleColorSemanticTokens { MultipleColorSemanticTokens(OrangeBrandColorRawTokens.colorOrange500) }

    override public var colorChartCategoricalPositive: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalMalachite500) }

    override public var colorChartCategoricalNegative: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalScarlet600) }

    override public var colorChartCategoricalTier1: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeAmethyst500) }

    override public var colorChartCategoricalTier2: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeShockingPink400) }

    override public var colorChartCategoricalTier3: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeEmerald600) }

    override public var colorChartCategoricalTier4: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeSky200) }

    override public var colorChartCategoricalTier5: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeAmber700) }

    override public var colorChartCategoricalTier6: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeAmethyst600) }

    override public var colorChartCategoricalTier7: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeShockingPink600) }

    override public var colorChartCategoricalTier8: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeEmerald400) }

    override public var colorChartCategoricalTier9: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeSky500) }

    override public var colorChartCategoricalTier10: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeAmber300) }

    override public var colorChartSequentialAccent1Tint100: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeSky900) }

    override public var colorChartSequentialAccent1Tint200: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeSky800) }

    override public var colorChartSequentialAccent1Tint300: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeSky700) }

    override public var colorChartSequentialAccent1Tint400: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeSky600) }

    override public var colorChartSequentialAccent1Tint500: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeSky500) }

    override public  var colorChartSequentialAccent1Tint600: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeSky400) }

    override public var colorChartSequentialAccent1Tint700: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeSky300) }

    override public var colorChartSequentialAccent1Tint800: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeSky200) }

    override public var colorChartSequentialAccent1Tint900: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeSky100) }

    override public var colorChartSequentialAccent2Tint100: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeEmerald900) }

    override public var colorChartSequentialAccent2Tint200: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeEmerald800) }

    override public var colorChartSequentialAccent2Tint300: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeEmerald700) }

    override public var colorChartSequentialAccent2Tint400: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeEmerald600) }

    override public var colorChartSequentialAccent2Tint500: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeEmerald500) }

    override public var colorChartSequentialAccent2Tint600: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeEmerald400) }

    override public var colorChartSequentialAccent2Tint700: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeEmerald300) }

    override public var colorChartSequentialAccent2Tint800: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeEmerald200) }

    override public var colorChartSequentialAccent2Tint900: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeEmerald100) }

    override public var colorChartSequentialAccent3Tint100: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeShockingPink900) }

    override public var colorChartSequentialAccent3Tint200: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeShockingPink800) }

    override public var colorChartSequentialAccent3Tint300: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeShockingPink700) }

    override public var colorChartSequentialAccent3Tint400: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeShockingPink600) }

    override public var colorChartSequentialAccent3Tint500: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeShockingPink500) }

    override public var colorChartSequentialAccent3Tint600: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeShockingPink400) }

    override public var colorChartSequentialAccent3Tint700: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeShockingPink300) }

    override public var colorChartSequentialAccent3Tint800: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeShockingPink200) }

    override public var colorChartSequentialAccent3Tint900: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeShockingPink100) }

    override public var colorChartSequentialAccent4Tint100: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeAmethyst900) }

    override public var colorChartSequentialAccent4Tint200: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeAmethyst800) }

    override public var colorChartSequentialAccent4Tint300: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeAmethyst700) }

    override public var colorChartSequentialAccent4Tint400: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeAmethyst600) }

    override public var colorChartSequentialAccent4Tint500: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeAmethyst500) }

    override public var colorChartSequentialAccent4Tint600: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeAmethyst400) }

    override public var colorChartSequentialAccent4Tint700: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeAmethyst300) }

    override public var colorChartSequentialAccent4Tint800: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeAmethyst200) }

    override public var colorChartSequentialAccent4Tint900: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorDecorativeAmethyst100) }

    override public var colorChartSequentialAccent5Tint100: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalSun900) }

    override public var colorChartSequentialAccent5Tint200: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalSun800) }

    override public var colorChartSequentialAccent5Tint300: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalSun700) }

    override public var colorChartSequentialAccent5Tint400: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalSun600) }

    override public var colorChartSequentialAccent5Tint500: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalSun500) }

    override public var colorChartSequentialAccent5Tint600: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalSun400) }

    override public var colorChartSequentialAccent5Tint700: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalSun300) }

    override public var colorChartSequentialAccent5Tint800: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalSun200) }

    override public var colorChartSequentialAccent5Tint900: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalSun100) }
}
// swiftlint:enable line_length
