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
import OUDSFoundations
import OUDSTokensRaw
import OUDSTokensSemantic

/// Defines basic values common to all themes for `ColorSemanticTokens`.
/// These values can be overriden inside `OUDSTheme` subclasses (in extensions or not, in the same module or not) thanks to the `@objc open` combination.
extension OUDSTheme: ColorSemanticTokens {

    // MARK: Semantic token - Colors - Alias - Primary

    @objc open var sysColorBrandPrimaryLowest: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandPrimaryLower: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandPrimaryLow: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandPrimaryDefault: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandPrimaryHigh: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandPrimaryHigher: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandPrimaryHighest: ColorAliasSemanticToken? { nil }

    // MARK: Semantic token - Colors - Alias - Secondary

    @objc open var sysColorBrandSecondaryLowest: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandSecondaryLower: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandSecondaryLow: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandSecondaryDefault: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandSecondaryHigh: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandSecondaryHigher: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandSecondaryHighest: ColorAliasSemanticToken? { nil }

    // MARK: Semantic token - Colors - Alias - Tertiary

    @objc open var sysColorBrandTertiaryLowest: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandTertiaryLower: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandTertiaryLow: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandTertiaryDefault: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandTertiaryHigh: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandTertiaryHigher: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandTertiaryHighest: ColorAliasSemanticToken? { nil }

    // MARK: Semantic token - Colors - Alias - Neutral - Muted

