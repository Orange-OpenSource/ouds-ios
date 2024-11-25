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
// [File to generate by the tokenator]
// WARNING: Not synchronized anymore with the Figjam / Figma by developers team
// Create an issue for update https://github.com/Orange-OpenSource/ouds-ios/issues/new?template=token_update.yml

// swiftlint:disable line_length
// swiftlint:disable identifier_name
// swiftlint:disable file_length

/// Defines basic values common to all themes for `ColorSemanticTokens`.
/// These values can be overriden inside `OUDSTheme` subclasses (in extensions or not, in the same module or not) thanks to the `@objc open` combination.
/// Some tokens do not have values assigned in the design system, and must be overriden.
/// Some tokens must be overiden in `OrangeTheme` side because they rely on Oange brand colors.
extension OUDSTheme: ColorSemanticTokens {

    // MARK: Semantic token - Colors - Background

    @objc open var colorBgPrimaryLight: ColorSemanticToken { ColorRawTokens.colorFunctionalWhite }
    @objc open var colorBgPrimaryDark: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray880 }

    @objc open var colorBgSecondaryLight: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray80 }
    @objc open var colorBgSecondaryDark: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray800 }

    @objc open var colorBgTertiaryLight: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorBgTertiaryLight!") }
    @objc open var colorBgTertiaryDark: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorBgTertiaryDark!") }

    @objc open var colorBgEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray880 }
    @objc open var colorBgEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray640 }

    @objc open var colorBgBrandPrimaryLight: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorBgBrandPrimaryLight!") }
    @objc open var colorBgBrandPrimaryDark: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorBgBrandPrimaryDark!") }

    @objc open var colorBgBrandSecondaryLight: ColorSemanticToken { fatalError("🤖 No value defined for colorBgBrandSecondaryLight!") }
    @objc open var colorBgBrandSecondaryDark: ColorSemanticToken { fatalError("🤖 No value defined for colorBgBrandSecondaryDark!") }

    @objc open var colorBgBrandTertiaryLight: ColorSemanticToken { fatalError("🤖 No value defined for colorBgBrandTertiaryLight!") }
    @objc open var colorBgBrandTertiaryDark: ColorSemanticToken { fatalError("🤖 No value defined for colorBgBrandTertiaryDark!") }

    @objc open var colorBgStatusNeutralLight: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray80 }
    @objc open var colorBgStatusNeutralDark: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray720 }

    @objc open var colorBgStatusNeutralOnBgEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray720 }
    @objc open var colorBgStatusNeutralOnBgEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray720 }

    @objc open var colorBgStatusPositiveMutedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalMalachite100 }
    @objc open var colorBgStatusPositiveMutedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalMalachite900 }

    @objc open var colorBgStatusPositiveMutedOnBgEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalMalachite900 }
    @objc open var colorBgStatusPositiveMutedOnBgEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalMalachite900 }

    @objc open var colorBgStatusPositiveEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalMalachite500 }
    @objc open var colorBgStatusPositiveEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalMalachite500 }

    @objc open var colorBgStatusInfoMutedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalDodgerBlue100 }
    @objc open var colorBgStatusInfoMutedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalDodgerBlue900 }

    @objc open var colorBgStatusInfoMutedOnBgEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalDodgerBlue900 }
    @objc open var colorBgStatusInfoMutedOnBgEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalDodgerBlue900 }

    @objc open var colorBgStatusInfoEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalDodgerBlue500 }
    @objc open var colorBgStatusInfoEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalDodgerBlue500 }

    @objc open var colorBgStatusWarningMutedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalSun100 }
    @objc open var colorBgStatusWarningMutedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalSun900 }

    @objc open var colorBgStatusWarningMutedOnBgEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalSun900 }
    @objc open var colorBgStatusWarningMutedOnBgEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalSun900 }

    @objc open var colorBgStatusWarningEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalSun500 }
    @objc open var colorBgStatusWarningEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalSun500 }

    @objc open var colorBgStatusNegativeMutedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalScarlet100 }
    @objc open var colorBgStatusNegativeMutedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalScarlet900 }

    @objc open var colorBgStatusNegativeMutedOnBgEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalScarlet900 }
    @objc open var colorBgStatusNegativeMutedOnBgEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalScarlet900 }

    @objc open var colorBgStatusNegativeEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalScarlet600 }
    @objc open var colorBgStatusNegativeEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalScarlet600 }

    @objc open var colorBgStatusAccentMutedLight: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorBgStatusAccentMutedLight!") }
    @objc open var colorBgStatusAccentMutedDark: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorBgStatusAccentMutedDark!") }

    @objc open var colorBgStatusAccentEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalSun500 }
    @objc open var colorBgStatusAccentEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalSun500 }

    @objc open var colorBgStatusAccentMutedOnBgEmphasizedLight: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorBgStatusAccentMutedLight!") }
    @objc open var colorBgStatusAccentMutedOnBgEmphasizedDark: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorBgStatusAccentMutedOnBgEmphasizedDark!") }

    // MARK: Semantic token - Colors - Content

    @objc open var colorContentDefaultLight: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }
    @objc open var colorContentDefaultDark: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray160 }

    @objc open var colorContentContentDefaultOnBgEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray160 }
    @objc open var colorContentContentDefaultOnBgEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray160 }

    @objc open var colorContentMutedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray400 }
    @objc open var colorContentMutedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray400 }

    @objc open var colorContentContentMutedOnBgEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray400 }
    @objc open var colorContentContentMutedOnBgEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray400 }

    @objc open var colorContentDisabledLight: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray400 }
    @objc open var colorContentDisabledDark: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray400 }

    @objc open var colorContentContentDisabledOnBgEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray400 }
    @objc open var colorContentContentDisabledOnBgEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray400 }

    @objc open var colorContentBrandPrimaryLight: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorContentBrandPrimaryLight!") }
    @objc open var colorContentBrandPrimaryDark: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorContentBrandPrimaryDark!") }

    @objc open var colorContentBrandSecondaryLight: ColorSemanticToken { fatalError("🤖 No value defined for colorContentBrandSecondaryLight!") }
    @objc open var colorContentBrandSecondaryDark: ColorSemanticToken { fatalError("🤖 No value defined for colorContentBrandSecondaryDark!") }

    @objc open var colorContentBrandTertiaryLight: ColorSemanticToken { fatalError("🤖 No value defined for colorContentBrandTertiaryLight!") }
    @objc open var colorContentBrandTertiaryDark: ColorSemanticToken { fatalError("🤖 No value defined for colorContentBrandTertiaryDark!") }

    @objc open var colorContentStatusPositiveLight: ColorSemanticToken { ColorRawTokens.colorFunctionalMalachite500 }
    @objc open var colorContentStatusPositiveDark: ColorSemanticToken { ColorRawTokens.colorFunctionalMalachite500 }

    @objc open var colorContentStatusInfoLight: ColorSemanticToken { ColorRawTokens.colorFunctionalDodgerBlue500 }
    @objc open var colorContentStatusInfoDark: ColorSemanticToken { ColorRawTokens.colorFunctionalDodgerBlue500 }

    @objc open var colorContentStatusWarningLight: ColorSemanticToken { ColorRawTokens.colorFunctionalSun500 }
    @objc open var colorContentStatusWarningDark: ColorSemanticToken { ColorRawTokens.colorFunctionalSun500 }

    @objc open var colorContentStatusNegativeLight: ColorSemanticToken { ColorRawTokens.colorFunctionalScarlet600 }
    @objc open var colorContentStatusNegativeDark: ColorSemanticToken { ColorRawTokens.colorFunctionalScarlet600 }

    @objc open var colorContentStatusAccentLight: ColorSemanticToken { fatalError("🤖 No value defined for colorContentStatusAccentLight!") }
    @objc open var colorContentStatusAccentDark: ColorSemanticToken { fatalError("🤖 No value defined for colorContentStatusAccentDark!") }

    // MARK: Semantic token - Colors - Content - On Background

    @objc open var colorContentOnBgPrimaryLight: ColorSemanticToken { ColorRawTokens.colorFunctionalWhite }
    @objc open var colorContentOnBgPrimaryDark: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }

    @objc open var colorContentOnBgSecondaryLight: ColorSemanticToken { fatalError("🤖 No value defined for colorContentOnBgSecondaryLight!") }
    @objc open var colorContentOnBgSecondaryDark: ColorSemanticToken { fatalError("🤖 No value defined for colorContentOnBgSecondaryDark!") }

    @objc open var colorContentOnBgTertiaryLight: ColorSemanticToken { fatalError("🤖 No value defined for colorContentOnBgTertiaryLight!") }
    @objc open var colorContentOnBgTertiaryDark: ColorSemanticToken { fatalError("🤖 No value defined for colorContentOnBgTertiaryDark!") }

    @objc open var colorContentOnBgStatusPositiveMutedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }
    @objc open var colorContentOnBgStatusPositiveMutedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray160 }

    @objc open var colorContentOnBgStatusPositiveMutedOnBgEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray160 }
    @objc open var colorContentOnBgStatusPositiveMutedOnBgEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray160 }

    @objc open var colorContentOnBgStatusPositiveEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }
    @objc open var colorContentOnBgStatusPositiveEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }

    @objc open var colorContentOnBgStatusInfoMutedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }
    @objc open var colorContentOnBgStatusInfoMutedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray160 }

    @objc open var colorContentOnBgStatusInfoMutedOnBgEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray160 }
    @objc open var colorContentOnBgStatusInfoMutedOnBgEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray160 }

    @objc open var colorContentOnBgStatusInfoEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }
    @objc open var colorContentOnBgStatusInfoEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }

    @objc open var colorContentOnBgStatusWarningMutedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }
    @objc open var colorContentOnBgStatusWarningMutedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray160 }

    @objc open var colorContentOnBgStatusWarningMutedOnBgEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray160 }
    @objc open var colorContentOnBgStatusWarningMutedOnBgEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray160 }

    @objc open var colorContentOnBgStatusWarningEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }
    @objc open var colorContentOnBgStatusWarningEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }

    @objc open var colorContentOnBgStatusNegativeMutedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }
    @objc open var colorContentOnBgStatusNegativeMutedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray160 }

    @objc open var colorContentOnBgStatusNegativeMutedOnBgEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray160 }
    @objc open var colorContentOnBgStatusNegativeMutedOnBgEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray160 }

    @objc open var colorContentOnBgStatusNegativeEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalWhite }
    @objc open var colorContentOnBgStatusNegativeEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalWhite }

    @objc open var colorContentOnBgStatusAccentMutedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }
    @objc open var colorContentOnBgStatusAccentMutedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray160 }

    @objc open var colorContentOnBgStatusAccentMutedOnBgEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray160 }
    @objc open var colorContentOnBgStatusAccentMutedOnBgEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray160 }

    @objc open var colorContentOnBgStatusAccentedEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }
    @objc open var colorContentOnBgStatusAccentedEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }

    // MARK: Semantic token - Colors - Border

    @objc open var colorBorderDefaultLight: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray400 }
    @objc open var colorBorderDefaultDark: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray400 }

    @objc open var colorBorderDefaultOnBgEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray400 }
    @objc open var colorBorderDefaultOnBgEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray400 }

    @objc open var colorBorderEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }
    @objc open var colorBorderEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray160 }

    @objc open var colorBorderEmphasizedOnBgEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray160 }
    @objc open var colorBorderEmphasizedOnBgEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray160 }

    @objc open var colorBorderFocusLight: ColorSemanticToken { ColorRawTokens.colorFunctionalWhite }
    @objc open var colorBorderFocusDark: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray880 }

    // WARNING: #124 - Colors to use are part of Orange Theme so are not reachable at this level, as a workaround add raw values
    @objc open var colorBorderBrandPrimaryOnBgEmphasizedLight: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorBorderBrandPrimaryOnBgEmphasizedLight!") }
    @objc open var colorBorderBrandPrimaryOnBgEmphasizedDark: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorBorderBrandPrimaryOnBgEmphasizedDark!") }

    // WARNING: #124 - Colors to use are part of Orange Theme so are not reachable at this level, as a workaround add raw values
    @objc open var colorBorderBrandPrimaryLight: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorBorderBrandPrimaryLight!") }
    @objc open var colorBorderBrandPrimaryDark: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorBorderBrandPrimaryDark!") }

    @objc open var colorBorderBrandSecondaryLight: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderBrandSecondaryLight!") }
    @objc open var colorBorderBrandSecondaryDark: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderBrandSecondaryDark!") }

    @objc open var colorBorderBrandTertiaryLight: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderBrandTertiaryLight!") }
    @objc open var colorBorderBrandTertiaryDark: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderBrandTertiaryDark!") }

    @objc open var colorBorderStatusPositiveLight: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderStatusPositiveLight!") }
    @objc open var colorBorderStatusPositiveDark: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderStatusPositiveDark!") }

    @objc open var colorBorderStatusInfoLight: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderStatusInfoLight!") }
    @objc open var colorBorderStatusInfoDark: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderStatusInfoDark!") }

    @objc open var colorBorderStatusWarningLight: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderStatusWarningLight!") }
    @objc open var colorBorderStatusWarningDark: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderStatusWarningDark!") }

    @objc open var colorBorderStatusNegativeLight: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderStatusNegativeLight!") }
    @objc open var colorBorderStatusNegativeDark: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderStatusNegativeDark!") }

    @objc open var colorBorderStatusAccentLight: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderStatusAccentLight!") }
    @objc open var colorBorderStatusAccentDark: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderStatusAccentDark!") }

    @objc open var colorBorderOnBgBrandPrimaryLight: ColorSemanticToken { ColorRawTokens.colorFunctionalWhite }
    @objc open var colorBorderOnBgBrandPrimaryDark: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }

    @objc open var colorBorderOnBgBrandSecondaryLight: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderOnBgBrandSecondaryLight!") }
    @objc open var colorBorderOnBgBrandSecondaryDark: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderOnBgBrandSecondaryDark!") }

    @objc open var colorBorderOnBgBrandTertiaryLight: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderOnBgBrandTertiaryLight!") }
    @objc open var colorBorderOnBgBrandTertiaryDark: ColorSemanticToken { fatalError("🤖 No value defined for colorBorderOnBgBrandTertiaryDark!") }

    // MARK: Semantic token - Colors - Action

    // WARNING: #124 - Colors to use are part of Orange Theme so are not reachable at this level, as a workaround add raw values
    @objc open var colorActionSelectedLight: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorActionSelectedLight!") }
    @objc open var colorActionSelectedDark: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorActionSelectedDark!") }

    // WARNING: #124 - Colors to use sont part of Orange Theme so are not reachable at this level, as un workaround add raw values
    @objc open var colorActionSelectedOnBgEmphasizedLight: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorActionSelectedOnBgEmphasizedLight!") }
    @objc open var colorActionSelectedOnBgEmphasizedDark: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorActionSelectedOnBgEmphasizedDark!") }

    @objc open var colorActionDisabledLight: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray400 }
    @objc open var colorActionDisabledDark: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray400 }

    @objc open var colorActionDisabledOnBgEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray400 }
    @objc open var colorActionDisabledOnBgEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray400 }

    @objc open var colorActionVisitedLight: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst600 }
    @objc open var colorActionVisitedDark: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst400 }

    @objc open var colorActionVistedOnBgEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst400 }
    @objc open var colorActionVistedOnBgEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst400 }

    @objc open var colorActionPrimaryEnabledLight: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }
    @objc open var colorActionPrimaryEnabledDark: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray160 }

    @objc open var colorActionPrimaryEnabledOnBgEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray160 }
    @objc open var colorActionPrimaryEnabledOnBgEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray160 }

    @objc open var colorActionPrimaryHoverLight: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray400 }
    @objc open var colorActionPrimaryHoverDark: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray400 }

    @objc open var colorActionPrimaryHoverOnBgEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray400 }
    @objc open var colorActionPrimaryHoverOnBgEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray400 }

    // WARNING: #124 - Colors to use sont part of Orange Theme so are not reachable at this level, as un workaround add raw values
    @objc open var colorActionPrimaryPressedLight: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorActionPrimaryPressedLight!") }
    @objc open var colorActionPrimaryPressedDark: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorActionPrimaryPressedDark!") }

    // WARNING: #124 - Colors to use sont part of Orange Theme so sont not reachable at this level, as un workaround add raw values
    @objc open var colorActionPrimaryPressedOnBgEmphasizedLight: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorActionPrimaryPressedOnBgEmphasizedLight!") }
    @objc open var colorActionPrimaryPressedOnBgEmphasizedDark: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorActionPrimaryPressedOnBgEmphasizedDark!") }

    // WARNING: #124 - Colors to use sont part of Orange Theme so sont not reachable at ce niveau, as un workaround add raw values
    @objc open var colorActionPrimaryLoadingLight: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorActionPrimaryLoadingLight!") }
    @objc open var colorActionPrimaryLoadingDark: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorActionPrimaryLoadingDark!") }

    // WARNING: #124 - Colors to use sont part of Orange Theme so sont not reachable at ce niveau, as un workaround add raw values
    @objc open var colorActionPrimaryLoadingOnBgEmphasizedLight: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorActionPrimaryLoadingOnBgEmphasizedLight!") }
    @objc open var colorActionPrimaryLoadingOnBgEmphasizedDark: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorActionPrimaryLoadingOnBgEmphasizedDark!") }

    @objc open var colorActionPrimaryFocusLight: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray400 }
    @objc open var colorActionPrimaryFocusDark: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray400 }

    @objc open var colorActionPrimaryFocusOnBgEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray400 }
    @objc open var colorActionPrimaryFocusOnBgEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray400 }

    @objc open var colorActionSecondaryEnabledLight: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray80 }
    @objc open var colorActionSecondaryEnabledDark: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray160 }

    @objc open var colorActionSecondaryEnabledOnBgEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray720 }
    @objc open var colorActionSecondaryEnabledOnBgEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray720 }

    @objc open var colorActionSecondaryHoverLight: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray160 }
    @objc open var colorActionSecondaryHoverDark: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray640 }

    @objc open var colorActionSecondaryHoverOnBgEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray160 }
    @objc open var colorActionSecondaryHoverOnBgEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray160 }

    @objc open var colorActionSecondaryPressedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray160 }
    @objc open var colorActionSecondaryPressedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray640 }

    @objc open var colorActionSecondaryPressedOnBgEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray640 }
    @objc open var colorActionSecondaryPressedOnBgEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray640 }

    @objc open var colorActionSecondaryLoadingLight: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray160 }
    @objc open var colorActionSecondaryLoadingDark: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray640 }

    @objc open var colorActionSecondaryLoadingOnBgEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray640 }
    @objc open var colorActionSecondaryLoadingOnBgEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray640 }

    @objc open var colorActionSecondaryFocusLight: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray160 }
    @objc open var colorActionSecondaryFocusDark: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray640 }

    @objc open var colorActionSecondaryFocusOnBgEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray640 }
    @objc open var colorActionSecondaryFocusOnBgEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray640 }

    @objc open var colorActionNegativeEnabledLight: ColorSemanticToken { ColorRawTokens.colorFunctionalScarlet600 }
    @objc open var colorActionNegativeEnabledDark: ColorSemanticToken { ColorRawTokens.colorFunctionalScarlet600 }

    @objc open var colorActionNegativeHoverLight: ColorSemanticToken { ColorRawTokens.colorFunctionalScarlet700 }
    @objc open var colorActionNegativeHoverDark: ColorSemanticToken { ColorRawTokens.colorFunctionalScarlet700 }

    @objc open var colorActionNegativePressedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalScarlet800 }
    @objc open var colorActionNegativePressedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalScarlet800 }

    @objc open var colorActionNegativeLoadingLight: ColorSemanticToken { ColorRawTokens.colorFunctionalScarlet800 }
    @objc open var colorActionNegativeLoadingDark: ColorSemanticToken { ColorRawTokens.colorFunctionalScarlet800 }

    @objc open var colorActionNegativeFocusLight: ColorSemanticToken { ColorRawTokens.colorFunctionalScarlet700 }
    @objc open var colorActionNegativeFocusDark: ColorSemanticToken { ColorRawTokens.colorFunctionalScarlet700 }

    @objc open var colorActionOnBgActionDisabledLight: ColorSemanticToken { ColorRawTokens.colorFunctionalWhite }
    @objc open var colorActionOnBgActionDisabledDark: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }

    @objc open var colorActionOnBgActionDisabledOnBgEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }
    @objc open var colorActionOnBgActionDisabledOnBgEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }

    @objc open var colorActionOnBgActionNegativeLight: ColorSemanticToken { ColorRawTokens.colorFunctionalWhite }
    @objc open var colorActionOnBgActionNegativeDark: ColorSemanticToken { ColorRawTokens.colorFunctionalWhite }

    @objc open var colorActionOnBgActionPrimaryEnabledLight: ColorSemanticToken { ColorRawTokens.colorFunctionalWhite }
    @objc open var colorActionOnBgActionPrimaryEnabledDark: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }

    @objc open var colorActionOnBgActionPrimaryEnabledOnBgEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }
    @objc open var colorActionOnBgActionPrimaryEnabledOnBgEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }

    @objc open var colorActionOnBgActionPrimaryHoverLight: ColorSemanticToken { ColorRawTokens.colorFunctionalWhite }
    @objc open var colorActionOnBgActionPrimaryHoverDark: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }

    @objc open var colorActionOnBgActionPrimaryHoverOnBgEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }
    @objc open var colorActionOnBgActionPrimaryHoverOnBgEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }

    @objc open var colorActionOnBgActionPrimaryPressedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalWhite }
    @objc open var colorActionOnBgActionPrimaryPressedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }

    @objc open var colorActionOnBgActionPrimaryPressedOnBgEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }
    @objc open var colorActionOnBgActionPrimaryPressedOnBgEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }

    @objc open var colorActionOnBgActionPrimaryLoadingLight: ColorSemanticToken { ColorRawTokens.colorFunctionalWhite }
    @objc open var colorActionOnBgActionPrimaryLoadingDark: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }

    @objc open var colorActionOnBgActionPrimaryLoadingOnBgEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }
    @objc open var colorActionOnBgActionPrimaryLoadingOnBgEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }

    @objc open var colorActionOnBgActionPrimaryFocusLight: ColorSemanticToken { ColorRawTokens.colorFunctionalWhite }
    @objc open var colorActionOnBgActionPrimaryFocusDark: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }

    @objc open var colorActionOnBgActionPrimaryFocusOnBgEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }
    @objc open var colorActionOnBgActionPrimaryFocusOnBgEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }

    @objc open var colorActionOnBgActionSecondaryEnabledLight: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryEnabledLight!") }
    @objc open var colorActionOnBgActionSecondaryEnabledDark: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryEnabledDark!") }

    @objc open var colorActionOnBgActionSecondaryEnabledOnBgEmphasizedLight: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryEnabledOnBgEmphasizedLight!") }
    @objc open var colorActionOnBgActionSecondaryEnabledOnBgEmphasizedDark: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryEnabledOnBgEmphasizedDark!") }

    @objc open var colorActionOnBgActionSecondaryHoverLight: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryHoverLight!") }
    @objc open var colorActionOnBgActionSecondaryHoverDark: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryHoverDark!") }

    @objc open var colorActionOnBgActionSecondaryHoverOnBgEmphasizedLight: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryHoverOnBgEmphasizedLight!") }
    @objc open var colorActionOnBgActionSecondaryHoverOnBgEmphasizedDark: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryHoverOnBgEmphasizedDark!") }

    @objc open var colorActionOnBgActionSecondaryPressedLight: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryPressedLight!") }
    @objc open var colorActionOnBgActionSecondaryPressedDark: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryPressedDark!") }

    @objc open var colorActionOnBgActionSecondaryPressedOnBgEmphasizedLight: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryPressedOnBgEmphasizedLight!") }
    @objc open var colorActionOnBgActionSecondaryPressedOnBgEmphasizedDark: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryPressedOnBgEmphasizedDark!") }

    @objc open var colorActionOnBgActionSecondaryLoadingLight: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryLoadingLight!") }
    @objc open var colorActionOnBgActionSecondaryLoadingDark: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryLoadingDark!") }

    @objc open var colorActionOnBgActionSecondaryLoadingOnBgEmphasizedLight: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryLoadingOnBgEmphasizedLight!") }
    @objc open var colorActionOnBgActionSecondaryLoadingOnBgEmphasizedDark: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryLoadingOnBgEmphasizedDark!") }

    @objc open var colorActionOnBgActionSecondaryFocusLight: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryFocusLight!") }
    @objc open var colorActionOnBgActionSecondaryFocusDark: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryFocusDark!") }

    @objc open var colorActionOnBgActionSecondaryFocusOnBgEmphasizedLight: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryFocusOnBgEmphasizedLight!") }
    @objc open var colorActionOnBgActionSecondaryFocusOnBgEmphasizedDark: ColorSemanticToken { fatalError("🤖 No value defined for colorActionOnBgActionSecondaryFocusOnBgEmphasizedDark!") }

    // MARK: Semantic token - Colors - Always

    @objc open var colorAlwaysBlackLight: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }
    @objc open var colorAlwaysBlackDark: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }

    @objc open var colorAlwaysWhiteLight: ColorSemanticToken { ColorRawTokens.colorFunctionalWhite }
    @objc open var colorAlwaysWhiteDark: ColorSemanticToken { ColorRawTokens.colorFunctionalWhite }

    @objc open var colorAlwaysWarningLight: ColorSemanticToken { ColorRawTokens.colorFunctionalSun500 }
    @objc open var colorAlwaysWarningDark: ColorSemanticToken { ColorRawTokens.colorFunctionalSun500 }

    @objc open var colorAlwaysNegativeLight: ColorSemanticToken { ColorRawTokens.colorFunctionalScarlet600 }
    @objc open var colorAlwaysNegativeDark: ColorSemanticToken { ColorRawTokens.colorFunctionalScarlet600 }

    @objc open var colorAlwaysPositiveLight: ColorSemanticToken { ColorRawTokens.colorFunctionalMalachite500 }
    @objc open var colorAlwaysPositiveDark: ColorSemanticToken { ColorRawTokens.colorFunctionalMalachite500 }

    @objc open var colorAlwaysInfoLight: ColorSemanticToken { ColorRawTokens.colorFunctionalDodgerBlue500 }
    @objc open var colorAlwaysInfoDark: ColorSemanticToken { ColorRawTokens.colorFunctionalDodgerBlue500 }

    @objc open var colorAlwaysAccentLight: ColorSemanticToken { ColorRawTokens.colorFunctionalSun500 }
    @objc open var colorAlwaysAccentDark: ColorSemanticToken { ColorRawTokens.colorFunctionalSun500 }

    @objc open var colorAlwaysOnBgBlackLight: ColorSemanticToken { ColorRawTokens.colorFunctionalWhite }
    @objc open var colorAlwaysOnBgBlackDark: ColorSemanticToken { ColorRawTokens.colorFunctionalWhite }

    @objc open var colorAlwaysOnBgWhiteLight: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }
    @objc open var colorAlwaysOnBgWhiteDark: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }

    @objc open var colorAlwaysOnBgWarningLight: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }
    @objc open var colorAlwaysOnBgWarningDark: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }

    @objc open var colorAlwaysOnBgNegativeLight: ColorSemanticToken { ColorRawTokens.colorFunctionalWhite }
    @objc open var colorAlwaysOnBgNegativeDark: ColorSemanticToken { ColorRawTokens.colorFunctionalWhite }

    @objc open var colorAlwaysOnBgPositiveLight: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }
    @objc open var colorAlwaysOnBgPositiveDark: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }

    @objc open var colorAlwaysOnBgInfoLight: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }
    @objc open var colorAlwaysOnBgInfoDark: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }

    @objc open var colorAlwaysOnBgAccentLight: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }
    @objc open var colorAlwaysOnBgAccentDark: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }

    // MARK: Semantic token - Colors - Transparent

    @objc open var colorTransparentDefaultLight: ColorSemanticToken { ColorRawTokens.colorTransparentBlack0 }
    @objc open var colorTransparentDefaultDark: ColorSemanticToken { ColorRawTokens.colorTransparentBlack0 }

    // MARK: Semantic token - Colors - Elevation

    @objc open var colorElevationRaisedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalWhite }
    @objc open var colorElevationRaisedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray800 }

    @objc open var colorElevationRaisedOnBgSecondaryLight: ColorSemanticToken { ColorRawTokens.colorFunctionalWhite }
    @objc open var colorElevationRaisedOnBgSecondaryDark: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray720 }

    @objc open var colorElevationRaisedOnBgEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray800 }
    @objc open var colorElevationRaisedOnBgEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray560 }

    @objc open var colorElevationDragLight: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray80 }
    @objc open var colorElevationDragDark: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray720 }

    @objc open var colorElevationDragOnBgSecondaryLight: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray80 }
    @objc open var colorElevationDragOnBgSecondaryDark: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray640 }

    @objc open var colorElevationDragOnBgEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray720 }
    @objc open var colorElevationDragOnBgEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray480 }

    @objc open var colorElevationOverlayDefaultLight: ColorSemanticToken { ColorRawTokens.colorFunctionalWhite }
    @objc open var colorElevationOverlayDefaultDark: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray720 }

    @objc open var colorElevationOverlayDefaultOnBgSecondaryLight: ColorSemanticToken { ColorRawTokens.colorFunctionalWhite }
    @objc open var colorElevationOverlayDefaultOnBgSecondaryDark: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray640 }

    @objc open var colorElevationOverlayDefaultOnBgEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray720 }
    @objc open var colorElevationOverlayDefaultOnBgEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray480 }

    @objc open var colorElevationOverlayEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray640 }
    @objc open var colorElevationOverlayEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray480 }

    @objc open var colorElevationOverlayEmphasizedOnBgSecondaryLight: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray640 }
    @objc open var colorElevationOverlayEmphasizedOnBgSecondaryDark: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray480 }

    @objc open var colorElevationOverlayEmphasizedOnBgEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray80 }
    @objc open var colorElevationOverlayEmphasizedOnBgEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray480 }

    @objc open var colorElevationModalLight: ColorSemanticToken { ColorRawTokens.colorFunctionalWhite }
    @objc open var colorElevationModalDark: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray640 }

    // MARK: Semantic token - Colors - Decorative

    // WARNING: #124 - Colors to use sont part of Orange Theme so sont not reachable at this level, as un workaround add raw values
    @objc open var colorDecorativePrimaryLight: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorDecorativePrimaryLight!") }
    @objc open var colorDecorativePrimaryDark: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorDecorativePrimaryDark!") }

    @objc open var colorDecorativeSecondaryLight: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }
    @objc open var colorDecorativeSecondaryDark: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray160 }

    @objc open var colorDecorativeTertiaryLight: ColorSemanticToken { ColorRawTokens.colorFunctionalBlack }
    @objc open var colorDecorativeTertiaryDark: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray880 }

    @objc open var colorDecorativeNeutralMutedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray160 }
    @objc open var colorDecorativeNeutralMutedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray560 }

    @objc open var colorDecorativeNeutralDefaultLight: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray400 }
    @objc open var colorDecorativeNeutralDefaultDark: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray560 }

    @objc open var colorDecorativeNeutralEmphasizedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray640 }
    @objc open var colorDecorativeNeutralEmphasizedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray160 }

    @objc open var colorDecorativeAccent1MutedLight: ColorSemanticToken { ColorRawTokens.colorDecorativeEmerald200 }
    @objc open var colorDecorativeAccent1MutedDark: ColorSemanticToken { ColorRawTokens.colorDecorativeEmerald200 }

    @objc open var colorDecorativeAccent1DefaultLight: ColorSemanticToken { ColorRawTokens.colorDecorativeEmerald500 }
    @objc open var colorDecorativeAccent1DefaultDark: ColorSemanticToken { ColorRawTokens.colorDecorativeEmerald500 }

    @objc open var colorDecorativeAccent1EmphasizedLight: ColorSemanticToken { ColorRawTokens.colorDecorativeEmerald700 }
    @objc open var colorDecorativeAccent1EmphasizedDark: ColorSemanticToken { ColorRawTokens.colorDecorativeEmerald700 }

    @objc open var colorDecorativeAccent2MutedLight: ColorSemanticToken { ColorRawTokens.colorDecorativeSky200 }
    @objc open var colorDecorativeAccent2MutedDark: ColorSemanticToken { ColorRawTokens.colorDecorativeSky200 }

    @objc open var colorDecorativeAccent2DefaultLight: ColorSemanticToken { ColorRawTokens.colorDecorativeSky400 }
    @objc open var colorDecorativeAccent2DefaultDark: ColorSemanticToken { ColorRawTokens.colorDecorativeSky400 }

    @objc open var colorDecorativeAccent2EmphasizedLight: ColorSemanticToken { ColorRawTokens.colorDecorativeSky700 }
    @objc open var colorDecorativeAccent2EmphasizedDark: ColorSemanticToken { ColorRawTokens.colorDecorativeSky700 }

    @objc open var colorDecorativeAccent3MutedLight: ColorSemanticToken { ColorRawTokens.colorFunctionalSun200 }
    @objc open var colorDecorativeAccent3MutedDark: ColorSemanticToken { ColorRawTokens.colorFunctionalSun200 }

    @objc open var colorDecorativeAccent3DefaultLight: ColorSemanticToken { ColorRawTokens.colorFunctionalSun500 }
    @objc open var colorDecorativeAccent3DefaultDark: ColorSemanticToken { ColorRawTokens.colorFunctionalSun500 }

    @objc open var colorDecorativeAccent3EmphasizedLight: ColorSemanticToken { ColorRawTokens.colorDecorativeAmber500 }
    @objc open var colorDecorativeAccent3EmphasizedDark: ColorSemanticToken { ColorRawTokens.colorDecorativeAmber500 }

    @objc open var colorDecorativeAccent4MutedLight: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst200 }
    @objc open var colorDecorativeAccent4MutedDark: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst200 }

    @objc open var colorDecorativeAccent4DefaultLight: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst400 }
    @objc open var colorDecorativeAccent4DefaultDark: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst400 }

    @objc open var colorDecorativeAccent4EmphasizedLight: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst800 }
    @objc open var colorDecorativeAccent4EmphasizedDark: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst800 }

    @objc open var colorDecorativeAccent5MutedLight: ColorSemanticToken { ColorRawTokens.colorDecorativeShockingPink100 }
    @objc open var colorDecorativeAccent5MutedDark: ColorSemanticToken { ColorRawTokens.colorDecorativeShockingPink100 }

    @objc open var colorDecorativeAccent5DefaultLight: ColorSemanticToken { ColorRawTokens.colorDecorativeShockingPink200 }
    @objc open var colorDecorativeAccent5DefaultDark: ColorSemanticToken { ColorRawTokens.colorDecorativeShockingPink200 }

    @objc open var colorDecorativeAccent5EmphasizedLight: ColorSemanticToken { ColorRawTokens.colorDecorativeShockingPink300 }
    @objc open var colorDecorativeAccent5EmphasizedDark: ColorSemanticToken { ColorRawTokens.colorDecorativeShockingPink300 }

    @objc open var colorDecorativeSkinTint100Light: ColorSemanticToken { ColorRawTokens.colorDecorativeDeepPeach100 }
    @objc open var colorDecorativeSkinTint100Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeDeepPeach100 }

    @objc open var colorDecorativeSkinTint200Light: ColorSemanticToken { ColorRawTokens.colorDecorativeDeepPeach200 }
    @objc open var colorDecorativeSkinTint200Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeDeepPeach200 }

    @objc open var colorDecorativeSkinTint300Light: ColorSemanticToken { ColorRawTokens.colorDecorativeDeepPeach300 }
    @objc open var colorDecorativeSkinTint300Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeDeepPeach300 }

    @objc open var colorDecorativeSkinTint400Light: ColorSemanticToken { ColorRawTokens.colorDecorativeDeepPeach400 }
    @objc open var colorDecorativeSkinTint400Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeDeepPeach400 }

    @objc open var colorDecorativeSkinTint500Light: ColorSemanticToken { ColorRawTokens.colorDecorativeDeepPeach500 }
    @objc open var colorDecorativeSkinTint500Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeDeepPeach500 }

    @objc open var colorDecorativeSkinTint600Light: ColorSemanticToken { ColorRawTokens.colorDecorativeDeepPeach600 }
    @objc open var colorDecorativeSkinTint600Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeDeepPeach600 }

    @objc open var colorDecorativeSkinTint700Light: ColorSemanticToken { ColorRawTokens.colorDecorativeDeepPeach700 }
    @objc open var colorDecorativeSkinTint700Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeDeepPeach700 }

    @objc open var colorDecorativeSkinTint800Light: ColorSemanticToken { ColorRawTokens.colorDecorativeDeepPeach800 }
    @objc open var colorDecorativeSkinTint800Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeDeepPeach800 }

    @objc open var colorDecorativeSkinTint900Light: ColorSemanticToken { ColorRawTokens.colorDecorativeDeepPeach900 }
    @objc open var colorDecorativeSkinTint900Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeDeepPeach900 }

    // MARK: Semantic token - Colors - Chart

    @objc open var colorChartCategoricalNeutralLight: ColorSemanticToken { ColorRawTokens.colorFunctionalLightGray160 }
    @objc open var colorChartCategoricalNeutralDark: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray720 }

    // WARNING: #124 - Colors to use sont part of Orange Theme so sont not reachable at this level, as un workaround add raw values
    @objc open var colorChartCategoricalBrandLight: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorChartCategoricalBrandLight!") }
    @objc open var colorChartCategoricalBrandDark: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorChartCategoricalBrandDark!") }

    @objc open var colorChartCategoricalPositiveLight: ColorSemanticToken { ColorRawTokens.colorFunctionalMalachite500 }
    @objc open var colorChartCategoricalPositiveDark: ColorSemanticToken { ColorRawTokens.colorFunctionalMalachite500 }

    @objc open var colorChartCategoricalNegativeLight: ColorSemanticToken { ColorRawTokens.colorFunctionalScarlet600 }
    @objc open var colorChartCategoricalNegativeDark: ColorSemanticToken { ColorRawTokens.colorFunctionalScarlet600 }

    @objc open var colorChartCategoricalTier1Light: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst600 }
    @objc open var colorChartCategoricalTier1Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst500 }

    @objc open var colorChartCategoricalTier2Light: ColorSemanticToken { ColorRawTokens.colorDecorativeShockingPink700 }
    @objc open var colorChartCategoricalTier2Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeShockingPink400 }

    @objc open var colorChartCategoricalTier3Light: ColorSemanticToken { ColorRawTokens.colorDecorativeEmerald700 }
    @objc open var colorChartCategoricalTier3Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeEmerald600 }

    @objc open var colorChartCategoricalTier4Light: ColorSemanticToken { ColorRawTokens.colorDecorativeSky700 }
    @objc open var colorChartCategoricalTier4Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeSky200 }

    @objc open var colorChartCategoricalTier5Light: ColorSemanticToken { ColorRawTokens.colorDecorativeAmber800 }
    @objc open var colorChartCategoricalTier5Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeAmber700 }

    @objc open var colorChartCategoricalTier6Light: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst500 }
    @objc open var colorChartCategoricalTier6Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst300 }

    @objc open var colorChartCategoricalTier7Light: ColorSemanticToken { ColorRawTokens.colorDecorativeShockingPink800 }
    @objc open var colorChartCategoricalTier7Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeShockingPink600 }

    @objc open var colorChartCategoricalTier8Light: ColorSemanticToken { ColorRawTokens.colorDecorativeEmerald600 }
    @objc open var colorChartCategoricalTier8Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeEmerald400 }

    @objc open var colorChartCategoricalTier9Light: ColorSemanticToken { ColorRawTokens.colorDecorativeSky800 }
    @objc open var colorChartCategoricalTier9Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeSky500 }

    @objc open var colorChartCategoricalTier10Light: ColorSemanticToken { ColorRawTokens.colorDecorativeAmber700 }
    @objc open var colorChartCategoricalTier10Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeAmber300 }

    @objc open var colorChartSequentialAccent1Tint100Light: ColorSemanticToken { ColorRawTokens.colorDecorativeSky100 }
    @objc open var colorChartSequentialAccent1Tint100Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeSky900 }

    @objc open var colorChartSequentialAccent1Tint200Light: ColorSemanticToken { ColorRawTokens.colorDecorativeSky200 }
    @objc open var colorChartSequentialAccent1Tint200Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeSky800 }

    @objc open var colorChartSequentialAccent1Tint300Light: ColorSemanticToken { ColorRawTokens.colorDecorativeSky300 }
    @objc open var colorChartSequentialAccent1Tint300Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeSky700 }

    @objc open var colorChartSequentialAccent1Tint400Light: ColorSemanticToken { ColorRawTokens.colorDecorativeSky400 }
    @objc open var colorChartSequentialAccent1Tint400Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeSky600 }

    @objc open var colorChartSequentialAccent1Tint500Light: ColorSemanticToken { ColorRawTokens.colorDecorativeSky500 }
    @objc open var colorChartSequentialAccent1Tint500Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeSky500 }

    @objc open var colorChartSequentialAccent1Tint600Light: ColorSemanticToken { ColorRawTokens.colorDecorativeSky600 }
    @objc open var colorChartSequentialAccent1Tint600Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeSky400 }

    @objc open var colorChartSequentialAccent1Tint700Light: ColorSemanticToken { ColorRawTokens.colorDecorativeSky700 }
    @objc open var colorChartSequentialAccent1Tint700Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeSky300 }

    @objc open var colorChartSequentialAccent1Tint800Light: ColorSemanticToken { ColorRawTokens.colorDecorativeSky800 }
    @objc open var colorChartSequentialAccent1Tint800Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeSky200 }

    @objc open var colorChartSequentialAccent1Tint900Light: ColorSemanticToken { ColorRawTokens.colorDecorativeSky900 }
    @objc open var colorChartSequentialAccent1Tint900Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeSky100 }

    @objc open var colorChartSequentialAccent2Tint100Light: ColorSemanticToken { ColorRawTokens.colorDecorativeEmerald100 }
    @objc open var colorChartSequentialAccent2Tint100Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeEmerald900 }

    @objc open var colorChartSequentialAccent2Tint200Light: ColorSemanticToken { ColorRawTokens.colorDecorativeEmerald200 }
    @objc open var colorChartSequentialAccent2Tint200Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeEmerald800 }

    @objc open var colorChartSequentialAccent2Tint300Light: ColorSemanticToken { ColorRawTokens.colorDecorativeEmerald300 }
    @objc open var colorChartSequentialAccent2Tint300Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeEmerald700 }

    @objc open var colorChartSequentialAccent2Tint400Light: ColorSemanticToken { ColorRawTokens.colorDecorativeEmerald400 }
    @objc open var colorChartSequentialAccent2Tint400Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeEmerald600 }

    @objc open var colorChartSequentialAccent2Tint500Light: ColorSemanticToken { ColorRawTokens.colorDecorativeEmerald500 }
    @objc open var colorChartSequentialAccent2Tint500Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeEmerald500 }

    @objc open var colorChartSequentialAccent2Tint600Light: ColorSemanticToken { ColorRawTokens.colorDecorativeEmerald600 }
    @objc open var colorChartSequentialAccent2Tint600Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeEmerald400 }

    @objc open var colorChartSequentialAccent2Tint700Light: ColorSemanticToken { ColorRawTokens.colorDecorativeEmerald700 }
    @objc open var colorChartSequentialAccent2Tint700Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeEmerald300 }

    @objc open var colorChartSequentialAccent2Tint800Light: ColorSemanticToken { ColorRawTokens.colorDecorativeEmerald800 }
    @objc open var colorChartSequentialAccent2Tint800Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeEmerald200 }

    @objc open var colorChartSequentialAccent2Tint900Light: ColorSemanticToken { ColorRawTokens.colorDecorativeEmerald900 }
    @objc open var colorChartSequentialAccent2Tint900Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeEmerald100 }

    @objc open var colorChartSequentialAccent3Tint100Light: ColorSemanticToken { ColorRawTokens.colorDecorativeShockingPink100 }
    @objc open var colorChartSequentialAccent3Tint100Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeShockingPink900 }

    @objc open var colorChartSequentialAccent3Tint200Light: ColorSemanticToken { ColorRawTokens.colorDecorativeShockingPink200 }
    @objc open var colorChartSequentialAccent3Tint200Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeShockingPink800 }

    @objc open var colorChartSequentialAccent3Tint300Light: ColorSemanticToken { ColorRawTokens.colorDecorativeShockingPink300 }
    @objc open var colorChartSequentialAccent3Tint300Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeShockingPink700 }

    @objc open var colorChartSequentialAccent3Tint400Light: ColorSemanticToken { ColorRawTokens.colorDecorativeShockingPink400 }
    @objc open var colorChartSequentialAccent3Tint400Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeShockingPink600 }

    @objc open var colorChartSequentialAccent3Tint500Light: ColorSemanticToken { ColorRawTokens.colorDecorativeShockingPink500 }
    @objc open var colorChartSequentialAccent3Tint500Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeShockingPink500 }

    @objc open var colorChartSequentialAccent3Tint600Light: ColorSemanticToken { ColorRawTokens.colorDecorativeShockingPink600 }
    @objc open var colorChartSequentialAccent3Tint600Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeShockingPink400 }

    @objc open var colorChartSequentialAccent3Tint700Light: ColorSemanticToken { ColorRawTokens.colorDecorativeShockingPink700 }
    @objc open var colorChartSequentialAccent3Tint700Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeShockingPink300 }

    @objc open var colorChartSequentialAccent3Tint800Light: ColorSemanticToken { ColorRawTokens.colorDecorativeShockingPink800 }
    @objc open var colorChartSequentialAccent3Tint800Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeShockingPink200 }

    @objc open var colorChartSequentialAccent3Tint900Light: ColorSemanticToken { ColorRawTokens.colorDecorativeShockingPink900 }
    @objc open var colorChartSequentialAccent3Tint900Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeShockingPink100 }

    @objc open var colorChartSequentialAccent4Tint100Light: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst100 }
    @objc open var colorChartSequentialAccent4Tint100Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst900 }

    @objc open var colorChartSequentialAccent4Tint200Light: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst200 }
    @objc open var colorChartSequentialAccent4Tint200Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst800 }

    @objc open var colorChartSequentialAccent4Tint300Light: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst300 }
    @objc open var colorChartSequentialAccent4Tint300Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst700 }

    @objc open var colorChartSequentialAccent4Tint400Light: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst400 }
    @objc open var colorChartSequentialAccent4Tint400Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst600 }

    @objc open var colorChartSequentialAccent4Tint500Light: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst500 }
    @objc open var colorChartSequentialAccent4Tint500Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst500 }

    @objc open var colorChartSequentialAccent4Tint600Light: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst600 }
    @objc open var colorChartSequentialAccent4Tint600Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst400 }

    @objc open var colorChartSequentialAccent4Tint700Light: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst700 }
    @objc open var colorChartSequentialAccent4Tint700Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst300 }

    @objc open var colorChartSequentialAccent4Tint800Light: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst800 }
    @objc open var colorChartSequentialAccent4Tint800Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst200 }

    @objc open var colorChartSequentialAccent4Tint900Light: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst900 }
    @objc open var colorChartSequentialAccent4Tint900Dark: ColorSemanticToken { ColorRawTokens.colorDecorativeAmethyst100 }

    @objc open var colorChartSequentialAccent5Tint100Light: ColorSemanticToken { ColorRawTokens.colorFunctionalSun100 }
    @objc open var colorChartSequentialAccent5Tint100Dark: ColorSemanticToken { ColorRawTokens.colorFunctionalSun900 }

    @objc open var colorChartSequentialAccent5Tint200Light: ColorSemanticToken { ColorRawTokens.colorFunctionalSun200 }
    @objc open var colorChartSequentialAccent5Tint200Dark: ColorSemanticToken { ColorRawTokens.colorFunctionalSun800 }

    @objc open var colorChartSequentialAccent5Tint300Light: ColorSemanticToken { ColorRawTokens.colorFunctionalSun300 }
    @objc open var colorChartSequentialAccent5Tint300Dark: ColorSemanticToken { ColorRawTokens.colorFunctionalSun700 }

    @objc open var colorChartSequentialAccent5Tint400Light: ColorSemanticToken { ColorRawTokens.colorFunctionalSun400 }
    @objc open var colorChartSequentialAccent5Tint400Dark: ColorSemanticToken { ColorRawTokens.colorFunctionalSun600 }

    @objc open var colorChartSequentialAccent5Tint500Light: ColorSemanticToken { ColorRawTokens.colorFunctionalSun500 }
    @objc open var colorChartSequentialAccent5Tint500Dark: ColorSemanticToken { ColorRawTokens.colorFunctionalSun500 }

    @objc open var colorChartSequentialAccent5Tint600Light: ColorSemanticToken { ColorRawTokens.colorFunctionalSun600 }
    @objc open var colorChartSequentialAccent5Tint600Dark: ColorSemanticToken { ColorRawTokens.colorFunctionalSun400 }

    @objc open var colorChartSequentialAccent5Tint700Light: ColorSemanticToken { ColorRawTokens.colorFunctionalSun700 }
    @objc open var colorChartSequentialAccent5Tint700Dark: ColorSemanticToken { ColorRawTokens.colorFunctionalSun300 }

    @objc open var colorChartSequentialAccent5Tint800Light: ColorSemanticToken { ColorRawTokens.colorFunctionalSun800 }
    @objc open var colorChartSequentialAccent5Tint800Dark: ColorSemanticToken { ColorRawTokens.colorFunctionalSun200 }

    @objc open var colorChartSequentialAccent5Tint900Light: ColorSemanticToken { ColorRawTokens.colorFunctionalSun900 }
    @objc open var colorChartSequentialAccent5Tint900Dark: ColorSemanticToken { ColorRawTokens.colorFunctionalSun100 }
}

// swiftlint:enable line_length
// swiftlint:enable identifier_name
// swiftlint:enable file_length
