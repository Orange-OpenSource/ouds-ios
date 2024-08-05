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

    public override var colorBackgroundDefaultPrimaryLight: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }
    public override var colorBackgroundDefaultPrimaryDark: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }

    public override var colorBackgroundDefaultSecondaryLight: ColorSemanticToken? { sysColorBrandNeutralEmphasisMedium }
    public override var colorBackgroundDefaultSecondaryDark: ColorSemanticToken? { sysColorBrandNeutralEmphasisMedium }

    public override var colorBackgroundDefaultTertiaryLight: ColorSemanticToken? { sysColorBrandAttractiveHighest }
    public override var colorBackgroundDefaultTertiaryDark: ColorSemanticToken? { sysColorBrandAttractiveHighest }

    public override var colorBackgroundEmphasisPrimaryLight: ColorSemanticToken? { sysColorBrandNeutralMutedWhite }
    public override var colorBackgroundEmphasisPrimaryDark: ColorSemanticToken? { sysColorBrandNeutralMutedWhite }

    public override var colorBackgroundEmphasisSecondaryLight: ColorSemanticToken? { sysColorBrandNeutralMutedLowest }
    public override var colorBackgroundEmphasisSecondaryDark: ColorSemanticToken? { sysColorBrandNeutralMutedLowest }

    public override var colorBackgroundBrandPrimaryLight: ColorSemanticToken? { sysColorBrandPrimaryDefault }
    public override var colorBackgroundBrandPrimaryDark: ColorSemanticToken? { sysColorBrandPrimaryDefault }

    public override var colorBackgroundStatusAttractiveMutedLight: ColorSemanticToken? { sysColorBrandAttractiveLowest }
    public override var colorBackgroundStatusAttractiveMutedDark: ColorSemanticToken? { sysColorBrandAttractiveLowest }

    public override var colorBackgroundStatusAttractiveEmphasisLight: ColorSemanticToken? { sysColorBrandWarningDefault }
    public override var colorBackgroundStatusAttractiveEmphasisDark: ColorSemanticToken? { sysColorBrandWarningDefault }

    public override var colorBackgroundStatusWarningMutedLight: ColorSemanticToken? { sysColorBrandWarningLowest }
    public override var colorBackgroundStatusWarningMutedDark: ColorSemanticToken? { sysColorBrandWarningLowest }

    public override var colorBackgroundStatusWarningEmphasisLight: ColorSemanticToken? { sysColorBrandWarningDefault }
    public override var colorBackgroundStatusWarningEmphasisDark: ColorSemanticToken? { sysColorBrandWarningDefault }

    public override var colorBackgroundStatusNegativeMutedLight: ColorSemanticToken? { sysColorBrandNegativeLowest }
    public override var colorBackgroundStatusNegativeMutedDark: ColorSemanticToken? { sysColorBrandNegativeLowest }

    public override var colorBackgroundStatusNegativeEmphasisLight: ColorSemanticToken? { sysColorBrandNegativeDefault }
    public override var colorBackgroundStatusNegativeEmphasisDark: ColorSemanticToken? { sysColorBrandNegativeDefault }

    public override var colorBackgroundStatusPositiveMutedLight: ColorSemanticToken? { sysColorBrandPositiveLowest }
    public override var colorBackgroundStatusPositiveMutedDark: ColorSemanticToken? { sysColorBrandPositiveLowest }

    public override var colorBackgroundStatusPositiveEmphasisLight: ColorSemanticToken? { sysColorBrandPositiveDefault }
    public override var colorBackgroundStatusPositiveEmphasisDark: ColorSemanticToken? { sysColorBrandPositiveDefault }

    public override var colorBackgroundStatusInformationMutedLight: ColorSemanticToken? { sysColorBrandInformationLowest }
    public override var colorBackgroundStatusInformationMutedDark: ColorSemanticToken? { sysColorBrandInformationLowest }

    public override var colorBackgroundStatusInformationEmphasisLight: ColorSemanticToken? { sysColorBrandPositiveLowest }
    public override var colorBackgroundStatusInformationEmphasisDark: ColorSemanticToken? { sysColorBrandPositiveLowest }

    public override var colorContentDefaultLight: ColorSemanticToken? { sysColorBrandNeutralMutedWhite }
    public override var colorContentDefaultDark: ColorSemanticToken? { sysColorBrandNeutralMutedWhite }

    public override var colorContentDefaultOnBackgroundEmphasisLight: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }
    public override var colorContentDefaultOnBackgroundEmphasisDark: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }

    public override var colorContentMutedLight: ColorSemanticToken? { sysColorBrandNeutralEmphasisMedium }
    public override var colorContentMutedDark: ColorSemanticToken? { sysColorBrandNeutralEmphasisMedium }

    public override var colorContentMutedOnBackgroundEmphasisLight: ColorSemanticToken? { sysColorBrandNeutralEmphasisLowest }
    public override var colorContentMutedOnBackgroundEmphasisDark: ColorSemanticToken? { sysColorBrandNeutralEmphasisLowest }

    public override var colorContentBrandPrimaryLight: ColorSemanticToken? { sysColorBrandPrimaryLow }
    public override var colorContentBrandPrimaryDark: ColorSemanticToken? { sysColorBrandPrimaryLow }

    public override var colorContentBrandPrimaryOnBackgroundEmphasisLight: ColorSemanticToken? { sysColorBrandPrimaryDefault }
    public override var colorContentBrandPrimaryOnBackgroundEmphasisDark: ColorSemanticToken? { sysColorBrandPrimaryDefault }

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

    public override var colorBorderDefaultLight: ColorSemanticToken? { sysColorBrandNeutralEmphasisLowest }
    public override var colorBorderDefaultDark: ColorSemanticToken? { sysColorBrandNeutralEmphasisLowest }

    public override var colorBorderDefaultOnBackgroundEmphasisLight: ColorSemanticToken? { sysColorBrandNeutralMutedMedium }
    public override var colorBorderDefaultOnBackgroundEmphasisDark: ColorSemanticToken? { sysColorBrandNeutralMutedMedium }

    public override var colorBorderEmphasisLight: ColorSemanticToken? { sysColorBrandNeutralMutedWhite }
    public override var colorBorderEmphasisDark: ColorSemanticToken? { sysColorBrandNeutralMutedWhite }

    public override var colorBorderEmphasisOnBackgroundEmphasisLight: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }
    public override var colorBorderEmphasisOnBackgroundEmphasisDark: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }

    public override var colorBorderBrandPrimaryLight: ColorSemanticToken? { sysColorBrandPrimaryLow }
    public override var colorBorderBrandPrimaryDark: ColorSemanticToken? { sysColorBrandPrimaryLow }

    public override var colorBorderBrandPrimaryOnBackgroundEmphasisLight: ColorSemanticToken? { sysColorBrandPrimaryDefault }
    public override var colorBorderBrandPrimaryOnBackgroundEmphasisDark: ColorSemanticToken? { sysColorBrandPrimaryDefault }

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

    public override var colorOnBackgroundStatusAttractiveMutedLight: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }
    public override var colorOnBackgroundStatusAttractiveMutedDark: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }

    public override var colorOnBackgroundStatusAttractiveEmphasisLight: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }
    public override var colorOnBackgroundStatusAttractiveEmphasisDark: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }

    public override var colorOnBackgroundStatusWarningMutedLight: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }
    public override var colorOnBackgroundStatusWarningMutedDark: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }

    public override var colorOnBackgroundStatusWarningEmphasisLight: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }
    public override var colorOnBackgroundStatusWarningEmphasisDark: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }

    public override var colorOnBackgroundStatusNegativeMutedLight: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }
    public override var colorOnBackgroundStatusNegativeMutedDark: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }

    public override var colorOnBackgroundStatusNegativeEmphasisLight: ColorSemanticToken? { sysColorBrandNeutralMutedWhite }
    public override var colorOnBackgroundStatusNegativeEmphasisDark: ColorSemanticToken? { sysColorBrandNeutralMutedWhite }

    public override var colorOnBackgroundStatusPositiveMutedLight: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }
    public override var colorOnBackgroundStatusPositiveMutedDark: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }

    public override var colorOnBackgroundStatusPositiveEmphasisLight: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }
    public override var colorOnBackgroundStatusPositiveEmphasisDark: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }

    public override var colorOnBackgroundStatusInformationMutedLight: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }
    public override var colorOnBackgroundStatusInformationMutedDark: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }

    public override var colorOnBackgroundStatusInformationEmphasisLight: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }
    public override var colorOnBackgroundStatusInformationEmphasisDark: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }
}
