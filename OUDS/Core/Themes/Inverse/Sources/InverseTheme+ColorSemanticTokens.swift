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

    public override var colorBackgroundDefaultPrimaryLight: ColorSemanticToken? { sysColorBrandNeutralEmphasizedBlack }
    public override var colorBackgroundDefaultPrimaryDark: ColorSemanticToken? { sysColorBrandNeutralEmphasizedBlack }

    public override var colorBackgroundDefaultSecondaryLight: ColorSemanticToken? { sysColorBrandNeutralEmphasizedMedium }
    public override var colorBackgroundDefaultSecondaryDark: ColorSemanticToken? { sysColorBrandNeutralEmphasizedMedium }

    public override var colorBackgroundDefaultTertiaryLight: ColorSemanticToken? { sysColorBrandAttractiveHighest }
    public override var colorBackgroundDefaultTertiaryDark: ColorSemanticToken? { sysColorBrandAttractiveHighest }

    public override var colorBackgroundEmphasizedPrimaryLight: ColorSemanticToken? { sysColorBrandNeutralMutedWhite }
    public override var colorBackgroundEmphasizedPrimaryDark: ColorSemanticToken? { sysColorBrandNeutralMutedWhite }

    public override var colorBackgroundEmphasizedSecondaryLight: ColorSemanticToken? { sysColorBrandNeutralMutedLowest }
    public override var colorBackgroundEmphasizedSecondaryDark: ColorSemanticToken? { sysColorBrandNeutralMutedLowest }

    public override var colorBackgroundBrandPrimaryLight: ColorSemanticToken? { sysColorBrandPrimaryDefault }
    public override var colorBackgroundBrandPrimaryDark: ColorSemanticToken? { sysColorBrandPrimaryDefault }

    public override var colorBackgroundStatusAttractiveMutedLight: ColorSemanticToken? { sysColorBrandAttractiveLowest }
    public override var colorBackgroundStatusAttractiveMutedDark: ColorSemanticToken? { sysColorBrandAttractiveLowest }

    public override var colorBackgroundStatusAttractiveEmphasizedLight: ColorSemanticToken? { sysColorBrandWarningDefault }
    public override var colorBackgroundStatusAttractiveEmphasizedDark: ColorSemanticToken? { sysColorBrandWarningDefault }

    public override var colorBackgroundStatusWarningMutedLight: ColorSemanticToken? { sysColorBrandWarningLowest }
    public override var colorBackgroundStatusWarningMutedDark: ColorSemanticToken? { sysColorBrandWarningLowest }

    public override var colorBackgroundStatusWarningEmphasizedLight: ColorSemanticToken? { sysColorBrandWarningDefault }
    public override var colorBackgroundStatusWarningEmphasizedDark: ColorSemanticToken? { sysColorBrandWarningDefault }

    public override var colorBackgroundStatusNegativeMutedLight: ColorSemanticToken? { sysColorBrandNegativeLowest }
    public override var colorBackgroundStatusNegativeMutedDark: ColorSemanticToken? { sysColorBrandNegativeLowest }

    public override var colorBackgroundStatusNegativeEmphasizedLight: ColorSemanticToken? { sysColorBrandNegativeDefault }
    public override var colorBackgroundStatusNegativeEmphasizedDark: ColorSemanticToken? { sysColorBrandNegativeDefault }

    public override var colorBackgroundStatusPositiveMutedLight: ColorSemanticToken? { sysColorBrandPositiveLowest }
    public override var colorBackgroundStatusPositiveMutedDark: ColorSemanticToken? { sysColorBrandPositiveLowest }

    public override var colorBackgroundStatusPositiveEmphasizedLight: ColorSemanticToken? { sysColorBrandPositiveDefault }
    public override var colorBackgroundStatusPositiveEmphasizedDark: ColorSemanticToken? { sysColorBrandPositiveDefault }

    public override var colorBackgroundStatusInformationMutedLight: ColorSemanticToken? { sysColorBrandInformationLowest }
    public override var colorBackgroundStatusInformationMutedDark: ColorSemanticToken? { sysColorBrandInformationLowest }

    public override var colorBackgroundStatusInformationEmphasizedLight: ColorSemanticToken? { sysColorBrandPositiveLowest }
    public override var colorBackgroundStatusInformationEmphasizedDark: ColorSemanticToken? { sysColorBrandPositiveLowest }

    public override var colorContentDefaultLight: ColorSemanticToken? { sysColorBrandNeutralMutedWhite }
    public override var colorContentDefaultDark: ColorSemanticToken? { sysColorBrandNeutralMutedWhite }

    public override var colorContentDefaultOnBackgroundEmphasizedLight: ColorSemanticToken? { sysColorBrandNeutralEmphasizedBlack }
    public override var colorContentDefaultOnBackgroundEmphasizedDark: ColorSemanticToken? { sysColorBrandNeutralEmphasizedBlack }

    public override var colorContentMutedLight: ColorSemanticToken? { sysColorBrandNeutralEmphasizedMedium }
    public override var colorContentMutedDark: ColorSemanticToken? { sysColorBrandNeutralEmphasizedMedium }

    public override var colorContentMutedOnBackgroundEmphasizedLight: ColorSemanticToken? { sysColorBrandNeutralEmphasizedLowest }
    public override var colorContentMutedOnBackgroundEmphasizedDark: ColorSemanticToken? { sysColorBrandNeutralEmphasizedLowest }

    public override var colorContentBrandPrimaryLight: ColorSemanticToken? { sysColorBrandPrimaryLow }
    public override var colorContentBrandPrimaryDark: ColorSemanticToken? { sysColorBrandPrimaryLow }

    public override var colorContentBrandPrimaryOnBackgroundEmphasizedLight: ColorSemanticToken? { sysColorBrandPrimaryDefault }
    public override var colorContentBrandPrimaryOnBackgroundEmphasizedDark: ColorSemanticToken? { sysColorBrandPrimaryDefault }

    public override var colorContentBrandSecondaryLight: ColorSemanticToken? { nil }
    public override var colorContentBrandSecondaryDark: ColorSemanticToken? { nil }

    public override var colorContentBrandTertiaryLight: ColorSemanticToken? { nil }
    public override var colorContentBrandTertiaryDark: ColorSemanticToken? { nil }

    public override var colorContentStatusAttractiveLight: ColorSemanticToken? { nil }
    public override var colorContentStatusAttractiveDark: ColorSemanticToken? { nil }

    public override var colorContentStatusNegativeLight: ColorSemanticToken? { sysColorBrandNegativeDefault }
    public override var colorContentStatusNegativeDark: ColorSemanticToken? { sysColorBrandNegativeDefault }

    public override var colorContentStatusPositiveLight: ColorSemanticToken? { sysColorBrandPositiveDefault }
    public override var colorContentStatusPositiveDark: ColorSemanticToken? { sysColorBrandPositiveDefault }

    public override var colorContentStatusInformationLight: ColorSemanticToken? { sysColorBrandInformationDefault }
    public override var colorContentStatusInformationDark: ColorSemanticToken? { sysColorBrandInformationDefault }

    public override var colorBorderDefaultLight: ColorSemanticToken? { sysColorBrandNeutralEmphasizedLowest }
    public override var colorBorderDefaultDark: ColorSemanticToken? { sysColorBrandNeutralEmphasizedLowest }

    public override var colorBorderDefaultOnBackgroundEmphasizedLight: ColorSemanticToken? { sysColorBrandNeutralMutedMedium }
    public override var colorBorderDefaultOnBackgroundEmphasizedDark: ColorSemanticToken? { sysColorBrandNeutralMutedMedium }

    public override var colorBorderEmphasizedLight: ColorSemanticToken? { sysColorBrandNeutralMutedWhite }
    public override var colorBorderEmphasizedDark: ColorSemanticToken? { sysColorBrandNeutralMutedWhite }

    public override var colorBorderEmphasizedOnBackgroundEmphasizedLight: ColorSemanticToken? { sysColorBrandNeutralEmphasizedBlack }
    public override var colorBorderEmphasizedOnBackgroundEmphasizedDark: ColorSemanticToken? { sysColorBrandNeutralEmphasizedBlack }

    public override var colorBorderBrandPrimaryLight: ColorSemanticToken? { sysColorBrandPrimaryLow }
    public override var colorBorderBrandPrimaryDark: ColorSemanticToken? { sysColorBrandPrimaryLow }

    public override var colorBorderBrandPrimaryOnBackgroundEmphasizedLight: ColorSemanticToken? { sysColorBrandPrimaryDefault }
    public override var colorBorderBrandPrimaryOnBackgroundEmphasizedDark: ColorSemanticToken? { sysColorBrandPrimaryDefault }

    public override var colorBorderBrandSecondaryLight: ColorSemanticToken? { nil }
    public override var colorBorderBrandSecondaryDark: ColorSemanticToken? { nil }

    public override var colorBorderBrandTertiaryLight: ColorSemanticToken? { nil }
    public override var colorBorderBrandTertiaryDark: ColorSemanticToken? { nil }

    public override var colorBorderBrandStatusAttractiveLight: ColorSemanticToken? { nil }
    public override var colorBorderBrandStatusAttractiveDark: ColorSemanticToken? { nil }

    public override var colorBorderBrandStatusWarningLight: ColorSemanticToken? { nil }
    public override var colorBorderBrandStatusWarningDark: ColorSemanticToken? { nil }

    public override var colorBorderBrandStatusNegativeLight: ColorSemanticToken? { nil }
    public override var colorBorderBrandStatusNegativeDark: ColorSemanticToken? { nil }

    public override var colorBorderBrandStatusPositiveLight: ColorSemanticToken? { nil }
    public override var colorBorderBrandStatusPositiveDark: ColorSemanticToken? { nil }

    public override var colorBorderBrandStatusInformationLight: ColorSemanticToken? { nil }
    public override var colorBorderBrandStatusInformationDark: ColorSemanticToken? { nil }

    public override var colorOnBackgroundPrimaryLight: ColorSemanticToken? { sysColorBrandNeutralMutedWhite }
    public override var colorOnBackgroundPrimaryDark: ColorSemanticToken? { sysColorBrandNeutralMutedWhite }

    public override var colorOnBackgroundSecondaryLight: ColorSemanticToken? { nil }
    public override var colorOnBackgroundSecondaryDark: ColorSemanticToken? { nil }

    public override var colorOnBackgroundTertiaryLight: ColorSemanticToken? { nil }
    public override var colorOnBackgroundTertiaryDark: ColorSemanticToken? { nil }

    public override var colorOnBackgroundStatusAttractiveMutedLight: ColorSemanticToken? { sysColorBrandNeutralEmphasizedBlack }
    public override var colorOnBackgroundStatusAttractiveMutedDark: ColorSemanticToken? { sysColorBrandNeutralEmphasizedBlack }

    public override var colorOnBackgroundStatusAttractiveEmphasizedLight: ColorSemanticToken? { sysColorBrandNeutralEmphasizedBlack }
    public override var colorOnBackgroundStatusAttractiveEmphasizedDark: ColorSemanticToken? { sysColorBrandNeutralEmphasizedBlack }

    public override var colorOnBackgroundStatusWarningMutedLight: ColorSemanticToken? { sysColorBrandNeutralEmphasizedBlack }
    public override var colorOnBackgroundStatusWarningMutedDark: ColorSemanticToken? { sysColorBrandNeutralEmphasizedBlack }

    public override var colorOnBackgroundStatusWarningEmphasizedLight: ColorSemanticToken? { sysColorBrandNeutralEmphasizedBlack }
    public override var colorOnBackgroundStatusWarningEmphasizedDark: ColorSemanticToken? { sysColorBrandNeutralEmphasizedBlack }

    public override var colorOnBackgroundStatusNegativeMutedLight: ColorSemanticToken? { sysColorBrandNeutralEmphasizedBlack }
    public override var colorOnBackgroundStatusNegativeMutedDark: ColorSemanticToken? { sysColorBrandNeutralEmphasizedBlack }

    public override var colorOnBackgroundStatusNegativeEmphasizedLight: ColorSemanticToken? { sysColorBrandNeutralMutedWhite }
    public override var colorOnBackgroundStatusNegativeEmphasizedDark: ColorSemanticToken? { sysColorBrandNeutralMutedWhite }

    public override var colorOnBackgroundStatusPositiveMutedLight: ColorSemanticToken? { sysColorBrandNeutralEmphasizedBlack }
    public override var colorOnBackgroundStatusPositiveMutedDark: ColorSemanticToken? { sysColorBrandNeutralEmphasizedBlack }

    public override var colorOnBackgroundStatusPositiveEmphasizedLight: ColorSemanticToken? { sysColorBrandNeutralEmphasizedBlack }
    public override var colorOnBackgroundStatusPositiveEmphasizedDark: ColorSemanticToken? { sysColorBrandNeutralEmphasizedBlack }

    public override var colorOnBackgroundStatusInformationMutedLight: ColorSemanticToken? { sysColorBrandNeutralEmphasizedBlack }
    public override var colorOnBackgroundStatusInformationMutedDark: ColorSemanticToken? { sysColorBrandNeutralEmphasizedBlack }

    public override var colorOnBackgroundStatusInformationEmphasizedLight: ColorSemanticToken? { sysColorBrandNeutralEmphasizedBlack }
    public override var colorOnBackgroundStatusInformationEmphasizedDark: ColorSemanticToken? { sysColorBrandNeutralEmphasizedBlack }
}
