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
import OUDSTokensRaw

// MARK: - Type aliases to keep grammar clear

/// Basically a semantic color token, which can be either a functional or a decorative token, is a `String`
public typealias ColorSemanticToken = ColorRawToken

/// The global design system tool defines aliases of semantic colors token as semantic color tokens
public typealias ColorAliasSemanticToken = ColorSemanticToken

// MARK: - Semantic tokens

/// This is a group of semantic tokens for **colors**.
/// It defines all `ColorSemanticToken` and `ColorAliasSemanticToken` a theme must have.
public protocol ColorSemanticTokens {

    // MARK: Semantic token - Colors - Alias - Primary

    var sysColorBrandPrimaryLowest: ColorAliasSemanticToken? { get }
    var sysColorBrandPrimaryLower: ColorAliasSemanticToken? { get }
    var sysColorBrandPrimaryLow: ColorAliasSemanticToken? { get }
    var sysColorBrandPrimaryDefault: ColorAliasSemanticToken? { get }
    var sysColorBrandPrimaryHigh: ColorAliasSemanticToken? { get }
    var sysColorBrandPrimaryHigher: ColorAliasSemanticToken? { get }
    var sysColorBrandPrimaryHighest: ColorAliasSemanticToken? { get }

    // MARK: Semantic token - Colors - Alias - Secondary

    var sysColorBrandSecondaryLowest: ColorAliasSemanticToken? { get }
    var sysColorBrandSecondaryLower: ColorAliasSemanticToken? { get }
    var sysColorBrandSecondaryLow: ColorAliasSemanticToken? { get }
    var sysColorBrandSecondaryDefault: ColorAliasSemanticToken? { get }
    var sysColorBrandSecondaryHigh: ColorAliasSemanticToken? { get }
    var sysColorBrandSecondaryHigher: ColorAliasSemanticToken? { get }
    var sysColorBrandSecondaryHighest: ColorAliasSemanticToken? { get }

    // MARK: Semantic token - Colors - Alias - Tertiary

    var sysColorBrandTertiaryLowest: ColorAliasSemanticToken? { get }
    var sysColorBrandTertiaryLower: ColorAliasSemanticToken? { get }
    var sysColorBrandTertiaryLow: ColorAliasSemanticToken? { get }
    var sysColorBrandTertiaryDefault: ColorAliasSemanticToken? { get }
    var sysColorBrandTertiaryHigh: ColorAliasSemanticToken? { get }
    var sysColorBrandTertiaryHigher: ColorAliasSemanticToken? { get }
    var sysColorBrandTertiaryHighest: ColorAliasSemanticToken? { get }

    // MARK: Semantic token - Colors - Alias - Neutral - Muted

    var sysColorBrandNeutralMutedWhite: ColorAliasSemanticToken? { get }
    var sysColorBrandNeutralMutedLowest: ColorAliasSemanticToken? { get }
    var sysColorBrandNeutralMutedLower: ColorAliasSemanticToken? { get }
    var sysColorBrandNeutralMutedLow: ColorAliasSemanticToken? { get }
    var sysColorBrandNeutralMutedMedium: ColorAliasSemanticToken? { get }
    var sysColorBrandNeutralMutedHigh: ColorAliasSemanticToken? { get }
    var sysColorBrandNeutralMutedHigher: ColorAliasSemanticToken? { get }
    var sysColorBrandNeutralMutedHighest: ColorAliasSemanticToken? { get }

    // MARK: Semantic token - Colors - Alias - Neutral - Emphasis

    var sysColorBrandNeutralEmphasisLowest: ColorAliasSemanticToken? { get }
    var sysColorBrandNeutralEmphasisLower: ColorAliasSemanticToken? { get }
    var sysColorBrandNeutralEmphasisLow: ColorAliasSemanticToken? { get }
    var sysColorBrandNeutralEmphasisMedium: ColorAliasSemanticToken? { get }
    var sysColorBrandNeutralEmphasisHigh: ColorAliasSemanticToken? { get }
    var sysColorBrandNeutralEmphasisHigher: ColorAliasSemanticToken? { get }
    var sysColorBrandNeutralEmphasisHighest: ColorAliasSemanticToken? { get }
    var sysColorBrandNeutralEmphasisBlack: ColorAliasSemanticToken? { get }

