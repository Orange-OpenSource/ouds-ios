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
import OUDSTokensPrimitive
import OUDSTokensSemantic
import OUDSTokensComponent

extension OUDSTheme: FormsTextInputComponentToken {
    
    private static let defaultColorSemanticToken = ColorPrimitiveTokens.colorFunctionalDarkGray160
    
    // MARK: Component token - Forms Text Input - Color - Background

    public var formsTextInputColorBackgroundEnabled: ColorSemanticToken { get { sysColorBrandAttractiveMedium ?? Self.defaultColorSemanticToken } set { } }
    public var formsTextInputColorBackgroundHover: ColorSemanticToken { get { sysColorBrandAttractiveHigher ?? Self.defaultColorSemanticToken } set { } }
    public var formsTextInputColorBackgroundActive: ColorSemanticToken { get { sysColorBrandAttractiveMedium ?? Self.defaultColorSemanticToken } set { } }
    public var formsTextInputColorBackgroundSelected: ColorSemanticToken { get { colorContentMutedLight ?? Self.defaultColorSemanticToken } set { } }
    public var formsTextInputColorBackgroundDisabled: ColorSemanticToken { get { colorOnBackgroundStatusPositiveEmphasisLight ?? Self.defaultColorSemanticToken } set { } }
    public var formsTextInputColorBackgroundFocused: ColorSemanticToken { get { sysColorBrandAttractiveHigher ?? Self.defaultColorSemanticToken } set { } }

    // MARK: Component token - Forms Text Input - Border - Width

    public var formsTextInputBorderWidthEnabled: BorderWidthSemanticToken { get { borderWidthThick } set { } }
    public var formsTextInputBorderWidthHover: BorderWidthSemanticToken { get { borderWidthThickest } set { } }
    public var formsTextInputBorderWidthActive: BorderWidthSemanticToken { get { borderWidthThickest } set { } }
    public var formsTextInputBorderWidthSelected: BorderWidthSemanticToken { get { borderWidthThickest } set { } }
    public var formsTextInputBorderWidthDisabled: BorderWidthSemanticToken { get { borderWidthNone } set { } }
    public var formsTextInputBorderWidthFocused: BorderWidthSemanticToken { get { borderWidthInterfactivePrimaryFocus } set { } }

}