    @objc open var sysColorBrandNeutralMutedWhite: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalWhite }
    @objc open var sysColorBrandNeutralMutedLowest: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalLightGray80 }
    @objc open var sysColorBrandNeutralMutedLower: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalLightGray160 }
    @objc open var sysColorBrandNeutralMutedLow: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandNeutralMutedMedium: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalLightGray400 }
    @objc open var sysColorBrandNeutralMutedHigh: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalLightGray560 }
    @objc open var sysColorBrandNeutralMutedHigher: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandNeutralMutedHighest: ColorAliasSemanticToken? { nil }

    // MARK: Semantic token - Colors - Alias - Neutral - Emphasized

    @objc open var sysColorBrandNeutralEmphasizedLowest: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalDarkGray400 }
    @objc open var sysColorBrandNeutralEmphasizedLower: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalDarkGray480 }
    @objc open var sysColorBrandNeutralEmphasizedLow: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalDarkGray560 }
    @objc open var sysColorBrandNeutralEmphasizedMedium: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalDarkGray640 }
    @objc open var sysColorBrandNeutralEmphasizedHigh: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalDarkGray720 }
    @objc open var sysColorBrandNeutralEmphasizedHigher: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalDarkGray800 }
    @objc open var sysColorBrandNeutralEmphasizedHighest: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalDarkGray880 }
    @objc open var sysColorBrandNeutralEmphasizedBlack: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalBlack }

    // MARK: Semantic token - Colors - Alias - Positive

    @objc open var sysColorBrandPositiveLowest: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalMalachite100 }
    @objc open var sysColorBrandPositiveLower: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandPositiveLow: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandPositiveDefault: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalMalachite500 }
    @objc open var sysColorBrandPositiveHigh: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalMalachite600 }
    @objc open var sysColorBrandPositiveHigher: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandPositiveHighest: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalMalachite800 }

    // MARK: Semantic token - Colors - Alias - Information

    @objc open var sysColorBrandInformationLowest: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalDodgerBlue100 }
    @objc open var sysColorBrandInformationLower: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandInformationLow: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandInformationDefault: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalDodgerBlue500 }
    @objc open var sysColorBrandInformationHigh: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalDodgerBlue600 }
    @objc open var sysColorBrandInformationHigher: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandInformationHighest: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalDodgerBlue800 }

    // MARK: Semantic token - Colors - Alias - Warning

    @objc open var sysColorBrandWarningLowest: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalSun100 }
    @objc open var sysColorBrandWarningLower: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandWarningLow: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandWarningDefault: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalSun500 }
    @objc open var sysColorBrandWarningHigh: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalSun600 }
    @objc open var sysColorBrandWarningHigher: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandWarningHighest: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalSun800 }

    // MARK: Semantic token - Colors - Alias - Negative

    @objc open var sysColorBrandNegativeLowest: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalScarlet100 }
    @objc open var sysColorBrandNegativeLower: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandNegativeLow: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandNegativeDefault: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalScarlet500 }
    @objc open var sysColorBrandNegativeHigh: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalScarlet600 }
    @objc open var sysColorBrandNegativeHigher: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandNegativeHighest: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalScarlet800 }

    // MARK: Semantic token - Colors - Alias - Attractive

    @objc open var sysColorBrandAttractiveLowest: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandAttractiveLower: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandAttractiveLow: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandAttractiveMedium: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalSun500 }
    @objc open var sysColorBrandAttractiveHigh: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalSun600 }
    @objc open var sysColorBrandAttractiveHigher: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandAttractiveHighest: ColorAliasSemanticToken? { nil }

    // MARK: Semantic token - Colors - Background - Default - Primary

    @objc open var colorBackgroundDefaultPrimaryLight: ColorSemanticToken? { sysColorBrandNeutralMutedWhite }
    @objc open var colorBackgroundDefaultPrimaryDark: ColorSemanticToken? { sysColorBrandNeutralEmphasizedHighest }

    // MARK: Semantic token - Colors - Background - Default - Secondary

    @objc open var colorBackgroundDefaultSecondaryLight: ColorSemanticToken? { sysColorBrandNeutralMutedLowest }
    @objc open var colorBackgroundDefaultSecondaryDark: ColorSemanticToken? { sysColorBrandNeutralEmphasizedHigher }

    // MARK: Semantic token - Colors - Background - Default - Tertiary

    @objc open var colorBackgroundDefaultTertiaryLight: ColorSemanticToken? { sysColorBrandAttractiveLowest }
    @objc open var colorBackgroundDefaultTertiaryDark: ColorSemanticToken? { sysColorBrandAttractiveHighest }

    // MARK: Semantic token - Colors - Background - Emphasized - Primary

    @objc open var colorBackgroundEmphasizedPrimaryLight: ColorSemanticToken? { sysColorBrandNeutralEmphasizedBlack }
    @objc open var colorBackgroundEmphasizedPrimaryDark: ColorSemanticToken? { sysColorBrandNeutralEmphasizedMedium }

    // MARK: Semantic token - Colors - Background - Emphasized - Secondary

    @objc open var colorBackgroundEmphasizedSecondaryLight: ColorSemanticToken? { sysColorBrandNeutralEmphasizedMedium }
    @objc open var colorBackgroundEmphasizedSecondaryDark: ColorSemanticToken? { sysColorBrandNeutralEmphasizedHigh }

    // MARK: Semantic token - Colors - Background - Brand - Primary

    @objc open var colorBackgroundBrandPrimaryLight: ColorSemanticToken? { sysColorBrandPrimaryDefault }
    @objc open var colorBackgroundBrandPrimaryDark: ColorSemanticToken? { sysColorBrandPrimaryLow }

    // MARK: Semantic token - Colors - Background - Brand - Secondary

    @objc open var colorBackgroundBrandSecondary: ColorSemanticToken? { nil }

    // MARK: Semantic token - Colors - Background - Brand - Tertiary

    @objc open var colorBackgroundBrandTertiary: ColorSemanticToken? { nil }

    // MARK: Semantic token - Colors - Background - Status - Attractive - Muted

    @objc open var colorBackgroundStatusAttractiveMutedLight: ColorSemanticToken? { sysColorBrandAttractiveLowest }
    @objc open var colorBackgroundStatusAttractiveMutedDark: ColorSemanticToken? { sysColorBrandAttractiveHighest }

    // MARK: Semantic token - Colors - Background - Status - Attractive - Emphasized

    @objc open var colorBackgroundStatusAttractiveEmphasizedLight: ColorSemanticToken? { sysColorBrandWarningDefault }
    @objc open var colorBackgroundStatusAttractiveEmphasizedDark: ColorSemanticToken? { sysColorBrandWarningHighest }

    // MARK: Semantic token - Colors - Background - Status - Warning - Muted

    @objc open var colorBackgroundStatusWarningMutedLight: ColorSemanticToken? { sysColorBrandWarningLowest }
    @objc open var colorBackgroundStatusWarningMutedDark: ColorSemanticToken? { sysColorBrandNeutralEmphasizedHigh }

    // MARK: Semantic token - Colors - Background - Status - Warning - Emphasized

    @objc open var colorBackgroundStatusWarningEmphasizedLight: ColorSemanticToken? { sysColorBrandWarningDefault }
    @objc open var colorBackgroundStatusWarningEmphasizedDark: ColorSemanticToken? { sysColorBrandWarningHighest }

    // MARK: Semantic token - Colors - Background - Status - Negative - Muted

    @objc open var colorBackgroundStatusNegativeMutedLight: ColorSemanticToken? { sysColorBrandNegativeLowest }
    @objc open var colorBackgroundStatusNegativeMutedDark: ColorSemanticToken? { sysColorBrandNeutralEmphasizedHigh }

    // MARK: Semantic token - Colors - Background - Status - Negative - Emphasized

    @objc open var colorBackgroundStatusNegativeEmphasizedLight: ColorSemanticToken? { sysColorBrandNegativeDefault }
    @objc open var colorBackgroundStatusNegativeEmphasizedDark: ColorSemanticToken? { sysColorBrandNegativeHighest }

    // MARK: Semantic token - Colors - Background - Status - Positive - Muted

    @objc open var colorBackgroundStatusPositiveMutedLight: ColorSemanticToken? { sysColorBrandPositiveLowest }
    @objc open var colorBackgroundStatusPositiveMutedInverse: ColorSemanticToken? { sysColorBrandPositiveLowest }
    @objc open var colorBackgroundStatusPositiveMutedDark: ColorSemanticToken? { sysColorBrandNeutralEmphasizedHigh }

    // MARK: Semantic token - Colors - Background - Status - Positive - Emphasized

    @objc open var colorBackgroundStatusPositiveEmphasizedLight: ColorSemanticToken? { sysColorBrandPositiveDefault }
    @objc open var colorBackgroundStatusPositiveEmphasizedDark: ColorSemanticToken? { sysColorBrandPositiveHighest }

    // MARK: Semantic token - Colors - Background - Status - Information - Muted

    @objc open var colorBackgroundStatusInformationMutedLight: ColorSemanticToken? { sysColorBrandInformationLowest }
    @objc open var colorBackgroundStatusInformationMutedDark: ColorSemanticToken? { sysColorBrandNeutralEmphasizedHigh }

    // MARK: Semantic token - Colors - Background - Status - Information - Emphasized

    @objc open var colorBackgroundStatusInformationEmphasizedLight: ColorSemanticToken? { sysColorBrandInformationDefault }
    @objc open var colorBackgroundStatusInformationEmphasizedDark: ColorSemanticToken? { sysColorBrandInformationHighest }

    // MARK: Semantic token - Colors - Content - Default

    @objc open var colorContentDefaultLight: ColorSemanticToken? { sysColorBrandNeutralEmphasizedBlack }
    @objc open var colorContentDefaultDark: ColorSemanticToken? { sysColorBrandNeutralMutedLower }

    // MARK: Semantic token - Colors - Content - Default - On background emphasized

    @objc open var colorContentDefaultOnBackgroundEmphasizedLight: ColorSemanticToken? { sysColorBrandNeutralMutedWhite }
    @objc open var colorContentDefaultOnBackgroundEmphasizedDark: ColorSemanticToken? { sysColorBrandNeutralMutedLower }

    // MARK: Semantic token - Colors - Content - Muted

    @objc open var colorContentMutedLight: ColorSemanticToken? { sysColorBrandNeutralEmphasizedLowest }
    @objc open var colorContentMutedDark: ColorSemanticToken? { sysColorBrandNeutralEmphasizedHigh }

    // MARK: Semantic token - Colors - Content - Muted - On background emphasized

    @objc open var colorContentMutedOnBackgroundEmphasizedLight: ColorSemanticToken? { sysColorBrandNeutralMutedMedium }
    @objc open var colorContentMutedOnBackgroundEmphasizedDark: ColorSemanticToken? { sysColorBrandNeutralMutedHigh }

    // MARK: Semantic token - Colors - Content - Brand - Primary

    @objc open var colorContentBrandPrimaryLight: ColorSemanticToken? { sysColorBrandPrimaryDefault }
    @objc open var colorContentBrandPrimaryDark: ColorSemanticToken? { sysColorBrandPrimaryLow }

    // MARK: Semantic token - Colors - Content - Brand - Primary - On background emphasized

    @objc open var colorContentBrandPrimaryOnBackgroundEmphasizedLight: ColorSemanticToken? { sysColorBrandPrimaryLow }
    @objc open var colorContentBrandPrimaryOnBackgroundEmphasizedDark: ColorSemanticToken? { sysColorBrandPrimaryLow }

    // MARK: Semantic token - Colors - Content - Brand - Secondary

    @objc open var colorContentBrandSecondaryLight: ColorSemanticToken? { nil }
    @objc open var colorContentBrandSecondaryDark: ColorSemanticToken? { nil }

    // MARK: Semantic token - Colors - Content - Brand - Tertiary

    @objc open var colorContentBrandTertiaryLight: ColorSemanticToken? { nil }
    @objc open var colorContentBrandTertiaryDark: ColorSemanticToken? { nil }

    // MARK: Semantic token - Colors - Content - Status - Attractive

    @objc open var colorContentStatusAttractiveLight: ColorSemanticToken? { nil }
    @objc open var colorContentStatusAttractiveDark: ColorSemanticToken? { nil }

    // MARK: Semantic token - Colors - Content - Status - Negative

    @objc open var colorContentStatusNegativeLight: ColorSemanticToken? { sysColorBrandNegativeDefault }
    @objc open var colorContentStatusNegativeDark: ColorSemanticToken? { sysColorBrandNegativeDefault }

    // MARK: Semantic token - Colors - Content - Status - Positive

    @objc open var colorContentStatusPositiveLight: ColorSemanticToken? { sysColorBrandPositiveDefault }
    @objc open var colorContentStatusPositiveInverse: ColorSemanticToken? { sysColorBrandPositiveDefault }
    @objc open var colorContentStatusPositiveDark: ColorSemanticToken? { sysColorBrandPositiveDefault }

    // MARK: Semantic token - Colors - Content - Status - Information

    @objc open var colorContentStatusInformationLight: ColorSemanticToken? { sysColorBrandInformationDefault }
    @objc open var colorContentStatusInformationDark: ColorSemanticToken? { sysColorBrandInformationDefault }

    // MARK: Semantic token - Colors - Border - Default

    @objc open var colorBorderDefaultLight: ColorSemanticToken? { sysColorBrandNeutralMutedMedium }
    @objc open var colorBorderDefaultDark: ColorSemanticToken? { sysColorBrandNeutralEmphasizedLowest }

    // MARK: Semantic token - Colors - Border - Default - On background emphasized

    @objc open var colorBorderDefaultOnBackgroundEmphasizedLight: ColorSemanticToken? { sysColorBrandNeutralEmphasizedLowest }
    @objc open var colorBorderDefaultOnBackgroundEmphasizedDark: ColorSemanticToken? { sysColorBrandNeutralEmphasizedLowest }

    // MARK: Semantic token - Colors - Border - Emphasized

    @objc open var colorBorderEmphasizedLight: ColorSemanticToken? { sysColorBrandNeutralEmphasizedBlack }
    @objc open var colorBorderEmphasizedDark: ColorSemanticToken? { sysColorBrandNeutralMutedLower }

    // MARK: Semantic token - Colors - Border - Emphasized - On background emphasized

    @objc open var colorBorderEmphasizedOnBackgroundEmphasizedLight: ColorSemanticToken? { sysColorBrandNeutralMutedWhite }
    @objc open var colorBorderEmphasizedOnBackgroundEmphasizedDark: ColorSemanticToken? { sysColorBrandNeutralMutedLower }

    // MARK: Semantic token - Colors - Border - Brand - Primary

    @objc open var colorBorderBrandPrimaryLight: ColorSemanticToken? { sysColorBrandPrimaryDefault }
    @objc open var colorBorderBrandPrimaryDark: ColorSemanticToken? { sysColorBrandPrimaryLow }

    // MARK: Semantic token - Colors - Border - Brand - Primary - On background emphasized

    @objc open var colorBorderBrandPrimaryOnBackgroundEmphasizedLight: ColorSemanticToken? { sysColorBrandPrimaryLow }
    @objc open var colorBorderBrandPrimaryOnBackgroundEmphasizedDark: ColorSemanticToken? { sysColorBrandPrimaryLow }

    // MARK: Semantic token - Colors - Border - Brand - Secondary

    @objc open var colorBorderBrandSecondaryLight: ColorSemanticToken? { nil }
    @objc open var colorBorderBrandSecondaryDark: ColorSemanticToken? { nil }

    // MARK: Semantic token - Colors - Border - Brand - Tertiary

    @objc open var colorBorderBrandTertiaryLight: ColorSemanticToken? { nil }
    @objc open var colorBorderBrandTertiaryDark: ColorSemanticToken? { nil }

    // MARK: Semantic token - Colors - Border - Status - Attractive

    @objc open var colorBorderBrandStatusAttractiveLight: ColorSemanticToken? { nil }
    @objc open var colorBorderBrandStatusAttractiveDark: ColorSemanticToken? { nil }

    // MARK: Semantic token - Colors - Border - Status - Warning

    @objc open var colorBorderBrandStatusWarningLight: ColorSemanticToken? { nil }
    @objc open var colorBorderBrandStatusWarningDark: ColorSemanticToken? { nil }

    // MARK: Semantic token - Colors - Border - Status - Negative

    @objc open var colorBorderBrandStatusNegativeLight: ColorSemanticToken? { nil }
    @objc open var colorBorderBrandStatusNegativeDark: ColorSemanticToken? { nil }

    // MARK: Semantic token - Colors - Border - Status - Positive

    @objc open var colorBorderBrandStatusPositiveLight: ColorSemanticToken? { nil }
    @objc open var colorBorderBrandStatusPositiveDark: ColorSemanticToken? { nil }

    // MARK: Semantic token - Colors - Border - Status - Information

    @objc open var colorBorderBrandStatusInformationLight: ColorSemanticToken? { nil }
    @objc open var colorBorderBrandStatusInformationDark: ColorSemanticToken? { nil }

    // MARK: Semantic token - Colors - On background - Primary

    @objc open var colorOnBackgroundPrimaryLight: ColorSemanticToken? { sysColorBrandNeutralMutedWhite }
    @objc open var colorOnBackgroundPrimaryDark: ColorSemanticToken? { sysColorBrandNeutralEmphasizedHighest }

    // MARK: Semantic token - Colors - On background - Secondary

    @objc open var colorOnBackgroundSecondaryLight: ColorSemanticToken? { nil }
    @objc open var colorOnBackgroundSecondaryDark: ColorSemanticToken? { nil }

    // MARK: Semantic token - Colors - On background - Tertiary

    @objc open var colorOnBackgroundTertiaryLight: ColorSemanticToken? { nil }
    @objc open var colorOnBackgroundTertiaryDark: ColorSemanticToken? { nil }

    // MARK: Semantic token - Colors - On background - Status - Attrative - Muted

    @objc open var colorOnBackgroundStatusAttractiveMutedLight: ColorSemanticToken? { sysColorBrandNeutralEmphasizedBlack }
    @objc open var colorOnBackgroundStatusAttractiveMutedDark: ColorSemanticToken? { sysColorBrandNeutralMutedLower }

    // MARK: Semantic token - Colors - On background - Status - Attrative - Emphasized

    @objc open var colorOnBackgroundStatusAttractiveEmphasizedLight: ColorSemanticToken? { sysColorBrandNeutralEmphasizedBlack }
    @objc open var colorOnBackgroundStatusAttractiveEmphasizedDark: ColorSemanticToken? { sysColorBrandNeutralMutedLower }

    // MARK: Semantic token - Colors - On background - Status - Warning - Muted

    @objc open var colorOnBackgroundStatusWarningMutedLight: ColorSemanticToken? { sysColorBrandNeutralEmphasizedBlack }
    @objc open var colorOnBackgroundStatusWarningMutedDark: ColorSemanticToken? { sysColorBrandNeutralMutedLower }

    // MARK: Semantic token - Colors - On background - Status - Warning - Emphasized

    @objc open var colorOnBackgroundStatusWarningEmphasizedLight: ColorSemanticToken? { sysColorBrandNeutralEmphasizedBlack }
    @objc open var colorOnBackgroundStatusWarningEmphasizedDark: ColorSemanticToken? { sysColorBrandNeutralMutedLower }

    // MARK: Semantic token - Colors - On background - Status - Negative - Muted

    @objc open var colorOnBackgroundStatusNegativeMutedLight: ColorSemanticToken? { sysColorBrandNeutralEmphasizedBlack }
    @objc open var colorOnBackgroundStatusNegativeMutedDark: ColorSemanticToken? { sysColorBrandNeutralMutedLower }

    // MARK: Semantic token - Colors - On background - Status - Negative - Emphasized

    @objc open var colorOnBackgroundStatusNegativeEmphasizedLight: ColorSemanticToken? { sysColorBrandNeutralMutedWhite }
    @objc open var colorOnBackgroundStatusNegativeEmphasizedDark: ColorSemanticToken? { sysColorBrandNeutralMutedLower }

    // MARK: Semantic token - Colors - On background - Status - Positive - Muted

    @objc open var colorOnBackgroundStatusPositiveMutedLight: ColorSemanticToken? { sysColorBrandNeutralEmphasizedBlack }
    @objc open var colorOnBackgroundStatusPositiveMutedDark: ColorSemanticToken? { sysColorBrandNeutralMutedLower }

    // MARK: Semantic token - Colors - On background - Status - Positive - Emphasized

    @objc open var colorOnBackgroundStatusPositiveEmphasizedLight: ColorSemanticToken? { sysColorBrandNeutralEmphasizedBlack }
    @objc open var colorOnBackgroundStatusPositiveEmphasizedDark: ColorSemanticToken? { sysColorBrandNeutralMutedLower }

    // MARK: Semantic token - Colors - On background - Status - Information - Muted

    @objc open var colorOnBackgroundStatusInformationMutedLight: ColorSemanticToken? { sysColorBrandNeutralEmphasizedBlack }
    @objc open var colorOnBackgroundStatusInformationMutedDark: ColorSemanticToken? { sysColorBrandNeutralMutedLower }

    // MARK: Semantic token - Colors - On background - Status - Information - Emphasized

    @objc open var colorOnBackgroundStatusInformationEmphasizedLight: ColorSemanticToken? { sysColorBrandNeutralEmphasizedBlack }
    @objc open var colorOnBackgroundStatusInformationEmphasizedDark: ColorSemanticToken? { sysColorBrandNeutralMutedLower }

}
