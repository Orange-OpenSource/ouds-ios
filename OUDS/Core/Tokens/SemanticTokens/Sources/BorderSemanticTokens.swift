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

// MARK: - Type aliases to keep grammar clear

public typealias BorderWidthSemanticToken = BorderWidthPrimitiveToken
public typealias BorderRadiusSemanticToken = BorderRadiusPrimitiveToken
public typealias BorderStyleSemanticToken = BorderStylePrimitiveToken

// MARK: - Semantic tokens

public protocol BorderSemanticTokens { 
    
    // MARK: Semantic token - Border - Width

    var borderWidthNone: BorderWidthSemanticToken { get set }
    var borderWidthDefault: BorderWidthSemanticToken { get set }
    var borderWidthThin: BorderWidthSemanticToken { get set }
    var borderWidthThick: BorderWidthSemanticToken { get set }
    var borderWidthThicker: BorderWidthSemanticToken { get set }
    var borderWidthThickest: BorderWidthSemanticToken { get set }
    var borderWidthInterfactivePrimaryFocus: BorderWidthSemanticToken { get set }

    // MARK: Semantic token - Border - Radius

    var borderRadiusNone: BorderRadiusSemanticToken { get set }
    var borderRadiusDefault: BorderRadiusSemanticToken { get set }
    var borderRadiusShort: BorderRadiusSemanticToken { get set }
    var borderRadiusMedium: BorderRadiusSemanticToken { get set }
    var borderRadiusTall: BorderRadiusSemanticToken { get set }
    var borderRadiusPill: BorderRadiusSemanticToken { get set }

    // MARK: Semantic token - Border - Style

    var borderStyleDefault: BorderStyleSemanticToken { get set }
    var borderStyleDrag: BorderStyleSemanticToken { get set }
    
}
