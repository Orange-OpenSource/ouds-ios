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
import OUDSTokensRaw
import OUDSTokensSemantic

// ଘ( ･ω･)_/ﾟ･:*:･｡☆
// [File to generate with the tokenator]
// WARNING: Not synchronized anymore with the Figjam

// swiftlint:disable line_length
/// Defines basic values common to all themes for `ColorSemanticTokens`.
/// These values can be overriden inside `OUDSTheme` subclasses (in extensions or not, in the same module or not) thanks to the `@objc open` combination.
extension OUDSTheme: ColorSemanticTokens {

    // MARK: Semantic token - Colors - Background

    @objc open var colorBackgroundPrimary: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralMutedWhite, dark: sysColorBrandNeutralEmphasizedHighest) }

    @objc open var colorBackgroundDefaultSecondary: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralMutedLowest, dark: sysColorBrandNeutralEmphasizedHigher) }

    @objc open var colorBackgroundDefaultTertiary: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandAttractiveLowest, dark: sysColorBrandAttractiveHighest) }

    @objc open var colorBackgroundEmphasizedPrimary: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralEmphasizedHighest, dark: sysColorBrandNeutralEmphasizedMedium) }

    @objc open var colorBackgroundBrandPrimary: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandPrimaryDefault, dark: sysColorBrandPrimaryLow) }

    @objc open var colorBackgroundBrandSecondary: ColorSemanticToken { nil }

    @objc open var colorBackgroundBrandTertiary: ColorSemanticToken { nil }

    @objc open var colorBackgroundStatusNeutral: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralEmphasizedLowest, dark: sysColorBrandNeutralEmphasizedHigh) }

    @objc open var colorBackgroundStatusNeutralOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralEmphasizedHigh, dark: sysColorBrandNeutralEmphasizedHigh) }

    @objc open var colorBackgroundStatusAttractiveMuted: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandAttractiveLowest, dark: sysColorBrandAttractiveHighest) }

    @objc open var colorBackgroundStatusAttractiveEmphasized: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandWarningDefault, dark: sysColorBrandWarningDefault) }

    @objc open var colorBackgroundStatusWarningMuted: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandWarningLowest, dark: sysColorBrandWarningHighest) }

    @objc open var colorBackgroundStatusWarningMutedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandWarningHighest, dark: sysColorBrandWarningHighest) }

    @objc open var colorBackgroundStatusWarningEmphasized: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandWarningDefault, dark: sysColorBrandWarningDefault) }

    @objc open var colorBackgroundStatusNegativeMuted: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNegativeLowest, dark: sysColorBrandNeutralEmphasizedHighest) }

    @objc open var colorBackgroundStatusNegativeMutedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(sysColorBrandNegativeHighest) }

    @objc open var colorBackgroundStatusNegativeEmphasized: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNegativeDefault, dark: sysColorBrandNegativeHighest) }

    @objc open var colorBackgroundStatusPositiveMuted: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandPositiveLowest, dark: sysColorBrandNeutralEmphasizedHigh) }

    @objc open var colorBackgroundStatusPositiveMutedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(sysColorBrandPositiveHighest) }

    @objc open var colorBackgroundStatusPositiveEmphasized: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandPositiveDefault, dark: sysColorBrandPositiveHighest) }

    @objc open var colorBackgroundStatusInformationMuted: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandInformationLowest, dark: sysColorBrandNeutralEmphasizedHigh) }

    @objc open var colorBackgroundStatusInformationMutedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(sysColorBrandInformationHighest) }

    @objc open var colorBackgroundStatusInformationEmphasized: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandInformationDefault, dark: sysColorBrandInformationHighest) }

    // MARK: Semantic token - Colors - Background - Action

    @objc open var colorBackgroundActionEnabled: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralEmphasizedBlack, dark: sysColorBrandNeutralMutedLower) }

    @objc open var colorBackgroundActionEnabledOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralMutedLower, dark: sysColorBrandNeutralMutedLower) }

    @objc open var colorBackgroundActionEnabledOnBackgroundStatusExcNegative: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralEmphasizedBlack, dark: sysColorBrandNeutralEmphasizedBlack) }

    @objc open var colorBackgroundActionEnabledOnBackgroundStatusNegative: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralMutedWhite, dark: sysColorBrandNeutralMutedWhite) }

    @objc open var colorBackgroundActionPressed: ColorSemanticToken { MultipleColorTokens(sysColorBrandPrimaryLow) }

    @objc open var colorBackgroundActionPressedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(sysColorBrandPrimaryLow) }

    @objc open var colorBackgroundActionPressedOnBackgroundStatusExcNegative: ColorSemanticToken { MultipleColorTokens(sysColorBrandPrimaryDefault) }

    @objc open var colorBackgroundActionPressedOnBackgroundStautsNegative: ColorSemanticToken { MultipleColorTokens(sysColorBrandPrimaryDefault) }

    @objc open var colorBackgroundActionDisabled: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralMutedMedium, dark: sysColorBrandNeutralMutedLowest) }

    @objc open var colorBackgroundActionDisabledOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralMutedLowest) }

    @objc open var colorBackgroundActionDisabledOnBackgroundStatusExcNegative: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralMutedMedium) }

    @objc open var colorBackgroundActionDisabledOnBackgroundStatusNegative: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralEmphasizedLowest) }

    @objc open var colorBackgroundActionFocus: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralEmphasizedLowest, dark: sysColorBrandNeutralMutedMedium) }

    @objc open var colorBackgroundActionFocusOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralMutedMedium) }

    @objc open var colorBackgroundActionFocusOnBackgroundStatusExcNegative: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralEmphasizedLow) }

    @objc open var colorBackgroundActionFocusOnBackgroundStatusNegative: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralEmphasizedBlack) }

    // MARK: Semantic token - Colors - Background - Always

    @objc open var colorBackgroundAlwaysBlack: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralEmphasizedBlack) }

    @objc open var colorBackgroundAlwaysWhite: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralMutedWhite) }

    @objc open var colorBackgroundAlwaysAttractive: ColorSemanticToken { MultipleColorTokens(sysColorBrandWarningDefault) }

    @objc open var colorBackgroundAlwaysWarning: ColorSemanticToken { MultipleColorTokens(sysColorBrandWarningDefault) }

    @objc open var colorBackgroundAlwaysNegative: ColorSemanticToken { MultipleColorTokens(sysColorBrandNegativeDefault) }

    @objc open var colorBackgroundAlwaysPositive: ColorSemanticToken { MultipleColorTokens(sysColorBrandPositiveDefault) }

    @objc open var colorBackgroundAlwaysInformation: ColorSemanticToken { MultipleColorTokens(sysColorBrandInformationDefault) }

    // MARK: Semantic token - Colors - Background - Transparent

    @objc open var colorBackgroundTransparentDefault: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorTransparentBlack0) }

    // MARK: Semantic token - Colors - Content

    @objc open var colorContentDefault: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralEmphasizedBlack, dark: sysColorBrandNeutralMutedLower) }

    @objc open var colorContentDefaultOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralMutedLower, dark: sysColorBrandNeutralMutedLower) }

    @objc open var colorContentMuted: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralEmphasizedLowest, dark: sysColorBrandNeutralEmphasizedHigh) }

    @objc open var colorContentMutedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralMutedMedium, dark: sysColorBrandNeutralMutedHigh) }

    @objc open var colorContentBrandPrimary: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandPrimaryDefault, dark: sysColorBrandPrimaryLow) }

    @objc open var colorContentBrandPrimaryOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandPrimaryLow, dark: sysColorBrandPrimaryLow) }

    @objc open var colorContentBrandSecondary: ColorSemanticToken { nil }

    @objc open var colorContentBrandTertiary: ColorSemanticToken { nil }

    @objc open var colorContentStatusAttractive: ColorSemanticToken { nil }

    @objc open var colorContentStatusNegative: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNegativeDefault, dark: sysColorBrandNegativeDefault) }

    @objc open var colorContentStatusPositive: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandPositiveDefault, dark: sysColorBrandPositiveDefault) }

    @objc open var colorContentStatusInformation: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandInformationDefault, dark: sysColorBrandInformationDefault) }

    @objc open var colorContentActionEnabled: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralEmphasizedBlack, dark: sysColorBrandNeutralMutedLower) }

    @objc open var colorContentActionEnabledOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralMutedLower) }

    @objc open var colorContentActionEnabledOnBackgroundStatusExcNegative: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralEmphasizedBlack) }

    @objc open var colorContentActionEnabledOnBackgroundStatusNegative: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralMutedWhite) }

    @objc open var colorContentActionHover: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralEmphasizedLowest, dark: sysColorBrandNeutralMutedMedium) }

    @objc open var colorContentActionHoverOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralMutedMedium) }

    @objc open var colorContentActionHoverOnBackgroundStatusExcNegative: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralEmphasizedLow) }

    @objc open var colorContentActionHoverOnBackgroundStatusNegative: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralEmphasizedBlack) }

    @objc open var colorContentTransparentDefault: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorTransparentBlack0) }

    // MARK: Semantic token - Colors - Border

    @objc open var colorBorderDefault: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralMutedMedium, dark: sysColorBrandNeutralEmphasizedLowest) }

    @objc open var colorBorderDefaultOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralEmphasizedLowest, dark: sysColorBrandNeutralEmphasizedLowest) }

    @objc open var colorContentDefaultOnBackgroundBrandPrimary: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralMutedWhite, dark: sysColorBrandNeutralEmphasizedBlack) }

    @objc open var colorBorderEmphasized: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralEmphasizedBlack, dark: sysColorBrandNeutralMutedLower) }

    @objc open var colorBorderEmphasizedOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralMutedWhite, dark: sysColorBrandNeutralMutedLower) }

    @objc open var colorContentDisabled: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralMutedMedium, dark: sysColorBrandNeutralEmphasizedLowest) }

    @objc open var colorContentDisabledOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(sysColorBrandNeutralEmphasizedLowest) }

    @objc open var colorBorderBrandPrimary: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandPrimaryDefault, dark: sysColorBrandPrimaryLow) }

    @objc open var colorBorderBrandPrimaryOnBackgroundEmphasized: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandPrimaryLow, dark: sysColorBrandPrimaryLow) }

    @objc open var colorBorderBrandSecondary: ColorSemanticToken { nil }

    @objc open var colorBorderBrandTertiary: ColorSemanticToken { nil }

    @objc open var colorBorderBrandStatusAttractive: ColorSemanticToken { nil }

    @objc open var colorBorderBrandStatusWarning: ColorSemanticToken { nil }

    @objc open var colorBorderBrandStatusNegative: ColorSemanticToken { nil }

    @objc open var colorBorderBrandStatusPositive: ColorSemanticToken { nil }

    @objc open var colorBorderBrandStatusInformation: ColorSemanticToken { nil }

    @objc open var colorBorderTransparentDefault: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorTransparentBlack0) }
}
// swiftlint:enable line_length
