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

extension OUDSTheme: BorderSemanticTokens {
    
    // MARK: Semantic token - Border - Width

    public var borderWidthNone: BorderWidthSemanticToken { get { BorderPrimitiveTokens.borderWidth0 } set { } }
    public var borderWidthDefault: BorderWidthSemanticToken { get { BorderPrimitiveTokens.borderWidth25 } set { } }
    public var borderWidthThin: BorderWidthSemanticToken { get { BorderPrimitiveTokens.borderWidth25 } set { } }
    public var borderWidthThick: BorderWidthSemanticToken { get { BorderPrimitiveTokens.borderWidth50 } set { } }
    public var borderWidthThicker: BorderWidthSemanticToken { get { BorderPrimitiveTokens.borderWidth75 } set { } }
    public var borderWidthThickest: BorderWidthSemanticToken { get { BorderPrimitiveTokens.borderWidth100 } set { } }
    public var borderWidthInterfactivePrimaryFocus: BorderWidthSemanticToken { get { BorderPrimitiveTokens.borderWidth100 } set { } }

    // MARK: Semantic token - Border - Radius

    public var borderRadiusNone: BorderRadiusSemanticToken { get { BorderPrimitiveTokens.borderRadius0 } set { } }
    public var borderRadiusDefault: BorderRadiusSemanticToken { get { BorderPrimitiveTokens.borderRadius0 } set { } }
    public var borderRadiusShort: BorderRadiusSemanticToken { get { BorderPrimitiveTokens.borderRadius75 } set { } }
    public var borderRadiusMedium: BorderRadiusSemanticToken { get { BorderPrimitiveTokens.borderRadius150 } set { } }
    public var borderRadiusTall: BorderRadiusSemanticToken { get { BorderPrimitiveTokens.borderRadius300 } set { } }
    public var borderRadiusPill: BorderRadiusSemanticToken { get { BorderPrimitiveTokens.borderRadius9999 } set { } }

    // MARK: Semantic token - Border - Style

    public var borderStyleDefault: BorderStyleSemanticToken { get { BorderPrimitiveTokens.borderStyleSolid } set { } }
    public var borderStyleDrag: BorderStyleSemanticToken { get { BorderPrimitiveTokens.borderStyleDashed } set { } }


}
