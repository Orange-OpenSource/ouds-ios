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

/// This is a component token for a text input in formulars.
/// It can be defined by a groupe of background colors and border widths.
public protocol FormsTextInputComponentToken {

    // MARK: Semantic token - Forms Text Input - Color - Background

    var formsTextInputColorBackgroundEnabled: ColorSemanticToken { get }
    var formsTextInputColorBackgroundHover: ColorSemanticToken { get }
    var formsTextInputColorBackgroundActive: ColorSemanticToken { get }
    var formsTextInputColorBackgroundSelected: ColorSemanticToken { get }
    var formsTextInputColorBackgroundDisabled: ColorSemanticToken { get }
    var formsTextInputColorBackgroundFocused: ColorSemanticToken { get }

    // MARK: Semantic token - Forms Text Input - Border - Width

    var formsTextInputBorderWidthEnabled: BorderWidthSemanticToken { get }
    var formsTextInputBorderWidthHover: BorderWidthSemanticToken { get }
    var formsTextInputBorderWidthActive: BorderWidthSemanticToken { get }
    var formsTextInputBorderWidthSelected: BorderWidthSemanticToken { get }
    var formsTextInputBorderWidthDisabled: BorderWidthSemanticToken { get }
    var formsTextInputBorderWidthFocused: BorderWidthSemanticToken { get }
}
