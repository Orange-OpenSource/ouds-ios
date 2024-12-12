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

import OUDSTokensRaw
import OUDSTokensSemantic

// swiftlint:disable missing_docs

/// This is a component tokens list for buttons like `OUDSButton`.
public protocol ButtonsComponentTokens {

    // MARK: Spacings
    var buttonSpacePaddingInlineStartIconEnd: SpaceSemanticToken { get }
    var buttonSpacePaddingInlineEndIconStart: SpaceSemanticToken { get }
    var buttonSpacePaddingInlineIconNone: SpaceSemanticToken { get }
    var buttonSpacePaddingInlineIconStart: SpaceSemanticToken { get }
    var buttonSpacePaddingInlineArrowStart: SpaceSemanticToken { get }
    var buttonSpacePaddingInlineArrowEnd: SpaceSemanticToken { get }
    var buttonSpacePaddingBlock: SpaceSemanticToken { get }
    var buttonSpaceInsetIconAlone: SpaceSemanticToken { get }
    var buttonSpaceColumnGapIcon: SpaceSemanticToken { get }
    var buttonSpaceColumnGapArrow: SpaceSemanticToken { get }

    // MARK: Size
    var buttonSizeIcon: SizeSemanticToken { get }
    var buttonSizeIconOnly: SizeSemanticToken { get }
    var buttonSizeLoader: SizeSemanticToken { get }
    var buttonSizeMaxHeight: DimensionRawToken { get }
    var buttonSizeMinHeight: DimensionRawToken { get }
    var buttonSizeMinWidth: DimensionRawToken { get }

    // MARK: Font
    var buttonFont: MultipleFontCompositeRawTokens { get }

    // MARK: Background Color Default
    var buttonColorBgDefaultEnabled: MultipleColorSemanticTokens { get }
    var buttonColorBgDefaultHover: MultipleColorSemanticTokens { get }
    var buttonColorBgDefaultPressed: MultipleColorSemanticTokens { get }
    var buttonColorBgDefaultDisabled: MultipleColorSemanticTokens { get }
    var buttonColorBgDefaultLoading: MultipleColorSemanticTokens { get }
    var buttonColorBgDefaultFocus: MultipleColorSemanticTokens { get }

    var buttonColorBgDefaultEnabledMono: MultipleColorSemanticTokens { get }
    var buttonColorBgDefaultHoverMono: MultipleColorSemanticTokens { get }
    var buttonColorBgDefaultPressedMono: MultipleColorSemanticTokens { get }
    var buttonColorBgDefaultDisabledMono: MultipleColorSemanticTokens { get }
    var buttonColorBgDefaultLoadingMono: MultipleColorSemanticTokens { get }
    var buttonColorBgDefaultFocusMono: MultipleColorSemanticTokens { get }

    // MARK: Background Color Minimal
    var buttonColorBgMinimalEnabled: MultipleColorSemanticTokens { get }
    var buttonColorBgMinimalHover: MultipleColorSemanticTokens { get }
    var buttonColorBgMinimalPressed: MultipleColorSemanticTokens { get }
    var buttonColorBgMinimalDisabled: MultipleColorSemanticTokens { get }
    var buttonColorBgMinimalLoading: MultipleColorSemanticTokens { get }
    var buttonColorBgMinimalFocus: MultipleColorSemanticTokens { get }

    var buttonColorBgMinimalEnabledMono: MultipleColorSemanticTokens { get }
    var buttonColorBgMinimalHoverMono: MultipleColorSemanticTokens { get }
    var buttonColorBgMinimalPressedMono: MultipleColorSemanticTokens { get }
    var buttonColorBgMinimalDisabledMono: MultipleColorSemanticTokens { get }
    var buttonColorBgMinimalLoadingMono: MultipleColorSemanticTokens { get }
    var buttonColorBgMinimalFocusMono: MultipleColorSemanticTokens { get }

    // MARK: Background Color Strong
    var buttonColorBgStrongEnabledMono: MultipleColorSemanticTokens { get }
    var buttonColorBgStrongHoverMono: MultipleColorSemanticTokens { get }
    var buttonColorBgStrongPressedMono: MultipleColorSemanticTokens { get }
    var buttonColorBgStrongDisabledMono: MultipleColorSemanticTokens { get }
    var buttonColorBgStrongLoadingMono: MultipleColorSemanticTokens { get }
    var buttonColorBgStrongFocusMono: MultipleColorSemanticTokens { get }

    // MARK: Content Color Default
    var buttonColorContentDefaultEnabled: MultipleColorSemanticTokens { get }
    var buttonColorContentDefaultHover: MultipleColorSemanticTokens { get }
    var buttonColorContentDefaultPressed: MultipleColorSemanticTokens { get }
    var buttonColorContentDefaultDisabled: MultipleColorSemanticTokens { get }
    var buttonColorContentDefaultLoading: MultipleColorSemanticTokens { get }
    var buttonColorContentDefaultFocus: MultipleColorSemanticTokens { get }

    var buttonColorContentDefaultEnabledMono: MultipleColorSemanticTokens { get }
    var buttonColorContentDefaultHoverMono: MultipleColorSemanticTokens { get }
    var buttonColorContentDefaultPressedMono: MultipleColorSemanticTokens { get }
    var buttonColorContentDefaultDisabledMono: MultipleColorSemanticTokens { get }
    var buttonColorContentDefaultLoadingMono: MultipleColorSemanticTokens { get }
    var buttonColorContentDefaultFocusMono: MultipleColorSemanticTokens { get }

