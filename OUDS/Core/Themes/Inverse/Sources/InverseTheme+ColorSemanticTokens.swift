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
import OUDSTokensSemantic

// ଘ( ･ω･)_/ﾟ･:*:･｡☆
// [File to generate with the tokenator]
// WARNING: Not synchronized anymore with the Figjam

/// Overrides some colors using values defined in extension of `ColorRawTokens` in this current module.
extension InverseTheme {

    public override var colorBackgroundDefaultPrimary: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedHighest!) }

    public override var colorBackgroundDefaultSecondary: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedHigh!) }

    public override var colorBackgroundDefaultTertiary: ColorSemanticToken? { MultipleColorTokens(sysColorBrandAttractiveHighest!) }

    public override var colorBackgroundEmphasizedPrimary: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralMutedWhite!) }

    public override var colorBackgroundBrandPrimary: ColorSemanticToken? { MultipleColorTokens(sysColorBrandPrimaryLow!) }

    public override var colorBackgroundStatusNeutral: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedHigh!) }

    public override var colorBackgroundStatusNeutralOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedLowest) }

    public override var colorBackgroundStatusAttractiveMuted: ColorSemanticToken? { MultipleColorTokens(sysColorBrandAttractiveLowest!) }

    public override var colorBackgroundStatusAttractiveEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandWarningDefault!) }

    public override var colorBackgroundStatusWarningMuted: ColorSemanticToken? { MultipleColorTokens(sysColorBrandWarningHighest!) }

    public override var colorBackgroundStatusWarningMutedOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandWarningLowest) }

    public override var colorBackgroundStatusWarningEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandWarningDefault!) }

    public override var colorBackgroundStatusNegativeMuted: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedHighest!) }

    public override var colorBackgroundStatusNegativeMutedOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNegativeLowest) }

    public override var colorBackgroundStatusNegativeEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNegativeDefault!) }

    public override var colorBackgroundStatusPositiveMuted: ColorSemanticToken? { MultipleColorTokens(sysColorBrandPositiveHighest!) }

    public override var colorBackgroundStatusPositiveMutedOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandPositiveLowest) }

    public override var colorBackgroundStatusPositiveEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandPositiveDefault!) }

    public override var colorBackgroundStatusInformationMuted: ColorSemanticToken? { MultipleColorTokens(sysColorBrandInformationLowest!) }

    public override var colorBackgroundStatusInformationMutedOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandInformationLowest) }

    public override var colorBackgroundStatusInformationEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandPositiveLowest!) }

    public override var colorContentDefault: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralMutedWhite!) }

    public override var colorContentDefaultOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedBlack!) }

    public override var colorContentDefaultOnBackgroundBrandPrimary: ColorSemanticToken! { MultipleColorTokens(sysColorBrandNeutralEmphasizedBlack!) }

    public override var colorContentMuted: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedMedium!) }

    public override var colorContentMutedOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedLowest!) }

    public override var colorContentDisabled: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedLowest!) }

    public override var colorContentDisabledOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralMutedMedium!) }

    public override var colorContentBrandPrimary: ColorSemanticToken? { MultipleColorTokens(sysColorBrandPrimaryLow!) }

    public override var colorContentBrandPrimaryOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandPrimaryDefault!) }

    public override var colorContentBrandSecondary: ColorSemanticToken? { nil }

    public override var colorContentBrandTertiary: ColorSemanticToken? { nil }

    public override var colorContentStatusAttractive: ColorSemanticToken? { nil }

    public override var colorContentStatusNegative: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNegativeDefault!) }

    public override var colorContentStatusPositive: ColorSemanticToken? { MultipleColorTokens(sysColorBrandPositiveDefault!) }

    public override var colorContentStatusInformation: ColorSemanticToken? { MultipleColorTokens(sysColorBrandInformationDefault!) }

    public override var colorContentActionEnabled: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralMutedLower)  }

    public override var colorContentActionEnabledOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedBlack)  }

    public override var colorContentActionEnabledOnBackgroundStatusExcNegative: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedBlack)  }

    public override var colorContentActionEnabledOnBackgroundStatusNegative: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralMutedWhite)  }

    public override var colorBorderDefault: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedLowest!) }

    public override var colorBorderDefaultOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralMutedMedium!) }

    public override var colorBorderEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralMutedWhite!) }

    public override var colorBorderEmphasizedOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedBlack!) }

    public override var colorBorderBrandPrimary: ColorSemanticToken? { MultipleColorTokens(sysColorBrandPrimaryLow!) }

    public override var colorBorderBrandPrimaryOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandPrimaryDefault!) }

    public override var colorBorderBrandSecondary: ColorSemanticToken? { nil }

    public override var colorBorderBrandTertiary: ColorSemanticToken? { nil }

    public override var colorBorderBrandStatusAttractive: ColorSemanticToken? { nil }

    public override var colorBorderBrandStatusWarning: ColorSemanticToken? { nil }

    public override var colorBorderBrandStatusNegative: ColorSemanticToken? { nil }

    public override var colorBorderBrandStatusPositive: ColorSemanticToken? { nil }

    public override var colorBorderBrandStatusInformation: ColorSemanticToken? { nil }

    public override var colorBackgroundActionEnabled: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralMutedLower) }

    public override var colorBackgroundActionEnabledOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedBlack) }

    public override var colorBackgroundActionEnabledOnBackgroundStatusExcNegative: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedBlack) }

    public override var colorBackgroundActionEnabledOnBackgroundStatusNegative: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralMutedWhite) }

    public override var colorBackgroundActionPressed: ColorSemanticToken? { MultipleColorTokens(sysColorBrandPrimaryLow) }

    public override var colorBackgroundActionPressedOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandPrimaryDefault) }

    public override var colorBackgroundActionPressedOnBackgroundStatusExcNegative: ColorSemanticToken? { MultipleColorTokens(sysColorBrandPrimaryDefault) }

    public override var colorBackgroundActionPressedOnBackgroundStautsNegative: ColorSemanticToken? { MultipleColorTokens(sysColorBrandPrimaryDefault) }

    public override var colorBackgroundActionDisabled: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedLowest) }

    public override var colorBackgroundActionDisabledOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralMutedMedium) }

    public override var colorBackgroundActionDisabledOnBackgroundStatusExcNegative: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralMutedMedium) }

    public override var colorBackgroundActionDisabledOnBackgroundStatusNegative: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedLowest) }

    public override var colorBackgroundActionFocus: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralMutedMedium) }

    public override var colorBackgroundActionFocusOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralMutedMedium) }

    public override var colorBackgroundActionFocusOnBackgroundStatusExcNegative: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedLow) }

    public override var colorBackgroundActionFocusOnBackgroundStatusNegative: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedBlack) }

    public override var colorBackgroundAlwaysBlack: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedBlack) }

    public override var colorBackgroundAlwaysWhite: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralMutedWhite) }

    public override var colorBackgroundAlwaysAttractive: ColorSemanticToken? { MultipleColorTokens(sysColorBrandWarningDefault) }

    public override var colorBackgroundAlwaysWarning: ColorSemanticToken? { MultipleColorTokens(sysColorBrandWarningDefault) }

    public override var colorBackgroundAlwaysNegative: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNegativeDefault) }

    public override var colorBackgroundAlwaysPositive: ColorSemanticToken? { MultipleColorTokens(sysColorBrandPositiveDefault) }

    public override var colorBackgroundAlwaysInformation: ColorSemanticToken? { MultipleColorTokens(sysColorBrandInformationDefault) }

    /*
         TODO: #124
         WARNING: Some color semantic tokens are missing because of Figma synchronization issues
         - color background
         - color background always
         - color content
         - color border
         - color on background
         - color elevation
         - color decorative
         - color chart
     */
}
