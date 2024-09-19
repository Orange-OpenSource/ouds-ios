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

/// Extracted in a separated files to help the *Figma* JSON to Swift parser to generate files to include easily.
extension ElevationRawTokens {

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

    // MARK: Primitive token - Elevation - Box Shadow

    // WARNING: Not the same syntax between CSS and Figma, maybe blur and Y and inverted, beware

    public static let elevationBottom_0 = ElevationCompositeRawToken(x: 0, y: 0, blur: 0, color: ColorRawTokens.colorTransparentBlack0)
    public static let elevationBottom_1_100 = ElevationCompositeRawToken(x: 0, y: 1, blur: 2, color: ColorRawTokens.colorTransparentBlack100)
    public static let elevationBottom_1_200 = ElevationCompositeRawToken(x: 0, y: 1, blur: 2, color: ColorRawTokens.colorTransparentBlack200)
    public static let elevationBottom_1_300 = ElevationCompositeRawToken(x: 0, y: 1, blur: 2, color: ColorRawTokens.colorTransparentBlack300)
    public static let elevationBottom_1_400 = ElevationCompositeRawToken(x: 0, y: 1, blur: 2, color: ColorRawTokens.colorTransparentBlack400)
    public static let elevationBottom_1_500 = ElevationCompositeRawToken(x: 0, y: 1, blur: 2, color: ColorRawTokens.colorTransparentBlack500)
    public static let elevationBottom_1_600 = ElevationCompositeRawToken(x: 0, y: 1, blur: 2, color: ColorRawTokens.colorTransparentBlack600)
    public static let elevationBottom_2_100 = ElevationCompositeRawToken(x: 0, y: 2, blur: 3, color: ColorRawTokens.colorTransparentBlack100)
    public static let elevationBottom_2_200 = ElevationCompositeRawToken(x: 0, y: 2, blur: 3, color: ColorRawTokens.colorTransparentBlack200)
    public static let elevationBottom_2_300 = ElevationCompositeRawToken(x: 0, y: 2, blur: 3, color: ColorRawTokens.colorTransparentBlack300)
    public static let elevationBottom_2_400 = ElevationCompositeRawToken(x: 0, y: 2, blur: 3, color: ColorRawTokens.colorTransparentBlack400)
    public static let elevationBottom_2_500 = ElevationCompositeRawToken(x: 0, y: 2, blur: 3, color: ColorRawTokens.colorTransparentBlack500)
    public static let elevationBottom_2_600 = ElevationCompositeRawToken(x: 0, y: 2, blur: 3, color: ColorRawTokens.colorTransparentBlack600)
    public static let elevationBottom_3_100 = ElevationCompositeRawToken(x: 0, y: 4, blur: 4, color: ColorRawTokens.colorTransparentBlack100)
    public static let elevationBottom_3_200 = ElevationCompositeRawToken(x: 0, y: 4, blur: 4, color: ColorRawTokens.colorTransparentBlack200)
    public static let elevationBottom_3_300 = ElevationCompositeRawToken(x: 0, y: 4, blur: 4, color: ColorRawTokens.colorTransparentBlack300)
    public static let elevationBottom_3_400 = ElevationCompositeRawToken(x: 0, y: 4, blur: 4, color: ColorRawTokens.colorTransparentBlack400)
    public static let elevationBottom_3_500 = ElevationCompositeRawToken(x: 0, y: 4, blur: 4, color: ColorRawTokens.colorTransparentBlack500)
    public static let elevationBottom_3_600 = ElevationCompositeRawToken(x: 0, y: 4, blur: 4, color: ColorRawTokens.colorTransparentBlack600)
    public static let elevationBottom_4_100 = ElevationCompositeRawToken(x: 0, y: 8, blur: 8, color: ColorRawTokens.colorTransparentBlack100)
    public static let elevationBottom_4_200 = ElevationCompositeRawToken(x: 0, y: 8, blur: 8, color: ColorRawTokens.colorTransparentBlack200)
    public static let elevationBottom_4_300 = ElevationCompositeRawToken(x: 0, y: 8, blur: 8, color: ColorRawTokens.colorTransparentBlack300)
    public static let elevationBottom_4_400 = ElevationCompositeRawToken(x: 0, y: 8, blur: 8, color: ColorRawTokens.colorTransparentBlack400)
    public static let elevationBottom_4_500 = ElevationCompositeRawToken(x: 0, y: 8, blur: 8, color: ColorRawTokens.colorTransparentBlack500)
    public static let elevationBottom_4_600 = ElevationCompositeRawToken(x: 0, y: 8, blur: 8, color: ColorRawTokens.colorTransparentBlack600)
    public static let elevationBottom_5_100 = ElevationCompositeRawToken(x: 0, y: 12, blur: 12, color: ColorRawTokens.colorTransparentBlack100)
    public static let elevationBottom_5_200 = ElevationCompositeRawToken(x: 0, y: 12, blur: 12, color: ColorRawTokens.colorTransparentBlack200)
    public static let elevationBottom_5_300 = ElevationCompositeRawToken(x: 0, y: 12, blur: 12, color: ColorRawTokens.colorTransparentBlack300)
    public static let elevationBottom_5_400 = ElevationCompositeRawToken(x: 0, y: 12, blur: 12, color: ColorRawTokens.colorTransparentBlack400)
    public static let elevationBottom_5_500 = ElevationCompositeRawToken(x: 0, y: 12, blur: 12, color: ColorRawTokens.colorTransparentBlack500)
    public static let elevationBottom_5_600 = ElevationCompositeRawToken(x: 0, y: 12, blur: 12, color: ColorRawTokens.colorTransparentBlack600)
    public static let elevationBottom_6_100 = ElevationCompositeRawToken(x: 0, y: 20, blur: 20, color: ColorRawTokens.colorTransparentBlack100)
    public static let elevationBottom_6_200 = ElevationCompositeRawToken(x: 0, y: 20, blur: 20, color: ColorRawTokens.colorTransparentBlack200)
    public static let elevationBottom_6_300 = ElevationCompositeRawToken(x: 0, y: 20, blur: 20, color: ColorRawTokens.colorTransparentBlack300)
    public static let elevationBottom_6_400 = ElevationCompositeRawToken(x: 0, y: 20, blur: 20, color: ColorRawTokens.colorTransparentBlack400)
    public static let elevationBottom_6_500 = ElevationCompositeRawToken(x: 0, y: 20, blur: 20, color: ColorRawTokens.colorTransparentBlack500)
    public static let elevationBottom_6_600 = ElevationCompositeRawToken(x: 0, y: 20, blur: 20, color: ColorRawTokens.colorTransparentBlack600)
}
