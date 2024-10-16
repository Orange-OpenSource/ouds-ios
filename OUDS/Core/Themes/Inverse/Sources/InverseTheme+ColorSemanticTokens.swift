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
    
    override public var colorContentOnBackgroundStatusInfoMuted: ColorSemanticToken { MultipleColorTokens() }
    
    override public var colorContentOnBackgroundStatusInfoMutedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens() }
    
    override public var colorContentOnBackgroundStatusInfoEmphasized: ColorSemanticToken { MultipleColorTokens() }
    
    override public var colorContentOnBackgroundStatusWarningMuted: ColorSemanticToken { MultipleColorTokens() }
    
    override public var colorContentOnBackgroundStatusWarningMutedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens() }
    
    override public var colorContentOnBackgroundStatusWarningEmphasized: ColorSemanticToken { MultipleColorTokens() }
    
    override public var colorContentOnBackgroundStatusNegativeMuted: ColorSemanticToken { MultipleColorTokens() }
    
    override public var colorContentOnBackgroundStatusNegativeMutedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens() }
    
    override public var colorContentOnBackgroundStatusNegativeEmphasized: ColorSemanticToken { MultipleColorTokens() }
    
    override public var colorContentOnBackgroundStatusAccentMuted: ColorSemanticToken { MultipleColorTokens() }
    
    override public var colorContentOnBackgroundStatusAccentMutedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens() }
    
    override public var colorContentOnBackgroundStatusAccentedEmphasized: ColorSemanticToken { MultipleColorTokens() }
    
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
