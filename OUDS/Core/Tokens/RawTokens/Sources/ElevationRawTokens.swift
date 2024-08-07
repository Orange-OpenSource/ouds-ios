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

/// Typeliases precising `Int` value are used (because used in _SwiftUI_ API) for each **elevation raw token**.
public typealias ElevationRawToken = Int

// MARK: - Composite raw token

public class ElevationBoxShadowRawToken: NSObject { // For @objc compatibility

    public let x: ElevationRawToken
    public let y: ElevationRawToken
    public let blur: ElevationRawToken
    public let spread: ElevationRawToken
    public let color: ColorRawToken

    public init(x: ElevationRawToken, y: ElevationRawToken, blur: ElevationRawToken, spread: ElevationRawToken, color: ColorRawToken) {
        self.x = x
        self.y = y
        self.blur = blur
        self.spread = spread
        self.color = color
    }

    public override func isEqual(_ object: Any?) -> Bool {
        guard let other = object as? ElevationBoxShadowRawToken else { return false }
        return self.x == other.x
        && self.y == other.y
        && self.blur == other.blur
        && self.spread == other.spread
        && self.color == other.color
    }
}

// MARK: - Raw tokens

/// This is the group of all **raw tokens** related to **elevations**.
/// Primitive types such as `Int` must be used to as to allow to use `@objc` keywords in extensions for overriding.
/// Such tokens are packed in a _Swift enum_ so as to gather them in one object with the suitable namespace and avoid to have just constants in nothing else
///  (i.e. publicly accessible from everywhere). More optimized than _struct_.
public enum ElevationRawTokens {

    // MARK: Primitive token - Elevation - Z Index

    public static let elevationZIndex0: ElevationRawToken = 0
    public static let elevationZIndexMinus9999: ElevationRawToken = -9999
    public static let elevationZIndex1000: ElevationRawToken = 1000
    public static let elevationZIndex1010: ElevationRawToken = 1010
    public static let elevationZIndex1020: ElevationRawToken = 1020
    public static let elevationZIndex1030: ElevationRawToken = 1030
    public static let elevationZIndex1035: ElevationRawToken = 1035
    public static let elevationZIndex1038: ElevationRawToken = 1038
    public static let elevationZIndex1040: ElevationRawToken = 1040
    public static let elevationZIndex1045: ElevationRawToken = 1045
    public static let elevationZIndex1050: ElevationRawToken = 1050
    public static let elevationZIndex1060: ElevationRawToken = 1060
    public static let elevationZIndex1070: ElevationRawToken = 1070
    public static let elevationZIndex1080: ElevationRawToken = 1080
    public static let elevationZIndex1090: ElevationRawToken = 1090

    // MARK: Primitive token - Elevation - X

    public static let elevationX0: ElevationRawToken = 0

    // MARK: Primitive token - Elevation - Y

    public static let elevationY0: ElevationRawToken = 0
    public static let elevationY100: ElevationRawToken = 1
    public static let elevationY200: ElevationRawToken = 2
    public static let elevationY300: ElevationRawToken = 4
    public static let elevationY400: ElevationRawToken = 8
    public static let elevationY500: ElevationRawToken = 12
    public static let elevationY600: ElevationRawToken = 20

    // MARK: Primitive token - Elevation - Blur

    public static let elevationBlur0: ElevationRawToken = 0
    public static let elevationBlur100: ElevationRawToken = 1
    public static let elevationBlur200: ElevationRawToken = 2
    public static let elevationBlur300: ElevationRawToken = 3
    public static let elevationBlur400: ElevationRawToken = 4
    public static let elevationBlur500: ElevationRawToken = 8
    public static let elevationBlur600: ElevationRawToken = 12
    public static let elevationBlur700: ElevationRawToken = 20

    // MARK: Primitive token - Elevation - Spread

