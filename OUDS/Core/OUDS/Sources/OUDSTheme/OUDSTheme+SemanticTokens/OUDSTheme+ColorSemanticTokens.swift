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
    @objc open var colorBackgroundTertiary: ColorSemanticToken { MultipleColorTokens(light: "F9F5F0", dark: "353228") }

    @objc open var colorBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalDarkGray880, dark: ColorRawTokens.colorFunctionalDarkGray640) }

    // WARNING: #124 - Colors to use are part of OUDSOrangeTheme so are not reachable at this level, as a workaround add raw values
    @objc open var colorBackgroundBrandPrimary: ColorSemanticToken { MultipleColorTokens(light: "F16E00", dark: "FF7900") }

    @objc open var colorBackgroundBrandSecondary: ColorSemanticToken { fatalError("No value defined for colorBackgroundBrandSecondary!") }

    @objc open var colorBackgroundBrandTertiary: ColorSemanticToken { fatalError("No value defined for colorBackgroundBrandTertiary!") }

    @objc open var colorBackgroundStatusNeutral: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalLightGray80, dark: ColorRawTokens.colorFunctionalDarkGray720) }

    @objc open var colorBackgroundStatusNeutralOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalDarkGray720, dark: ColorRawTokens.colorFunctionalDarkGray720) }

    @objc open var colorBackgroundStatusPositiveMuted: ColorSemanticToken { MultipleColorTokens(light: ColorRawToken.colorFunctionalMalachite100, dark: ColorRawTokens.colorFunctionalMalachite900) }

    @objc open var colorBackgroundStatusPositiveMutedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawToken.colorFunctionalMalachite900) }

    @objc open var colorBackgroundStatusPositiveEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalMalachite500) }
    
    @objc open var colorBackgroundStatusInfoMuted: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalDodgerBlue100, dark: ColorRawTokens.colorFunctionalDodgerBlue900) }

    @objc open var colorBackgroundStatusInfoMutedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDodgerBlue900) }

    @objc open var colorBackgroundStatusInfoEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDodgerBlue500) }
    
    // WARNING: #124 - Missing alias value for the light value in the Figjam
    @objc open var colorBackgroundStatusWarningMuted: ColorSemanticToken { MultipleColorTokens(light: "FFF7D6", dark: ColorRawTokens.colorFunctionalSun900) }

    @objc open var colorBackgroundStatusWarningMutedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalSun900) }

    @objc open var colorBackgroundStatusWarningEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalSun500) }
    
    @objc open var colorBackgroundStatusNegativeMuted: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalScarlet100, dark: ColorRawTokens.colorFunctionalScarlet900) }

    @objc open var colorBackgroundStatusNegativeMutedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet900) }

    @objc open var colorBackgroundStatusNegativeEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet600) }
    
    
    
    
    
    
    
    
    
    @objc open var colorBackgroundStatusAccentMuted: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandAttractiveLowest, dark: sysColorBrandAttractiveHighest) }

    @objc open var colorBackgroundStatusAccentMutedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandWarningDefault, dark: sysColorBrandWarningDefault) }



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

    // MARK: Semantic token - Colors - Content

    @objc open var colorContentDefault: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralEmphasizedBlack, dark: sysColorBrandNeutralMutedLower) }

    @objc open var colorContentDefaultOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralMutedLower, dark: sysColorBrandNeutralMutedLower) }

    @objc open var colorContentMuted: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralEmphasizedLowest, dark: sysColorBrandNeutralEmphasizedHigh) }

    @objc open var colorContentMutedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralMutedMedium, dark: sysColorBrandNeutralMutedHigh) }

    @objc open var colorContentBrandPrimary: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandPrimaryDefault, dark: sysColorBrandPrimaryLow) }

    @objc open var colorContentBrandPrimaryOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandPrimaryLow, dark: sysColorBrandPrimaryLow) }

    @objc open var colorContentBrandSecondary: ColorSemanticToken { nil }

    @objc open var colorContentBrandTertiary: ColorSemanticToken { nil }

    @objc open var colorContentStatusAttractive: ColorSemanticToken { nil }

    @objc open var colorContentStatusNegative: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNegativeDefault, dark: sysColorBrandNegativeDefault) }

    @objc open var colorContentStatusPositive: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandPositiveDefault, dark: sysColorBrandPositiveDefault) }

    @objc open var colorContentStatusInformation: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandInformationDefault, dark: sysColorBrandInformationDefault) }

    @objc open var colorContentActionEnabled: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralEmphasizedBlack, dark: sysColorBrandNeutralMutedLower) }

    @objc open var colorContentActionEnabledOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralMutedLower) }

    @objc open var colorContentActionEnabledOnBackgroundStatusExcNegative: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralEmphasizedBlack) }

    @objc open var colorContentActionEnabledOnBackgroundStatusNegative: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralMutedWhite) }

    @objc open var colorContentActionHover: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralEmphasizedLowest, dark: sysColorBrandNeutralMutedMedium) }

    @objc open var colorContentActionHoverOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralMutedMedium) }

    @objc open var colorContentActionHoverOnBackgroundStatusExcNegative: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralEmphasizedLow) }

    @objc open var colorContentActionHoverOnBackgroundStatusNegative: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralEmphasizedBlack) }

    @objc open var colorContentTransparentDefault: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorTransparentBlack0) }

    // MARK: Semantic token - Colors - Border

    @objc open var colorBorderDefault: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralMutedMedium, dark: sysColorBrandNeutralEmphasizedLowest) }

    @objc open var colorBorderDefaultOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralEmphasizedLowest, dark: sysColorBrandNeutralEmphasizedLowest) }

    @objc open var colorContentDefaultOnBackgroundBrandPrimary: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralMutedWhite, dark: sysColorBrandNeutralEmphasizedBlack) }

    @objc open var colorBorderEmphasized: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralEmphasizedBlack, dark: sysColorBrandNeutralMutedLower) }

    @objc open var colorBorderEmphasizedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralMutedWhite, dark: sysColorBrandNeutralMutedLower) }

    @objc open var colorContentDisabled: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralMutedMedium, dark: sysColorBrandNeutralEmphasizedLowest) }

    @objc open var colorContentDisabledOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralEmphasizedLowest) }

    @objc open var colorBorderBrandPrimary: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandPrimaryDefault, dark: sysColorBrandPrimaryLow) }

    @objc open var colorBorderBrandPrimaryOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandPrimaryLow, dark: sysColorBrandPrimaryLow) }

    @objc open var colorBorderBrandSecondary: ColorSemanticToken { nil }

    @objc open var colorBorderBrandTertiary: ColorSemanticToken { nil }

    @objc open var colorBorderBrandStatusAttractive: ColorSemanticToken { nil }

    @objc open var colorBorderBrandStatusWarning: ColorSemanticToken { nil }

    @objc open var colorBorderBrandStatusNegative: ColorSemanticToken { nil }

    @objc open var colorBorderBrandStatusPositive: ColorSemanticToken { nil }

    @objc open var colorBorderBrandStatusInformation: ColorSemanticToken { nil }

    @objc open var colorBorderTransparentDefault: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorTransparentBlack0) }
}
// swiftlint:enable line_length
