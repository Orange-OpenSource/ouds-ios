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

public protocol FormTextInputComponentToken {
    
    // MARK: - Color - Background
    
    var formsTextInputColorBackgroundEnabledLight: ColorSemanticToken { get set }
    var formsTextInputColorBackgroundEnabledInverse: ColorSemanticToken { get set }
    var formsTextInputColorBackgroundEnabledDark: ColorSemanticToken { get set }
    
    var formsTextInputColorBackgroundHoverLight: ColorSemanticToken { get set }
    var formsTextInputColorBackgroundHoverInverse: ColorSemanticToken { get set }
    var formsTextInputColorBackgroundHoverDark: ColorSemanticToken { get set }
    
    var formsTextInputColorBackgroundActiveLight: ColorSemanticToken { get set }
    var formsTextInputColorBackgroundActiveInverse: ColorSemanticToken { get set }
    var formsTextInputColorBackgroundActiveDark: ColorSemanticToken { get set }
    
    var formsTextInputColorBackgroundSelectedLight: ColorSemanticToken { get set }
    var formsTextInputColorBackgroundSelectedInverse: ColorSemanticToken { get set }
    var formsTextInputColorBackgroundFSelectedDark: ColorSemanticToken { get set }
    
    var formsTextInputColorBackgroundDisabledLight: ColorSemanticToken { get set }
    var formsTextInputColorBackgroundDisabledInverse: ColorSemanticToken { get set }
    var formsTextInputColorBackgroundDisabledDark: ColorSemanticToken { get set }
    
    var formsTextInputColorBackgroundFocusedLight: ColorSemanticToken { get set }
    var formsTextInputColorBackgroundFocusedInverse: ColorSemanticToken { get set }
    var formsTextInputColorBackgroundFocusedDark: ColorSemanticToken { get set }
    
    // MARK: - Border - Width
    
    var formsTextInputBorderWidthEnabledLight: BorderWidthSemanticToken { get set }
    var formsTextInputBorderWidthEnabledInverse: BorderWidthSemanticToken { get set }
    var formsTextInputBorderWidthEnabledDark: BorderWidthSemanticToken { get set }
    
    var formsTextInputBorderWidthHoverLight: BorderWidthSemanticToken { get set }
    var formsTextInputBorderWidthHoverInverse: BorderWidthSemanticToken { get set }
    var formsTextInputBorderWidthHoverDark: BorderWidthSemanticToken { get set }
    
    var formsTextInputBorderWidthActiveLight: BorderWidthSemanticToken { get set }
    var formsTextInputBorderWidthActiveInverse: BorderWidthSemanticToken { get set }
    var formsTextInputBorderWidthActiveDark: BorderWidthSemanticToken { get set }
    
    var formsTextInputBorderWidthDisabledLight: BorderWidthSemanticToken { get set }
    var formsTextInputBorderWidthDisabledInverse: BorderWidthSemanticToken { get set }
    var formsTextInputBorderWidthDisabledDark: BorderWidthSemanticToken { get set }
    
    var formsTextInputBorderWidthFocusedLight: BorderWidthSemanticToken { get set }
    var formsTextInputBorderWidthFocusedInverse: BorderWidthSemanticToken { get set }
    var formsTextInputBorderWidthFocusedDark: BorderWidthSemanticToken { get set }
}