    // MARK: Semantic token - Colors - Alias - Positive

    var sysColorBrandPositiveLowest: ColorAliasSemanticToken? { get }
    var sysColorBrandPositiveLower: ColorAliasSemanticToken? { get }
    var sysColorBrandPositiveLow: ColorAliasSemanticToken? { get }
    var sysColorBrandPositiveDefault: ColorAliasSemanticToken? { get }
    var sysColorBrandPositiveHigh: ColorAliasSemanticToken? { get }
    var sysColorBrandPositiveHigher: ColorAliasSemanticToken? { get }
    var sysColorBrandPositiveHighest: ColorAliasSemanticToken? { get }

    // MARK: Semantic token - Colors - Alias - Information

    var sysColorBrandInformationLowest: ColorAliasSemanticToken? { get }
    var sysColorBrandInformationLower: ColorAliasSemanticToken? { get }
    var sysColorBrandInformationLow: ColorAliasSemanticToken? { get }
    var sysColorBrandInformationDefault: ColorAliasSemanticToken? { get }
    var sysColorBrandInformationHigh: ColorAliasSemanticToken? { get }
    var sysColorBrandInformationHigher: ColorAliasSemanticToken? { get }
    var sysColorBrandInformationHighest: ColorAliasSemanticToken? { get }

    // MARK: Semantic token - Colors - Alias - Warning

    var sysColorBrandWarningLowest: ColorAliasSemanticToken? { get }
    var sysColorBrandWarningLower: ColorAliasSemanticToken? { get }
    var sysColorBrandWarningLow: ColorAliasSemanticToken? { get }
    var sysColorBrandWarningDefault: ColorAliasSemanticToken? { get }
    var sysColorBrandWarningHigh: ColorAliasSemanticToken? { get }
    var sysColorBrandWarningHigher: ColorAliasSemanticToken? { get }
    var sysColorBrandWarningHighest: ColorAliasSemanticToken? { get }

    // MARK: Semantic token - Colors - Alias - Negative

    var sysColorBrandNegativeLowest: ColorAliasSemanticToken? { get }
    var sysColorBrandNegativeLower: ColorAliasSemanticToken? { get }
    var sysColorBrandNegativeLow: ColorAliasSemanticToken? { get }
    var sysColorBrandNegativeDefault: ColorAliasSemanticToken? { get }
    var sysColorBrandNegativeHigh: ColorAliasSemanticToken? { get }
    var sysColorBrandNegativeHigher: ColorAliasSemanticToken? { get }
    var sysColorBrandNegativeHighest: ColorAliasSemanticToken? { get }

    // MARK: Semantic token - Colors - Alias - Attractive

    var sysColorBrandAttractiveLowest: ColorAliasSemanticToken? { get }
    var sysColorBrandAttractiveLower: ColorAliasSemanticToken? { get }
    var sysColorBrandAttractiveLow: ColorAliasSemanticToken? { get }
    var sysColorBrandAttractiveMedium: ColorAliasSemanticToken? { get }
    var sysColorBrandAttractiveHigh: ColorAliasSemanticToken? { get }
    var sysColorBrandAttractiveHigher: ColorAliasSemanticToken? { get }
    var sysColorBrandAttractiveHighest: ColorAliasSemanticToken? { get }

    // MARK: Semantic token - Colors - Background - Default - Primary

    var colorBackgroundDefaultPrimaryLight: ColorSemanticToken? { get }
    var colorBackgroundDefaultPrimaryDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - Background - Default - Secondary

    var colorBackgroundDefaultSecondaryLight: ColorSemanticToken? { get }
    var colorBackgroundDefaultSecondaryDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - Background - Default - Tertiary

    var colorBackgroundDefaultTertiaryLight: ColorSemanticToken? { get }
    var colorBackgroundDefaultTertiaryDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - Background - Emphasis - Primary

    var colorBackgroundEmphasisPrimaryLight: ColorSemanticToken? { get }
    var colorBackgroundEmphasisPrimaryDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - Background - Emphasis - Secondary

    var colorBackgroundEmphasisSecondaryLight: ColorSemanticToken? { get }
    var colorBackgroundEmphasisSecondaryDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - Background - Brand - Primary

    var colorBackgroundBrandPrimaryLight: ColorSemanticToken? { get }
    var colorBackgroundBrandPrimaryDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - Background - Brand - Secondary

