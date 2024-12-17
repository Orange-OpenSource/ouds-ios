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

    // MARK: Font
    public var buttonFont: OUDSTokensSemantic.MultipleFontCompositeRawTokens { typeLabelStrongLarge }

    // MARK: Background Color Default
    public var buttonColorBgDefaultEnabled: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }
    public var buttonColorBgDefaultHover: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }
    public var buttonColorBgDefaultPressed: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }
    public var buttonColorBgDefaultDisabled: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }
    public var buttonColorBgDefaultLoading: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }
    public var buttonColorBgDefaultFocus: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }

    public var buttonColorBgDefaultEnabledMono: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }
    public var buttonColorBgDefaultHoverMono: MultipleColorSemanticTokens { colorRepositoryOpacityBlackHigher }
    public var buttonColorBgDefaultPressedMono: MultipleColorSemanticTokens { colorRepositoryOpacityWhiteHigher }
    public var buttonColorBgDefaultDisabledMono: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }
    public var buttonColorBgDefaultLoadingMono: MultipleColorSemanticTokens { colorRepositoryOpacityWhiteHigher }
    public var buttonColorBgDefaultFocusMono: MultipleColorSemanticTokens { colorRepositoryOpacityBlackHigher }

    // MARK: Background Color Minimal
    public var buttonColorBgMinimalEnabled: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }
    public var buttonColorBgMinimalHover: MultipleColorSemanticTokens { colorActionSupportHover }
    public var buttonColorBgMinimalPressed: MultipleColorSemanticTokens { colorActionSupportPressed }
    public var buttonColorBgMinimalDisabled: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }
    public var buttonColorBgMinimalLoading: MultipleColorSemanticTokens { colorActionSupportLoading }
    public var buttonColorBgMinimalFocus: MultipleColorSemanticTokens { colorActionSupportFocus }

    public var buttonColorBgMinimalEnabledMono: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }
    public var buttonColorBgMinimalHoverMono: MultipleColorSemanticTokens { colorRepositoryOpacityBlackHigher }
    public var buttonColorBgMinimalPressedMono: MultipleColorSemanticTokens { colorRepositoryOpacityWhiteHigher }
    public var buttonColorBgMinimalDisabledMono: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }
    public var buttonColorBgMinimalLoadingMono: MultipleColorSemanticTokens { colorRepositoryOpacityWhiteHigher }
    public var buttonColorBgMinimalFocusMono: MultipleColorSemanticTokens { colorRepositoryOpacityBlackHigher }

    // MARK: Background Color Strong
    public var buttonColorBgStrongEnabledMono: MultipleColorSemanticTokens { colorRepositoryNeutralEmphasizedBlack }
    public var buttonColorBgStrongHoverMono: MultipleColorSemanticTokens { colorRepositoryOpacityBlackHigher }
    public var buttonColorBgStrongPressedMono: MultipleColorSemanticTokens { colorRepositoryOpacityWhiteHigher }
    public var buttonColorBgStrongDisabledMono: MultipleColorSemanticTokens { colorRepositoryOpacityBlackMedium }
    public var buttonColorBgStrongLoadingMono: MultipleColorSemanticTokens { colorRepositoryOpacityWhiteHigher }
    public var buttonColorBgStrongFocusMono: MultipleColorSemanticTokens { colorRepositoryOpacityBlackHigher }

    // MARK: Content Color Default
    public var buttonColorContentDefaultEnabled: MultipleColorSemanticTokens { colorActionEnabled }
    public var buttonColorContentDefaultHover: MultipleColorSemanticTokens { colorActionHover }
    public var buttonColorContentDefaultPressed: MultipleColorSemanticTokens { colorActionPressed }
    public var buttonColorContentDefaultDisabled: MultipleColorSemanticTokens { colorActionDisabled }
    public var buttonColorContentDefaultLoading: MultipleColorSemanticTokens { colorActionLoading }
    public var buttonColorContentDefaultFocus: MultipleColorSemanticTokens { colorActionFocus }

    public var buttonColorContentDefaultEnabledMono: MultipleColorSemanticTokens { colorRepositoryNeutralEmphasizedBlack }
    public var buttonColorContentDefaultHoverMono: MultipleColorSemanticTokens { colorRepositoryNeutralMutedWhite }
    public var buttonColorContentDefaultPressedMono: MultipleColorSemanticTokens { colorRepositoryNeutralEmphasizedBlack }
    public var buttonColorContentDefaultDisabledMono: MultipleColorSemanticTokens { colorRepositoryOpacityBlackMedium }
    public var buttonColorContentDefaultLoadingMono: MultipleColorSemanticTokens { colorRepositoryNeutralEmphasizedBlack }
    public var buttonColorContentDefaultFocusMono: MultipleColorSemanticTokens { colorRepositoryNeutralMutedWhite }

    // MARK: Content Color Minimal
    public var buttonColorContentMinimalEnabled: MultipleColorSemanticTokens { colorActionEnabled }
    public var buttonColorContentMinimalHover: MultipleColorSemanticTokens { colorActionHover }
    public var buttonColorContentMinimalPressed: MultipleColorSemanticTokens { colorActionPressed }
    public var buttonColorContentMinimalDisabled: MultipleColorSemanticTokens { colorActionDisabled }
    public var buttonColorContentMinimalLoading: MultipleColorSemanticTokens { colorActionLoading }
    public var buttonColorContentMinimalFocus: MultipleColorSemanticTokens { colorActionFocus }

    public var buttonColorContentMinimalEnabledMono: MultipleColorSemanticTokens { colorRepositoryNeutralEmphasizedBlack }
    public var buttonColorContentMinimalHoverMono: MultipleColorSemanticTokens { colorRepositoryNeutralMutedWhite }
    public var buttonColorContentMinimalPressedMono: MultipleColorSemanticTokens { colorRepositoryNeutralEmphasizedBlack }
    public var buttonColorContentMinimalDisabledMono: MultipleColorSemanticTokens { colorRepositoryOpacityBlackMedium }
    public var buttonColorContentMinimalLoadingMono: MultipleColorSemanticTokens { colorRepositoryNeutralEmphasizedBlack }
    public var buttonColorContentMinimalFocusMono: MultipleColorSemanticTokens { colorRepositoryNeutralMutedWhite }

    // MARK: Content Color Strong
    public var buttonColorContentStrongEnabledMono: MultipleColorSemanticTokens { colorRepositoryNeutralMutedWhite }
    public var buttonColorContentStrongHoverMono: MultipleColorSemanticTokens { colorRepositoryNeutralMutedWhite }
    public var buttonColorContentStrongPressedMono: MultipleColorSemanticTokens { colorRepositoryNeutralEmphasizedBlack }
    public var buttonColorContentStrongDisabledMono: MultipleColorSemanticTokens { colorRepositoryOpacityWhiteHigh }
    public var buttonColorContentStrongLoadingMono: MultipleColorSemanticTokens { colorRepositoryNeutralEmphasizedBlack }
    public var buttonColorContentStrongFocusMono: MultipleColorSemanticTokens { colorRepositoryNeutralMutedWhite }

    // MARK: Border width
    public var buttonBorderWidthDefault: BorderWidthSemanticToken { borderWidthDefault }
    public var buttonBorderWidthDefaultInteraction: BorderWidthSemanticToken { borderWidthMedium }
    public var buttonBorderWidthMinimal: BorderWidthSemanticToken { borderWidthNone }
    public var buttonBorderWidthMinimalInteraction: BorderWidthSemanticToken { borderWidthNone }
    public var buttonBorderRadius: BorderRadiusSemanticToken { borderRadiusNone }

    // MARK: Border Color Default
    public var buttonColorBorderDefaultEnabled: MultipleColorSemanticTokens { colorActionEnabled }
    public var buttonColorBorderDefaultHover: MultipleColorSemanticTokens { colorActionHover }
    public var buttonColorBorderDefaultPressed: MultipleColorSemanticTokens { colorActionPressed }
    public var buttonColorBorderDefaultDisabled: MultipleColorSemanticTokens { colorActionDisabled }
    public var buttonColorBorderDefaultLoading: MultipleColorSemanticTokens { colorActionLoading }
    public var buttonColorBorderDefaultFocus: MultipleColorSemanticTokens { colorActionFocus }

    public var buttonColorBorderDefaultEnabledMono: MultipleColorSemanticTokens { colorRepositoryNeutralEmphasizedBlack }
    public var buttonColorBorderDefaultHoverMono: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }
    public var buttonColorBorderDefaultPressedMono: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }
    public var buttonColorBorderDefaultDisabledMono: MultipleColorSemanticTokens { colorRepositoryOpacityBlackMedium }
    public var buttonColorBorderDefaultLoadingMono: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }
    public var buttonColorBorderDefaultFocusMono: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }

    // MARK: Border Color Minimal
    public var buttonColorBorderMinimalEnabled: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }
    public var buttonColorBorderMinimalHover: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }
    public var buttonColorBorderMinimalPressed: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }
    public var buttonColorBorderMinimalDisabled: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }
    public var buttonColorBorderMinimalLoading: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }
    public var buttonColorBorderMinimalFocus: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }

    public var buttonColorBorderMinimalEnabledMono: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }
    public var buttonColorBorderMinimalHoverMono: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }
    public var buttonColorBorderMinimalPressedMono: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }
    public var buttonColorBorderMinimalDisabledMono: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }
    public var buttonColorBorderMinimalLoadingMono: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }
    public var buttonColorBorderMinimalFocusMono: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }

    // MARK: Border Color Strong
    public var buttonColorBorderStrongEnabledMono: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }
    public var buttonColorBorderStrongHoverMono: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }
    public var buttonColorBorderStrongPressedMono: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }
    public var buttonColorBorderStrongDisabledMono: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }
    public var buttonColorBorderStrongLoadingMono: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }
    public var buttonColorBorderStrongFocusMono: MultipleColorSemanticTokens { colorOpacityInvisibleBlack }
}
