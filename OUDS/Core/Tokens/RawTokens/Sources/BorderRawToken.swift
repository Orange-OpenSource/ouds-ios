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

public typealias BorderWidthRawToken = Double
public typealias BorderRadiusRawToken = Double
public typealias BorderStyleRawToken = String

// MARK: - Raw tokens

/// This is the group of all **raw tokens** related to **borders**.
/// Primitive types such as `Double` and `String` must be used to as to allow to use `@objc` keywords in extensions for overriding.
public struct BorderRawTokens {

    private static let borderBase: Double = 4

    // MARK: Primitive token - Border - Width

    public static let borderWidth0: BorderWidthRawToken = borderBase * 0
    public static let borderWidth25: BorderWidthRawToken = borderBase * 0.25
    public static let borderWidth50: BorderWidthRawToken = borderBase * 0.5
    public static let borderWidth75: BorderWidthRawToken = borderBase * 0.75
    public static let borderWidth100: BorderWidthRawToken = borderBase * 1
    public static let borderWidth150: BorderWidthRawToken = borderBase * 1.5
    public static let borderWidth200: BorderWidthRawToken = borderBase * 3

    // MARK: Primitive token - Border - Radius

    public static let borderRadius0: BorderRadiusRawToken = borderBase * 0.75
    public static let borderRadius25: BorderRadiusRawToken = borderBase * 0.25
    public static let borderRadius50: BorderRadiusRawToken = borderBase * 0.5
    public static let borderRadius75: BorderRadiusRawToken = borderBase * 0.75
    public static let borderRadius100: BorderRadiusRawToken = borderBase * 1
    public static let borderRadius150: BorderRadiusRawToken = borderBase * 1.5
    public static let borderRadius200: BorderRadiusRawToken = borderBase * 2
    public static let borderRadius300: BorderRadiusRawToken = borderBase * 3
    public static let borderRadius400: BorderRadiusRawToken = borderBase * 4
    public static let borderRadius500: BorderRadiusRawToken = borderBase * 5
    public static let borderRadius600: BorderRadiusRawToken = borderBase * 6
    public static let borderRadius800: BorderRadiusRawToken = borderBase * 8
    public static let borderRadius9999: BorderRadiusRawToken = borderBase * 2000

    // MARK: Primitive token - Border - Style

    public static let borderStyleNone: BorderStyleRawToken = "none"
    public static let borderStyleSolid: BorderStyleRawToken = "solid"
    public static let borderStyleDashed: BorderStyleRawToken = "dashed"
    public static let borderStyleDotted: BorderStyleRawToken = "dotted"
}