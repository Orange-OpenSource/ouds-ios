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

public protocol FormsTextInputComponentToken {
    
    // MARK: Semantic token - Forms Text Input - Color - Background

    var formsTextInputColorBackgroundEnabled: ColorSemanticToken { get set }
    var formsTextInputColorBackgroundHover: ColorSemanticToken { get set }
    var formsTextInputColorBackgroundActive: ColorSemanticToken { get set }
    var formsTextInputColorBackgroundSelected: ColorSemanticToken { get set }
    var formsTextInputColorBackgroundDisabled: ColorSemanticToken { get set }
    var formsTextInputColorBackgroundFocused: ColorSemanticToken { get set }

    // MARK: Semantic token - Forms Text Input - Border - Width

    var formsTextInputBorderWidthEnabled: BorderWidthSemanticToken { get set }
    var formsTextInputBorderWidthHover: BorderWidthSemanticToken { get set }
    var formsTextInputBorderWidthActive: BorderWidthSemanticToken { get set }
    var formsTextInputBorderWidthSelected: BorderWidthSemanticToken { get set }
    var formsTextInputBorderWidthDisabled: BorderWidthSemanticToken { get set }
    var formsTextInputBorderWidthFocused: BorderWidthSemanticToken { get set }

}
