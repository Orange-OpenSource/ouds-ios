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

    @objc open var colorBackgroundStatusNeutralOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalDarkGray720, dark: ColorRawTokens.colorFunctionalDarkGray720) }

    @objc open var colorBackgroundStatusPositiveMuted: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalMalachite100, dark: ColorRawTokens.colorFunctionalMalachite900) }

    @objc open var colorBackgroundStatusPositiveMutedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalMalachite900) }

    @objc open var colorBackgroundStatusPositiveEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalMalachite500) }

    @objc open var colorBackgroundStatusInfoMuted: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalDodgerBlue100, dark: ColorRawTokens.colorFunctionalDodgerBlue900) }

    @objc open var colorBackgroundStatusInfoMutedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDodgerBlue900) }

    @objc open var colorBackgroundStatusInfoEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDodgerBlue500) }

    @objc open var colorBackgroundStatusWarningMuted: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalSun100, dark: ColorRawTokens.colorFunctionalSun900) }

    @objc open var colorBackgroundStatusWarningMutedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalSun900) }

    @objc open var colorBackgroundStatusWarningEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalSun500) }

    @objc open var colorBackgroundStatusNegativeMuted: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalScarlet100, dark: ColorRawTokens.colorFunctionalScarlet900) }

    @objc open var colorBackgroundStatusNegativeMutedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet900) }

    @objc open var colorBackgroundStatusNegativeEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet600) }

    // WARNING: #124 - Colors to use are part of Orange Theme so are not reachable at this level, as a workaround add raw values
    @objc open var colorBackgroundStatusAccentMuted: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorBackgroundStatusAccentMuted!") }

    // WARNING: #124 - Colors to use are part of Orange Theme so are not reachable at this level, as a workaround add raw values
    @objc open var colorBackgroundStatusAccentMutedOnBackgroundEmphasized: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorBackgroundStatusAccentMutedOnBackgroundEmphasized!") }

    @objc open var colorBackgroundStatusAccentEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalSun500) }

    // MARK: Semantic token - Colors - Content

    @objc open var colorContentDefault: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalBlack, dark: ColorRawTokens.colorFunctionalLightGray160) }

    @objc open var colorContentContentDefaultOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    @objc open var colorContentMuted: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalDarkGray400, dark: ColorRawTokens.colorFunctionalLightGray400) }

    @objc open var colorContentContentMutedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray400) }

    @objc open var colorContentDisabled: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalLightGray400, dark: ColorRawTokens.colorFunctionalDarkGray400) }

    @objc open var colorContentContentDisabledOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray400) }

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

    @objc open var colorContentOnBackgroundPrimary: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalWhite, dark: ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorContentOnBackgroundSecondary: ColorSemanticToken { fatalError("🤖 No value defined for colorContentOnBackgroundSecondary!") }

    @objc open var colorContentOnBackgroundTertiary: ColorSemanticToken { fatalError("🤖 No value defined for colorContentOnBackgroundTertiary!") }

    @objc open var colorContentOnBackgroundStatusPositiveMuted: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalBlack, dark: ColorRawTokens.colorFunctionalLightGray160) }

    @objc open var colorContentOnBackgroundStatusPositiveMutedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    @objc open var colorContentOnBackgroundStatusPositiveEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorContentOnBackgroundStatusInfoMuted: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalBlack, dark: ColorRawTokens.colorFunctionalLightGray160) }

    @objc open var colorContentOnBackgroundStatusInfoMutedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    @objc open var colorContentOnBackgroundStatusInfoEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorContentOnBackgroundStatusWarningMuted: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalBlack, dark: ColorRawTokens.colorFunctionalLightGray160) }

    @objc open var colorContentOnBackgroundStatusWarningMutedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    @objc open var colorContentOnBackgroundStatusWarningEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorContentOnBackgroundStatusNegativeMuted: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalBlack, dark: ColorRawTokens.colorFunctionalLightGray160) }

    @objc open var colorContentOnBackgroundStatusNegativeMutedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    @objc open var colorContentOnBackgroundStatusNegativeEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    @objc open var colorContentOnBackgroundStatusAccentMuted: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalBlack, dark: ColorRawTokens.colorFunctionalLightGray160) }

    @objc open var colorContentOnBackgroundStatusAccentMutedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    @objc open var colorContentOnBackgroundStatusAccentedEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    // MARK: Semantic token - Colors - Border

    @objc open var colorBorderDefault: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalLightGray400, dark: ColorRawTokens.colorFunctionalDarkGray400) }

    @objc open var colorBorderDefaultOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray400) }

    @objc open var colorBorderEmphasized: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalBlack, dark: ColorRawTokens.colorFunctionalLightGray160) }

    @objc open var colorBorderEmphasizedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    @objc open var colorBorderFocus: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalWhite, dark: ColorRawTokens.colorFunctionalDarkGray880) }

    // WARNING: #124 - Colors to use are part of Orange Theme so are not reachable at this level, as a workaround add raw values
    @objc open var colorBorderBrandPrimaryOnBackgroundEmphasized: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorBorderBrandPrimaryOnBackgroundEmphasized!") }

    // WARNING: #124 - Colors to use are part of Orange Theme so are not reachable at this level, as a workaround add raw values
    @objc open var colorBorderBrandPrimary: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorBorderBrandPrimary!") }

    @objc open var colorBorderBrandSecondary: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderBrandSecondary!") }

    @objc open var colorBorderBrandTertiary: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderBrandTertiary!") }

    @objc open var colorBorderStatusPositive: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderStatusPositive!") }

    @objc open var colorBorderStatusInfo: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderStatusInfo!") }

    @objc open var colorBorderStatusWarning: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderStatusWarning!") }

    @objc open var colorBorderStatusNegative: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderStatusNegative!") }

    @objc open var colorBorderStatusAccent: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderStatusAccent!") }

    @objc open var colorBorderOnBackgroundBrandPrimary: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalWhite, dark: ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorBorderOnBackgroundBrandSecondary: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderOnBackgroundBrandSecondary!") }

    @objc open var colorBorderOnBackgroundBrandTertiary: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderOnBackgroundBrandTertiary!") }

    // MARK: Semantic token - Colors - Action

    // WARNING: #124 - Colors to use are part of Orange Theme so are not reachable at this level, as a workaround add raw values
    @objc open var colorActionSelected: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorActionSelected!") }

    // WARNING: #124 - Colors to use are part of Orange Theme so are not reachable at this level, as a workaround add raw values
    @objc open var colorActionSelectedOnBackgroundEmphasized: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorActionSelectedOnBackgroundEmphasized!") }

    @objc open var colorActionDisabled: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalLightGray400, dark: ColorRawTokens.colorFunctionalDarkGray400) }

    @objc open var colorActionDisabledOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray400) }

    @objc open var colorActionVisited: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorDecorativeAmethyst600, dark: ColorRawTokens.colorDecorativeAmethyst400) }

    @objc open var colorActionVistedOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeAmethyst400) }

    @objc open var colorActionPrimaryEnabled: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalBlack, dark: ColorRawTokens.colorFunctionalLightGray160) }

    @objc open var colorActionPrimaryEnabledOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    @objc open var colorActionPrimaryHover: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalDarkGray400, dark: ColorRawTokens.colorFunctionalLightGray400) }

    @objc open var colorActionPrimaryHoverOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray400) }

    // WARNING: #124 - Colors to use are part of Orange Theme so are not reachable at this level, as a workaround add raw values
    @objc open var colorActionPrimaryPressed: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorActionPrimaryPressed!") }

    // WARNING: #124 - Colors to use are part of Orange Theme so are not reachable at this level, as a workaround add raw values
    @objc open var colorActionPrimaryPressedOnBackgroundEmphasized: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorActionPrimaryPressedOnBackgroundEmphasized!") }

    // WARNING: #124 - Colors to use are part of Orange Theme so are not reachable at this level, as a workaround add raw values
    @objc open var colorActionPrimaryLoading: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorActionPrimaryLoading!") }

    // WARNING: #124 - Colors to use are part of Orange Theme so are not reachable at this level, as a workaround add raw values
    @objc open var colorActionPrimaryLoadingOnBackgroundEmphasized: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorActionPrimaryLoadingOnBackgroundEmphasized!") }

    @objc open var colorActionPrimaryFocus: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalDarkGray400, dark: ColorRawTokens.colorFunctionalLightGray400) }

    @objc open var colorActionPrimaryFocusOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray400) }

    @objc open var colorActionSecondaryEnabled: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalLightGray80, dark: ColorRawTokens.colorFunctionalLightGray160) }

    @objc open var colorActionSecondaryEnabledOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray720) }

    @objc open var colorActionSecondaryHover: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalLightGray160, dark: ColorRawTokens.colorFunctionalDarkGray640) }

    @objc open var colorActionSecondaryHoverOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }

    @objc open var colorActionSecondaryPressed: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalLightGray160, dark: ColorRawTokens.colorFunctionalDarkGray640) }

    @objc open var colorActionSecondaryPressedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray640) }

    @objc open var colorActionSecondaryLoading: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalLightGray160, dark: ColorRawTokens.colorFunctionalDarkGray640) }

    @objc open var colorActionSecondaryLoadingOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray640) }

    @objc open var colorActionSecondaryFocus: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalLightGray160, dark: ColorRawTokens.colorFunctionalDarkGray640) }

    @objc open var colorActionSecondaryFocusOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray640) }

    @objc open var colorActionNegativeEnabled: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet600) }

    @objc open var colorActionNegativeHover: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet700) }

    @objc open var colorActionNegativePressed: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet800) }

    @objc open var colorActionNegativeLoading: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet800) }

    @objc open var colorActionNegativeFocus: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet700) }

    @objc open var colorActionOnBackgroundActionDisabled: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalWhite, dark: ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorActionOnBackgroundActionDisabledOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorActionOnBackgroundActionNegative: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    @objc open var colorActionOnBackgroundActionPrimaryEnabled: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalWhite, dark: ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorActionOnBackgroundActionPrimaryEnabledOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorActionOnBackgroundActionPrimaryHover: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalWhite, dark: ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorActionOnBackgroundActionPrimaryHoverOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorActionOnBackgroundActionPrimaryPressed: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalWhite, dark: ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorActionOnBackgroundActionPrimaryPressedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorActionOnBackgroundActionPrimaryLoading: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalWhite, dark: ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorActionOnBackgroundActionPrimaryLoadingOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorActionOnBackgroundActionPrimaryFocus: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalWhite, dark: ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorActionOnBackgroundActionPrimaryFocusOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorActionOnBackgroundActionSecondaryEnabled: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBackgroundActionSecondaryEnabled!")  }

    @objc open var colorActionOnBackgroundActionSecondaryEnabledOnBackgroundEmphasized: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBackgroundActionSecondaryEnabledOnBackgroundEmphasized!") }

    @objc open var colorActionOnBackgroundActionSecondaryHover: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBackgroundActionSecondaryHover!") }

    @objc open var colorActionOnBackgroundActionSecondaryHoverOnBackgroundEmphasized: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBackgroundActionSecondaryHoverOnBackgroundEmphasized!") }

    @objc open var colorActionOnBackgroundActionSecondaryPressed: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBackgroundActionSecondaryPressed!") }

    @objc open var colorActionOnBackgroundActionSecondaryPressedOnBackgroundEmphasized: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBackgroundActionSecondaryPressedOnBackgroundEmphasized!") }

    @objc open var colorActionOnBackgroundActionSecondaryLoading: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBackgroundActionSecondaryLoading!") }

    @objc open var colorActionOnBackgroundActionSecondaryLoadingOnBackgroundEmphasized: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBackgroundActionSecondaryLoadingOnBackgroundEmphasized!") }

    @objc open var colorActionOnBackgroundActionSecondaryFocus: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBackgroundActionSecondaryFocus!") }

    @objc open var colorActionOnBackgroundActionSecondaryFocusOnBackgroundEmphasized: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBackgroundActionSecondaryFocusOnBackgroundEmphasized!") }

    // MARK: Semantic token - Colors - Always

    @objc open var colorAlwaysBlack: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorAlwaysWhite: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    @objc open var colorAlwaysWarning: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalSun500) }

    @objc open var colorAlwaysNegative: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet600) }

    @objc open var colorAlwaysPositive: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalMalachite500) }

    @objc open var colorAlwaysInfo: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDodgerBlue500) }

    @objc open var colorAlwaysAccent: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalSun500) }

    @objc open var colorAlwaysOnBackgroundBlack: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    @objc open var colorAlwaysOnBackgroundWhite: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorAlwaysOnBackgroundWarning: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorAlwaysOnBackgroundNegative: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    @objc open var colorAlwaysOnBackgroundPositive: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorAlwaysOnBackgroundInfo: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorAlwaysOnBackgroundAccent: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }

    // MARK: Semantic token - Colors - Transparent

    @objc open var colorTransparentDefault: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorTransparentBlack0) }

    // MARK: Semantic token - Colors - Elevation

    @objc open var colorElevationRaised: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalWhite, dark: ColorRawTokens.colorFunctionalDarkGray800) }

    @objc open var colorElevationRaisedOnBackgroundSecondary: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalWhite, dark: ColorRawTokens.colorFunctionalDarkGray720) }

    @objc open var colorElevationRaisedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalDarkGray800, dark: ColorRawTokens.colorFunctionalDarkGray560) }

    @objc open var colorElevationDrag: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalLightGray80, dark: ColorRawTokens.colorFunctionalDarkGray720) }

    @objc open var colorElevationDragOnBackgroundSecondary: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalLightGray80, dark: ColorRawTokens.colorFunctionalDarkGray640) }

    @objc open var colorElevationDragOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalDarkGray720, dark: ColorRawTokens.colorFunctionalDarkGray480) }

    @objc open var colorElevationOverlayDefault: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalWhite, dark: ColorRawTokens.colorFunctionalDarkGray720) }

    @objc open var colorElevationOverlayDefaultOnBackgroundSecondary: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalWhite, dark: ColorRawTokens.colorFunctionalDarkGray640) }

    @objc open var colorElevationOverlayDefaultOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalDarkGray720, dark: ColorRawTokens.colorFunctionalDarkGray480) }

    @objc open var colorElevationOverlayEmphasized: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalDarkGray640, dark: ColorRawTokens.colorFunctionalDarkGray480) }

    @objc open var colorElevationOverlayEmphasizedOnBackgroundSecondary: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalDarkGray640, dark: ColorRawTokens.colorFunctionalDarkGray480) }

    @objc open var colorElevationOverlayEmphasizedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalLightGray80, dark: ColorRawTokens.colorFunctionalDarkGray480) }

    @objc open var colorElevationModal: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalWhite, dark: ColorRawTokens.colorFunctionalDarkGray640) }

    // MARK: Semantic token - Colors - Decorative

    // WARNING: #124 - Colors to use are part of Orange Theme so are not reachable at this level, as a workaround add raw values
    @objc open var colorDecorativePrimary: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorDecorativePrimary!") }

    @objc open var colorDecorativeBrandPrimaryMuted: ColorSemanticToken { fatalError("🤖 No value defined for colorDecorativeBrandPrimaryMuted!") }

    @objc open var colorDecorativeBrandPrimaryEmphasized: ColorSemanticToken { fatalError("🤖 No value defined for colorDecorativeBrandPrimaryEmphasized!") }

    @objc open var colorDecorativeSecondary: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalBlack, dark: ColorRawTokens.colorFunctionalLightGray160) }

    @objc open var colorDecorativeSecondaryMuted: ColorSemanticToken { fatalError("🤖 No value defined for colorDecorativeSecondaryMuted!") }

    @objc open var colorDecorativeSecondaryEmphasized: ColorSemanticToken { fatalError("🤖 No value defined for colorDecorativeSecondaryEmphasized!") }

    @objc open var colorDecorativeBrandTertiary: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalBlack, dark: ColorRawTokens.colorFunctionalDarkGray880) }

    @objc open var colorDecorativeBrandTertiaryMuted: ColorSemanticToken { fatalError("🤖 No value defined for colorDecorativeBrandTertiaryMuted!") }

    @objc open var colorDecorativeBrandTertiaryEmphasized: ColorSemanticToken { fatalError("🤖 No value defined for colorDecorativeBrandTertiaryEmphasized!") }

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
