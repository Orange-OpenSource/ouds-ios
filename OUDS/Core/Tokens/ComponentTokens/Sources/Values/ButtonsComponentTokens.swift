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
import OUDSTokensSemantic

/// This is a component tokens list for buttons like `OUDSButton`.
/// **Warning: This is a draft component **
public protocol ButtonsComponentTokens {

    /*
     NOTE:
     1. Maybe composite tokens for border can be useful to define several types of buttons
     2. Maybe a composite tokens should be defined and used to gather all these atomic semantic tokens
     */

    var buttonInternalSpacing: SpacingPaddingInlineSemanticToken { get }

    var buttonBorderStyle: BorderStyleSemanticToken { get }
    var buttonBorderColorLight: ColorSemanticToken { get }
    var buttonBorderColorDark: ColorSemanticToken { get }
    var buttonBorderWidth: BorderWidthSemanticToken { get }
    var buttonBorderRadius: BorderRadiusSemanticToken { get }

    var buttonForegroundColorLight: ColorSemanticToken { get }
    var buttonForegroundColorDark: ColorSemanticToken { get }
    var buttonBackgroundColorLight: ColorSemanticToken { get }
    var buttonBackgroundColorDark: ColorSemanticToken { get }

    var buttonWidth: SizingWidthHeightSemanticToken { get }
    var buttonHeight: SizingWidthHeightSemanticToken { get }

    var buttonTypography: TypographyCompositeSemanticToken { get }
}