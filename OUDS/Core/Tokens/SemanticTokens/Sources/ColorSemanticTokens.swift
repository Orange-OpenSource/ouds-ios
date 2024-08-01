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
import SwiftUI
import OUDSTokensPrimitive

// MARK: - Type aliases to keep grammar clear

public typealias ColorSemanticToken = String
public typealias ColorAliasSemanticToken = String

// MARK: - Semantic tokens

public protocol ColorSemanticTokens {

    // MARK: Semantic token - Colors - Alias - Primary

    var sysColorBrandPrimaryLowest: ColorAliasSemanticToken? { get set }
    var sysColorBrandPrimaryLower: ColorAliasSemanticToken? { get set }
    var sysColorBrandPrimaryLow: ColorAliasSemanticToken? { get set }
    var sysColorBrandPrimaryDefault: ColorAliasSemanticToken? { get set }
    var sysColorBrandPrimaryHigh: ColorAliasSemanticToken? { get set }
    var sysColorBrandPrimaryHigher: ColorAliasSemanticToken? { get set }
    var sysColorBrandPrimaryHighest: ColorAliasSemanticToken? { get set }

    // MARK: Semantic token - Colors - Alias - Secondary

    var sysColorBrandSecondaryLowest: ColorAliasSemanticToken? { get set }
    var sysColorBrandSecondaryLower: ColorAliasSemanticToken? { get set }
    var sysColorBrandSecondaryLow: ColorAliasSemanticToken? { get set }
    var sysColorBrandSecondaryDefault: ColorAliasSemanticToken? { get set }
    var sysColorBrandSecondaryHigh: ColorAliasSemanticToken? { get set }
    var sysColorBrandSecondaryHigher: ColorAliasSemanticToken? { get set }
    var sysColorBrandSecondaryHighest: ColorAliasSemanticToken? { get set }

    // MARK: Semantic token - Colors - Alias - Tertiary

    var sysColorBrandTertiaryLowest: ColorAliasSemanticToken? { get set }
    var sysColorBrandTertiaryLower: ColorAliasSemanticToken? { get set }
    var sysColorBrandTertiaryLow: ColorAliasSemanticToken? { get set }
    var sysColorBrandTertiaryDefault: ColorAliasSemanticToken? { get set }
    var sysColorBrandTertiaryHigh: ColorAliasSemanticToken? { get set }
    var sysColorBrandTertiaryHigher: ColorAliasSemanticToken? { get set }
    var sysColorBrandTertiaryHighest: ColorAliasSemanticToken? { get set }

    // MARK: Semantic token - Colors - Alias - Neutral - Muted

    var sysColorBrandNeutralMutedWhite: ColorAliasSemanticToken? { get set }
    var sysColorBrandNeutralMutedLowest: ColorAliasSemanticToken? { get set }
    var sysColorBrandNeutralMutedLower: ColorAliasSemanticToken? { get set }
    var sysColorBrandNeutralMutedLow: ColorAliasSemanticToken? { get set }
    var sysColorBrandNeutralMutedMedium: ColorAliasSemanticToken? { get set }
    var sysColorBrandNeutralMutedHigh: ColorAliasSemanticToken? { get set }
    var sysColorBrandNeutralMutedHigher: ColorAliasSemanticToken? { get set }
    var sysColorBrandNeutralMutedHighest: ColorAliasSemanticToken? { get set }

    // MARK: Semantic token - Colors - Alias - Neutral - Emphasis

    var sysColorBrandNeutralEmphasisLowest: ColorAliasSemanticToken? { get set }
    var sysColorBrandNeutralEmphasisLower: ColorAliasSemanticToken? { get set }
    var sysColorBrandNeutralEmphasisLow: ColorAliasSemanticToken? { get set }
    var sysColorBrandNeutralEmphasisMedium: ColorAliasSemanticToken? { get set }
    var sysColorBrandNeutralEmphasisHigh: ColorAliasSemanticToken? { get set }
    var sysColorBrandNeutralEmphasisHigher: ColorAliasSemanticToken? { get set }
    var sysColorBrandNeutralEmphasisHighest: ColorAliasSemanticToken? { get set }
    var sysColorBrandNeutralEmphasisBlack: ColorAliasSemanticToken? { get set }

    // MARK: Semantic token - Colors - Alias - Positive

