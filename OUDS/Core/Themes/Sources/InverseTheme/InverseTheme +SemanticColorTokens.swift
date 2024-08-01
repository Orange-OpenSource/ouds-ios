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

/// Overrides some colors using values defined in extension of `ColorRawTokens` in this current module.
extension InverseTheme {

    var colorBackgroundDefaultPrimaryLight: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }
    var colorBackgroundDefaultPrimaryDark: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }

    var colorBackgroundDefaultSecondaryLight: ColorSemanticToken? { sysColorBrandNeutralEmphasisMedium }
    var colorBackgroundDefaultSecondaryDark: ColorSemanticToken? { sysColorBrandNeutralEmphasisMedium }

    var colorBackgroundDefaultTertiaryLight: ColorSemanticToken? { sysColorBrandAttractiveHighest }
    var colorBackgroundDefaultTertiaryDark: ColorSemanticToken? { sysColorBrandAttractiveHighest }

    var colorBackgroundEmphasisPrimaryLight: ColorSemanticToken? { sysColorBrandNeutralMutedWhite }
    var colorBackgroundEmphasisPrimaryDark: ColorSemanticToken? { sysColorBrandNeutralMutedWhite }

    var colorBackgroundEmphasisSecondaryLight: ColorSemanticToken? { sysColorBrandNeutralMutedLowest }
    var colorBackgroundEmphasisSecondaryDark: ColorSemanticToken? { sysColorBrandNeutralMutedLowest }

    var colorBackgroundBrandPrimaryLight: ColorSemanticToken? { sysColorBrandPrimaryDefault }
    var colorBackgroundBrandPrimaryDark: ColorSemanticToken? { sysColorBrandPrimaryDefault }

    var colorBackgroundStatusAttractiveMutedLight: ColorSemanticToken? { sysColorBrandAttractiveLowest }
    var colorBackgroundStatusAttractiveMutedDark: ColorSemanticToken? { sysColorBrandAttractiveLowest }

    var colorBackgroundStatusAttractiveEmphasisLight: ColorSemanticToken? { sysColorBrandWarningDefault }
    var colorBackgroundStatusAttractiveEmphasisDark: ColorSemanticToken? { sysColorBrandWarningDefault }

    var colorBackgroundStatusWarningMutedLight: ColorSemanticToken? { sysColorBrandWarningLowest }
    var colorBackgroundStatusWarningMutedDark: ColorSemanticToken? { sysColorBrandWarningLowest }

    var colorBackgroundStatusWarningEmphasisLight: ColorSemanticToken? { sysColorBrandWarningDefault }
    var colorBackgroundStatusWarningEmphasisDark: ColorSemanticToken? { sysColorBrandWarningDefault }

    var colorBackgroundStatusNegativeMutedLight: ColorSemanticToken? { sysColorBrandNegativeLowest }
    var colorBackgroundStatusNegativeMutedDark: ColorSemanticToken? { sysColorBrandNegativeLowest }

    var colorBackgroundStatusNegativeEmphasisLight: ColorSemanticToken? { sysColorBrandNegativeDefault }
    var colorBackgroundStatusNegativeEmphasisDark: ColorSemanticToken? { sysColorBrandNegativeDefault }
    
    var colorBackgroundStatusPositiveMutedLight: ColorSemanticToken? { sysColorBrandPositiveLowest }
    var colorBackgroundStatusPositiveMutedDark: ColorSemanticToken? { sysColorBrandPositiveLowest }

    var colorBackgroundStatusPositiveEmphasisLight: ColorSemanticToken? { sysColorBrandPositiveDefault }
    var colorBackgroundStatusPositiveEmphasisDark: ColorSemanticToken? { sysColorBrandPositiveDefault }
    
    var colorBackgroundStatusInformationMutedLight: ColorSemanticToken? { sysColorBrandInformationLowest }
    var colorBackgroundStatusInformationMutedDark: ColorSemanticToken? { sysColorBrandInformationLowest }
    
    var colorBackgroundStatusInformationEmphasisLight: ColorSemanticToken? { sysColorBrandPositiveLowest }
    var colorBackgroundStatusInformationEmphasisDark: ColorSemanticToken? { sysColorBrandPositiveLowest }

    var colorContentDefaultLight: ColorSemanticToken? { sysColorBrandNeutralMutedWhite }
    var colorContentDefaultDark: ColorSemanticToken? { sysColorBrandNeutralMutedWhite }

    var colorContentDefaultOnBackgroundEmphasisLight: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }
    var colorContentDefaultOnBackgroundEmphasisDark: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }

    var colorContentMutedLight: ColorSemanticToken? { sysColorBrandNeutralEmphasisMedium }
    var colorContentMutedDark: ColorSemanticToken? { sysColorBrandNeutralEmphasisMedium }

    var colorContentMutedOnBackgroundEmphasisLight: ColorSemanticToken? { sysColorBrandNeutralEmphasisLowest }
    var colorContentMutedOnBackgroundEmphasisDark: ColorSemanticToken? { sysColorBrandNeutralEmphasisLowest }

    var colorContentBrandPrimaryLight: ColorSemanticToken? { sysColorBrandPrimaryLow }
    var colorContentBrandPrimaryDark: ColorSemanticToken? { sysColorBrandPrimaryLow }
    
    var colorContentBrandPrimaryOnBackgroundEmphasisLight: ColorSemanticToken? { sysColorBrandPrimaryDefault }
    var colorContentBrandPrimaryOnBackgroundEmphasisDark: ColorSemanticToken? { sysColorBrandPrimaryDefault }

    var colorContentBrandSecondaryLight: ColorSemanticToken? { get }
    var colorContentBrandSecondaryDark: ColorSemanticToken? { get }

    var colorContentBrandTertiaryLight: ColorSemanticToken? { get }
    var colorContentBrandTertiaryDark: ColorSemanticToken? { get }

    var colorContentStatusAttractiveLight: ColorSemanticToken? { get }
    var colorContentStatusAttractiveDark: ColorSemanticToken? { get }

    var colorContentStatusNegativeLight: ColorSemanticToken? { sysColorBrandNegativeDefault }
    var colorContentStatusNegativeDark: ColorSemanticToken? { sysColorBrandNegativeDefault }

    var colorContentStatusPositiveLight: ColorSemanticToken? { sysColorBrandPositiveDefault }
    var colorContentStatusPositiveDark: ColorSemanticToken? { sysColorBrandPositiveDefault }
    
    var colorContentStatusInformationLight: ColorSemanticToken? { sysColorBrandInformationDefault }
    var colorContentStatusInformationDark: ColorSemanticToken? { sysColorBrandInformationDefault }

    var colorBorderDefaultLight: ColorSemanticToken? { sysColorBrandNeutralEmphasisLowest }
    var colorBorderDefaultDark: ColorSemanticToken? { sysColorBrandNeutralEmphasisLowest }

    var colorBorderDefaultOnBackgroundEmphasisLight: ColorSemanticToken? { sysColorBrandNeutralMutedMedium }
    var colorBorderDefaultOnBackgroundEmphasisDark: ColorSemanticToken? { sysColorBrandNeutralMutedMedium }

    var colorBorderEmphasisLight: ColorSemanticToken? { sysColorBrandNeutralMutedWhite }
    var colorBorderEmphasisDark: ColorSemanticToken? { sysColorBrandNeutralMutedWhite }

    var colorBorderEmphasisOnBackgroundEmphasisLight: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }
    var colorBorderEmphasisOnBackgroundEmphasisDark: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }

    var colorBorderBrandPrimaryLight: ColorSemanticToken? { sysColorBrandPrimaryLow }
    var colorBorderBrandPrimaryDark: ColorSemanticToken? { sysColorBrandPrimaryLow }

    var colorBorderBrandPrimaryOnBackgroundEmphasisLight: ColorSemanticToken? { sysColorBrandPrimaryDefault }
    var colorBorderBrandPrimaryOnBackgroundEmphasisDark: ColorSemanticToken? { sysColorBrandPrimaryDefault }

    var colorBorderBrandSecondaryLight: ColorSemanticToken? { get }
    var colorBorderBrandSecondaryDark: ColorSemanticToken? { get }

    var colorBorderBrandTertiaryLight: ColorSemanticToken? { get }
    var colorBorderBrandTertiaryDark: ColorSemanticToken? { get }

    var colorBorderBrandStatusAttractiveLight: ColorSemanticToken? { get }
    var colorBorderBrandStatusAttractiveDark: ColorSemanticToken? { get }

    var colorBorderBrandStatusWarningLight: ColorSemanticToken? { get }
    var colorBorderBrandStatusWarningDark: ColorSemanticToken? { get }

    var colorBorderBrandStatusNegativeLight: ColorSemanticToken? { get }
    var colorBorderBrandStatusNegativeDark: ColorSemanticToken? { get }

    var colorBorderBrandStatusPositiveLight: ColorSemanticToken? { get }
    var colorBorderBrandStatusPositiveDark: ColorSemanticToken? { get }

    var colorBorderBrandStatusInformationLight: ColorSemanticToken? { get }
    var colorBorderBrandStatusInformationDark: ColorSemanticToken? { get }

    var colorOnBackgroundPrimaryLight: ColorSemanticToken? { sysColorBrandNeutralMutedWhite }
    var colorOnBackgroundPrimaryDark: ColorSemanticToken? { sysColorBrandNeutralMutedWhite }

    var colorOnBackgroundSecondaryLight: ColorSemanticToken? { get }
    var colorOnBackgroundSecondaryDark: ColorSemanticToken? { get }

    var colorOnBackgroundTertiaryLight: ColorSemanticToken? { get }
    var colorOnBackgroundTertiaryDark: ColorSemanticToken? { get }

    var colorOnBackgroundStatusAttractiveMutedLight: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }
    var colorOnBackgroundStatusAttractiveMutedDark: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }
    
    var colorOnBackgroundStatusAttractiveEmphasisLight: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }
    var colorOnBackgroundStatusAttractiveEmphasisDark: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }

    var colorOnBackgroundStatusWarningMutedLight: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }
    var colorOnBackgroundStatusWarningMutedDark: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }

    var colorOnBackgroundStatusWarningEmphasisLight: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }
    var colorOnBackgroundStatusWarningEmphasisDark: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }

    var colorOnBackgroundStatusNegativeMutedLight: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }
    var colorOnBackgroundStatusNegativeMutedDark: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }

    var colorOnBackgroundStatusNegativeEmphasisLight: ColorSemanticToken? { sysColorBrandNeutralMutedWhite }
    var colorOnBackgroundStatusNegativeEmphasisDark: ColorSemanticToken? { sysColorBrandNeutralMutedWhite }

    var colorOnBackgroundStatusPositiveMutedLight: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }
    var colorOnBackgroundStatusPositiveMutedDark: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }

    var colorOnBackgroundStatusPositiveEmphasisLight: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }
    var colorOnBackgroundStatusPositiveEmphasisDark: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }

    var colorOnBackgroundStatusInformationMutedLight: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }
    var colorOnBackgroundStatusInformationMutedDark: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }

    var colorOnBackgroundStatusInformationEmphasisLight: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }
    var colorOnBackgroundStatusInformationEmphasisDark: ColorSemanticToken? { sysColorBrandNeutralEmphasisBlack }

}
