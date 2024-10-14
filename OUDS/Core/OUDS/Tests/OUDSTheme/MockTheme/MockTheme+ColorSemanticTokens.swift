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

// swiftlint:disable implicitly_unwrapped_optional
extension MockTheme {

    static let mockThemeColorRawToken: ColorRawToken = "#68489D"
    static let mockThemeMultipleColorTokens: ColorSemanticToken = MultipleColorTokens("#68489D")

    // MARK: Semantic token - Colors - Alias - Primary

    override var sysColorBrandPrimaryLowest: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandPrimaryLower: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandPrimaryLow: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandPrimaryDefault: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandPrimaryHigh: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandPrimaryHigher: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandPrimaryHighest: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }

    // MARK: Semantic token - Colors - Alias - Secondary

    override var sysColorBrandSecondaryLowest: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandSecondaryLower: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandSecondaryLow: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandSecondaryDefault: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandSecondaryHigh: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandSecondaryHigher: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandSecondaryHighest: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }

    // MARK: Semantic token - Colors - Alias - Tertiary

    override var sysColorBrandTertiaryLowest: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandTertiaryLower: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandTertiaryLow: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandTertiaryDefault: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandTertiaryHigh: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandTertiaryHigher: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandTertiaryHighest: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }

    // MARK: Semantic token - Colors - Alias - Neutral - Muted

    override var sysColorBrandNeutralMutedWhite: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandNeutralMutedLowest: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandNeutralMutedLower: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandNeutralMutedLow: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandNeutralMutedMedium: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandNeutralMutedHigh: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandNeutralMutedHigher: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandNeutralMutedHighest: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }

    // MARK: Semantic token - Colors - Alias - Neutral - Emphasized

    override var sysColorBrandNeutralEmphasizedLowest: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandNeutralEmphasizedLower: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandNeutralEmphasizedLow: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandNeutralEmphasizedMedium: ColorAliasSemanticToken { Self.mockThemeColorRawToken }
    override var sysColorBrandNeutralEmphasizedHigh: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandNeutralEmphasizedHigher: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandNeutralEmphasizedHighest: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandNeutralEmphasizedBlack: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }

    // MARK: Semantic token - Colors - Alias - Positive

    override var sysColorBrandPositiveLowest: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandPositiveLower: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandPositiveLow: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandPositiveDefault: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandPositiveHigh: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandPositiveHigher: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandPositiveHighest: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }

    // MARK: Semantic token - Colors - Alias - Information

    override var sysColorBrandInformationLowest: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandInformationLower: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandInformationLow: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandInformationDefault: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandInformationHigh: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandInformationHigher: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandInformationHighest: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }

    // MARK: Semantic token - Colors - Alias - Warning

    override var sysColorBrandWarningLowest: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandWarningLower: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandWarningLow: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandWarningDefault: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandWarningHigh: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandWarningHigher: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandWarningHighest: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }

    // MARK: Semantic token - Colors - Alias - Negative

    override var sysColorBrandNegativeLowest: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandNegativeLower: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandNegativeLow: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandNegativeDefault: ColorAliasSemanticToken!  { Self.mockThemeColorRawToken }
    override var sysColorBrandNegativeHigh: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandNegativeHigher: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandNegativeHighest: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }

    // MARK: Semantic token - Colors - Alias - Attractive

    override var sysColorBrandAttractiveLowest: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandAttractiveLower: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandAttractiveLow: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandAttractiveMedium: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandAttractiveHigh: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandAttractiveHigher: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }
    override var sysColorBrandAttractiveHighest: ColorAliasSemanticToken! { Self.mockThemeColorRawToken }

    // MARK: Semantic token - Colors - Background

    override var colorBackgroundDefaultPrimary: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundDefaultSecondary: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundDefaultTertiary: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundEmphasizedPrimary: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundBrandPrimary: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundBrandSecondary: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundBrandTertiary: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundStatusNeutral: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundStatusNeutralOnBackgroundEmphasized: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundStatusAttractiveMuted: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundStatusAttractiveEmphasized: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundStatusWarningMuted: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundStatusWarningMutedOnBackgroundEmphasized: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundStatusWarningEmphasized: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundStatusNegativeMuted: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundStatusNegativeMutedOnBackgroundEmphasized: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundStatusNegativeEmphasized: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundStatusPositiveMuted: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundStatusPositiveMutedOnBackgroundEmphasized: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundStatusPositiveEmphasized: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundStatusInformationMuted: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundStatusInformationMutedOnBackgroundEmphasized: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundStatusInformationEmphasized: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Background - Action

    override var colorBackgroundActionEnabled: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundActionEnabledOnBackgroundEmphasized: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundActionEnabledOnBackgroundStatusExcNegative: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundActionEnabledOnBackgroundStatusNegative: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundActionPressed: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundActionPressedOnBackgroundEmphasized: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundActionPressedOnBackgroundStatusExcNegative: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundActionPressedOnBackgroundStautsNegative: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundActionDisabled: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundActionDisabledOnBackgroundEmphasized: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundActionDisabledOnBackgroundStatusExcNegative: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundActionDisabledOnBackgroundStatusNegative: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundActionFocus: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundActionFocusOnBackgroundEmphasized: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundActionFocusOnBackgroundStatusExcNegative: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundActionFocusOnBackgroundStatusNegative: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Background - Transparent

    override var colorBackgroundTransparentDefault: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Content

    override var colorContentDefault: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorContentDefaultOnBackgroundEmphasized: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorContentDefaultOnBackgroundBrandPrimary: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorContentMuted: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorContentMutedOnBackgroundEmphasized: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorContentDisabled: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorContentDisabledOnBackgroundEmphasized: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorContentBrandPrimary: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorContentBrandPrimaryOnBackgroundEmphasized: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorContentBrandSecondary: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorContentBrandTertiary: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorContentStatusAttractive: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorContentStatusNegative: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorContentStatusPositive: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorContentStatusInformation: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorContentActionEnabled: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorContentActionEnabledOnBackgroundEmphasized: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorContentActionEnabledOnBackgroundStatusExcNegative: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorContentActionEnabledOnBackgroundStatusNegative: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorContentActionHover: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorContentActionHoverOnBackgroundEmphasized: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorContentActionHoverOnBackgroundStatusExcNegative: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorContentActionHoverOnBackgroundStatusNegative: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorContentTransparentDefault: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

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

    // MARK: Semantic token - Colors - Border

    override var colorBorderDefault: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBorderDefaultOnBackgroundEmphasized: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    // TODO: #124 - Add missing colorBorderDefaultOnBackgroundBrandPrimary
    // TODO: #124 - Add missing colorBorderDefaultOnBackgroundBrandSecondary
    // TODO: #124 - Add missing colorBorderDefaultOnBackgroundBrandTertiary

    override var colorBorderEmphasized: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBorderEmphasizedOnBackgroundEmphasized: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBorderBrandPrimary: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBorderBrandPrimaryOnBackgroundEmphasized: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBorderBrandSecondary: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBorderBrandTertiary: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBorderBrandStatusAttractive: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBorderBrandStatusWarning: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBorderBrandStatusNegative: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBorderBrandStatusPositive: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBorderBrandStatusInformation: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

    override var colorBorderTransparentDefault: ColorSemanticToken? { Self.mockThemeMultipleColorTokens }

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
// swiftlint:enable  implicitly_unwrapped_optional