    var sysColorBrandPositiveLowest: ColorAliasSemanticToken? { get set }
    var sysColorBrandPositiveLower: ColorAliasSemanticToken? { get set }
    var sysColorBrandPositiveLow: ColorAliasSemanticToken? { get set }
    var sysColorBrandPositiveDefault: ColorAliasSemanticToken? { get set }
    var sysColorBrandPositiveHigh: ColorAliasSemanticToken? { get set }
    var sysColorBrandPositiveHigher: ColorAliasSemanticToken? { get set }
    var sysColorBrandPositiveHighest: ColorAliasSemanticToken? { get set }

    // MARK: Semantic token - Colors - Alias - Information

    var sysColorBrandInformationLowest: ColorAliasSemanticToken? { get set }
    var sysColorBrandInformationLower: ColorAliasSemanticToken? { get set }
    var sysColorBrandInformationLow: ColorAliasSemanticToken? { get set }
    var sysColorBrandInformationDefault: ColorAliasSemanticToken? { get set }
    var sysColorBrandInformationHigh: ColorAliasSemanticToken? { get set }
    var sysColorBrandInformationHigher: ColorAliasSemanticToken? { get set }
    var sysColorBrandInformationHighest: ColorAliasSemanticToken? { get set }

    // MARK: Semantic token - Colors - Alias - Warning

    var sysColorBrandWarningLowest: ColorAliasSemanticToken? { get set }
    var sysColorBrandWarningLower: ColorAliasSemanticToken? { get set }
    var sysColorBrandWarningLow: ColorAliasSemanticToken? { get set }
    var sysColorBrandWarningDefault: ColorAliasSemanticToken? { get set }
    var sysColorBrandWarningHigh: ColorAliasSemanticToken? { get set }
    var sysColorBrandWarningHigher: ColorAliasSemanticToken? { get set }
    var sysColorBrandWarningHighest: ColorAliasSemanticToken? { get set }

    // MARK: Semantic token - Colors - Alias - Negative

    var sysColorBrandNegativeLowest: ColorAliasSemanticToken? { get set }
    var sysColorBrandNegativeLower: ColorAliasSemanticToken? { get set }
    var sysColorBrandNegativeLow: ColorAliasSemanticToken? { get set }
    var sysColorBrandNegativeDefault: ColorAliasSemanticToken? { get set }
    var sysColorBrandNegativeHigh: ColorAliasSemanticToken? { get set }
    var sysColorBrandNegativeHigher: ColorAliasSemanticToken? { get set }
    var sysColorBrandNegativeHighest: ColorAliasSemanticToken? { get set }

    // MARK: Semantic token - Colors - Alias - Attractive

    var sysColorBrandAttractiveLowest: ColorAliasSemanticToken? { get set }
    var sysColorBrandAttractiveLower: ColorAliasSemanticToken? { get set }
    var sysColorBrandAttractiveLow: ColorAliasSemanticToken? { get set }
    var sysColorBrandAttractiveMedium: ColorAliasSemanticToken? { get set }
    var sysColorBrandAttractiveHigh: ColorAliasSemanticToken? { get set }
    var sysColorBrandAttractiveHigher: ColorAliasSemanticToken? { get set }
    var sysColorBrandAttractiveHighest: ColorAliasSemanticToken? { get set }

    // MARK: Semantic token - Colors - Background - Default - Primary

    var colorBackgroundDefaultPrimaryLight: ColorSemanticToken? { get set }
    var colorBackgroundDefaultPrimaryInverse: ColorSemanticToken? { get set }
    var colorBackgroundDefaultPrimaryDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - Background - Default - Secondary

    var colorBackgroundDefaultSecondaryLight: ColorSemanticToken? { get set }
    var colorBackgroundDefaultSecondaryInverse: ColorSemanticToken? { get set }
    var colorBackgroundDefaultSecondaryDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - Background - Default - Tertiary

    var colorBackgroundDefaultTertiaryLight: ColorSemanticToken? { get set }
    var colorBackgroundDefaultTertiaryInverse: ColorSemanticToken? { get set }
    var colorBackgroundDefaultTertiaryDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - Background - Emphasis - Primary

    var colorBackgroundEmphasisPrimaryLight: ColorSemanticToken? { get set }
    var colorBackgroundEmphasisPrimaryInverse: ColorSemanticToken? { get set }
    var colorBackgroundEmphasisPrimaryDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - Background - Emphasis - Secondary

    var colorBackgroundEmphasisSecondaryLight: ColorSemanticToken? { get set }
    var colorBackgroundEmphasisSecondaryInverse: ColorSemanticToken? { get set }
    var colorBackgroundEmphasisSecondaryDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - Background - Brand - Primary

