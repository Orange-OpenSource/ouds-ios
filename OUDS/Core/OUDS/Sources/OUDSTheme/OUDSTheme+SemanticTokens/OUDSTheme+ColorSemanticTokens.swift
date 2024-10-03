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
// WARNING: Not synchronized anymore with the Figjam

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

    // MARK: Semantic token - Colors - Background

    @objc open var colorBackgroundDefaultPrimary: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandNeutralMutedWhite, dark: sysColorBrandNeutralEmphasizedHighest) }

    @objc open var colorBackgroundDefaultSecondary: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandNeutralMutedLowest, dark: sysColorBrandNeutralEmphasizedHigher) }

    @objc open var colorBackgroundDefaultTertiary: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandAttractiveLowest, dark: sysColorBrandAttractiveHighest) }

    @objc open var colorBackgroundEmphasizedPrimary: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandNeutralEmphasizedHighest, dark: sysColorBrandNeutralEmphasizedMedium) }

    @objc open var colorBackgroundBrandPrimary: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandPrimaryDefault, dark: sysColorBrandPrimaryLow) }

    @objc open var colorBackgroundBrandSecondary: ColorSemanticToken? { nil }

    @objc open var colorBackgroundBrandTertiary: ColorSemanticToken? { nil }

    @objc open var colorBackgroundStatusNeutral: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandNeutralEmphasizedLowest, dark: sysColorBrandNeutralEmphasizedHigh) }

    @objc open var colorBackgroundStatusNeutralOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandNeutralEmphasizedHigh, dark: sysColorBrandNeutralEmphasizedHigh) }

    @objc open var colorBackgroundStatusAttractiveMuted: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandAttractiveLowest, dark: sysColorBrandAttractiveHighest) }

    @objc open var colorBackgroundStatusAttractiveEmphasized: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandWarningDefault, dark: sysColorBrandWarningDefault) }

    @objc open var colorBackgroundStatusWarningMuted: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandWarningLowest, dark: sysColorBrandWarningHighest) }

    @objc open var colorBackgroundStatusWarningMutedOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandWarningHighest, dark: sysColorBrandWarningHighest) }

    @objc open var colorBackgroundStatusWarningEmphasized: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandWarningDefault, dark: sysColorBrandWarningDefault) }

    @objc open var colorBackgroundStatusNegativeMuted: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandNegativeLowest, dark: sysColorBrandNeutralEmphasizedHighest) }

    @objc open var colorBackgroundStatusNegativeMutedOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNegativeHighest) }

    @objc open var colorBackgroundStatusNegativeEmphasized: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandNegativeDefault, dark: sysColorBrandNegativeHighest) }

    @objc open var colorBackgroundStatusPositiveMuted: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandPositiveLowest, dark: sysColorBrandNeutralEmphasizedHigh) }

    @objc open var colorBackgroundStatusPositiveMutedOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandPositiveHighest) }

    @objc open var colorBackgroundStatusPositiveEmphasized: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandPositiveDefault, dark: sysColorBrandPositiveHighest) }

    @objc open var colorBackgroundStatusInformationMuted: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandInformationLowest, dark: sysColorBrandNeutralEmphasizedHigh) }

    @objc open var colorBackgroundStatusInformationMutedOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandInformationHighest) }

    @objc open var colorBackgroundStatusInformationEmphasized: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandInformationDefault, dark: sysColorBrandInformationHighest) }

    // MARK: Semantic token - Colors - Background - Action

    @objc open var colorBackgroundActionEnabled: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandNeutralEmphasizedBlack, dark: sysColorBrandNeutralMutedLower) }

    @objc open var colorBackgroundActionEnabledOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandNeutralMutedLower, dark: sysColorBrandNeutralMutedLower) }

    @objc open var colorBackgroundActionEnabledOnBackgroundStatusExcNegative: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandNeutralEmphasizedBlack, dark: sysColorBrandNeutralEmphasizedBlack) }

    @objc open var colorBackgroundActionEnabledOnBackgroundStatusNegative: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandNeutralMutedWhite, dark: sysColorBrandNeutralMutedWhite) }

    @objc open var colorBackgroundActionPressed: ColorSemanticToken? { MultipleColorTokens(sysColorBrandPrimaryLow) }

    @objc open var colorBackgroundActionPressedOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandPrimaryLow) }

    @objc open var colorBackgroundActionPressedOnBackgroundStatusExcNegative: ColorSemanticToken? { MultipleColorTokens(sysColorBrandPrimaryDefault) }

    @objc open var colorBackgroundActionPressedOnBackgroundStautsNegative: ColorSemanticToken? { MultipleColorTokens(sysColorBrandPrimaryDefault) }

    @objc open var colorBackgroundActionDisabled: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandNeutralMutedMedium, dark: sysColorBrandNeutralMutedLowest) }

    @objc open var colorBackgroundActionDisabledOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralMutedLowest) }

    @objc open var colorBackgroundActionDisabledOnBackgroundStatusExcNegative: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralMutedMedium) }

    @objc open var colorBackgroundActionDisabledOnBackgroundStatusNegative: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedLowest) }

    @objc open var colorBackgroundActionFocus: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandNeutralEmphasizedLowest, dark: sysColorBrandNeutralMutedMedium) }

    @objc open var colorBackgroundActionFocusOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralMutedMedium) }

    @objc open var colorBackgroundActionFocusOnBackgroundStatusExcNegative: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedLow) }

    @objc open var colorBackgroundActionFocusOnBackgroundStatusNegative: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedBlack) }

    // MARK: Semantic token - Colors - Background - Always

    @objc open var colorBackgroundAlwaysBlack: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedBlack) }

    @objc open var colorBackgroundAlwaysWhite: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralMutedWhite) }

    @objc open var colorBackgroundAlwaysAttractive: ColorSemanticToken? { MultipleColorTokens(sysColorBrandWarningDefault) }

    @objc open var colorBackgroundAlwaysWarning: ColorSemanticToken? { MultipleColorTokens(sysColorBrandWarningDefault) }

    @objc open var colorBackgroundAlwaysNegative: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNegativeDefault) }

    @objc open var colorBackgroundAlwaysPositive: ColorSemanticToken? { MultipleColorTokens(sysColorBrandPositiveDefault) }

    @objc open var colorBackgroundAlwaysInformation: ColorSemanticToken? { MultipleColorTokens(sysColorBrandInformationDefault) }

    // MARK: Semantic token - Colors - Content

    @objc open var colorContentDefault: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandNeutralEmphasizedBlack, dark: sysColorBrandNeutralMutedLower) }

    @objc open var colorContentDefaultOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandNeutralMutedLower, dark: sysColorBrandNeutralMutedLower) }

    @objc open var colorContentMuted: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandNeutralEmphasizedLowest, dark: sysColorBrandNeutralEmphasizedHigh) }

    @objc open var colorContentMutedOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandNeutralMutedMedium, dark: sysColorBrandNeutralMutedHigh) }

    @objc open var colorContentBrandPrimary: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandPrimaryDefault, dark: sysColorBrandPrimaryLow) }

    @objc open var colorContentBrandPrimaryOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandPrimaryLow, dark: sysColorBrandPrimaryLow) }

    @objc open var colorContentBrandSecondary: ColorSemanticToken? { nil }

    @objc open var colorContentBrandTertiary: ColorSemanticToken? { nil }

    @objc open var colorContentStatusAttractive: ColorSemanticToken? { nil }

    @objc open var colorContentStatusNegative: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandNegativeDefault, dark: sysColorBrandNegativeDefault) }

    @objc open var colorContentStatusPositive: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandPositiveDefault, dark: sysColorBrandPositiveDefault) }

    @objc open var colorContentStatusInformation: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandInformationDefault, dark: sysColorBrandInformationDefault) }

    // MARK: Semantic token - Colors - Border

    @objc open var colorBorderDefault: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandNeutralMutedMedium, dark: sysColorBrandNeutralEmphasizedLowest) }

    @objc open var colorBorderDefaultOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandNeutralEmphasizedLowest, dark: sysColorBrandNeutralEmphasizedLowest) }

    @objc open var colorContentDefaultOnBackgroundBrandPrimary: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandNeutralMutedWhite, dark: sysColorBrandNeutralEmphasizedBlack) }

    @objc open var colorBorderEmphasized: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandNeutralEmphasizedBlack, dark: sysColorBrandNeutralMutedLower) }

    @objc open var colorBorderEmphasizedOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandNeutralMutedWhite, dark: sysColorBrandNeutralMutedLower) }

    @objc open var colorContentDisabled: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandNeutralMutedMedium, dark: sysColorBrandNeutralEmphasizedLowest) }

    @objc open var colorContentDisabledOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedLowest) }

    @objc open var colorBorderBrandPrimary: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandPrimaryDefault, dark: sysColorBrandPrimaryLow) }

    @objc open var colorBorderBrandPrimaryOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandPrimaryLow, dark: sysColorBrandPrimaryLow) }

    @objc open var colorBorderBrandSecondary: ColorSemanticToken? { nil }

    @objc open var colorBorderBrandTertiary: ColorSemanticToken? { nil }

    @objc open var colorBorderBrandStatusAttractive: ColorSemanticToken? { nil }

    @objc open var colorBorderBrandStatusWarning: ColorSemanticToken? { nil }

    @objc open var colorBorderBrandStatusNegative: ColorSemanticToken? { nil }

    @objc open var colorBorderBrandStatusPositive: ColorSemanticToken? { nil }

    @objc open var colorBorderBrandStatusInformation: ColorSemanticToken? { nil }

    @objc open var colorContentActionEnabled: ColorSemanticToken? { MultipleColorTokens(light: sysColorBrandNeutralEmphasizedBlack, dark: sysColorBrandNeutralMutedLower) }

    @objc open var colorContentActionEnabledOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralMutedLower) }

    @objc open var colorContentActionEnabledOnBackgroundStatusExcNegative: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedBlack) }

    @objc open var colorContentActionEnabledOnBackgroundStatusNegative: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralMutedWhite) }
    
    /*
         TODO: #124
         WARNING: Some color semantic tokens are missing because of Figma synchronization issues

         - color content
         - color border
         - color on background
         - color elevation
         - color decorative
         - color chart
     */
}
// swiftlint:enable line_length
