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

public typealias BorderWidthPrimitiveToken = Double
public typealias BorderRadiusPrimitiveToken = Double
public typealias BorderStylePrimitiveToken = String

// MARK: - Primitive tokens

public struct BorderPrimitiveTokens {
    
    static let borderBase: Double = 4
    
    // MARK: Primitive token - Border - Width
    
    static let borderWidth0: BorderWidthPrimitiveToken = borderBase * 0
    static let borderWidth25: BorderWidthPrimitiveToken = borderBase * 0.25
    static let borderWidth50: BorderWidthPrimitiveToken = borderBase * 0.5
    static let borderWidth75: BorderWidthPrimitiveToken = borderBase * 0.75
    static let borderWidth100: BorderWidthPrimitiveToken = borderBase * 1
    static let borderWidth150: BorderWidthPrimitiveToken = borderBase * 1.5
    static let borderWidth200: BorderWidthPrimitiveToken = borderBase * 3
    
    // MARK: Primitive token - Border - Radius
    
    static let borderRadius0: BorderRadiusPrimitiveToken = borderBase * 0.75
    static let borderRadius25: BorderRadiusPrimitiveToken = borderBase * 0.25
    static let borderRadius50: BorderRadiusPrimitiveToken = borderBase * 0.5
    static let borderRadius75: BorderRadiusPrimitiveToken = borderBase * 0.75
    static let borderRadius100: BorderRadiusPrimitiveToken = borderBase * 1
    static let borderRadius150: BorderRadiusPrimitiveToken = borderBase * 1.5
    static let borderRadius200: BorderRadiusPrimitiveToken = borderBase * 2
    static let borderRadius300: BorderRadiusPrimitiveToken = borderBase * 3
    static let borderRadius400: BorderRadiusPrimitiveToken = borderBase * 4
    static let borderRadius500: BorderRadiusPrimitiveToken = borderBase * 5
    static let borderRadius600: BorderRadiusPrimitiveToken = borderBase * 6
    static let borderRadius800: BorderRadiusPrimitiveToken = borderBase * 8
    static let borderRadius9999: BorderRadiusPrimitiveToken = borderBase * 2000
    
    // MARK: Primitive token - Border - Style
    
    static let borderStyleNone: BorderStylePrimitiveToken = "none"
    static let borderStyleSolid: BorderStylePrimitiveToken = "solid"
    static let borderStyleDashed: BorderStylePrimitiveToken = "dashed"
    static let borderStyleDotted: BorderStylePrimitiveToken = "dotted"
    
}