    var colorBackgroundBrandPrimaryLight: ColorSemanticToken? { get set }
    var colorBackgroundBrandPrimaryInverse: ColorSemanticToken? { get set }
    var colorBackgroundBrandPrimaryDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - Background - Brand - Secondary

    var colorBackgroundBrandSecondary: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - Background - Brand - Tertiary

    var colorBackgroundBrandTertiary: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - Background - Status - Attractive - Muted

    var colorBackgroundStatusAttractiveMutedLight: ColorSemanticToken? { get set }
    var colorBackgroundStatusAttractiveMutedInverse: ColorSemanticToken? { get set }
    var colorBackgroundStatusAttractiveMutedDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - Background - Status - Attractive - Emphasis

    var colorBackgroundStatusAttractiveEmphasisLight: ColorSemanticToken? { get set }
    var colorBackgroundStatusAttractiveEmphasisInverse: ColorSemanticToken? { get set }
    var colorBackgroundStatusAttractiveEmphasisDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - Background - Status - Warning - Muted

    var colorBackgroundStatusWarningMutedLight: ColorSemanticToken? { get set }
    var colorBackgroundStatusWarningMutedInverse: ColorSemanticToken? { get set }
    var colorBackgroundStatusWarningMutedDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - Background - Status - Warning - Emphasis

    var colorBackgroundStatusWarningEmphasisLight: ColorSemanticToken? { get set }
    var colorBackgroundStatusWarningEmphasisInverse: ColorSemanticToken? { get set }
    var colorBackgroundStatusWarningEmphasisDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - Background - Status - Negative - Muted

    var colorBackgroundStatusNegativeMutedLight: ColorSemanticToken? { get set }
    var colorBackgroundStatusNegativeMutedInverse: ColorSemanticToken? { get set }
    var colorBackgroundStatusNegativeMutedDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - Background - Status - Negative - Emphasis

    var colorBackgroundStatusNegativeEmphasisLight: ColorSemanticToken? { get set }
    var colorBackgroundStatusNegativeEmphasisInverse: ColorSemanticToken? { get set }
    var colorBackgroundStatusNegativeEmphasisDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - Background - Status - Positive - Muted

    var colorBackgroundStatusPositiveMutedLight: ColorSemanticToken? { get set }
    var colorBackgroundStatusPositiveMutedInverse: ColorSemanticToken? { get set }
    var colorBackgroundStatusPositiveMutedDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - Background - Status - Positive - Emphasis

    var colorBackgroundStatusPositiveEmphasisLight: ColorSemanticToken? { get set }
    var colorBackgroundStatusPositiveEmphasisInverse: ColorSemanticToken? { get set }
    var colorBackgroundStatusPositiveEmphasisDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - Background - Status - Information - Muted

    var colorBackgroundStatusInformationMutedLight: ColorSemanticToken? { get set }
    var colorBackgroundStatusInformationMutedInverse: ColorSemanticToken? { get set }
    var colorBackgroundStatusInformationMutedDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - Background - Status - Information - Emphasis

    var colorBackgroundStatusInformationEmphasisLight: ColorSemanticToken? { get set }
    var colorBackgroundStatusInformationEmphasisInverse: ColorSemanticToken? { get set }
    var colorBackgroundStatusInformationEmphasisDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - Content - Default

    var colorContentDefaultLight: ColorSemanticToken? { get set }
    var colorContentDefaultInverse: ColorSemanticToken? { get set }
    var colorContentDefaultDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - Content - Default - On background emphasis

    var colorContentDefaultOnBackgroundEmphasisLight: ColorSemanticToken? { get set }
    var colorContentDefaultOnBackgroundEmphasisInverse: ColorSemanticToken? { get set }
    var colorContentDefaultOnBackgroundEmphasisDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - Content - Muted

    var colorContentMutedLight: ColorSemanticToken? { get set }
    var colorContentMutedInverse: ColorSemanticToken? { get set }
    var colorContentMutedDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - Content - Muted - On background emphasis

    var colorContentMutedOnBackgroundEmphasisLight: ColorSemanticToken? { get set }
    var colorContentMutedOnBackgroundEmphasisInverse: ColorSemanticToken? { get set }
    var colorContentMutedOnBackgroundEmphasisDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - Content - Brand - Primary

    var colorContentBrandPrimaryLight: ColorSemanticToken? { get set }
    var colorContentBrandPrimaryInverse: ColorSemanticToken? { get set }
    var colorContentBrandPrimaryDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - Content - Brand - Primary - On background emphasis

