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

/// Defines for `OUDSButton` the basic configuration which can be overriden in subthemes / subclasses of this theme.
/// **Warning: These are random and dumb values**
extension OUDSTheme: ButtonsComponentTokens {

    @objc open var buttonInternalSpacing: SpacingPaddingInlineSemanticToken { spacePaddingInlineComponentShort }

    @objc open var buttonBorderStyle: BorderStyleSemanticToken { borderStyleDefault }
    @objc open var buttonBorderColorLight: ColorSemanticToken { colorBorderDefaultLight! }
    @objc open var buttonBorderColorDark: ColorSemanticToken { colorBorderDefaultDark! }
    @objc open var buttonBorderWidth: BorderWidthSemanticToken { borderWidthDefault }
    @objc open var buttonBorderRadius: BorderRadiusSemanticToken { borderRadiusShort }

    @objc open var buttonForegroundColorLight: ColorSemanticToken { colorContentBrandPrimaryLight! }
    @objc open var buttonForegroundColorDark: ColorSemanticToken { colorContentBrandPrimaryDark! }
    @objc open var buttonBackgroundColorLight: ColorSemanticToken { colorBackgroundBrandPrimaryLight! }
    @objc open var buttonBackgroundColorDark: ColorSemanticToken { colorBackgroundBrandPrimaryDark! }

    @objc open var buttonWidth: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension3000 }
    @objc open var buttonHeight: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension1000 }

    @objc open var buttonTypography: TypographyCompositeSemanticToken { typeDisplayMedium }
}