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

/// Overrides some colors using values defined in extension of `ColorRawTokens` in this current module.
extension InverseTheme {

    public override var colorBackgroundDefaultPrimary: ColorSemanticToken? { ColorCompositeSemanticToken(sysColorBrandNeutralEmphasizedBlack!) }

    public override var colorBackgroundDefaultSecondary: ColorSemanticToken? { ColorCompositeSemanticToken(sysColorBrandNeutralEmphasizedMedium!) }

    public override var colorBackgroundDefaultTertiary: ColorSemanticToken? { ColorCompositeSemanticToken(sysColorBrandAttractiveHighest!) }

    public override var colorBackgroundEmphasizedPrimary: ColorSemanticToken? { ColorCompositeSemanticToken(sysColorBrandNeutralMutedWhite!) }

    public override var colorBackgroundEmphasizedSecondary: ColorSemanticToken? { ColorCompositeSemanticToken(sysColorBrandNeutralMutedLowest!) }

    public override var colorBackgroundBrandPrimary: ColorSemanticToken? { ColorCompositeSemanticToken(sysColorBrandPrimaryDefault!) }

    public override var colorBackgroundStatusAttractiveMuted: ColorSemanticToken? { ColorCompositeSemanticToken(sysColorBrandAttractiveLowest!) }

    public override var colorBackgroundStatusAttractiveEmphasized: ColorSemanticToken? { ColorCompositeSemanticToken(sysColorBrandWarningDefault!) }

    public override var colorBackgroundStatusWarningMuted: ColorSemanticToken? { ColorCompositeSemanticToken(sysColorBrandWarningLowest!) }

    public override var colorBackgroundStatusWarningEmphasized: ColorSemanticToken? { ColorCompositeSemanticToken(sysColorBrandWarningDefault!) }

    public override var colorBackgroundStatusNegativeMuted: ColorSemanticToken? { ColorCompositeSemanticToken(sysColorBrandNegativeLowest!) }

    public override var colorBackgroundStatusNegativeEmphasized: ColorSemanticToken? { ColorCompositeSemanticToken(sysColorBrandNegativeDefault!) }

    public override var colorBackgroundStatusPositiveMuted: ColorSemanticToken? { ColorCompositeSemanticToken(sysColorBrandPositiveLowest!) }

    public override var colorBackgroundStatusPositiveEmphasized: ColorSemanticToken? { ColorCompositeSemanticToken(sysColorBrandPositiveDefault!) }

    public override var colorBackgroundStatusInformationMuted: ColorSemanticToken? { ColorCompositeSemanticToken(sysColorBrandInformationLowest!) }

    public override var colorBackgroundStatusInformationEmphasized: ColorSemanticToken? { ColorCompositeSemanticToken(sysColorBrandPositiveLowest!) }

    public override var colorContentDefault: ColorSemanticToken? { ColorCompositeSemanticToken(sysColorBrandNeutralMutedWhite!) }

    public override var colorContentDefaultOnBackgroundEmphasized: ColorSemanticToken? { ColorCompositeSemanticToken(sysColorBrandNeutralEmphasizedBlack!) }

    public override var colorContentMuted: ColorSemanticToken? { ColorCompositeSemanticToken(sysColorBrandNeutralEmphasizedMedium!) }

    public override var colorContentMutedOnBackgroundEmphasized: ColorSemanticToken? { ColorCompositeSemanticToken(sysColorBrandNeutralEmphasizedLowest!) }

    public override var colorContentBrandPrimary: ColorSemanticToken? { ColorCompositeSemanticToken(sysColorBrandPrimaryLow!) }

    public override var colorContentBrandPrimaryOnBackgroundEmphasized: ColorSemanticToken? { ColorCompositeSemanticToken(sysColorBrandPrimaryDefault!) }

    public override var colorContentBrandSecondary: ColorSemanticToken? { nil }

    public override var colorContentBrandTertiary: ColorSemanticToken? { nil }

    public override var colorContentStatusAttractive: ColorSemanticToken? { nil }

    public override var colorContentStatusNegative: ColorSemanticToken? { ColorCompositeSemanticToken(sysColorBrandNegativeDefault!) }