    var colorContentBrandPrimaryOnBackgroundEmphasisLight: ColorSemanticToken? { get set }
    var colorContentBrandPrimaryOnBackgroundEmphasisInverse: ColorSemanticToken? { get set }
    var colorContentBrandPrimaryOnBackgroundEmphasisDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - Content - Brand - Secondary

    var colorContentBrandSecondaryLight: ColorSemanticToken? { get set }
    var colorContentBrandSecondaryInverse: ColorSemanticToken? { get set }
    var colorContentBrandSecondaryDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - Content - Brand - Tertiary

    var colorContentBrandTertiaryLight: ColorSemanticToken? { get set }
    var colorContentBrandTertiaryInverse: ColorSemanticToken? { get set }
    var colorContentBrandTertiaryDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - Content - Status - Attractive

    var colorContentStatusAttractiveLight: ColorSemanticToken? { get set }
    var colorContentStatusAttractiveInverse: ColorSemanticToken? { get set }
    var colorContentStatusAttractiveDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - Content - Status - Negative

    var colorContentStatusNegativeLight: ColorSemanticToken? { get set }
    var colorContentStatusNegativeInverse: ColorSemanticToken? { get set }
    var colorContentStatusNegativeDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - Content - Status - Positive

    var colorContentStatusPositiveLight: ColorSemanticToken? { get set }
    var colorContentStatusPositiveInverse: ColorSemanticToken? { get set }
    var colorContentStatusPositiveDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - Content - Status - Information

    var colorContentStatusInformationLight: ColorSemanticToken? { get set }
    var colorContentStatusInformationInverse: ColorSemanticToken? { get set }
    var colorContentStatusInformationDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - Border - Default

    var colorBorderDefaultLight: ColorSemanticToken? { get set }
    var colorBorderDefaultInverse: ColorSemanticToken? { get set }
    var colorBorderDefaultDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - Border - Default - On background emphasis

    var colorBorderDefaultOnBackgroundEmphasisLight: ColorSemanticToken? { get set }
    var colorBorderDefaultOnBackgroundEmphasisInverse: ColorSemanticToken? { get set }
    var colorBorderDefaultOnBackgroundEmphasisDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - Border - Emphasis

    var colorBorderEmphasisLight: ColorSemanticToken? { get set }
    var colorBorderEmphasisInverse: ColorSemanticToken? { get set }
    var colorBorderEmphasisDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - Border - Emphasis - On background emphasis

    var colorBorderEmphasisOnBackgroundEmphasisLight: ColorSemanticToken? { get set }
    var colorBorderEmphasisOnBackgroundEmphasisInverse: ColorSemanticToken? { get set }
    var colorBorderEmphasisOnBackgroundEmphasisDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - Border - Brand - Primary

    var colorBorderBrandPrimaryLight: ColorSemanticToken? { get set }
    var colorBorderBrandPrimaryInverse: ColorSemanticToken? { get set }
    var colorBorderBrandPrimaryDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - Border - Brand - Primary - On background emphasis

    var colorBorderBrandPrimaryOnBackgroundEmphasisLight: ColorSemanticToken? { get set }
    var colorBorderBrandPrimaryOnBackgroundEmphasisInverse: ColorSemanticToken? { get set }
    var colorBorderBrandPrimaryOnBackgroundEmphasisDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - Border - Brand - Secondary

    var colorBorderBrandSecondaryLight: ColorSemanticToken? { get set }
    var colorBorderBrandSecondaryInverse: ColorSemanticToken? { get set }
    var colorBorderBrandSecondaryDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - Border - Brand - Tertiary

    var colorBorderBrandTertiaryLight: ColorSemanticToken? { get set }
    var colorBorderBrandTertiaryInverse: ColorSemanticToken? { get set }
    var colorBorderBrandTertiaryDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - Border - Status - Attractive

    var colorBorderBrandStatusAttractiveLight: ColorSemanticToken? { get set }
    var colorBorderBrandStatusAttractiveInverse: ColorSemanticToken? { get set }
    var colorBorderBrandStatusAttractiveDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - Border - Status - Warning

    var colorBorderBrandStatusWarningLight: ColorSemanticToken? { get set }
    var colorBorderBrandStatusWarningInverse: ColorSemanticToken? { get set }
    var colorBorderBrandStatusWarningDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - Border - Status - Negative