    public static let elevationSpreadMinus100: ElevationRawToken = -1
    public static let elevationSpreadMinus200: ElevationRawToken = -2
    public static let elevationSpreadMinus300: ElevationRawToken = -4
    public static let elevationSpreadMinus400: ElevationRawToken = -8
    public static let elevationSpread0: ElevationRawToken = 0
    public static let elevationSpread300: ElevationRawToken = 3

    // MARK: Primitive token - Elevation - Box Shadow

    // TODO: Missing elevationBoxShadowBottom0 raw token
    public static let elevationBoxShadowBottom_1_100 = ElevationBoxShadowRawToken(x: 0, y: 1, blur: 2, spread: 0, color: ColorRawTokens.colorTransparentBlack100)
    public static let elevationBoxShadowBottom_1_200 = ElevationBoxShadowRawToken(x: 0, y: 1, blur: 2, spread: 0, color: ColorRawTokens.colorTransparentBlack200)
    public static let elevationBoxShadowBottom_1_300 = ElevationBoxShadowRawToken(x: 0, y: 1, blur: 2, spread: 0, color: ColorRawTokens.colorTransparentBlack300)
    public static let elevationBoxShadowBottom_1_400 = ElevationBoxShadowRawToken(x: 0, y: 1, blur: 2, spread: 0, color: ColorRawTokens.colorTransparentBlack400)
    public static let elevationBoxShadowBottom_1_500 = ElevationBoxShadowRawToken(x: 0, y: 1, blur: 2, spread: 0, color: ColorRawTokens.colorTransparentBlack500)
    public static let elevationBoxShadowBottom_1_600 = ElevationBoxShadowRawToken(x: 0, y: 1, blur: 2, spread: 0, color: ColorRawTokens.colorTransparentBlack600)
    public static let elevationBoxShadowBottom_2_100 = ElevationBoxShadowRawToken(x: 0, y: 2, blur: 3, spread: 0, color: ColorRawTokens.colorTransparentBlack100)
    public static let elevationBoxShadowBottom_2_200 = ElevationBoxShadowRawToken(x: 0, y: 2, blur: 3, spread: 0, color: ColorRawTokens.colorTransparentBlack200)
    public static let elevationBoxShadowBottom_2_300 = ElevationBoxShadowRawToken(x: 0, y: 2, blur: 3, spread: 0, color: ColorRawTokens.colorTransparentBlack300)
    public static let elevationBoxShadowBottom_2_400 = ElevationBoxShadowRawToken(x: 0, y: 2, blur: 3, spread: 0, color: ColorRawTokens.colorTransparentBlack400)
    public static let elevationBoxShadowBottom_2_500 = ElevationBoxShadowRawToken(x: 0, y: 2, blur: 3, spread: 0, color: ColorRawTokens.colorTransparentBlack500)
    public static let elevationBoxShadowBottom_2_600 = ElevationBoxShadowRawToken(x: 0, y: 2, blur: 3, spread: 0, color: ColorRawTokens.colorTransparentBlack600)
    public static let elevationBoxShadowBottom_3_100 = ElevationBoxShadowRawToken(x: 0, y: 4, blur: 4, spread: -1, color: ColorRawTokens.colorTransparentBlack100)
    public static let elevationBoxShadowBottom_3_200 = ElevationBoxShadowRawToken(x: 0, y: 4, blur: 4, spread: -1, color: ColorRawTokens.colorTransparentBlack200)
    public static let elevationBoxShadowBottom_3_300 = ElevationBoxShadowRawToken(x: 0, y: 4, blur: 4, spread: -1, color: ColorRawTokens.colorTransparentBlack300)
    public static let elevationBoxShadowBottom_3_400 = ElevationBoxShadowRawToken(x: 0, y: 4, blur: 4, spread: -1, color: ColorRawTokens.colorTransparentBlack400)
    public static let elevationBoxShadowBottom_3_500 = ElevationBoxShadowRawToken(x: 0, y: 4, blur: 4, spread: -1, color: ColorRawTokens.colorTransparentBlack500)
    public static let elevationBoxShadowBottom_3_600 = ElevationBoxShadowRawToken(x: 0, y: 4, blur: 4, spread: -1, color: ColorRawTokens.colorTransparentBlack600)
    public static let elevationBoxShadowBottom_4_100 = ElevationBoxShadowRawToken(x: 0, y: 8, blur: 8, spread: -2, color: ColorRawTokens.colorTransparentBlack100)
    public static let elevationBoxShadowBottom_4_200 = ElevationBoxShadowRawToken(x: 0, y: 8, blur: 8, spread: -2, color: ColorRawTokens.colorTransparentBlack200)
    public static let elevationBoxShadowBottom_4_300 = ElevationBoxShadowRawToken(x: 0, y: 8, blur: 8, spread: -2, color: ColorRawTokens.colorTransparentBlack300)
    public static let elevationBoxShadowBottom_4_400 = ElevationBoxShadowRawToken(x: 0, y: 8, blur: 8, spread: -2, color: ColorRawTokens.colorTransparentBlack400)
    public static let elevationBoxShadowBottom_4_500 = ElevationBoxShadowRawToken(x: 0, y: 8, blur: 8, spread: -2, color: ColorRawTokens.colorTransparentBlack500)
    public static let elevationBoxShadowBottom_4_600 = ElevationBoxShadowRawToken(x: 0, y: 8, blur: 8, spread: -2, color: ColorRawTokens.colorTransparentBlack600)
    public static let elevationBoxShadowBottom_5_100 = ElevationBoxShadowRawToken(x: 0, y: 12, blur: 12, spread: -4, color: ColorRawTokens.colorTransparentBlack100)
    public static let elevationBoxShadowBottom_5_200 = ElevationBoxShadowRawToken(x: 0, y: 12, blur: 12, spread: -4, color: ColorRawTokens.colorTransparentBlack200)
    public static let elevationBoxShadowBottom_5_300 = ElevationBoxShadowRawToken(x: 0, y: 12, blur: 12, spread: -4, color: ColorRawTokens.colorTransparentBlack300)
    public static let elevationBoxShadowBottom_5_400 = ElevationBoxShadowRawToken(x: 0, y: 12, blur: 12, spread: -4, color: ColorRawTokens.colorTransparentBlack400)
    public static let elevationBoxShadowBottom_5_500 = ElevationBoxShadowRawToken(x: 0, y: 12, blur: 12, spread: -4, color: ColorRawTokens.colorTransparentBlack500)
    public static let elevationBoxShadowBottom_5_600 = ElevationBoxShadowRawToken(x: 0, y: 12, blur: 12, spread: -4, color: ColorRawTokens.colorTransparentBlack600)
    public static let elevationBoxShadowBottom_6_100 = ElevationBoxShadowRawToken(x: 0, y: 20, blur: 20, spread: -8, color: ColorRawTokens.colorTransparentBlack100)
    public static let elevationBoxShadowBottom_6_200 = ElevationBoxShadowRawToken(x: 0, y: 20, blur: 20, spread: -8, color: ColorRawTokens.colorTransparentBlack200)
    public static let elevationBoxShadowBottom_6_300 = ElevationBoxShadowRawToken(x: 0, y: 20, blur: 20, spread: -8, color: ColorRawTokens.colorTransparentBlack300)
    public static let elevationBoxShadowBottom_6_400 = ElevationBoxShadowRawToken(x: 0, y: 20, blur: 20, spread: -8, color: ColorRawTokens.colorTransparentBlack400)
    public static let elevationBoxShadowBottom_6_500 = ElevationBoxShadowRawToken(x: 0, y: 20, blur: 20, spread: -8, color: ColorRawTokens.colorTransparentBlack500)
    public static let elevationBoxShadowBottom_6_600 = ElevationBoxShadowRawToken(x: 0, y: 20, blur: 20, spread: -8, color: ColorRawTokens.colorTransparentBlack600)
}
