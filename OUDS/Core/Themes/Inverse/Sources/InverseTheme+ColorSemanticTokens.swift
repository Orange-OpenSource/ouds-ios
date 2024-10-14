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

// ଘ( ･ω･)_/ﾟ･:*:･｡☆
// [File to generate with the tokenator]
// WARNING: Not synchronized anymore with the Figjam

// TODO: See if we can get rid of color aliases tokens providing optional values
// swiftlint:disable force_unwrapping

/// Overrides some colors using values defined in extension of `ColorRawTokens` in this current module.
extension InverseTheme {

    override public var colorBackgroundDefaultPrimary: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedHighest!) }

    override public var colorBackgroundDefaultSecondary: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedHigh!) }

    override public var colorBackgroundDefaultTertiary: ColorSemanticToken? { MultipleColorTokens(sysColorBrandAttractiveHighest!) }

    override public var colorBackgroundEmphasizedPrimary: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralMutedWhite!) }

    override public var colorBackgroundBrandPrimary: ColorSemanticToken? { MultipleColorTokens(sysColorBrandPrimaryLow!) }

    override public var colorBackgroundStatusNeutral: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedHigh!) }

    override public var colorBackgroundStatusNeutralOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedLowest) }

    override public var colorBackgroundStatusAttractiveMuted: ColorSemanticToken? { MultipleColorTokens(sysColorBrandAttractiveLowest!) }

    override public var colorBackgroundStatusAttractiveEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandWarningDefault!) }

    override public var colorBackgroundStatusWarningMuted: ColorSemanticToken? { MultipleColorTokens(sysColorBrandWarningHighest!) }

    override public var colorBackgroundStatusWarningMutedOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandWarningLowest) }

    override public var colorBackgroundStatusWarningEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandWarningDefault!) }

    override public var colorBackgroundStatusNegativeMuted: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedHighest!) }

    override public var colorBackgroundStatusNegativeMutedOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNegativeLowest) }

    override public var colorBackgroundStatusNegativeEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNegativeDefault!) }

    override public var colorBackgroundStatusPositiveMuted: ColorSemanticToken? { MultipleColorTokens(sysColorBrandPositiveHighest!) }

    override public var colorBackgroundStatusPositiveMutedOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandPositiveLowest) }

    override public var colorBackgroundStatusPositiveEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandPositiveDefault!) }

    override public var colorBackgroundStatusInformationMuted: ColorSemanticToken? { MultipleColorTokens(sysColorBrandInformationLowest!) }

    override public var colorBackgroundStatusInformationMutedOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandInformationLowest) }

    override public var colorBackgroundStatusInformationEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandPositiveLowest!) }

    override public var colorContentDefault: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralMutedWhite!) }

    override public var colorContentDefaultOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedBlack!) }

    override public var colorContentDefaultOnBackgroundBrandPrimary: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedBlack!) }

    override public var colorContentMuted: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedMedium!) }

    override public var colorContentMutedOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedLowest!) }

    override public var colorContentDisabled: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedLowest!) }

    override public var colorContentDisabledOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralMutedMedium!) }

    override public var colorContentBrandPrimary: ColorSemanticToken? { MultipleColorTokens(sysColorBrandPrimaryLow!) }

    override public var colorContentBrandPrimaryOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandPrimaryDefault!) }

    override public var colorContentBrandSecondary: ColorSemanticToken? { nil }

    override public var colorContentBrandTertiary: ColorSemanticToken? { nil }

    override public var colorContentStatusAttractive: ColorSemanticToken? { nil }

    override public var colorContentStatusNegative: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNegativeDefault!) }

    override public var colorContentStatusPositive: ColorSemanticToken? { MultipleColorTokens(sysColorBrandPositiveDefault!) }

    override public var colorContentStatusInformation: ColorSemanticToken? { MultipleColorTokens(sysColorBrandInformationDefault!) }

    override public var colorContentActionEnabled: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralMutedLower)  }

    override public var colorContentActionEnabledOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedBlack)  }

    override public var colorContentActionEnabledOnBackgroundStatusExcNegative: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedBlack)  }

    override public var colorContentActionEnabledOnBackgroundStatusNegative: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralMutedWhite)  }

    override public var colorContentActionHover: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralMutedMedium) }

    override public var colorContentActionHoverOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedLowest) }

    override public var colorContentActionHoverOnBackgroundStatusExcNegative: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedLow) }

    override public var colorContentActionHoverOnBackgroundStatusNegative: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedBlack) }

    // TODO: #124 - Add missing colorContentActionPressed* tokens
    // TODO: #124 - Add missing colorContentActionDisabled* tokens
    // TODO: #124 - Add missing colorContentActionFocus* tokens
    // TODO: #124 - Add missing colorContentVisited* tokens
    // TODO: #124 - Add missing colorContentActionSelectionSelected* tokens
    // TODO: #124 - Add missing colorContentActionSelectionHover* tokens
    // TODO: #124 - Add missing colorContentActionSelectionPressed* tokens
    // TODO: #124 - Add missing colorContentActionSelectionSelectedFocus* tokens
    // TODO: #124 - Add missing colorContentActionSelectionUnselected* tokens
    // TODO: #124 - Add missing colorContentActionAlways* tokens

    override public var colorBorderDefault: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedLowest!) }

    // TODO: #124 - Add missing colorBorderDefaultOnBackgroundBrandPrimary
    // TODO: #124 - Add missing colorBorderDefaultOnBackgroundBrandSecondary
    // TODO: #124 - Add missing colorBorderDefaultOnBackgroundBrandTertiary

    override public var colorBorderDefaultOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralMutedMedium!) }

    override public var colorBorderEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralMutedWhite!) }

    override public var colorBorderEmphasizedOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedBlack!) }

    override public var colorBorderBrandPrimary: ColorSemanticToken? { MultipleColorTokens(sysColorBrandPrimaryLow!) }

    override public var colorBorderBrandPrimaryOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandPrimaryDefault!) }

    override public var colorBorderBrandSecondary: ColorSemanticToken? { nil }

    override public var colorBorderBrandTertiary: ColorSemanticToken? { nil }

    override public var colorBorderBrandStatusAttractive: ColorSemanticToken? { nil }

    override public var colorBorderBrandStatusWarning: ColorSemanticToken? { nil }

    override public var colorBorderBrandStatusNegative: ColorSemanticToken? { nil }

    override public var colorBorderBrandStatusPositive: ColorSemanticToken? { nil }

    override public var colorBorderBrandStatusInformation: ColorSemanticToken? { nil }

    override public var colorBackgroundActionEnabled: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralMutedLower) }

    override public var colorBackgroundActionEnabledOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedBlack) }

    override public var colorBackgroundActionEnabledOnBackgroundStatusExcNegative: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedBlack) }

    override public var colorBackgroundActionEnabledOnBackgroundStatusNegative: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralMutedWhite) }

    override public var colorBackgroundActionPressed: ColorSemanticToken? { MultipleColorTokens(sysColorBrandPrimaryLow) }

    override public var colorBackgroundActionPressedOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandPrimaryDefault) }

    override public var colorBackgroundActionPressedOnBackgroundStatusExcNegative: ColorSemanticToken? { MultipleColorTokens(sysColorBrandPrimaryDefault) }

    override public var colorBackgroundActionPressedOnBackgroundStautsNegative: ColorSemanticToken? { MultipleColorTokens(sysColorBrandPrimaryDefault) }

    override public var colorBackgroundActionDisabled: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedLowest) }

    override public var colorBackgroundActionDisabledOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralMutedMedium) }

    override public var colorBackgroundActionDisabledOnBackgroundStatusExcNegative: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralMutedMedium) }

    override public var colorBackgroundActionDisabledOnBackgroundStatusNegative: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedLowest) }

    override public var colorBackgroundActionFocus: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralMutedMedium) }

    override public var colorBackgroundActionFocusOnBackgroundEmphasized: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralMutedMedium) }

    override public var colorBackgroundActionFocusOnBackgroundStatusExcNegative: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedLow) }

    override public var colorBackgroundActionFocusOnBackgroundStatusNegative: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedBlack) }

    override public var colorBackgroundAlwaysBlack: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralEmphasizedBlack) }

    override public var colorBackgroundAlwaysWhite: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNeutralMutedWhite) }

    override public var colorBackgroundAlwaysAttractive: ColorSemanticToken? { MultipleColorTokens(sysColorBrandWarningDefault) }

    override public var colorBackgroundAlwaysWarning: ColorSemanticToken? { MultipleColorTokens(sysColorBrandWarningDefault) }

    override public var colorBackgroundAlwaysNegative: ColorSemanticToken? { MultipleColorTokens(sysColorBrandNegativeDefault) }

    override public var colorBackgroundAlwaysPositive: ColorSemanticToken? { MultipleColorTokens(sysColorBrandPositiveDefault) }

    override public var colorBackgroundAlwaysInformation: ColorSemanticToken? { MultipleColorTokens(sysColorBrandInformationDefault) }

    // TODO: #124 - Add missing colorBorderActionEnabled*
    // TODO: #124 - Add missing colorBorderActionHover*
    // TODO: #124 - Add missing colorBorderActionPressed*
    // TODO: #124 - Add missing colorBorderActionDisabled*
    // TODO: #124 - Add missing colorBorderActionFocus*
    // TODO: #124 - Add missing colorBorderSelectionSelected*
    // TODO: #124 - Add missing colorBorderSelectionUnselected*
    // TODO: #124 - Add missing colorBorderAlways*
    // TODO: #124 - Add missing colorBorderOutside
    // TODO: #124 - Add missing colorOnBackgroundStatusAttractive*
    // TODO: #124 - Add missing colorOnBackgroundStatusWarning*
    // TODO: #124 - Add missing colorOnBackgroundStatusNegative*
    // TODO: #124 - Add missing colorOnBackgroundStatusPositive*
    // TODO: #124 - Add missing colorOnBackgroundStatusInformation*
    // TODO: #124 - Add missing colorOnBackgroundActionEnabled*
    // TODO: #124 - Add missing colorOnBackgroundActionHover*
    // TODO: #124 - Add missing colorOnBackgroundActionPressed*
    // TODO: #124 - Add missing colorOnBackgroundActionDisabled*
    // TODO: #124 - Add missing colorOnBackgroundActionFocus*
    // TODO: #124 - Add missing colorOnBackgroundActionAlways*
    // TODO: #124 - Add missing colorElevation*
    // TODO: #124 - Add missing colorDecorativeBrand*
    // TODO: #124 - Add missing colorDecorativeNeutral*
    // TODO: #124 - Add missing colorDecorativeAccent*
    // TODO: #124 - Add missing colorDecorativeSkin*
    // TODO: #124 - Add missing colorChart*
}
// swiftlint:enable force_unwrapping
