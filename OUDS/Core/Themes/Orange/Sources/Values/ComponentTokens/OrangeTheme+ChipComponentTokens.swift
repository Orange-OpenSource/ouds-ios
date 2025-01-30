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
    @objc open var chipBorderRadius: BorderRadiusSemanticToken { borders.borderRadiusTall }
    @objc open var chipBorderWidthDefault: BorderWidthSemanticToken { borders.borderWidthDefault }
    @objc open var chipBorderWidthDefaultInteraction: BorderWidthSemanticToken { borders.borderWidthMedium }
    @objc open var chipColorBgDisabled: MultipleColorSemanticTokens { colors.colorOpacityTransparent }
    @objc open var chipColorBgEnabled: MultipleColorSemanticTokens { colors.colorOpacityTransparent }
    @objc open var chipColorBgFocus: MultipleColorSemanticTokens { colors.colorOpacityTransparent }
    @objc open var chipColorBgHover: MultipleColorSemanticTokens { colors.colorOpacityTransparent }
    @objc open var chipColorBgPressed: MultipleColorSemanticTokens { colors.colorOpacityTransparent }
    @objc open var chipColorBorderDisabled: MultipleColorSemanticTokens { colors.colorActionDisabled }
    @objc open var chipColorBorderEnabled: MultipleColorSemanticTokens { colors.colorActionEnabled }
    @objc open var chipColorBorderHover: MultipleColorSemanticTokens { colors.colorActionHover }
    @objc open var chipColorBorderPressed: MultipleColorSemanticTokens { colors.colorActionPressed }
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
