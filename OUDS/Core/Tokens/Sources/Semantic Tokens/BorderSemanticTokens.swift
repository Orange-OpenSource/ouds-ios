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

// MARK: - Type aliases to keep grammar clear

public typealias BorderWidthSemanticToken = BorderWidthPrimitiveToken
public typealias BorderRadiusSemanticToken = BorderRadiusPrimitiveToken
public typealias BorderStyleSemanticToken = BorderStylePrimitiveToken

// MARK: - Semantic tokens

public struct BorderSemanticTokens {
    
    // MARK: - Border width
    
    static let borderWidthNone: BorderWidthSemanticToken = BorderPrimitiveTokens.borderWidth0
    static let borderWidthDefault: BorderWidthSemanticToken = BorderPrimitiveTokens.borderWidth25
    static let borderWidthThin: BorderWidthSemanticToken = BorderPrimitiveTokens.borderWidth25
    static let borderWidthThick: BorderWidthSemanticToken = BorderPrimitiveTokens.borderWidth50
    static let borderWidthThicker: BorderWidthSemanticToken = BorderPrimitiveTokens.borderWidth75
    static let borderWidthThickest: BorderWidthSemanticToken = BorderPrimitiveTokens.borderWidth100
    static let borderWidthInteractivePrimaryFocus: BorderWidthSemanticToken = BorderPrimitiveTokens.borderWidth100
    
    // MARK: - Border radius
    
    static let borderRadiusNone: BorderRadiusSemanticToken = BorderPrimitiveTokens.borderRadius0
    static let borderRadiusDefault: BorderRadiusSemanticToken = BorderPrimitiveTokens.borderRadius0
    static let borderRadiusShort: BorderRadiusSemanticToken = BorderPrimitiveTokens.borderRadius75
    // ...
    
    // MARK: - Border style
    
    static let borderStyleDefault: BorderStyleSemanticToken = BorderPrimitiveTokens.borderStyleSolid
    static let borderStyleDrag: BorderStyleSemanticToken = BorderPrimitiveTokens.borderStyleDashed
    
}