    var colorBorderBrandStatusNegativeLight: ColorSemanticToken? { get set }
    var colorBorderBrandStatusNegativeInverse: ColorSemanticToken? { get set }
    var colorBorderBrandStatusNegativeDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - Border - Status - Positive

    var colorBorderBrandStatusPositiveLight: ColorSemanticToken? { get set }
    var colorBorderBrandStatusPositiveInverse: ColorSemanticToken? { get set }
    var colorBorderBrandStatusPositiveDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - Border - Status - Information

    var colorBorderBrandStatusInformationLight: ColorSemanticToken? { get set }
    var colorBorderBrandStatusInformationInverse: ColorSemanticToken? { get set }
    var colorBorderBrandStatusInformationDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - On background - Primary

    var colorOnBackgroundPrimaryLight: ColorSemanticToken? { get set }
    var colorOnBackgroundPrimaryInverse: ColorSemanticToken? { get set }
    var colorOnBackgroundPrimaryDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - On background - Secondary

    var colorOnBackgroundSecondaryLight: ColorSemanticToken? { get set }
    var colorOnBackgroundSecondaryInverse: ColorSemanticToken? { get set }
    var colorOnBackgroundSecondaryDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - On background - Tertiary

    var colorOnBackgroundTertiaryLight: ColorSemanticToken? { get set }
    var colorOnBackgroundTertiaryInverse: ColorSemanticToken? { get set }
    var colorOnBackgroundTertiaryDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - On background - Status - Attrative - Muted

    var colorOnBackgroundStatusAttractiveMutedLight: ColorSemanticToken? { get set }
    var colorOnBackgroundStatusAttractiveMutedInverse: ColorSemanticToken? { get set }
    var colorOnBackgroundStatusAttractiveMutedDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - On background - Status - Attrative - Emphasis

    var colorOnBackgroundStatusAttractiveEmphasisLight: ColorSemanticToken? { get set }
    var colorOnBackgroundStatusAttractiveEmphasisInverse: ColorSemanticToken? { get set }
    var colorOnBackgroundStatusAttractiveEmphasisDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - On background - Status - Warning - Muted

    var colorOnBackgroundStatusWarningMutedLight: ColorSemanticToken? { get set }
    var colorOnBackgroundStatusWarningMutedInverse: ColorSemanticToken? { get set }
    var colorOnBackgroundStatusWarningMutedDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - On background - Status - Warning - Emphasis

    var colorOnBackgroundStatusWarningEmphasisLight: ColorSemanticToken? { get set }
    var colorOnBackgroundStatusWarningEmphasisInverse: ColorSemanticToken? { get set }
    var colorOnBackgroundStatusWarningEmphasisDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - On background - Status - Negative - Muted

    var colorOnBackgroundStatusNegativeMutedLight: ColorSemanticToken? { get set }
    var colorOnBackgroundStatusNegativeMutedInverse: ColorSemanticToken? { get set }
    var colorOnBackgroundStatusNegativeMutedDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - On background - Status - Negative - Emphasis

    var colorOnBackgroundStatusNegativeEmphasisLight: ColorSemanticToken? { get set }
    var colorOnBackgroundStatusNegativeEmphasisInverse: ColorSemanticToken? { get set }
    var colorOnBackgroundStatusNegativeEmphasisDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - On background - Status - Positive - Muted

    var colorOnBackgroundStatusPositiveMutedLight: ColorSemanticToken? { get set }
    var colorOnBackgroundStatusPositiveMutedInverse: ColorSemanticToken? { get set }
    var colorOnBackgroundStatusPositiveMutedDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - On background - Status - Positive - Emphasis

    var colorOnBackgroundStatusPositiveEmphasisLight: ColorSemanticToken? { get set }
    var colorOnBackgroundStatusPositiveEmphasisInverse: ColorSemanticToken? { get set }
    var colorOnBackgroundStatusPositiveEmphasisDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - On background - Status - Information - Muted

    var colorOnBackgroundStatusInformationMutedLight: ColorSemanticToken? { get set }
    var colorOnBackgroundStatusInformationMutedInverse: ColorSemanticToken? { get set }
    var colorOnBackgroundStatusInformationMutedDark: ColorSemanticToken? { get set }

    // MARK: Semantic token - Colors - On background - Status - Information - Emphasis

    var colorOnBackgroundStatusInformationEmphasisLight: ColorSemanticToken? { get set }
    var colorOnBackgroundStatusInformationEmphasisInverse: ColorSemanticToken? { get set }
    var colorOnBackgroundStatusInformationEmphasisDark: ColorSemanticToken? { get set }

}
