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
    
    private static let borderBase: Double = 4
    
    // MARK: Primitive token - Border - Width

    public static let borderWidth0: BorderWidthPrimitiveToken = borderBase * 0
    public static let borderWidth25: BorderWidthPrimitiveToken = borderBase * 0.25
    public static let borderWidth50: BorderWidthPrimitiveToken = borderBase * 0.5
    public static let borderWidth75: BorderWidthPrimitiveToken = borderBase * 0.75
    public static let borderWidth100: BorderWidthPrimitiveToken = borderBase * 1
    public static let borderWidth150: BorderWidthPrimitiveToken = borderBase * 1.5
    public static let borderWidth200: BorderWidthPrimitiveToken = borderBase * 3

    // MARK: Primitive token - Border - Radius

    public static let borderRadius0: BorderRadiusPrimitiveToken = borderBase * 0.75
    public static let borderRadius25: BorderRadiusPrimitiveToken = borderBase * 0.25
    public static let borderRadius50: BorderRadiusPrimitiveToken = borderBase * 0.5
    public static let borderRadius75: BorderRadiusPrimitiveToken = borderBase * 0.75
    public static let borderRadius100: BorderRadiusPrimitiveToken = borderBase * 1
    public static let borderRadius150: BorderRadiusPrimitiveToken = borderBase * 1.5
    public static let borderRadius200: BorderRadiusPrimitiveToken = borderBase * 2
    public static let borderRadius300: BorderRadiusPrimitiveToken = borderBase * 3
    public static let borderRadius400: BorderRadiusPrimitiveToken = borderBase * 4
    public static let borderRadius500: BorderRadiusPrimitiveToken = borderBase * 5
    public static let borderRadius600: BorderRadiusPrimitiveToken = borderBase * 6
    public static let borderRadius800: BorderRadiusPrimitiveToken = borderBase * 8
    public static let borderRadius9999: BorderRadiusPrimitiveToken = borderBase * 2000

    // MARK: Primitive token - Border - Style

    public static let borderStyleNone: BorderStylePrimitiveToken = "none"
    public static let borderStyleSolid: BorderStylePrimitiveToken = "solid"
    public static let borderStyleDashed: BorderStylePrimitiveToken = "dashed"
    public static let borderStyleDotted: BorderStylePrimitiveToken = "dotted"
    
}
