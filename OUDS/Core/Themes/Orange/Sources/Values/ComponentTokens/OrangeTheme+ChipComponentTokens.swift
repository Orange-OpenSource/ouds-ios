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
import OUDSTokensComponent
import OUDSTokensRaw
import OUDSTokensSemantic

extension OrangeThemeChipComponentTokensProvider: ChipComponentTokens {
    @objc open var chipSizeMaxHeight: SizeSemanticToken { DimensionRawTokens.dimension400 }
    @objc open var chipSizeMinHeight: SizeSemanticToken { DimensionRawTokens.dimension400 }
    @objc open var chipBorderRadiusPill: BorderRadiusSemanticToken { borders.borderRadiusPill }
    @objc open var chipBorderWidthDefault: BorderWidthSemanticToken { borders.borderWidthDefault }
    @objc open var chipBorderWidthDefaultInteraction: BorderWidthSemanticToken { borders.borderWidthMedium }
    @objc open var chipBorderWidthDefaultInteractionMono: BorderWidthSemanticToken { borders.borderWidthNone }
    @objc open var chipColorBgFocusMono: MultipleColorSemanticTokens { colors.colorRepositoryOpacityBlackHigher }
    @objc open var chipColorBgHoverMono: MultipleColorSemanticTokens { colors.colorRepositoryOpacityBlackHigher }
    @objc open var chipColorBgPressedMono: MultipleColorSemanticTokens { colors.colorRepositoryOpacityWhiteHigher }
    @objc open var chipColorBorderDisabledMono: MultipleColorSemanticTokens { colors.colorRepositoryOpacityBlackSoft }
    @objc open var chipColorBorderEnabledMono: MultipleColorSemanticTokens { colors.colorRepositoryNeutralEmphasizedBlack }
    @objc open var chipColorContentDisabledMono: MultipleColorSemanticTokens { colors.colorRepositoryOpacityBlackSoft }
    @objc open var chipColorContentEnabledMono: MultipleColorSemanticTokens { colors.colorRepositoryNeutralEmphasizedBlack }
    @objc open var chipColorContentFocusMono: MultipleColorSemanticTokens { colors.colorRepositoryNeutralMutedWhite }
    @objc open var chipColorContentHoverMono: MultipleColorSemanticTokens { colors.colorRepositoryNeutralMutedWhite }
    @objc open var chipColorContentPressedMono: MultipleColorSemanticTokens { colors.colorRepositoryNeutralEmphasizedBlack }
    @objc open var chipColorBgDisabled: MultipleColorSemanticTokens { colors.colorOpacityTransparent }
    @objc open var chipColorBgDisabledMono: MultipleColorSemanticTokens { colors.colorOpacityTransparent }
    @objc open var chipColorBgEnabled: MultipleColorSemanticTokens { colors.colorOpacityTransparent }
    @objc open var chipColorBgEnabledMono: MultipleColorSemanticTokens { colors.colorOpacityTransparent }
    @objc open var chipColorBgFocus: MultipleColorSemanticTokens { colors.colorOpacityTransparent }
    @objc open var chipColorBgHover: MultipleColorSemanticTokens { colors.colorOpacityTransparent }
    @objc open var chipColorBgPressed: MultipleColorSemanticTokens { colors.colorOpacityTransparent }
    @objc open var chipColorBorderDisabled: MultipleColorSemanticTokens { colors.colorActionDisabled }
    @objc open var chipColorBorderEnabled: MultipleColorSemanticTokens { colors.colorActionEnabled }
    @objc open var chipColorBorderFocus: MultipleColorSemanticTokens { colors.colorActionFocus }
    @objc open var chipColorBorderFocusMono: MultipleColorSemanticTokens { colors.colorOpacityTransparent }
    @objc open var chipColorBorderHover: MultipleColorSemanticTokens { colors.colorActionHover }
    @objc open var chipColorBorderHoverMono: MultipleColorSemanticTokens { colors.colorOpacityTransparent }
    @objc open var chipColorBorderPressed: MultipleColorSemanticTokens { colors.colorActionPressed }
    @objc open var chipColorBorderPressedMono: MultipleColorSemanticTokens { colors.colorOpacityTransparent }
    @objc open var chipColorBorderSelected: MultipleColorSemanticTokens { colors.colorActionSelected }
    @objc open var chipColorContentDisabled: MultipleColorSemanticTokens { colors.colorContentDisabled }
    @objc open var chipColorContentEnabled: MultipleColorSemanticTokens { colors.colorContentDefault }
    @objc open var chipColorContentFocus: MultipleColorSemanticTokens { colors.colorContentDefault }
    @objc open var chipColorContentHover: MultipleColorSemanticTokens { colors.colorContentDefault }
    @objc open var chipColorContentPressed: MultipleColorSemanticTokens { colors.colorContentDefault }
    @objc open var chipSizeIcon: SizeSemanticToken { sizes.sizeIconWithLabelMediumSizeSm }
    @objc open var chipSpaceColumnGapColumnGap: SpaceSemanticToken { spaces.spaceColumnGapShorter }
    @objc open var chipSpaceInsetIconOnly: SpaceSemanticToken { spaces.spaceInsetMedium }
    @objc open var chipSpacePaddingBlock: SpaceSemanticToken { spaces.spacePaddingBlockMedium }
    @objc open var chipSpacePaddingInlineIconEnd: SpaceSemanticToken { spaces.spacePaddingInlineMedium }
    @objc open var chipSpacePaddingInlineIconNone: SpaceSemanticToken { spaces.spacePaddingInlineTall }
    @objc open var chipSpacePaddingInlineIconOnly: SpaceSemanticToken { spaces.spacePaddingInlineMedium }
    @objc open var chipSpacePaddingInlineIconStart: SpaceSemanticToken { spaces.spacePaddingInlineMedium }
    @objc open var chipSpacePaddingInlineLabelEnd: SpaceSemanticToken { spaces.spacePaddingInlineTall }
    @objc open var chipSpacePaddingInlineLabelStart: SpaceSemanticToken { spaces.spacePaddingInlineTall }
    @objc open var chipSpacePaddingStackPaddingBlock: SpaceSemanticToken { spaces.spacePaddingBlockShorter }
}
