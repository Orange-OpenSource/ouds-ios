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
/// Defines basic values common to all themes for `ColorSemanticTokens`.
/// These values can be overriden inside `OUDSTheme` subclasses (in extensions or not, in the same module or not) thanks to the `@objc open` combination.
extension OUDSTheme: ColorSemanticTokens {

    // MARK: Semantic token - Colors - Background

    @objc open var colorBackgroundPrimary: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalWhite, dark: ColorRawTokens.colorFunctionalDarkGray880) }

    @objc open var colorBackgroundSecondary: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalLightGray80, dark: ColorRawTokens.colorFunctionalDarkGray800) }

    // WARNING: #124 - Colors to use are part of OUDSOrangeTheme so are not reachable at this level, as a workaround add raw values
    @objc open var colorBackgroundTertiary: ColorSemanticToken { fatalError("Raw token unavailable for colorBackgroundBrandSecondary!") }

    @objc open var colorBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalDarkGray880, dark: ColorRawTokens.colorFunctionalDarkGray640) }

    // WARNING: #124 - Colors to use are part of OUDSOrangeTheme so are not reachable at this level, as a workaround add raw values
    @objc open var colorBackgroundBrandPrimary: ColorSemanticToken { fatalError("Raw token unavailable for colorBackgroundBrandPrimary!") }

    @objc open var colorBackgroundBrandSecondary: ColorSemanticToken { fatalError("No value defined for colorBackgroundBrandSecondary!") }

    @objc open var colorBackgroundBrandTertiary: ColorSemanticToken { fatalError("No value defined for colorBackgroundBrandTertiary!") }

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
    
    @objc open var colorBackgroundStatusAccentMuted: ColorSemanticToken { fatalError("Raw token unavailable for colorBackgroundStatusAccentMuted!") }

    @objc open var colorBackgroundStatusAccentMutedOnBackgroundEmphasized: ColorSemanticToken { fatalError("Raw token unavailable for colorBackgroundStatusAccentMutedOnBackgroundEmphasized!") }
    
    @objc open var colorBackgroundStatusAccentEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalSun500) }
    
    // MARK: Semantic token - Colors - Content

    @objc open var colorContentDefault: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalBlack, dark: ColorRawTokens.colorFunctionalLightGray160) }

    @objc open var colorContentContentDefaultOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray160) }
    
    @objc open var colorContentMuted: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalDarkGray400, dark: ColorRawTokens.colorFunctionalLightGray400) }

    @objc open var colorContentContentMutedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray400) }
    
    @objc open var colorContentDisabled: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalLightGray400, dark: ColorRawTokens.colorFunctionalDarkGray400) }

    @objc open var colorContentContentDisabledOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray400) }
    
    @objc open var colorContentBrandPrimary: ColorSemanticToken { fatalError("Raw token unavailable for colorContentBrandPrimary!") }

    @objc open var colorContentBrandSecondary: ColorSemanticToken { fatalError("No value defined for colorContentBrandSecondary!") }

    @objc open var colorContentBrandTertiary: ColorSemanticToken { fatalError("No value defined for colorContentBrandTertiary!") }

    @objc open var colorContentStatusPositive: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalMalachite500) }

    @objc open var colorContentStatusInfo: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDodgerBlue500) }

    @objc open var colorContentStatusWarning: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalSun500) }

    @objc open var colorContentStatusNegative: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet600) }

    @objc open var colorContentStatusAccent: ColorSemanticToken { fatalError("No value defined for colorContentStatusAccent!") }
    
    // MARK: Semantic token - Colors - Content - On Background
    
    @objc open var colorContentOnBackgroundPrimary: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalWhite, dark: ColorRawTokens.colorFunctionalBlack) }

    @objc open var colorContentOnBackgroundSecondary: ColorSemanticToken { fatalError("No value defined for colorContentOnBackgroundSecondary!") }
    
    @objc open var colorContentOnBackgroundTertiary: ColorSemanticToken { fatalError("No value defined for colorContentOnBackgroundTertiary!") }
    
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
    
    @objc open var colorBorderBrandPrimaryOnBackgroundEmphasized: ColorSemanticToken { fatalError("Raw token unavailable for colorBorderBrandPrimaryOnBackgroundEmphasized!") }
    
    @objc open var colorBorderBrandPrimary: ColorSemanticToken { fatalError("Raw token unavailable for colorBorderBrandPrimary!") }
    
    @objc open var colorBorderBrandSecondary: ColorSemanticToken { fatalError("No value defined for colorBorderBrandSecondary!") }

    @objc open var colorBorderBrandTertiary: ColorSemanticToken { fatalError("No value defined for colorBorderBrandTertiary!") }
    
    @objc open var colorBorderBrandStatusPositive: ColorSemanticToken { fatalError("No value defined for colorBorderBrandStatusPositive!") }
    
    @objc open var colorBorderBrandStatusInformation: ColorSemanticToken { fatalError("No value defined for colorBorderBrandStatusInformation!") }
    
    @objc open var colorBorderBrandStatusWarning: ColorSemanticToken { fatalError("No value defined for colorBorderBrandStatusWarning!") }

    @objc open var colorBorderBrandStatusNegative: ColorSemanticToken { fatalError("No value defined for colorBorderBrandStatusNegative!") }
    
    @objc open var colorBorderBrandStatusAttractive: ColorSemanticToken { fatalError("No value defined for colorBorderBrandStatusAttractive!") }
    
    @objc open var colorBorderOnBackgroundBrandPrimary: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalWhite, dark: ColorRawTokens.colorFunctionalBlack) }
    
    @objc open var colorBorderOnBackgroundBrandSecondary: ColorSemanticToken { fatalError("No value defined for colorBorderOnBackgroundBrandSecondary!") }
    
    @objc open var colorBorderOnBackgroundBrandTertiary: ColorSemanticToken { fatalError("No value defined for colorBorderOnBackgroundBrandTertiary!") }
    
    // --------------
    
    
    
    
    @objc open var colorContentDefaultOnBackgroundBrandPrimary: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralMutedWhite, dark: sysColorBrandNeutralEmphasizedBlack) }



    

    @objc open var colorContentDisabledOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralEmphasizedLowest) }

    

    



    





    

    @objc open var colorBorderTransparentDefault: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorTransparentBlack0) }
    
    // --------------
    
    @objc open var colorContentActionEnabled: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralEmphasizedBlack, dark: sysColorBrandNeutralMutedLower) }

    @objc open var colorContentActionEnabledOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralMutedLower) }

    @objc open var colorContentActionEnabledOnBackgroundStatusExcNegative: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralEmphasizedBlack) }

    @objc open var colorContentActionEnabledOnBackgroundStatusNegative: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralMutedWhite) }

    @objc open var colorContentActionHover: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralEmphasizedLowest, dark: sysColorBrandNeutralMutedMedium) }

    @objc open var colorContentActionHoverOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralMutedMedium) }

    @objc open var colorContentActionHoverOnBackgroundStatusExcNegative: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralEmphasizedLow) }

    @objc open var colorContentActionHoverOnBackgroundStatusNegative: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralEmphasizedBlack) }

    @objc open var colorContentTransparentDefault: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorTransparentBlack0) }
    



    // MARK: Semantic token - Colors - Background - Action

    @objc open var colorBackgroundActionEnabled: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralEmphasizedBlack, dark: sysColorBrandNeutralMutedLower) }

    @objc open var colorBackgroundActionEnabledOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralMutedLower, dark: sysColorBrandNeutralMutedLower) }

    @objc open var colorBackgroundActionEnabledOnBackgroundStatusExcNegative: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralEmphasizedBlack, dark: sysColorBrandNeutralEmphasizedBlack) }

    @objc open var colorBackgroundActionEnabledOnBackgroundStatusNegative: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralMutedWhite, dark: sysColorBrandNeutralMutedWhite) }

    @objc open var colorBackgroundActionPressed: ColorSemanticToken { MultipleColorTokens(sysColorBrandPrimaryLow) }

    @objc open var colorBackgroundActionPressedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(sysColorBrandPrimaryLow) }

    @objc open var colorBackgroundActionPressedOnBackgroundStatusExcNegative: ColorSemanticToken { MultipleColorTokens(sysColorBrandPrimaryDefault) }

    @objc open var colorBackgroundActionPressedOnBackgroundStautsNegative: ColorSemanticToken { MultipleColorTokens(sysColorBrandPrimaryDefault) }

    @objc open var colorBackgroundActionDisabled: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralMutedMedium, dark: sysColorBrandNeutralMutedLowest) }

    @objc open var colorBackgroundActionDisabledOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralMutedLowest) }

    @objc open var colorBackgroundActionDisabledOnBackgroundStatusExcNegative: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralMutedMedium) }

    @objc open var colorBackgroundActionDisabledOnBackgroundStatusNegative: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralEmphasizedLowest) }

    @objc open var colorBackgroundActionFocus: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralEmphasizedLowest, dark: sysColorBrandNeutralMutedMedium) }

    @objc open var colorBackgroundActionFocusOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralMutedMedium) }

    @objc open var colorBackgroundActionFocusOnBackgroundStatusExcNegative: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralEmphasizedLow) }

    @objc open var colorBackgroundActionFocusOnBackgroundStatusNegative: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralEmphasizedBlack) }

    // MARK: Semantic token - Colors - Background - Always

    @objc open var colorBackgroundAlwaysBlack: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralEmphasizedBlack) }

    @objc open var colorBackgroundAlwaysWhite: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralMutedWhite) }

    @objc open var colorBackgroundAlwaysAttractive: ColorSemanticToken { MultipleColorTokens(sysColorBrandWarningDefault) }

    @objc open var colorBackgroundAlwaysWarning: ColorSemanticToken { MultipleColorTokens(sysColorBrandWarningDefault) }

    @objc open var colorBackgroundAlwaysNegative: ColorSemanticToken { MultipleColorTokens(sysColorBrandNegativeDefault) }

    @objc open var colorBackgroundAlwaysPositive: ColorSemanticToken { MultipleColorTokens(sysColorBrandPositiveDefault) }

    @objc open var colorBackgroundAlwaysInformation: ColorSemanticToken { MultipleColorTokens(sysColorBrandInformationDefault) }

    // MARK: Semantic token - Colors - Background - Transparent

    @objc open var colorBackgroundTransparentDefault: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorTransparentBlack0) }
    
}
// swiftlint:enable line_length