    public override var colorContentStatusPositive: ColorSemanticToken? { ColorCompositeSemanticToken(sysColorBrandPositiveDefault!) }

    public override var colorContentStatusInformation: ColorSemanticToken? { ColorCompositeSemanticToken(sysColorBrandInformationDefault!) }

    public override var colorBorderDefault: ColorSemanticToken? { ColorCompositeSemanticToken(sysColorBrandNeutralEmphasizedLowest!) }

    public override var colorBorderDefaultOnBackgroundEmphasized: ColorSemanticToken? { ColorCompositeSemanticToken(sysColorBrandNeutralMutedMedium!) }

    public override var colorBorderEmphasized: ColorSemanticToken? { ColorCompositeSemanticToken(sysColorBrandNeutralMutedWhite!) }

    public override var colorBorderEmphasizedOnBackgroundEmphasized: ColorSemanticToken? { ColorCompositeSemanticToken(sysColorBrandNeutralEmphasizedBlack!) }

    public override var colorBorderBrandPrimary: ColorSemanticToken? { ColorCompositeSemanticToken(sysColorBrandPrimaryLow!) }

    public override var colorBorderBrandPrimaryOnBackgroundEmphasized: ColorSemanticToken? { ColorCompositeSemanticToken(sysColorBrandPrimaryDefault!) }

    public override var colorBorderBrandSecondary: ColorSemanticToken? { nil }

    public override var colorBorderBrandTertiary: ColorSemanticToken? { nil }

    public override var colorBorderBrandStatusAttractive: ColorSemanticToken? { nil }

    public override var colorBorderBrandStatusWarning: ColorSemanticToken? { nil }

    public override var colorBorderBrandStatusNegative: ColorSemanticToken? { nil }

    public override var colorBorderBrandStatusPositive: ColorSemanticToken? { nil }

    public override var colorBorderBrandStatusInformation: ColorSemanticToken? { nil }

    public override var colorOnBackgroundPrimary: ColorSemanticToken? { ColorCompositeSemanticToken(sysColorBrandNeutralMutedWhite!) }

    public override var colorOnBackgroundSecondary: ColorSemanticToken? { nil }

    public override var colorOnBackgroundTertiary: ColorSemanticToken? { nil }

    public override var colorOnBackgroundStatusAttractiveMuted: ColorSemanticToken? { ColorCompositeSemanticToken(sysColorBrandNeutralEmphasizedBlack!) }

    public override var colorOnBackgroundStatusAttractiveEmphasized: ColorSemanticToken? { ColorCompositeSemanticToken(sysColorBrandNeutralEmphasizedBlack!) }

    public override var colorOnBackgroundStatusWarningMuted: ColorSemanticToken? { ColorCompositeSemanticToken(sysColorBrandNeutralEmphasizedBlack!) }

    public override var colorOnBackgroundStatusWarningEmphasized: ColorSemanticToken? { ColorCompositeSemanticToken(sysColorBrandNeutralEmphasizedBlack!) }

    public override var colorOnBackgroundStatusNegativeMuted: ColorSemanticToken? { ColorCompositeSemanticToken(sysColorBrandNeutralEmphasizedBlack!) }

    public override var colorOnBackgroundStatusNegativeEmphasized: ColorSemanticToken? { ColorCompositeSemanticToken(sysColorBrandNeutralMutedWhite!) }

    public override var colorOnBackgroundStatusPositiveMuted: ColorSemanticToken? { ColorCompositeSemanticToken(sysColorBrandNeutralEmphasizedBlack!) }

    public override var colorOnBackgroundStatusPositiveEmphasized: ColorSemanticToken? { ColorCompositeSemanticToken(sysColorBrandNeutralEmphasizedBlack!) }

    public override var colorOnBackgroundStatusInformationMuted: ColorSemanticToken? { ColorCompositeSemanticToken(sysColorBrandNeutralEmphasizedBlack!) }

    public override var colorOnBackgroundStatusInformationEmphasized: ColorSemanticToken? { ColorCompositeSemanticToken(sysColorBrandNeutralEmphasizedBlack!) }
}
