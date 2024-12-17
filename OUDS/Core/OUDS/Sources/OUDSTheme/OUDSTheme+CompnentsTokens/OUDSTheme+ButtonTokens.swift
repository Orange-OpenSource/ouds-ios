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
    public var buttonSpacePaddingInlineStartIconEnd: SpaceSemanticToken { spaces.spacePaddingInlineSpacious }
    public var buttonSpacePaddingInlineEndIconStart: SpaceSemanticToken { spaces.spacePaddingInlineSpacious }
    public var buttonSpacePaddingInlineIconNone: SpaceSemanticToken { spaces.spacePaddingInlineHuge }
    public var buttonSpacePaddingInlineIconStart: SpaceSemanticToken { spaces.spacePaddingInlineTaller }
    public var buttonSpacePaddingInlineArrowStart: SpaceSemanticToken { spaces.spacePaddingInlineTall }
    public var buttonSpacePaddingInlineArrowEnd: SpaceSemanticToken { spaces.spacePaddingInlineTall }
    public var buttonSpacePaddingBlock: SpaceSemanticToken { spaces.spacePaddingBlockMedium }
    public var buttonSpaceInsetIconAlone: SpaceSemanticToken { spaces.spaceInsetMedium }
    public var buttonSpaceColumnGapIcon: SpaceSemanticToken { spaces.spaceColumnGapShort }
    public var buttonSpaceColumnGapArrow: SpaceSemanticToken { spaces.spaceColumnGapShorter }

    // MARK: Size
    public var buttonSizeIcon: SizeSemanticToken { sizes.sizeIconWithLabelLargeSizeXs }
    public var buttonSizeIconOnly: SizeSemanticToken { sizes.sizeIconWithLabelLargeSizeSm }
    public var buttonSizeLoader: SizeSemanticToken { sizes.sizeIconWithLabelLargeSizeXs }
    public var buttonSizeMaxHeight: DimensionRawToken { DimensionRawTokens.dimension600 }
    public var buttonSizeMinHeight: DimensionRawToken { DimensionRawTokens.dimension600 }
    public var buttonSizeMinWidth: DimensionRawToken { DimensionRawTokens.dimension600 }

    // MARK: Font
    public var buttonFont: OUDSTokensSemantic.MultipleFontCompositeRawTokens { fonts.typeLabelStrongLarge }

    // MARK: Background Color Default
    public var buttonColorBgDefaultEnabled: MultipleColorSemanticTokens { colors.colorOpacityInvisibleBlack }
    public var buttonColorBgDefaultHover: MultipleColorSemanticTokens { colors.colorOpacityInvisibleBlack }
    public var buttonColorBgDefaultPressed: MultipleColorSemanticTokens { colors.colorOpacityInvisibleBlack }
    public var buttonColorBgDefaultDisabled: MultipleColorSemanticTokens { colors.colorOpacityInvisibleBlack }
    public var buttonColorBgDefaultLoading: MultipleColorSemanticTokens { colors.colorOpacityInvisibleBlack }
    public var buttonColorBgDefaultFocus: MultipleColorSemanticTokens { colors.colorOpacityInvisibleBlack }

    public var buttonColorBgDefaultEnabledMono: MultipleColorSemanticTokens { colors.colorOpacityInvisibleBlack }
    public var buttonColorBgDefaultHoverMono: MultipleColorSemanticTokens { colors.colorRepositoryOpacityBlackHigher }
    public var buttonColorBgDefaultPressedMono: MultipleColorSemanticTokens { colors.colorRepositoryOpacityWhiteHigher }
    public var buttonColorBgDefaultDisabledMono: MultipleColorSemanticTokens { colors.colorOpacityInvisibleBlack }
    public var buttonColorBgDefaultLoadingMono: MultipleColorSemanticTokens { colors.colorRepositoryOpacityWhiteHigher }
    public var buttonColorBgDefaultFocusMono: MultipleColorSemanticTokens { colors.colorRepositoryOpacityBlackHigher }

    // MARK: Background Color Minimal
    public var buttonColorBgMinimalEnabled: MultipleColorSemanticTokens { colors.colorOpacityInvisibleBlack }
    public var buttonColorBgMinimalHover: MultipleColorSemanticTokens { colors.colorActionSupportHover }
    public var buttonColorBgMinimalPressed: MultipleColorSemanticTokens { colors.colorActionSupportPressed }
    public var buttonColorBgMinimalDisabled: MultipleColorSemanticTokens { colors.colorOpacityInvisibleBlack }
    public var buttonColorBgMinimalLoading: MultipleColorSemanticTokens { colors.colorActionSupportLoading }
    public var buttonColorBgMinimalFocus: MultipleColorSemanticTokens { colors.colorActionSupportFocus }

    public var buttonColorBgMinimalEnabledMono: MultipleColorSemanticTokens { colors.colorOpacityInvisibleBlack }
    public var buttonColorBgMinimalHoverMono: MultipleColorSemanticTokens { colors.colorRepositoryOpacityBlackHigher }
    public var buttonColorBgMinimalPressedMono: MultipleColorSemanticTokens { colors.colorRepositoryOpacityWhiteHigher }
    public var buttonColorBgMinimalDisabledMono: MultipleColorSemanticTokens { colors.colorOpacityInvisibleBlack }
    public var buttonColorBgMinimalLoadingMono: MultipleColorSemanticTokens { colors.colorRepositoryOpacityWhiteHigher }
    public var buttonColorBgMinimalFocusMono: MultipleColorSemanticTokens { colors.colorRepositoryOpacityBlackHigher }

    // MARK: Background Color Strong
    public var buttonColorBgStrongEnabledMono: MultipleColorSemanticTokens { colors.colorRepositoryNeutralEmphasizedBlack }
    public var buttonColorBgStrongHoverMono: MultipleColorSemanticTokens { colors.colorRepositoryOpacityBlackHigher }
    public var buttonColorBgStrongPressedMono: MultipleColorSemanticTokens { colors.colorRepositoryOpacityWhiteHigher }
    public var buttonColorBgStrongDisabledMono: MultipleColorSemanticTokens { colors.colorRepositoryOpacityBlackMedium }
    public var buttonColorBgStrongLoadingMono: MultipleColorSemanticTokens { colors.colorRepositoryOpacityWhiteHigher }
    public var buttonColorBgStrongFocusMono: MultipleColorSemanticTokens { colors.colorRepositoryOpacityBlackHigher }

    // MARK: Content Color Default
    public var buttonColorContentDefaultEnabled: MultipleColorSemanticTokens { colors.colorActionEnabled }
    public var buttonColorContentDefaultHover: MultipleColorSemanticTokens { colors.colorActionHover }
    public var buttonColorContentDefaultPressed: MultipleColorSemanticTokens { colors.colorActionPressed }
    public var buttonColorContentDefaultDisabled: MultipleColorSemanticTokens { colors.colorActionDisabled }
    public var buttonColorContentDefaultLoading: MultipleColorSemanticTokens { colors.colorActionLoading }
    public var buttonColorContentDefaultFocus: MultipleColorSemanticTokens { colors.colorActionFocus }

    public var buttonColorContentDefaultEnabledMono: MultipleColorSemanticTokens { colors.colorRepositoryNeutralEmphasizedBlack }
    public var buttonColorContentDefaultHoverMono: MultipleColorSemanticTokens { colors.colorRepositoryNeutralMutedWhite }
    public var buttonColorContentDefaultPressedMono: MultipleColorSemanticTokens { colors.colorRepositoryNeutralEmphasizedBlack }
    public var buttonColorContentDefaultDisabledMono: MultipleColorSemanticTokens { colors.colorRepositoryOpacityBlackMedium }
    public var buttonColorContentDefaultLoadingMono: MultipleColorSemanticTokens { colors.colorRepositoryNeutralEmphasizedBlack }
    public var buttonColorContentDefaultFocusMono: MultipleColorSemanticTokens { colors.colorRepositoryNeutralMutedWhite }

    // MARK: Content Color Minimal
    public var buttonColorContentMinimalEnabled: MultipleColorSemanticTokens { colors.colorActionEnabled }
    public var buttonColorContentMinimalHover: MultipleColorSemanticTokens { colors.colorActionHover }
    public var buttonColorContentMinimalPressed: MultipleColorSemanticTokens { colors.colorActionPressed }
    public var buttonColorContentMinimalDisabled: MultipleColorSemanticTokens { colors.colorActionDisabled }
    public var buttonColorContentMinimalLoading: MultipleColorSemanticTokens { colors.colorActionLoading }
    public var buttonColorContentMinimalFocus: MultipleColorSemanticTokens { colors.colorActionFocus }

    public var buttonColorContentMinimalEnabledMono: MultipleColorSemanticTokens { colors.colorRepositoryNeutralEmphasizedBlack }
    public var buttonColorContentMinimalHoverMono: MultipleColorSemanticTokens { colors.colorRepositoryNeutralMutedWhite }
    public var buttonColorContentMinimalPressedMono: MultipleColorSemanticTokens { colors.colorRepositoryNeutralEmphasizedBlack }
    public var buttonColorContentMinimalDisabledMono: MultipleColorSemanticTokens { colors.colorRepositoryOpacityBlackMedium }
    public var buttonColorContentMinimalLoadingMono: MultipleColorSemanticTokens { colors.colorRepositoryNeutralEmphasizedBlack }
    public var buttonColorContentMinimalFocusMono: MultipleColorSemanticTokens { colors.colorRepositoryNeutralMutedWhite }

    // MARK: Content Color Strong
    public var buttonColorContentStrongEnabledMono: MultipleColorSemanticTokens { colors.colorRepositoryNeutralMutedWhite }
    public var buttonColorContentStrongHoverMono: MultipleColorSemanticTokens { colors.colorRepositoryNeutralMutedWhite }
    public var buttonColorContentStrongPressedMono: MultipleColorSemanticTokens { colors.colorRepositoryNeutralEmphasizedBlack }
    public var buttonColorContentStrongDisabledMono: MultipleColorSemanticTokens { colors.colorRepositoryOpacityWhiteHigh }
    public var buttonColorContentStrongLoadingMono: MultipleColorSemanticTokens { colors.colorRepositoryNeutralEmphasizedBlack }
    public var buttonColorContentStrongFocusMono: MultipleColorSemanticTokens { colors.colorRepositoryNeutralMutedWhite }

    // MARK: Border width
    public var buttonBorderWidthDefault: BorderWidthSemanticToken { borders.borderWidthDefault }
    public var buttonBorderWidthDefaultInteraction: BorderWidthSemanticToken { borders.borderWidthMedium }
    public var buttonBorderWidthMinimal: BorderWidthSemanticToken { borders.borderWidthNone }
    public var buttonBorderWidthMinimalInteraction: BorderWidthSemanticToken { borders.borderWidthNone }
    public var buttonBorderRadius: BorderRadiusSemanticToken { borders.borderRadiusNone }

    // MARK: Border Color Default
    public var buttonColorBorderDefaultEnabled: MultipleColorSemanticTokens { colors.colorActionEnabled }
    public var buttonColorBorderDefaultHover: MultipleColorSemanticTokens { colors.colorActionHover }
    public var buttonColorBorderDefaultPressed: MultipleColorSemanticTokens { colors.colorActionPressed }
    public var buttonColorBorderDefaultDisabled: MultipleColorSemanticTokens { colors.colorActionDisabled }
    public var buttonColorBorderDefaultLoading: MultipleColorSemanticTokens { colors.colorActionLoading }
    public var buttonColorBorderDefaultFocus: MultipleColorSemanticTokens { colors.colorActionFocus }

    public var buttonColorBorderDefaultEnabledMono: MultipleColorSemanticTokens { colors.colorRepositoryNeutralEmphasizedBlack }
    public var buttonColorBorderDefaultHoverMono: MultipleColorSemanticTokens { colors.colorOpacityInvisibleBlack }
    public var buttonColorBorderDefaultPressedMono: MultipleColorSemanticTokens { colors.colorOpacityInvisibleBlack }
    public var buttonColorBorderDefaultDisabledMono: MultipleColorSemanticTokens { colors.colorRepositoryOpacityBlackMedium }
    public var buttonColorBorderDefaultLoadingMono: MultipleColorSemanticTokens { colors.colorOpacityInvisibleBlack }
    public var buttonColorBorderDefaultFocusMono: MultipleColorSemanticTokens { colors.colorOpacityInvisibleBlack }

    // MARK: Border Color Minimal
    public var buttonColorBorderMinimalEnabled: MultipleColorSemanticTokens { colors.colorOpacityInvisibleBlack }
    public var buttonColorBorderMinimalHover: MultipleColorSemanticTokens { colors.colorOpacityInvisibleBlack }
    public var buttonColorBorderMinimalPressed: MultipleColorSemanticTokens { colors.colorOpacityInvisibleBlack }
    public var buttonColorBorderMinimalDisabled: MultipleColorSemanticTokens { colors.colorOpacityInvisibleBlack }
    public var buttonColorBorderMinimalLoading: MultipleColorSemanticTokens { colors.colorOpacityInvisibleBlack }
    public var buttonColorBorderMinimalFocus: MultipleColorSemanticTokens { colors.colorOpacityInvisibleBlack }

    public var buttonColorBorderMinimalEnabledMono: MultipleColorSemanticTokens { colors.colorOpacityInvisibleBlack }
    public var buttonColorBorderMinimalHoverMono: MultipleColorSemanticTokens { colors.colorOpacityInvisibleBlack }
    public var buttonColorBorderMinimalPressedMono: MultipleColorSemanticTokens { colors.colorOpacityInvisibleBlack }
    public var buttonColorBorderMinimalDisabledMono: MultipleColorSemanticTokens { colors.colorOpacityInvisibleBlack }
    public var buttonColorBorderMinimalLoadingMono: MultipleColorSemanticTokens { colors.colorOpacityInvisibleBlack }
    public var buttonColorBorderMinimalFocusMono: MultipleColorSemanticTokens { colors.colorOpacityInvisibleBlack }

    // MARK: Border Color Strong
    public var buttonColorBorderStrongEnabledMono: MultipleColorSemanticTokens { colors.colorOpacityInvisibleBlack }
    public var buttonColorBorderStrongHoverMono: MultipleColorSemanticTokens { colors.colorOpacityInvisibleBlack }
    public var buttonColorBorderStrongPressedMono: MultipleColorSemanticTokens { colors.colorOpacityInvisibleBlack }
    public var buttonColorBorderStrongDisabledMono: MultipleColorSemanticTokens { colors.colorOpacityInvisibleBlack }
    public var buttonColorBorderStrongLoadingMono: MultipleColorSemanticTokens { colors.colorOpacityInvisibleBlack }
    public var buttonColorBorderStrongFocusMono: MultipleColorSemanticTokens { colors.colorOpacityInvisibleBlack }
}
