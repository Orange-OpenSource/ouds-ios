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
/// **Warning: This is a draft component **
public protocol ButtonsComponentTokens {

    // MARK: Border
    var buttonBorderWidthDefault: BorderWidthSemanticToken { get }
    var buttonBorderWidthDefaultInteraction: BorderWidthSemanticToken { get }
    var buttonBorderWidthMinimal: BorderWidthSemanticToken { get }
    var buttonBorderWidthMinimalInteraction: BorderWidthSemanticToken { get }
    var buttonBorderRadius: BorderRadiusSemanticToken { get }

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

    // MARK: Color
    var buttonColorBgDefaultEnabled: MultipleColorSemanticTokens { get }
    var buttonColorBgDefaultHover: MultipleColorSemanticTokens { get }
    var buttonColorBgDefaultPressed: MultipleColorSemanticTokens { get }
    var buttonColorBgDefaultDisabled: MultipleColorSemanticTokens { get }
    var buttonColorBgDefaultLoading: MultipleColorSemanticTokens { get }
    var buttonColorBgDefaultFocus: MultipleColorSemanticTokens { get }
    var buttonColorBgMinimalEnabled: MultipleColorSemanticTokens { get }
    var buttonColorBgMinimalHover: MultipleColorSemanticTokens { get }
    var buttonColorBgMinimalPressed: MultipleColorSemanticTokens { get }
    var buttonColorBgMinimalDisabled: MultipleColorSemanticTokens { get }
    var buttonColorBgMinimalLoading: MultipleColorSemanticTokens { get }
    var buttonColorBgMinimalFocus: MultipleColorSemanticTokens { get }
    var buttonColorContentDefaultEnabled: MultipleColorSemanticTokens { get }
    var buttonColorContentDefaultHover: MultipleColorSemanticTokens { get }
    var buttonColorContentDefaultPressed: MultipleColorSemanticTokens { get }
    var buttonColorContentDefaultDisabled: MultipleColorSemanticTokens { get }
    var buttonColorContentDefaultLoading: MultipleColorSemanticTokens { get }
    var buttonColorContentDefaultFocus: MultipleColorSemanticTokens { get }
    var buttonColorContentMinimalEnabled: MultipleColorSemanticTokens { get }
    var buttonColorContentMinimalHover: MultipleColorSemanticTokens { get }
    var buttonColorContentMinimalPressed: MultipleColorSemanticTokens { get }
    var buttonColorContentMinimalDisabled: MultipleColorSemanticTokens { get }
    var buttonColorContentMinimalLoading: MultipleColorSemanticTokens { get }
    var buttonColorContentMinimalFocus: MultipleColorSemanticTokens { get }
    var buttonColorBorderDefaultEnabled: MultipleColorSemanticTokens { get }
    var buttonColorBorderDefaultHover: MultipleColorSemanticTokens { get }
    var buttonColorBorderDefaultPressed: MultipleColorSemanticTokens { get }
    var buttonColorBorderDefaultDisabled: MultipleColorSemanticTokens { get }
    var buttonColorBorderDefaultLoading: MultipleColorSemanticTokens { get }
    var buttonColorBorderDefaultFocus: MultipleColorSemanticTokens { get }
    var buttonColorBorderMinimalEnabled: MultipleColorSemanticTokens { get }
    var buttonColorBorderMinimalHover: MultipleColorSemanticTokens { get }
    var buttonColorBorderMinimalPressed: MultipleColorSemanticTokens { get }
    var buttonColorBorderMinimalDisabled: MultipleColorSemanticTokens { get }
    var buttonColorBorderMinimalLoading: MultipleColorSemanticTokens { get }
    var buttonColorBorderMinimalFocus: MultipleColorSemanticTokens { get }
}

// swiftlint:enable missing_docs
