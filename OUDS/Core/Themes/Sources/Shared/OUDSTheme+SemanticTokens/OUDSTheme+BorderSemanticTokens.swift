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

    @objc open var borderWidthNone: BorderWidthSemanticToken { get { BorderPrimitiveTokens.borderWidth0 } set { } }
    @objc open var borderWidthDefault: BorderWidthSemanticToken { get { BorderPrimitiveTokens.borderWidth25 } set { } }
    @objc open var borderWidthThin: BorderWidthSemanticToken { get { BorderPrimitiveTokens.borderWidth25 } set { } }
    @objc open var borderWidthThick: BorderWidthSemanticToken { get { BorderPrimitiveTokens.borderWidth50 } set { } }
    @objc open var borderWidthThicker: BorderWidthSemanticToken { get { BorderPrimitiveTokens.borderWidth75 } set { } }
    @objc open var borderWidthThickest: BorderWidthSemanticToken { get { BorderPrimitiveTokens.borderWidth100 } set { } }
    @objc open var borderWidthInterfactivePrimaryFocus: BorderWidthSemanticToken { get { BorderPrimitiveTokens.borderWidth100 } set { } }

    // MARK: Semantic token - Border - Radius

    @objc open var borderRadiusNone: BorderRadiusSemanticToken { get { BorderPrimitiveTokens.borderRadius0 } set { } }
    @objc open var borderRadiusDefault: BorderRadiusSemanticToken { get { BorderPrimitiveTokens.borderRadius0 } set { } }
    @objc open var borderRadiusShort: BorderRadiusSemanticToken { get { BorderPrimitiveTokens.borderRadius75 } set { } }
    @objc open var borderRadiusMedium: BorderRadiusSemanticToken { get { BorderPrimitiveTokens.borderRadius150 } set { } }
    @objc open var borderRadiusTall: BorderRadiusSemanticToken { get { BorderPrimitiveTokens.borderRadius300 } set { } }
    @objc open var borderRadiusPill: BorderRadiusSemanticToken { get { BorderPrimitiveTokens.borderRadius9999 } set { } }

    // MARK: Semantic token - Border - Style

    @objc open var borderStyleDefault: BorderStyleSemanticToken { get { BorderPrimitiveTokens.borderStyleSolid } set { } }
    @objc open var borderStyleDrag: BorderStyleSemanticToken { get { BorderPrimitiveTokens.borderStyleDashed } set { } }


}