    var colorBackgroundBrandSecondary: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - Background - Brand - Tertiary

    var colorBackgroundBrandTertiary: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - Background - Status - Attractive - Muted

    var colorBackgroundStatusAttractiveMutedLight: ColorSemanticToken? { get }
    var colorBackgroundStatusAttractiveMutedDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - Background - Status - Attractive - Emphasis

    var colorBackgroundStatusAttractiveEmphasisLight: ColorSemanticToken? { get }
    var colorBackgroundStatusAttractiveEmphasisDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - Background - Status - Warning - Muted

    var colorBackgroundStatusWarningMutedLight: ColorSemanticToken? { get }
    var colorBackgroundStatusWarningMutedDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - Background - Status - Warning - Emphasis

    var colorBackgroundStatusWarningEmphasisLight: ColorSemanticToken? { get }
    var colorBackgroundStatusWarningEmphasisDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - Background - Status - Negative - Muted

    var colorBackgroundStatusNegativeMutedLight: ColorSemanticToken? { get }
    var colorBackgroundStatusNegativeMutedDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - Background - Status - Negative - Emphasis

    var colorBackgroundStatusNegativeEmphasisLight: ColorSemanticToken? { get }
    var colorBackgroundStatusNegativeEmphasisDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - Background - Status - Positive - Muted

    var colorBackgroundStatusPositiveMutedLight: ColorSemanticToken? { get }
    var colorBackgroundStatusPositiveMutedDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - Background - Status - Positive - Emphasis

    var colorBackgroundStatusPositiveEmphasisLight: ColorSemanticToken? { get }
    var colorBackgroundStatusPositiveEmphasisDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - Background - Status - Information - Muted

    var colorBackgroundStatusInformationMutedLight: ColorSemanticToken? { get }
    var colorBackgroundStatusInformationMutedDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - Background - Status - Information - Emphasis

    var colorBackgroundStatusInformationEmphasisLight: ColorSemanticToken? { get }
    var colorBackgroundStatusInformationEmphasisDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - Content - Default

    var colorContentDefaultLight: ColorSemanticToken? { get }
    var colorContentDefaultDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - Content - Default - On background emphasis

    var colorContentDefaultOnBackgroundEmphasisLight: ColorSemanticToken? { get }
    var colorContentDefaultOnBackgroundEmphasisDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - Content - Muted

    var colorContentMutedLight: ColorSemanticToken? { get }
    var colorContentMutedDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - Content - Muted - On background emphasis

    var colorContentMutedOnBackgroundEmphasisLight: ColorSemanticToken? { get }
    var colorContentMutedOnBackgroundEmphasisDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - Content - Brand - Primary

    var colorContentBrandPrimaryLight: ColorSemanticToken? { get }
    var colorContentBrandPrimaryDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - Content - Brand - Primary - On background emphasis

    var colorContentBrandPrimaryOnBackgroundEmphasisLight: ColorSemanticToken? { get }
    var colorContentBrandPrimaryOnBackgroundEmphasisDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - Content - Brand - Secondary

    var colorContentBrandSecondaryLight: ColorSemanticToken? { get }
    var colorContentBrandSecondaryDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - Content - Brand - Tertiary

    var colorContentBrandTertiaryLight: ColorSemanticToken? { get }
    var colorContentBrandTertiaryDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - Content - Status - Attractive

    var colorContentStatusAttractiveLight: ColorSemanticToken? { get }
    var colorContentStatusAttractiveDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - Content - Status - Negative

    var colorContentStatusNegativeLight: ColorSemanticToken? { get }
    var colorContentStatusNegativeDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - Content - Status - Positive

    var colorContentStatusPositiveLight: ColorSemanticToken? { get }
    var colorContentStatusPositiveDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - Content - Status - Information

    var colorContentStatusInformationLight: ColorSemanticToken? { get }
    var colorContentStatusInformationDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - Border - Default

    var colorBorderDefaultLight: ColorSemanticToken? { get }
    var colorBorderDefaultDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - Border - Default - On background emphasis

    var colorBorderDefaultOnBackgroundEmphasisLight: ColorSemanticToken? { get }
    var colorBorderDefaultOnBackgroundEmphasisDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - Border - Emphasis

