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
    public var buttonSpacePaddingInlineStartIconEnd: SpaceSemanticToken { spacePaddingInlineSpacious }
    public var buttonSpacePaddingInlineEndIconStart: SpaceSemanticToken { spacePaddingInlineSpacious }
    public var buttonSpacePaddingInlineIconNone: SpaceSemanticToken { spacePaddingInlineHuge }
    public var buttonSpacePaddingInlineIconStart: SpaceSemanticToken { spacePaddingInlineTaller }
    public var buttonSpacePaddingInlineArrowStart: SpaceSemanticToken { spacePaddingInlineTall }
    public var buttonSpacePaddingInlineArrowEnd: SpaceSemanticToken { spacePaddingInlineTall }
    public var buttonSpacePaddingBlock: SpaceSemanticToken { spacePaddingBlockMedium }
    public var buttonSpaceInsetIconAlone: SpaceSemanticToken { spaceInsetMedium }
    public var buttonSpaceColumnGapIcon: SpaceSemanticToken { spaceColumnGapShort }
    public var buttonSpaceColumnGapArrow: SpaceSemanticToken { spaceColumnGapShorter }

    // MARK: Size
    public var buttonSizeIcon: SizeSemanticToken { sizeIconWithLabelLargeSizeXs }
    public var buttonSizeIconOnly: SizeSemanticToken { sizeIconWithLabelLargeSizeSm }
    public var buttonSizeLoader: SizeSemanticToken { sizeIconWithLabelLargeSizeXs }
    public var buttonSizeMaxHeight: DimensionRawToken { DimensionRawTokens.dimension600 }
    public var buttonSizeMinHeight: DimensionRawToken { DimensionRawTokens.dimension600 }
    public var buttonSizeMinWidth: DimensionRawToken { DimensionRawTokens.dimension600 }

    public var buttonFont: OUDSTokensSemantic.MultipleFontCompositeRawTokens { typeLabelStrongLarge }

    // MARK: - Colors Background
    // MARK: Default
    public var buttonColorBgDefaultEnabled: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }
    public var buttonColorBgDefaultHover: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }
    public var buttonColorBgDefaultPressed: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }
    public var buttonColorBgDefaultDisabled: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }
    public var buttonColorBgDefaultLoading: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }
    public var buttonColorBgDefaultFocus: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }

    // MARK: Minimal
    public var buttonColorBgMinimalEnabled: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }
    public var buttonColorBgMinimalHover: MultipleColorSemanticTokens { colorActionSupportHover }
    public var buttonColorBgMinimalPressed: MultipleColorSemanticTokens { colorActionSupportPressed }
    public var buttonColorBgMinimalDisabled: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }
    public var buttonColorBgMinimalLoading: MultipleColorSemanticTokens { colorActionSupportLoading }
    public var buttonColorBgMinimalFocus: MultipleColorSemanticTokens { colorActionSupportFocus }

    // MARK: Strong : TODO: Add

    // MARK: - Color Content
    // MARK: Default: TODO: Add Mono
    public var buttonColorContentDefaultEnabled: MultipleColorSemanticTokens { colorActionEnabled }
    public var buttonColorContentDefaultHover: MultipleColorSemanticTokens { colorActionHover }
    public var buttonColorContentDefaultPressed: MultipleColorSemanticTokens { colorActionPressed }
    public var buttonColorContentDefaultDisabled: MultipleColorSemanticTokens { colorActionDisabled }
    public var buttonColorContentDefaultLoading: MultipleColorSemanticTokens { colorActionLoading }
    public var buttonColorContentDefaultFocus: MultipleColorSemanticTokens { colorActionFocus }

    // MARK: Minimal TODO: Add Mono
    public var buttonColorContentMinimalEnabled: MultipleColorSemanticTokens { colorActionEnabled }
    public var buttonColorContentMinimalHover: MultipleColorSemanticTokens { colorActionHover }
    public var buttonColorContentMinimalPressed: MultipleColorSemanticTokens { colorActionPressed }
    public var buttonColorContentMinimalDisabled: MultipleColorSemanticTokens { colorActionDisabled }
    public var buttonColorContentMinimalLoading: MultipleColorSemanticTokens { colorActionLoading }
    public var buttonColorContentMinimalFocus: MultipleColorSemanticTokens { colorActionFocus }

    // MARK: Strong TODO: ADD

    // MARK: - Border
    // MARK: Default - TODO: Add Mono
    public var buttonColorBorderDefaultEnabled: MultipleColorSemanticTokens { colorActionEnabled }
    public var buttonColorBorderDefaultHover: MultipleColorSemanticTokens { colorActionHover }
    public var buttonColorBorderDefaultPressed: MultipleColorSemanticTokens { colorActionPressed }
    public var buttonColorBorderDefaultDisabled: MultipleColorSemanticTokens { colorActionDisabled }
    public var buttonColorBorderDefaultLoading: MultipleColorSemanticTokens { colorActionLoading }
    public var buttonColorBorderDefaultFocus: MultipleColorSemanticTokens { colorActionFocus }

    // MARK: Minimal - TODO: Add Mono
    public var buttonColorBorderMinimalEnabled: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }
    public var buttonColorBorderMinimalHover: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }
    public var buttonColorBorderMinimalPressed: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }
    public var buttonColorBorderMinimalDisabled: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }
    public var buttonColorBorderMinimalLoading: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }
    public var buttonColorBorderMinimalFocus: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }

    // MARK: Strong
}
