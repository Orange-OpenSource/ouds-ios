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

// ଘ( ･ω･)_/ﾟ･:*:･｡☆
// [File to generate with the tokenator]

// swiftlint:disable line_length
/// Defines basic values common to all themes for `ColorSemanticTokens`.
/// These values can be overriden inside `OUDSTheme` subclasses (in extensions or not, in the same module or not) thanks to the `@objc open` combination.
extension OUDSTheme: ColorSemanticTokens {

    // MARK: Semantic token - Colors - Alias - Primary

    @objc open var sysColorBrandPrimaryLowest: ColorAliasSemanticToken? { nil } // Defined in OrangeTheme+SemanticColorTokens.swift because uses an Orange brand color
    @objc open var sysColorBrandPrimaryLower: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandPrimaryLow: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandPrimaryDefault: ColorAliasSemanticToken? { nil } // Defined in OrangeTheme+SemanticColorTokens.swift because uses an Orange brand color
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
    @objc open var sysColorBrandNeutralMutedHighest: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalDarkGray160 }

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

    @objc open var sysColorBrandInformationLowest: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalMalachite100 }
    @objc open var sysColorBrandInformationLower: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandInformationLow: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandInformationDefault: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalMalachite500 }
    @objc open var sysColorBrandInformationHigh: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalDodgerBlue600 }
    @objc open var sysColorBrandInformationHigher: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandInformationHighest: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalMalachite900 }

    // MARK: Semantic token - Colors - Alias - Warning

    @objc open var sysColorBrandWarningLowest: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalSun100 }
    @objc open var sysColorBrandWarningLower: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandWarningLow: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandWarningDefault: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalSun500 }
    @objc open var sysColorBrandWarningHigh: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalSun600 }
    @objc open var sysColorBrandWarningHigher: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandWarningHighest: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalSun900 }

    // MARK: Semantic token - Colors - Alias - Negative

    @objc open var sysColorBrandNegativeLowest: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalScarlet100 }
    @objc open var sysColorBrandNegativeLower: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandNegativeLow: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandNegativeDefault: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalScarlet600 }
    @objc open var sysColorBrandNegativeHigh: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandNegativeHigher: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandNegativeHighest: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalScarlet900 }

    // MARK: Semantic token - Colors - Alias - Attractive

    @objc open var sysColorBrandAttractiveLowest: ColorAliasSemanticToken? { nil } // Defined in OrangeTheme+SemanticColorTokens.swift because uses an Orange brand color
    @objc open var sysColorBrandAttractiveLower: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandAttractiveLow: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandAttractiveMedium: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalSun500 }
    @objc open var sysColorBrandAttractiveHigh: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalSun600 }
    @objc open var sysColorBrandAttractiveHigher: ColorAliasSemanticToken? { nil }
    @objc open var sysColorBrandAttractiveHighest: ColorAliasSemanticToken? { nil } // Defined in OrangeTheme+SemanticColorTokens.swift because uses an Orange brand color

    // MARK: Semantic token - Colors - Background - Default - Primary

    @objc open var colorBackgroundDefaultPrimary: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandNeutralMutedWhite, dark: sysColorBrandNeutralEmphasizedHighest) }

    // MARK: Semantic token - Colors - Background - Default - Secondary

    @objc open var colorBackgroundDefaultSecondary: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandNeutralMutedLowest, dark: sysColorBrandNeutralEmphasizedHigher) }

    // MARK: Semantic token - Colors - Background - Default - Tertiary

    @objc open var colorBackgroundDefaultTertiary: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandAttractiveLowest, dark: sysColorBrandAttractiveHighest) }

    // MARK: Semantic token - Colors - Background - Emphasized - Primary

    @objc open var colorBackgroundEmphasizedPrimary: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandNeutralEmphasizedHighest, dark: sysColorBrandNeutralEmphasizedMedium) }

    // MARK: Semantic token - Colors - Background - Brand - Primary

    @objc open var colorBackgroundBrandPrimary: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandPrimaryDefault, dark: sysColorBrandPrimaryLow) }

    // MARK: Semantic token - Colors - Background - Brand - Secondary

    @objc open var colorBackgroundBrandSecondary: ColorSemanticToken? { nil }

    // MARK: Semantic token - Colors - Background - Brand - Tertiary

    @objc open var colorBackgroundBrandTertiary: ColorSemanticToken? { nil }

    // MARK: Semantic token - Colors - Background - Brand - Neutral
    
    @objc open var colorBackgroundStatusNeutral: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandNeutralLowest, dark: sysColorBrandNeutralEmphasizedHigh) }
    
    // MARK: Semantic token - Colors - Background - Status - Neutral - Emphasized
    
    @objc open var colorBackgroundStatusNeutralOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandNeutralEmphasizedHigh, dark: sysColorBrandNeutralEmphasizedHigh) }
    
    // MARK: Semantic token - Colors - Background - Status - Attractive - Muted

    @objc open var colorBackgroundStatusAttractiveMuted: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandAttractiveLowest, dark: sysColorBrandAttractiveHighest) }

    // MARK: Semantic token - Colors - Background - Status - Attractive - Emphasized

    @objc open var colorBackgroundStatusAttractiveEmphasized: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandWarningDefault, dark: sysColorBrandWarningDefault) }

    // MARK: Semantic token - Colors - Background - Status - Warning - Muted

    @objc open var colorBackgroundStatusWarningMuted: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandWarningLowest, dark: sysColorBrandWarningHighest) }

    // MARK: Semantic token - Colors - Background - Status - Warning - On Background - Emphasized

    @objc open var colorBackgroundStatusWarningMutedOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandWarningHighest, dark: sysColorBrandWarningHighest) }
    
    // MARK: Semantic token - Colors - Background - Status - Warning - Emphasized

    @objc open var colorBackgroundStatusWarningEmphasized: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandWarningDefault, dark: sysColorBrandWarningDefault) }

    // MARK: Semantic token - Colors - Background - Status - Negative - Muted

    @objc open var colorBackgroundStatusNegativeMuted: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandNegativeLowest, dark: sysColorBrandNeutralEmphasizedHighest) }

    // MARK: Semantic token - Colors - Background - Status - Negative - Muted - On background - Emphasized

    @objc open var colorBackgroundStatusNegativeMutedOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNegativeHighest) }
    
    // MARK: Semantic token - Colors - Background - Status - Negative - Emphasized

    @objc open var colorBackgroundStatusNegativeEmphasized: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandNegativeDefault, dark: sysColorBrandNegativeHighest) }

    // MARK: Semantic token - Colors - Background - Status - Positive - Muted

    @objc open var colorBackgroundStatusPositiveMuted: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandPositiveLowest, dark: sysColorBrandNeutralEmphasizedHigh) }
    
    // MARK: Semantic token - Colors - Background - Status - Positive - Muted

    @objc open var colorBackgroundStatusPositiveMutedOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandPositiveHighest) }

    // MARK: Semantic token - Colors - Background - Status - Positive - Emphasized

    @objc open var colorBackgroundStatusPositiveEmphasized: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandPositiveDefault, dark: sysColorBrandPositiveHighest) }

    // MARK: Semantic token - Colors - Background - Status - Information - Muted

    @objc open var colorBackgroundStatusInformationMuted: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandInformationLowest, dark: sysColorBrandNeutralEmphasizedHigh) }

    // MARK: Semantic token - Colors - Background - Status - Information - Muted - On background - Emphasized

    @objc open var colorBackgroundStatusInformationMutedOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandInformationHighest) }
    
    // MARK: Semantic token - Colors - Background - Status - Information - Emphasized

    @objc open var colorBackgroundStatusInformationEmphasized: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandInformationDefault, dark: sysColorBrandInformationHighest) }

    // MARK: Semantic token - Colors - Content - Default

    @objc open var colorContentDefault: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandNeutralEmphasizedBlack, dark: sysColorBrandNeutralMutedLower) }

    // MARK: Semantic token - Colors - Content - Default - On background emphasized

    @objc open var colorContentDefaultOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandNeutralMutedWhite, dark: sysColorBrandNeutralMutedLower) }

    // MARK: Semantic token - Colors - Content - Muted

    @objc open var colorContentMuted: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandNeutralEmphasizedLowest, dark: sysColorBrandNeutralEmphasizedHigh) }

    // MARK: Semantic token - Colors - Content - Muted - On background emphasized

    @objc open var colorContentMutedOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandNeutralMutedMedium, dark: sysColorBrandNeutralMutedHigh) }

    // MARK: Semantic token - Colors - Content - Brand - Primary

    @objc open var colorContentBrandPrimary: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandPrimaryDefault, dark: sysColorBrandPrimaryLow) }

    // MARK: Semantic token - Colors - Content - Brand - Primary - On background emphasized

    @objc open var colorContentBrandPrimaryOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandPrimaryLow, dark: sysColorBrandPrimaryLow) }

    // MARK: Semantic token - Colors - Content - Brand - Secondary

    @objc open var colorContentBrandSecondary: ColorSemanticToken? { nil }

    // MARK: Semantic token - Colors - Content - Brand - Tertiary

    @objc open var colorContentBrandTertiary: ColorSemanticToken? { nil }

    // MARK: Semantic token - Colors - Content - Status - Attractive

    @objc open var colorContentStatusAttractive: ColorSemanticToken? { nil }

    // MARK: Semantic token - Colors - Content - Status - Negative

    @objc open var colorContentStatusNegative: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandNegativeDefault, dark: sysColorBrandNegativeDefault) }

    // MARK: Semantic token - Colors - Content - Status - Positive

    @objc open var colorContentStatusPositive: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandPositiveDefault, dark: sysColorBrandPositiveDefault) }

    // MARK: Semantic token - Colors - Content - Status - Information

    @objc open var colorContentStatusInformation: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandInformationDefault, dark: sysColorBrandInformationDefault) }

    // MARK: Semantic token - Colors - Border - Default

    @objc open var colorBorderDefault: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandNeutralMutedMedium, dark: sysColorBrandNeutralEmphasizedLowest) }

    // MARK: Semantic token - Colors - Border - Default - On background emphasized

    @objc open var colorBorderDefaultOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandNeutralEmphasizedLowest, dark: sysColorBrandNeutralEmphasizedLowest) }

    // MARK: Semantic token - Colors - Border - Emphasized

    @objc open var colorBorderEmphasized: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandNeutralEmphasizedBlack, dark: sysColorBrandNeutralMutedLower) }

    // MARK: Semantic token - Colors - Border - Emphasized - On background emphasized

    @objc open var colorBorderEmphasizedOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandNeutralMutedWhite, dark: sysColorBrandNeutralMutedLower) }

    // MARK: Semantic token - Colors - Border - Brand - Primary

    @objc open var colorBorderBrandPrimary: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandPrimaryDefault, dark: sysColorBrandPrimaryLow) }

    // MARK: Semantic token - Colors - Border - Brand - Primary - On background emphasized

    @objc open var colorBorderBrandPrimaryOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandPrimaryLow, dark: sysColorBrandPrimaryLow) }

    // MARK: Semantic token - Colors - Border - Brand - Secondary

    @objc open var colorBorderBrandSecondary: ColorSemanticToken? { nil }

    // MARK: Semantic token - Colors - Border - Brand - Tertiary

    @objc open var colorBorderBrandTertiary: ColorSemanticToken? { nil }

    // MARK: Semantic token - Colors - Border - Status - Attractive

    @objc open var colorBorderBrandStatusAttractive: ColorSemanticToken? { nil }

    // MARK: Semantic token - Colors - Border - Status - Warning

    @objc open var colorBorderBrandStatusWarning: ColorSemanticToken? { nil }

    // MARK: Semantic token - Colors - Border - Status - Negative

    @objc open var colorBorderBrandStatusNegative: ColorSemanticToken? { nil }

    // MARK: Semantic token - Colors - Border - Status - Positive

    @objc open var colorBorderBrandStatusPositive: ColorSemanticToken? { nil }

    // MARK: Semantic token - Colors - Border - Status - Information

    @objc open var colorBorderBrandStatusInformation: ColorSemanticToken? { nil }
}
// swiftlint:enable line_length