    var colorBorderEmphasisLight: ColorSemanticToken? { get }
    var colorBorderEmphasisDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - Border - Emphasis - On background emphasis

    var colorBorderEmphasisOnBackgroundEmphasisLight: ColorSemanticToken? { get }
    var colorBorderEmphasisOnBackgroundEmphasisDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - Border - Brand - Primary

    var colorBorderBrandPrimaryLight: ColorSemanticToken? { get }
    var colorBorderBrandPrimaryDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - Border - Brand - Primary - On background emphasis

    var colorBorderBrandPrimaryOnBackgroundEmphasisLight: ColorSemanticToken? { get }
    var colorBorderBrandPrimaryOnBackgroundEmphasisDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - Border - Brand - Secondary

    var colorBorderBrandSecondaryLight: ColorSemanticToken? { get }
    var colorBorderBrandSecondaryDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - Border - Brand - Tertiary

    var colorBorderBrandTertiaryLight: ColorSemanticToken? { get }
    var colorBorderBrandTertiaryDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - Border - Status - Attractive

    var colorBorderBrandStatusAttractiveLight: ColorSemanticToken? { get }
    var colorBorderBrandStatusAttractiveDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - Border - Status - Warning

    var colorBorderBrandStatusWarningLight: ColorSemanticToken? { get }
    var colorBorderBrandStatusWarningDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - Border - Status - Negative

    var colorBorderBrandStatusNegativeLight: ColorSemanticToken? { get }
    var colorBorderBrandStatusNegativeDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - Border - Status - Positive

    var colorBorderBrandStatusPositiveLight: ColorSemanticToken? { get }
    var colorBorderBrandStatusPositiveDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - Border - Status - Information

    var colorBorderBrandStatusInformationLight: ColorSemanticToken? { get }
    var colorBorderBrandStatusInformationDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - On background - Primary

    var colorOnBackgroundPrimaryLight: ColorSemanticToken? { get }
    var colorOnBackgroundPrimaryDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - On background - Secondary

    var colorOnBackgroundSecondaryLight: ColorSemanticToken? { get }
    var colorOnBackgroundSecondaryDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - On background - Tertiary

    var colorOnBackgroundTertiaryLight: ColorSemanticToken? { get }
    var colorOnBackgroundTertiaryDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - On background - Status - Attrative - Muted

    var colorOnBackgroundStatusAttractiveMutedLight: ColorSemanticToken? { get }
    var colorOnBackgroundStatusAttractiveMutedDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - On background - Status - Attrative - Emphasis

    var colorOnBackgroundStatusAttractiveEmphasisLight: ColorSemanticToken? { get }
    var colorOnBackgroundStatusAttractiveEmphasisDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - On background - Status - Warning - Muted

    var colorOnBackgroundStatusWarningMutedLight: ColorSemanticToken? { get }
    var colorOnBackgroundStatusWarningMutedDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - On background - Status - Warning - Emphasis

    var colorOnBackgroundStatusWarningEmphasisLight: ColorSemanticToken? { get }
    var colorOnBackgroundStatusWarningEmphasisDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - On background - Status - Negative - Muted

    var colorOnBackgroundStatusNegativeMutedLight: ColorSemanticToken? { get }
    var colorOnBackgroundStatusNegativeMutedDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - On background - Status - Negative - Emphasis

    var colorOnBackgroundStatusNegativeEmphasisLight: ColorSemanticToken? { get }
    var colorOnBackgroundStatusNegativeEmphasisDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - On background - Status - Positive - Muted

    var colorOnBackgroundStatusPositiveMutedLight: ColorSemanticToken? { get }
    var colorOnBackgroundStatusPositiveMutedDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - On background - Status - Positive - Emphasis

    var colorOnBackgroundStatusPositiveEmphasisLight: ColorSemanticToken? { get }
    var colorOnBackgroundStatusPositiveEmphasisDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - On background - Status - Information - Muted

    var colorOnBackgroundStatusInformationMutedLight: ColorSemanticToken? { get }
    var colorOnBackgroundStatusInformationMutedDark: ColorSemanticToken? { get }

    // MARK: Semantic token - Colors - On background - Status - Information - Emphasis

    var colorOnBackgroundStatusInformationEmphasisLight: ColorSemanticToken? { get }
    var colorOnBackgroundStatusInformationEmphasisDark: ColorSemanticToken? { get }

}
