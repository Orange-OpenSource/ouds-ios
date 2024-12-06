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

import OUDSTokensComponent
import OUDSTokensRaw
import OUDSTokensSemantic

extension OUDSTheme: ButtonsComponentTokens {

    // MARK: Border
    public var buttonBorderWidthDefault: BorderWidthSemanticToken { borderWidthDefault }
    public var buttonBorderWidthDefaultInteraction: BorderWidthSemanticToken { borderWidthMedium }
    public var buttonBorderWidthMinimal: BorderWidthSemanticToken { borderWidthNone }
    public var buttonBorderWidthMinimalInteraction: BorderWidthSemanticToken { borderWidthNone }
    public var buttonBorderRadius: BorderRadiusSemanticToken { borderRadiusNone }

    // MARK: Space
    public var buttonSpacePaddingInlineStartIconEnd: SpaceSemanticToken { spacePaddingInlineTaller }
    public var buttonSpacePaddingInlineEndIconStart: SpaceSemanticToken { spacePaddingInlineTaller }
    public var buttonSpacePaddingInlineIconNone: SpaceSemanticToken { spacePaddingInlineTallest }
    public var buttonSpacePaddingInlineIconStart: SpaceSemanticToken { spacePaddingInlineWithIconTall }
    public var buttonSpacePaddingInlineArrowStart: SpaceSemanticToken { spacePaddingInlineWithArrowTall }
    public var buttonSpacePaddingInlineArrowEnd: SpaceSemanticToken { spacePaddingInlineWithArrowTall }
    public var buttonSpacePaddingBlock: SpaceSemanticToken { spacePaddingBlockMedium }
    public var buttonSpaceInsetIconAlone: SpaceSemanticToken { spaceInsetMedium }
    public var buttonSpaceColumnGapIcon: SpaceSemanticToken { spaceColumnGapWithIconMedium }
    public var buttonSpaceColumnGapArrow: SpaceSemanticToken { spaceColumnGapWithArrowShort }

    // MARK: Size
    public var buttonSizeIcon: SizeSemanticToken { sizeIconWithLabelLargeSizeShorter }
    public var buttonSizeIconOnly: SizeSemanticToken { sizeIconWithLabelLargeSizeShort }
    public var buttonSizeLoader: SizeSemanticToken { sizeIconWithLabelLargeSizeShorter }
    public var buttonSizeMaxHeight: DimensionRawToken { DimensionRawTokens.dimension600 }
    public var buttonSizeMinHeight: DimensionRawToken { DimensionRawTokens.dimension600 }
    public var buttonSizeMinWidth: DimensionRawToken { DimensionRawTokens.dimension600 }

    // MARK: Colors

    public var buttonColorBgDefaultEnabled: MultipleColorSemanticTokens { colorTransparentDefault }
    public var buttonColorBgDefaultHover: MultipleColorSemanticTokens { colorTransparentDefault }
    public var buttonColorBgDefaultPressed: MultipleColorSemanticTokens { colorTransparentDefault }
    public var buttonColorBgDefaultDisabled: MultipleColorSemanticTokens { colorTransparentDefault }
    public var buttonColorBgDefaultLoading: MultipleColorSemanticTokens { colorTransparentDefault }
    public var buttonColorBgDefaultFocus: MultipleColorSemanticTokens { colorTransparentDefault }
    public var buttonColorBgMinimalEnabled: MultipleColorSemanticTokens { colorTransparentDefault }
    public var buttonColorBgMinimalHover: MultipleColorSemanticTokens { colorActionSecondaryHover }
    public var buttonColorBgMinimalPressed: MultipleColorSemanticTokens { colorActionSecondaryPressed }
    public var buttonColorBgMinimalDisabled: MultipleColorSemanticTokens { colorTransparentDefault }
    public var buttonColorBgMinimalLoading: MultipleColorSemanticTokens { colorActionSecondaryLoading }
    public var buttonColorBgMinimalFocus: MultipleColorSemanticTokens { colorActionSecondaryFocus }
    public var buttonColorContentDefaultEnabled: MultipleColorSemanticTokens { colorActionPrimaryEnabled }
    public var buttonColorContentDefaultHover: MultipleColorSemanticTokens { colorActionPrimaryHover }
    public var buttonColorContentDefaultPressed: MultipleColorSemanticTokens { colorActionPrimaryPressed }
    public var buttonColorContentDefaultDisabled: MultipleColorSemanticTokens { colorActionDisabled }
    public var buttonColorContentDefaultLoading: MultipleColorSemanticTokens { colorActionPrimaryLoading }
    public var buttonColorContentDefaultFocus: MultipleColorSemanticTokens { colorActionPrimaryFocus }
    public var buttonColorContentMinimalEnabled: MultipleColorSemanticTokens { colorActionPrimaryEnabled }
    public var buttonColorContentMinimalHover: MultipleColorSemanticTokens { colorActionPrimaryHover }
    public var buttonColorContentMinimalPressed: MultipleColorSemanticTokens { colorActionPrimaryPressed }
    public var buttonColorContentMinimalDisabled: MultipleColorSemanticTokens { colorActionDisabled }
    public var buttonColorContentMinimalLoading: MultipleColorSemanticTokens { colorActionPrimaryLoading }
    public var buttonColorContentMinimalFocus: MultipleColorSemanticTokens { colorActionPrimaryFocus }
    public var buttonColorBorderDefaultEnabled: MultipleColorSemanticTokens { colorActionPrimaryEnabled }
    public var buttonColorBorderDefaultHover: MultipleColorSemanticTokens { colorActionPrimaryHover }
    public var buttonColorBorderDefaultPressed: MultipleColorSemanticTokens { colorActionPrimaryPressed }
    public var buttonColorBorderDefaultDisabled: MultipleColorSemanticTokens { colorActionDisabled }
    public var buttonColorBorderDefaultLoading: MultipleColorSemanticTokens { colorActionPrimaryLoading }
    public var buttonColorBorderDefaultFocus: MultipleColorSemanticTokens { colorActionPrimaryFocus }
    public var buttonColorBorderMinimalEnabled: MultipleColorSemanticTokens { colorTransparentDefault }
    public var buttonColorBorderMinimalHover: MultipleColorSemanticTokens { colorTransparentDefault }
    public var buttonColorBorderMinimalPressed: MultipleColorSemanticTokens { colorTransparentDefault }
    public var buttonColorBorderMinimalDisabled: MultipleColorSemanticTokens { colorTransparentDefault }
    public var buttonColorBorderMinimalLoading: MultipleColorSemanticTokens { colorTransparentDefault }
    public var buttonColorBorderMinimalFocus: MultipleColorSemanticTokens { colorTransparentDefault }
}
