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

/// Overrides some colors using values defined in extension of `ColorRawTokens` in this current module.
extension InverseTheme {
    
    // MARK: Semantic token - Colors - Background

    override public var colorBackgroundPrimary: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray880) }

    override public var colorBackgroundSecondary: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray720) }

    override public var colorBackgroundTertiary: ColorSemanticToken { MultipleColorTokens(OrangeBrandColorRawTokens.colorWarmGray900) }

    override public var colorBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalWhite) }

    override public var colorBackgroundBrandPrimary: ColorSemanticToken { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange500) }

    override public var colorBackgroundStatusNeutral: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray720) }

    override public var colorBackgroundStatusNeutralOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray80) }

    override public var colorBackgroundStatusPositiveMuted: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalMalachite100) }

    override public var colorBackgroundStatusPositiveMutedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalMalachite100) }

    override public var colorBackgroundStatusPositiveEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalMalachite500) }
    
    override public var colorBackgroundStatusInfoMuted: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDodgerBlue900) }

    override public var colorBackgroundStatusInfoMutedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDodgerBlue100) }

    override public var colorBackgroundStatusInfoEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDodgerBlue500) }
    
    override public var colorBackgroundStatusWarningMuted: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalSun900) }

    // WARNING: #124 - Missing alias value for the light value in the Figjam
    override public var colorBackgroundStatusWarningMutedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens("FFF7D6") }

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
    
    override public var colorContentBrandPrimary: ColorSemanticToken { MultipleColorTokens("#FF7900") }

    override public var colorContentBrandSecondary: ColorSemanticToken { fatalError("No value defined for colorContentBrandSecondary!") }

    override public var colorContentBrandTertiary: ColorSemanticToken { fatalError("No value defined for colorContentBrandTertiary!") }

    override public var colorContentStatusPositive: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalMalachite500) }

    override public var colorContentStatusInfo: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDodgerBlue500) }
    
    override public var colorContentStatusWarning: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalSun500) }

    override public var colorContentStatusNegative: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalScarlet600) }

    override public var colorContentStatusAccent: ColorSemanticToken { fatalError("No value defined for colorContentStatusAccent!") }
    
    // MARK: Semantic token - Colors - Content - On Background
    
    override public var colorContentOnBackgroundPrimary: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalWhite, dark: ColorRawTokens.colorFunctionalBlack) }

    override public var colorContentOnBackgroundSecondary: ColorSemanticToken { fatalError("No value defined for colorContentOnBackgroundSecondary!") }
    
    override public var colorContentOnBackgroundTertiary: ColorSemanticToken { fatalError("No value defined for colorContentOnBackgroundTertiary!") }
    
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
    
    override public var colorBorderBrandPrimaryOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens("#FF6E00") }
    
    override public var colorBorderBrandPrimary: ColorSemanticToken { MultipleColorTokens("#FF7900") }
    
    override public var colorBorderBrandSecondary: ColorSemanticToken { fatalError("No value defined for colorBorderBrandSecondary!") }

    override public var colorBorderBrandTertiary: ColorSemanticToken { fatalError("No value defined for colorBorderBrandTertiary!") }
    
    override public var colorBorderBrandStatusPositive: ColorSemanticToken { fatalError("No value defined for colorBorderBrandStatusPositive!") }
    
    override public var colorBorderBrandStatusInformation: ColorSemanticToken { fatalError("No value defined for colorBorderBrandStatusInformation!") }
    
    override public var colorBorderBrandStatusWarning: ColorSemanticToken { fatalError("No value defined for colorBorderBrandStatusWarning!") }

    override public var colorBorderBrandStatusNegative: ColorSemanticToken { fatalError("No value defined for colorBorderBrandStatusNegative!") }
    
    override public var colorBorderBrandStatusAttractive: ColorSemanticToken { fatalError("No value defined for colorBorderBrandStatusAttractive!") }
    
    override public var colorBorderOnBackgroundBrandPrimary: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalBlack) }
    
    override public var colorBorderOnBackgroundBrandSecondary: ColorSemanticToken { fatalError("No value defined for colorBorderOnBackgroundBrandSecondary!") }
    
    override public var colorBorderOnBackgroundBrandTertiary: ColorSemanticToken { fatalError("No value defined for colorBorderOnBackgroundBrandTertiary!") }
    
    // MARK: Semantic token - Colors - Action
    
    override public var colorActionSelected: ColorSemanticToken { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange500) }
    
    override public var colorActionSelectedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange550) }
    
    override public var colorActionDisabled: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDarkGray400) }
    
    override public var colorActionDisabledOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray400) }
    
    override public var colorActionVisited: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeAmethyst400) }
    
    override public var colorActionVistedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorDecorativeAmethyst600) }
    
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
    
    override public var colorActionOnBackgroundActionPrimaryFocusOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.white) }
    
    override public var colorActionOnBackgroundActionSecondaryEnabled: ColorSemanticToken { fatalError("No value defined for colorActionOnBackgroundActionSecondaryEnabled!")  }
    
    override public var colorActionOnBackgroundActionSecondaryEnabledOnBackgroundEmphasized: ColorSemanticToken {  fatalError("No value defined for colorActionOnBackgroundActionSecondaryEnabledOnBackgroundEmphasized!") }
    
    override public var colorActionOnBackgroundActionSecondaryHover: ColorSemanticToken { fatalError("No value defined for colorActionOnBackgroundActionSecondaryHover!") }
    
    override public var colorActionOnBackgroundActionSecondaryHoverOnBackgroundEmphasized: ColorSemanticToken { fatalError("No value defined for colorActionOnBackgroundActionSecondaryHoverOnBackgroundEmphasized!")  }
    
    override public var colorActionOnBackgroundActionSecondaryPressed: ColorSemanticToken { fatalError("No value defined for colorActionOnBackgroundActionSecondaryPressed!")  }
    
    override public var colorActionOnBackgroundActionSecondaryPressedOnBackgroundEmphasized: ColorSemanticToken { fatalError("No value defined for colorActionOnBackgroundActionSecondaryPressedOnBackgroundEmphasized!")  }
    
    override public var colorActionOnBackgroundActionSecondaryLoading: ColorSemanticToken { fatalError("No value defined for colorActionOnBackgroundActionSecondaryLoading!") }
    
    override public var colorActionOnBackgroundActionSecondaryLoadingOnBackgroundEmphasized: ColorSemanticToken { fatalError("No value defined for colorActionOnBackgroundActionSecondaryLoadingOnBackgroundEmphasized!") }
    
    override public var colorActionOnBackgroundActionSecondaryFocus: ColorSemanticToken { fatalError("No value defined for colorActionOnBackgroundActionSecondaryFocus!") }
    
    override public var colorActionOnBackgroundActionSecondaryFocusOnBackgroundEmphasized: ColorSemanticToken { fatalError("No value defined for colorActionOnBackgroundActionSecondaryFocusOnBackgroundEmphasized!") }
    
    
    
    
    
    
    
    
    
    
    
    
    // --------------
    
    
    
    
    
    
    override public var colorContentActionEnabled: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralMutedLower)  }

    override public var colorContentActionEnabledOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralEmphasizedBlack)  }

    override public var colorContentActionEnabledOnBackgroundStatusExcNegative: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralEmphasizedBlack)  }

    override public var colorContentActionEnabledOnBackgroundStatusNegative: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralMutedWhite)  }

    override public var colorContentActionHover: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralMutedMedium) }

    override public var colorContentActionHoverOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralEmphasizedLowest) }

    override public var colorContentActionHoverOnBackgroundStatusExcNegative: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralEmphasizedLow) }

    override public var colorContentActionHoverOnBackgroundStatusNegative: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralEmphasizedBlack) }
    override public var colorBorderDefault: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralEmphasizedLowest) }

    override public var colorBorderDefaultOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralMutedMedium) }

    override public var colorBorderEmphasized: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralMutedWhite) }

    override public var colorBorderEmphasizedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralEmphasizedBlack) }

    override public var colorBorderBrandPrimary: ColorSemanticToken { MultipleColorTokens(sysColorBrandPrimaryLow) }

    override public var colorBorderBrandPrimaryOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(sysColorBrandPrimaryDefault) }

    override public var colorBorderBrandSecondary: ColorSemanticToken { nil }

    override public var colorBorderBrandTertiary: ColorSemanticToken { nil }

    override public var colorBorderBrandStatusAttractive: ColorSemanticToken { nil }

    override public var colorBorderBrandStatusWarning: ColorSemanticToken { nil }

    override public var colorBorderBrandStatusNegative: ColorSemanticToken { nil }

    override public var colorBorderBrandStatusPositive: ColorSemanticToken { nil }

    override public var colorBorderBrandStatusInformation: ColorSemanticToken { nil }

    override public var colorBackgroundActionEnabled: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralMutedLower) }

    override public var colorBackgroundActionEnabledOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralEmphasizedBlack) }

    override public var colorBackgroundActionEnabledOnBackgroundStatusExcNegative: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralEmphasizedBlack) }

    override public var colorBackgroundActionEnabledOnBackgroundStatusNegative: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralMutedWhite) }

    override public var colorBackgroundActionPressed: ColorSemanticToken { MultipleColorTokens(sysColorBrandPrimaryLow) }

    override public var colorBackgroundActionPressedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(sysColorBrandPrimaryDefault) }

    override public var colorBackgroundActionPressedOnBackgroundStatusExcNegative: ColorSemanticToken { MultipleColorTokens(sysColorBrandPrimaryDefault) }

    override public var colorBackgroundActionPressedOnBackgroundStautsNegative: ColorSemanticToken { MultipleColorTokens(sysColorBrandPrimaryDefault) }

    override public var colorBackgroundActionDisabled: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralEmphasizedLowest) }

    override public var colorBackgroundActionDisabledOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralMutedMedium) }

    override public var colorBackgroundActionDisabledOnBackgroundStatusExcNegative: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralMutedMedium) }

    override public var colorBackgroundActionDisabledOnBackgroundStatusNegative: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralEmphasizedLowest) }

    override public var colorBackgroundActionFocus: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralMutedMedium) }

    override public var colorBackgroundActionFocusOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralMutedMedium) }

    override public var colorBackgroundActionFocusOnBackgroundStatusExcNegative: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralEmphasizedLow) }

    override public var colorBackgroundActionFocusOnBackgroundStatusNegative: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralEmphasizedBlack) }

    override public var colorBackgroundAlwaysBlack: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralEmphasizedBlack) }

    override public var colorBackgroundAlwaysWhite: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralMutedWhite) }

    override public var colorBackgroundAlwaysAttractive: ColorSemanticToken { MultipleColorTokens(sysColorBrandWarningDefault) }

    override public var colorBackgroundAlwaysWarning: ColorSemanticToken { MultipleColorTokens(sysColorBrandWarningDefault) }

    override public var colorBackgroundAlwaysNegative: ColorSemanticToken { MultipleColorTokens(sysColorBrandNegativeDefault) }

    override public var colorBackgroundAlwaysPositive: ColorSemanticToken { MultipleColorTokens(sysColorBrandPositiveDefault) }

    override public var colorBackgroundAlwaysInformation: ColorSemanticToken { MultipleColorTokens(sysColorBrandInformationDefault) }

}
