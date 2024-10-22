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

// ଘ( ･ω･)_/ﾟ･:*:･｡☆
// [File to generate with the tokenator]
// WARNING: Not synchronized anymore with the Figjam

// swiftlint:disable line_length
// swiftlint:disable identifier_name
// swiftlint:disable file_length

/// Defines basic values common to all themes for `ColorSemanticTokens`.
/// These values can be overriden inside `OUDSTheme` subclasses (in extensions or not, in the same module or not) thanks to the `@objc open` combination.
/// Some tokens do not have values assigned in the design system, and must be overriden.
/// Some tokens must be overiden in `OrangeTheme` side because they rely on Oange brand colors.
extension OUDSTheme: ColorSemanticTokens {

    // MARK: Semantic token - Colors - Background

    @objc open var colorBackgroundPrimary: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalWhite, dark: ColorRawTokens.colorFunctionalDarkGray880) }

    @objc open var colorBackgroundSecondary: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalLightGray80, dark: ColorRawTokens.colorFunctionalDarkGray800) }

    // WARNING: #124 - Colors to use are part of Orange Theme so are not reachable at this level, as a workaround add raw values
    @objc open var colorBackgroundTertiary: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorBackgroundBrandSecondary!") }

    @objc open var colorBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalDarkGray880, dark: ColorRawTokens.colorFunctionalDarkGray640) }

    // WARNING: #124 - Colors to use are part of Orange Theme so are not reachable at this level, as a workaround add raw values
    @objc open var colorBackgroundBrandPrimary: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorBackgroundBrandPrimary!") }

    @objc open var colorBackgroundBrandSecondary: ColorSemanticToken { fatalError("🤖 No value defined for colorBackgroundBrandSecondary!") }

    @objc open var colorBackgroundBrandTertiary: ColorSemanticToken { fatalError("🤖 No value defined for colorBackgroundBrandTertiary!") }

    @objc open var colorBackgroundStatusNeutral: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalLightGray80, dark: ColorRawTokens.colorFunctionalDarkGray720) }

    @objc open var colorBackgroundStatusNeutralOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalDarkGray720, dark: ColorRawTokens.colorFunctionalDarkGray720) }

    @objc open var colorBackgroundStatusPositiveMuted: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalMalachite100, dark: ColorRawTokens.colorFunctionalMalachite900) }

    @objc open var colorBackgroundStatusPositiveMutedOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalMalachite900) }

    @objc open var colorBackgroundStatusPositiveEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalMalachite500) }

    @objc open var colorBackgroundStatusInfoMuted: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalDodgerBlue100, dark: ColorRawTokens.colorFunctionalDodgerBlue900) }

    @objc open var colorBackgroundStatusInfoMutedOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDodgerBlue900) }

    @objc open var colorBackgroundStatusInfoEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDodgerBlue500) }

    @objc open var colorBackgroundStatusWarningMuted: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalSun100, dark: ColorRawTokens.colorFunctionalSun900) }

    @objc open var colorBackgroundStatusWarningMutedOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalSun900) }

    @objc open var colorBackgroundStatusWarningEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalSun500) }

    @objc open var colorBackgroundStatusNegativeMuted: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalScarlet100, dark: ColorRawTokens.colorFunctionalScarlet900) }

    @objc open var colorBackgroundStatusNegativeMutedOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet900) }

    @objc open var colorBackgroundStatusNegativeEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet600) }

    // WARNING: #124 - Colors to use are part of Orange Theme so are not reachable at this level, as a workaround add raw values
    @objc open var colorBackgroundStatusAccentMuted: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorBackgroundStatusAccentMuted!") }

    // WARNING: #124 - Colors to use are part of Orange Theme so are not reachable at this level, as a workaround add raw values
    @objc open var colorBackgroundStatusAccentMutedOnBgEmphasized: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorBackgroundStatusAccentMutedOnBgEmphasized!") }

    @objc open var colorBackgroundStatusAccentEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalSun500) }

    // MARK: Semantic token - Colors - Content

    @objc open var colorContentDefault: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalBlack, dark: ColorRawTokens.colorFunctionalLightGray160) }

    @objc open var colorContentContentDefaultOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    @objc open var colorContentMuted: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalDarkGray400, dark: ColorRawTokens.colorFunctionalLightGray400) }

    @objc open var colorContentContentMutedOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray400) }

    @objc open var colorContentDisabled: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalLightGray400, dark: ColorRawTokens.colorFunctionalDarkGray400) }

    @objc open var colorContentContentDisabledOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray400) }

    // WARNING: #124 - Colors to use are part of Orange Theme so are not reachable at this level, as a workaround add raw values
    @objc open var colorContentBrandPrimary: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorContentBrandPrimary!") }

    @objc open var colorContentBrandSecondary: ColorSemanticToken { fatalError("🤖 No value defined for colorContentBrandSecondary!") }

    @objc open var colorContentBrandTertiary: ColorSemanticToken { fatalError("🤖 No value defined for colorContentBrandTertiary!") }

    @objc open var colorContentStatusPositive: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalMalachite500) }

    @objc open var colorContentStatusInfo: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDodgerBlue500) }

    @objc open var colorContentStatusWarning: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalSun500) }

    @objc open var colorContentStatusNegative: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet600) }

    @objc open var colorContentStatusAccent: ColorSemanticToken { fatalError("🤖 No value defined for colorContentStatusAccent!") }

    // MARK: Semantic token - Colors - Content - On Background

    @objc open var colorContentOnBgPrimary: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalWhite, dark: ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorContentOnBgSecondary: ColorSemanticToken { fatalError("🤖 No value defined for colorContentOnBgSecondary!") }

    @objc open var colorContentOnBgTertiary: ColorSemanticToken { fatalError("🤖 No value defined for colorContentOnBgTertiary!") }

    @objc open var colorContentOnBgStatusPositiveMuted: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalBlack, dark: ColorRawTokens.colorFunctionalLightGray160) }

    @objc open var colorContentOnBgStatusPositiveMutedOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    @objc open var colorContentOnBgStatusPositiveEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorContentOnBgStatusInfoMuted: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalBlack, dark: ColorRawTokens.colorFunctionalLightGray160) }

    @objc open var colorContentOnBgStatusInfoMutedOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    @objc open var colorContentOnBgStatusInfoEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorContentOnBgStatusWarningMuted: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalBlack, dark: ColorRawTokens.colorFunctionalLightGray160) }

    @objc open var colorContentOnBgStatusWarningMutedOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    @objc open var colorContentOnBgStatusWarningEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorContentOnBgStatusNegativeMuted: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalBlack, dark: ColorRawTokens.colorFunctionalLightGray160) }

    @objc open var colorContentOnBgStatusNegativeMutedOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    @objc open var colorContentOnBgStatusNegativeEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    @objc open var colorContentOnBgStatusAccentMuted: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalBlack, dark: ColorRawTokens.colorFunctionalLightGray160) }

    @objc open var colorContentOnBgStatusAccentMutedOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    @objc open var colorContentOnBgStatusAccentedEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    // MARK: Semantic token - Colors - Border

    @objc open var colorBorderDefault: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalLightGray400, dark: ColorRawTokens.colorFunctionalDarkGray400) }

    @objc open var colorBorderDefaultOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray400) }

    @objc open var colorBorderEmphasized: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalBlack, dark: ColorRawTokens.colorFunctionalLightGray160) }

    @objc open var colorBorderEmphasizedOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    @objc open var colorBorderFocus: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalWhite, dark: ColorRawTokens.colorFunctionalDarkGray880) }

    // WARNING: #124 - Colors to use are part of Orange Theme so are not reachable at this level, as a workaround add raw values
    @objc open var colorBorderBrandPrimaryOnBgEmphasized: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorBorderBrandPrimaryOnBgEmphasized!") }

    // WARNING: #124 - Colors to use are part of Orange Theme so are not reachable at this level, as a workaround add raw values
    @objc open var colorBorderBrandPrimary: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorBorderBrandPrimary!") }

    @objc open var colorBorderBrandSecondary: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderBrandSecondary!") }

    @objc open var colorBorderBrandTertiary: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderBrandTertiary!") }

    @objc open var colorBorderStatusPositive: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderStatusPositive!") }

    @objc open var colorBorderStatusInfo: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderStatusInfo!") }

    @objc open var colorBorderStatusWarning: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderStatusWarning!") }

    @objc open var colorBorderStatusNegative: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderStatusNegative!") }

    @objc open var colorBorderStatusAccent: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderStatusAccent!") }

    @objc open var colorBorderOnBgBrandPrimary: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalWhite, dark: ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorBorderOnBgBrandSecondary: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderOnBgBrandSecondary!") }

    @objc open var colorBorderOnBgBrandTertiary: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderOnBgBrandTertiary!") }

    // MARK: Semantic token - Colors - Action

    // WARNING: #124 - Colors to use are part of Orange Theme so are not reachable at this level, as a workaround add raw values
    @objc open var colorActionSelected: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorActionSelected!") }

    // WARNING: #124 - Colors to use are part of Orange Theme so are not reachable at this level, as a workaround add raw values
    @objc open var colorActionSelectedOnBgEmphasized: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorActionSelectedOnBgEmphasized!") }

    @objc open var colorActionDisabled: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalLightGray400, dark: ColorRawTokens.colorFunctionalDarkGray400) }

    @objc open var colorActionDisabledOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray400) }

    @objc open var colorActionVisited: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeAmethyst600, dark: ColorRawTokens.colorDecorativeAmethyst400) }

    @objc open var colorActionVistedOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeAmethyst400) }

    @objc open var colorActionPrimaryEnabled: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalBlack, dark: ColorRawTokens.colorFunctionalLightGray160) }

    @objc open var colorActionPrimaryEnabledOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    @objc open var colorActionPrimaryHover: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalDarkGray400, dark: ColorRawTokens.colorFunctionalLightGray400) }

    @objc open var colorActionPrimaryHoverOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray400) }

    // WARNING: #124 - Colors to use are part of Orange Theme so are not reachable at this level, as a workaround add raw values
    @objc open var colorActionPrimaryPressed: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorActionPrimaryPressed!") }

    // WARNING: #124 - Colors to use are part of Orange Theme so are not reachable at this level, as a workaround add raw values
    @objc open var colorActionPrimaryPressedOnBgEmphasized: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorActionPrimaryPressedOnBgEmphasized!") }

    // WARNING: #124 - Colors to use are part of Orange Theme so are not reachable at this level, as a workaround add raw values
    @objc open var colorActionPrimaryLoading: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorActionPrimaryLoading!") }

    // WARNING: #124 - Colors to use are part of Orange Theme so are not reachable at this level, as a workaround add raw values
    @objc open var colorActionPrimaryLoadingOnBgEmphasized: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorActionPrimaryLoadingOnBgEmphasized!") }

    @objc open var colorActionPrimaryFocus: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalDarkGray400, dark: ColorRawTokens.colorFunctionalLightGray400) }

    @objc open var colorActionPrimaryFocusOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray400) }

    @objc open var colorActionSecondaryEnabled: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalLightGray80, dark: ColorRawTokens.colorFunctionalLightGray160) }

    @objc open var colorActionSecondaryEnabledOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray720) }

    @objc open var colorActionSecondaryHover: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalLightGray160, dark: ColorRawTokens.colorFunctionalDarkGray640) }

    @objc open var colorActionSecondaryHoverOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    @objc open var colorActionSecondaryPressed: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalLightGray160, dark: ColorRawTokens.colorFunctionalDarkGray640) }

    @objc open var colorActionSecondaryPressedOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray640) }

    @objc open var colorActionSecondaryLoading: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalLightGray160, dark: ColorRawTokens.colorFunctionalDarkGray640) }

    @objc open var colorActionSecondaryLoadingOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray640) }

    @objc open var colorActionSecondaryFocus: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalLightGray160, dark: ColorRawTokens.colorFunctionalDarkGray640) }

    @objc open var colorActionSecondaryFocusOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray640) }

    @objc open var colorActionNegativeEnabled: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet600) }

    @objc open var colorActionNegativeHover: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet700) }

    @objc open var colorActionNegativePressed: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet800) }

    @objc open var colorActionNegativeLoading: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet800) }

    @objc open var colorActionNegativeFocus: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet700) }

    @objc open var colorActionOnBgActionDisabled: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalWhite, dark: ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorActionOnBgActionDisabledOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorActionOnBgActionNegative: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    @objc open var colorActionOnBgActionPrimaryEnabled: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalWhite, dark: ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorActionOnBgActionPrimaryEnabledOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorActionOnBgActionPrimaryHover: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalWhite, dark: ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorActionOnBgActionPrimaryHoverOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorActionOnBgActionPrimaryPressed: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalWhite, dark: ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorActionOnBgActionPrimaryPressedOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorActionOnBgActionPrimaryLoading: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalWhite, dark: ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorActionOnBgActionPrimaryLoadingOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorActionOnBgActionPrimaryFocus: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalWhite, dark: ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorActionOnBgActionPrimaryFocusOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorActionOnBgActionSecondaryEnabled: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryEnabled!")  }

    @objc open var colorActionOnBgActionSecondaryEnabledOnBgEmphasized: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryEnabledOnBgEmphasized!") }

    @objc open var colorActionOnBgActionSecondaryHover: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryHover!") }

    @objc open var colorActionOnBgActionSecondaryHoverOnBgEmphasized: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryHoverOnBgEmphasized!") }

    @objc open var colorActionOnBgActionSecondaryPressed: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryPressed!") }

    @objc open var colorActionOnBgActionSecondaryPressedOnBgEmphasized: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryPressedOnBgEmphasized!") }

    @objc open var colorActionOnBgActionSecondaryLoading: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryLoading!") }

    @objc open var colorActionOnBgActionSecondaryLoadingOnBgEmphasized: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryLoadingOnBgEmphasized!") }

    @objc open var colorActionOnBgActionSecondaryFocus: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryFocus!") }

    @objc open var colorActionOnBgActionSecondaryFocusOnBgEmphasized: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryFocusOnBgEmphasized!") }

    // MARK: Semantic token - Colors - Always

    @objc open var colorAlwaysBlack: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorAlwaysWhite: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    @objc open var colorAlwaysWarning: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalSun500) }

    @objc open var colorAlwaysNegative: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet600) }

    @objc open var colorAlwaysPositive: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalMalachite500) }

    @objc open var colorAlwaysInfo: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDodgerBlue500) }

    @objc open var colorAlwaysAccent: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalSun500) }

    @objc open var colorAlwaysOnBgBlack: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    @objc open var colorAlwaysOnBgWhite: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorAlwaysOnBgWarning: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorAlwaysOnBgNegative: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    @objc open var colorAlwaysOnBgPositive: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorAlwaysOnBgInfo: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorAlwaysOnBgAccent: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    // MARK: Semantic token - Colors - Transparent

    @objc open var colorTransparentDefault: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorTransparentBlack0) }

    // MARK: Semantic token - Colors - Elevation

    @objc open var colorElevationRaised: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalWhite, dark: ColorRawTokens.colorFunctionalDarkGray800) }

    @objc open var colorElevationRaisedOnBgSecondary: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalWhite, dark: ColorRawTokens.colorFunctionalDarkGray720) }

    @objc open var colorElevationRaisedOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalDarkGray800, dark: ColorRawTokens.colorFunctionalDarkGray560) }

    @objc open var colorElevationDrag: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalLightGray80, dark: ColorRawTokens.colorFunctionalDarkGray720) }

    @objc open var colorElevationDragOnBgSecondary: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalLightGray80, dark: ColorRawTokens.colorFunctionalDarkGray640) }

    @objc open var colorElevationDragOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalDarkGray720, dark: ColorRawTokens.colorFunctionalDarkGray480) }

    @objc open var colorElevationOverlayDefault: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalWhite, dark: ColorRawTokens.colorFunctionalDarkGray720) }

    @objc open var colorElevationOverlayDefaultOnBgSecondary: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalWhite, dark: ColorRawTokens.colorFunctionalDarkGray640) }

    @objc open var colorElevationOverlayDefaultOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalDarkGray720, dark: ColorRawTokens.colorFunctionalDarkGray480) }

    @objc open var colorElevationOverlayEmphasized: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalDarkGray640, dark: ColorRawTokens.colorFunctionalDarkGray480) }

    @objc open var colorElevationOverlayEmphasizedOnBgSecondary: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalDarkGray640, dark: ColorRawTokens.colorFunctionalDarkGray480) }

    @objc open var colorElevationOverlayEmphasizedOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalLightGray80, dark: ColorRawTokens.colorFunctionalDarkGray480) }

    @objc open var colorElevationModal: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalWhite, dark: ColorRawTokens.colorFunctionalDarkGray640) }

    // MARK: Semantic token - Colors - Decorative

    // WARNING: #124 - Colors to use are part of Orange Theme so are not reachable at this level, as a workaround add raw values
    @objc open var colorDecorativePrimary: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorDecorativePrimary!") }

    @objc open var colorDecorativeSecondary: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalBlack, dark: ColorRawTokens.colorFunctionalLightGray160) }

    @objc open var colorDecorativeTertiary: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalBlack, dark: ColorRawTokens.colorFunctionalDarkGray880) }

    @objc open var colorDecorativeNeutralMuted: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalLightGray160, dark: ColorRawTokens.colorFunctionalDarkGray560) }

    @objc open var colorDecorativeNeutralDefault: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalLightGray400, dark: ColorRawTokens.colorFunctionalLightGray560) }

    @objc open var colorDecorativeNeutralEmphasized: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalDarkGray640, dark: ColorRawTokens.colorFunctionalLightGray160) }

    @objc open var colorDecorativeAccent1Muted: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeEmerald200) }

    @objc open var colorDecorativeAccent1Default: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeEmerald500) }

    @objc open var colorDecorativeAccent1Emphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeEmerald700) }

    @objc open var colorDecorativeAccent2Muted: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeSky200) }

    @objc open var colorDecorativeAccent2Default: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeSky400) }

    @objc open var colorDecorativeAccent2Emphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeSky700) }

    @objc open var colorDecorativeAccent3Muted: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalSun200) }

    @objc open var colorDecorativeAccent3Default: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalSun500) }

    @objc open var colorDecorativeAccent3Emphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeAmber500) }

    @objc open var colorDecorativeAccent4Muted: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeAmethyst200) }

    @objc open var colorDecorativeAccent4Default: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeAmethyst400) }

    @objc open var colorDecorativeAccent4Emphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeAmethyst800) }

    @objc open var colorDecorativeAccent5Muted: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeShockingPink100) }

    @objc open var colorDecorativeAccent5Default: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeShockingPink200) }

    @objc open var colorDecorativeAccent5Emphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeShockingPink300) }

    @objc open var colorDecorativeSkinTint100: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeDeepPeach100) }

    @objc open var colorDecorativeSkinTint200: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeDeepPeach200) }

    @objc open var colorDecorativeSkinTint300: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeDeepPeach300) }

    @objc open var colorDecorativeSkinTint400: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeDeepPeach400) }

    @objc open var colorDecorativeSkinTint500: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeDeepPeach500) }

    @objc open var colorDecorativeSkinTint600: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeDeepPeach600) }

    @objc open var colorDecorativeSkinTint700: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeDeepPeach700) }

    @objc open var colorDecorativeSkinTint800: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeDeepPeach800) }

    @objc open var colorDecorativeSkinTint900: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeDeepPeach900) }

    // MARK: Semantic token - Colors - Chart

    @objc open var colorChartCategoricalNeutral: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalLightGray160, dark: ColorRawTokens.colorFunctionalDarkGray720) }

    // WARNING: #124 - Colors to use are part of Orange Theme so are not reachable at this level, as a workaround add raw values
    @objc open var colorChartCategoricalBrand: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorChartCategoricalBrand!") }

    @objc open var colorChartCategoricalPositive: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalMalachite500) }

    @objc open var colorChartCategoricalNegative: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet600) }

    @objc open var colorChartCategoricalTier1: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeAmethyst600, dark: ColorRawTokens.colorDecorativeAmethyst500) }

    @objc open var colorChartCategoricalTier2: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeShockingPink700, dark: ColorRawTokens.colorDecorativeShockingPink400) }

    @objc open var colorChartCategoricalTier3: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeEmerald700, dark: ColorRawTokens.colorDecorativeEmerald600) }

    @objc open var colorChartCategoricalTier4: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeSky700, dark: ColorRawTokens.colorDecorativeSky200) }

    @objc open var colorChartCategoricalTier5: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeAmber800, dark: ColorRawTokens.colorDecorativeAmber700) }

    @objc open var colorChartCategoricalTier6: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeAmethyst500, dark: ColorRawTokens.colorDecorativeAmethyst300) }

    @objc open var colorChartCategoricalTier7: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeShockingPink800, dark: ColorRawTokens.colorDecorativeShockingPink600) }

    @objc open var colorChartCategoricalTier8: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeEmerald600, dark: ColorRawTokens.colorDecorativeEmerald400) }

    @objc open var colorChartCategoricalTier9: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeSky800, dark: ColorRawTokens.colorDecorativeSky500) }

    @objc open var colorChartCategoricalTier10: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeAmber700, dark: ColorRawTokens.colorDecorativeAmber300) }

    @objc open var colorChartSequentialAccent1Tint100: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeSky100, dark: ColorRawTokens.colorDecorativeSky900) }

    @objc open var colorChartSequentialAccent1Tint200: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeSky200, dark: ColorRawTokens.colorDecorativeSky800) }

    @objc open var colorChartSequentialAccent1Tint300: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeSky300, dark: ColorRawTokens.colorDecorativeSky700) }

    @objc open var colorChartSequentialAccent1Tint400: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeSky400, dark: ColorRawTokens.colorDecorativeSky600) }

    @objc open var colorChartSequentialAccent1Tint500: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeSky500, dark: ColorRawTokens.colorDecorativeSky500) }

    @objc open var colorChartSequentialAccent1Tint600: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeSky600, dark: ColorRawTokens.colorDecorativeSky400) }

    @objc open var colorChartSequentialAccent1Tint700: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeSky700, dark: ColorRawTokens.colorDecorativeSky300) }

    @objc open var colorChartSequentialAccent1Tint800: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeSky800, dark: ColorRawTokens.colorDecorativeSky200) }

    @objc open var colorChartSequentialAccent1Tint900: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeSky900, dark: ColorRawTokens.colorDecorativeSky100) }

    @objc open var colorChartSequentialAccent2Tint100: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeEmerald100, dark: ColorRawTokens.colorDecorativeEmerald900) }

    @objc open var colorChartSequentialAccent2Tint200: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeEmerald200, dark: ColorRawTokens.colorDecorativeEmerald800) }

    @objc open var colorChartSequentialAccent2Tint300: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeEmerald300, dark: ColorRawTokens.colorDecorativeEmerald700) }

    @objc open var colorChartSequentialAccent2Tint400: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeEmerald400, dark: ColorRawTokens.colorDecorativeEmerald600) }

    @objc open var colorChartSequentialAccent2Tint500: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeEmerald500, dark: ColorRawTokens.colorDecorativeEmerald500) }

    @objc open var colorChartSequentialAccent2Tint600: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeEmerald600, dark: ColorRawTokens.colorDecorativeEmerald400) }

    @objc open var colorChartSequentialAccent2Tint700: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeEmerald700, dark: ColorRawTokens.colorDecorativeEmerald300) }

    @objc open var colorChartSequentialAccent2Tint800: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeEmerald800, dark: ColorRawTokens.colorDecorativeEmerald200) }

    @objc open var colorChartSequentialAccent2Tint900: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeEmerald900, dark: ColorRawTokens.colorDecorativeEmerald100) }

    @objc open var colorChartSequentialAccent3Tint100: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeShockingPink100, dark: ColorRawTokens.colorDecorativeShockingPink900) }

    @objc open var colorChartSequentialAccent3Tint200: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeShockingPink200, dark: ColorRawTokens.colorDecorativeShockingPink800) }

    @objc open var colorChartSequentialAccent3Tint300: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeShockingPink300, dark: ColorRawTokens.colorDecorativeShockingPink700) }

    @objc open var colorChartSequentialAccent3Tint400: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeShockingPink400, dark: ColorRawTokens.colorDecorativeShockingPink600) }

    @objc open var colorChartSequentialAccent3Tint500: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeShockingPink500, dark: ColorRawTokens.colorDecorativeShockingPink500) }

    @objc open var colorChartSequentialAccent3Tint600: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeShockingPink600, dark: ColorRawTokens.colorDecorativeShockingPink400) }

    @objc open var colorChartSequentialAccent3Tint700: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeShockingPink700, dark: ColorRawTokens.colorDecorativeShockingPink300) }

    @objc open var colorChartSequentialAccent3Tint800: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeShockingPink800, dark: ColorRawTokens.colorDecorativeShockingPink200) }

    @objc open var colorChartSequentialAccent3Tint900: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeShockingPink900, dark: ColorRawTokens.colorDecorativeShockingPink100) }

    @objc open var colorChartSequentialAccent4Tint100: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeAmethyst100, dark: ColorRawTokens.colorDecorativeAmethyst900) }

    @objc open var colorChartSequentialAccent4Tint200: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeAmethyst200, dark: ColorRawTokens.colorDecorativeAmethyst800) }

    @objc open var colorChartSequentialAccent4Tint300: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeAmethyst300, dark: ColorRawTokens.colorDecorativeAmethyst700) }

    @objc open var colorChartSequentialAccent4Tint400: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeAmethyst400, dark: ColorRawTokens.colorDecorativeAmethyst600) }

    @objc open var colorChartSequentialAccent4Tint500: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeAmethyst500, dark: ColorRawTokens.colorDecorativeAmethyst500) }

    @objc open var colorChartSequentialAccent4Tint600: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeAmethyst600, dark: ColorRawTokens.colorDecorativeAmethyst400) }

    @objc open var colorChartSequentialAccent4Tint700: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeAmethyst700, dark: ColorRawTokens.colorDecorativeAmethyst300) }

    @objc open var colorChartSequentialAccent4Tint800: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeAmethyst800, dark: ColorRawTokens.colorDecorativeAmethyst200) }

    @objc open var colorChartSequentialAccent4Tint900: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeAmethyst900, dark: ColorRawTokens.colorDecorativeAmethyst100) }

    @objc open var colorChartSequentialAccent5Tint100: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalSun100, dark: ColorRawTokens.colorFunctionalSun900) }

    @objc open var colorChartSequentialAccent5Tint200: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalSun200, dark: ColorRawTokens.colorFunctionalSun800) }

    @objc open var colorChartSequentialAccent5Tint300: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalSun300, dark: ColorRawTokens.colorFunctionalSun700) }

    @objc open var colorChartSequentialAccent5Tint400: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalSun400, dark: ColorRawTokens.colorFunctionalSun600) }

    @objc open var colorChartSequentialAccent5Tint500: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalSun500, dark: ColorRawTokens.colorFunctionalSun500) }

    @objc open var colorChartSequentialAccent5Tint600: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalSun600, dark: ColorRawTokens.colorFunctionalSun400) }

    @objc open var colorChartSequentialAccent5Tint700: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalSun700, dark: ColorRawTokens.colorFunctionalSun300) }

    @objc open var colorChartSequentialAccent5Tint800: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalSun800, dark: ColorRawTokens.colorFunctionalSun200) }

    @objc open var colorChartSequentialAccent5Tint900: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalSun900, dark: ColorRawTokens.colorFunctionalSun100) }
}

// swiftlint:enable line_length
// swiftlint:enable identifier_name
// swiftlint:enable file_length
