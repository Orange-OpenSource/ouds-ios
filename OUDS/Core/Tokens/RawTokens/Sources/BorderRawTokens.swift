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

/// Typeliases precising `Double` value are used (because of multiplier factors) for a **border width raw token**.
public typealias BorderWidthRawToken = Double

/// Typeliases precising `Double` value are used (because of multiplier factors) for a **border widthradiusraw token**.
public typealias BorderRadiusRawToken = Double

/// Typealise for `String` so as to help users (developers) to see that raw tokens are needed and linked to `String` for **border style raw tokeb**.
/// `String` are used here to prevent to rely on _SwiftUI_ types which are not compatible with `@objc` and are heavier than primitive types.
/// In addition, if new styles are defined in design team side (such as kind of composite styles) and need to be processed differently (because not available with _SwiftUI_ because are composed of several styles),
/// such  `String` values could be procesed later without nay API breaks.
public typealias BorderStyleRawToken = String

// MARK: - Raw tokens

/// This is the group of all **raw tokens** related to **borders**.
/// Primitive types such as `Double` and `String` must be used to as to allow to use `@objc` keywords in _Swift extensions_ for overriding.
/// Such tokens are packed in a _Swift struct_ so as to gather them in one object and avoid to have just constants in nothing else (i.e. publicly accessible from everywhere) or _Swift enum_ whch are too heavy
/// (no needs to iterate on them, no needs to make switch/cases, riskjs to have broken code if new values added breaking existing switch/cases).
///
/// In the future, generating tools like _Style Dictionary_ should either follow this file template and structure or just replace values or lines.
public struct BorderRawTokens {

    private static let borderBase: Double = 4 // Double type because used bellow for computations with Double values

    // MARK: Primitive token - Border - Width

    public static let borderWidth0: BorderWidthRawToken = borderBase * 0
    public static let borderWidth25: BorderWidthRawToken = borderBase * 0.25
    public static let borderWidth50: BorderWidthRawToken = borderBase * 0.5
    public static let borderWidth75: BorderWidthRawToken = borderBase * 0.75
    public static let borderWidth100: BorderWidthRawToken = borderBase * 1
    public static let borderWidth150: BorderWidthRawToken = borderBase * 1.5
    public static let borderWidth200: BorderWidthRawToken = borderBase * 2

    // MARK: Primitive token - Border - Radius

    public static let borderRadius0: BorderRadiusRawToken = borderBase * 0
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
    public static let borderRadius9999: BorderRadiusRawToken = 2000

    // MARK: Primitive token - Border - Style
    
    public static let borderStyleNone: BorderStyleRawToken = "none"
    public static let borderStyleSolid: BorderStyleRawToken = "solid"
    public static let borderStyleDashed: BorderStyleRawToken = "dashed"
    public static let borderStyleDotted: BorderStyleRawToken = "dotted"
}