    // MARK: Content Color Minimal
    var buttonColorContentMinimalEnabled: MultipleColorSemanticTokens { get }
    var buttonColorContentMinimalHover: MultipleColorSemanticTokens { get }
    var buttonColorContentMinimalPressed: MultipleColorSemanticTokens { get }
    var buttonColorContentMinimalDisabled: MultipleColorSemanticTokens { get }
    var buttonColorContentMinimalLoading: MultipleColorSemanticTokens { get }
    var buttonColorContentMinimalFocus: MultipleColorSemanticTokens { get }

    var buttonColorContentMinimalEnabledMono: MultipleColorSemanticTokens { get }
    var buttonColorContentMinimalHoverMono: MultipleColorSemanticTokens { get }
    var buttonColorContentMinimalPressedMono: MultipleColorSemanticTokens { get }
    var buttonColorContentMinimalDisabledMono: MultipleColorSemanticTokens { get }
    var buttonColorContentMinimalLoadingMono: MultipleColorSemanticTokens { get }
    var buttonColorContentMinimalFocusMono: MultipleColorSemanticTokens { get }

    // MARK: Content Color Strong
    var buttonColorContentStrongEnabledMono: MultipleColorSemanticTokens { get }
    var buttonColorContentStrongHoverMono: MultipleColorSemanticTokens { get }
    var buttonColorContentStrongPressedMono: MultipleColorSemanticTokens { get }
    var buttonColorContentStrongDisabledMono: MultipleColorSemanticTokens { get }
    var buttonColorContentStrongLoadingMono: MultipleColorSemanticTokens { get }
    var buttonColorContentStrongFocusMono: MultipleColorSemanticTokens { get }

    // MARK: Border Color Default
    var buttonColorBorderDefaultEnabled: MultipleColorSemanticTokens { get }
    var buttonColorBorderDefaultHover: MultipleColorSemanticTokens { get }
    var buttonColorBorderDefaultPressed: MultipleColorSemanticTokens { get }
    var buttonColorBorderDefaultDisabled: MultipleColorSemanticTokens { get }
    var buttonColorBorderDefaultLoading: MultipleColorSemanticTokens { get }
    var buttonColorBorderDefaultFocus: MultipleColorSemanticTokens { get }

    var buttonColorBorderDefaultEnabledMono: MultipleColorSemanticTokens { get }
    var buttonColorBorderDefaultHoverMono: MultipleColorSemanticTokens { get }
    var buttonColorBorderDefaultPressedMono: MultipleColorSemanticTokens { get }
    var buttonColorBorderDefaultDisabledMono: MultipleColorSemanticTokens { get }
    var buttonColorBorderDefaultLoadingMono: MultipleColorSemanticTokens { get }
    var buttonColorBorderDefaultFocusMono: MultipleColorSemanticTokens { get }

    // MARK: Border Color Minimal
    var buttonColorBorderMinimalEnabled: MultipleColorSemanticTokens { get }
    var buttonColorBorderMinimalHover: MultipleColorSemanticTokens { get }
    var buttonColorBorderMinimalPressed: MultipleColorSemanticTokens { get }
    var buttonColorBorderMinimalDisabled: MultipleColorSemanticTokens { get }
    var buttonColorBorderMinimalLoading: MultipleColorSemanticTokens { get }
    var buttonColorBorderMinimalFocus: MultipleColorSemanticTokens { get }

    var buttonColorBorderMinimalEnabledMono: MultipleColorSemanticTokens { get }
    var buttonColorBorderMinimalHoverMono: MultipleColorSemanticTokens { get }
    var buttonColorBorderMinimalPressedMono: MultipleColorSemanticTokens { get }
    var buttonColorBorderMinimalDisabledMono: MultipleColorSemanticTokens { get }
    var buttonColorBorderMinimalLoadingMono: MultipleColorSemanticTokens { get }
    var buttonColorBorderMinimalFocusMono: MultipleColorSemanticTokens { get }

    // MARK: Border Color Strong
    var buttonColorBorderStrongEnabledMono: MultipleColorSemanticTokens { get }
    var buttonColorBorderStrongHoverMono: MultipleColorSemanticTokens { get }
    var buttonColorBorderStrongPressedMono: MultipleColorSemanticTokens { get }
    var buttonColorBorderStrongDisabledMono: MultipleColorSemanticTokens { get }
    var buttonColorBorderStrongLoadingMono: MultipleColorSemanticTokens { get }
    var buttonColorBorderStrongFocusMono: MultipleColorSemanticTokens { get }

    // MARK: Border Width
    var buttonBorderWidthDefault: BorderWidthSemanticToken { get }
    var buttonBorderWidthDefaultInteraction: BorderWidthSemanticToken { get }
    var buttonBorderWidthMinimal: BorderWidthSemanticToken { get }
    var buttonBorderWidthMinimalInteraction: BorderWidthSemanticToken { get }
    var buttonBorderRadius: BorderRadiusSemanticToken { get }
}

// swiftlint:enable missing_docs
