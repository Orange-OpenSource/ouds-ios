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
import SwiftUI
import OUDSFoundations

// MARK: - Type aliases to keep grammar clear

public typealias ColorFunctionalPrimitiveToken = SwiftUI.Color
public typealias ColorTransparentPrimitiveToken = SwiftUI.Color

// MARK: Primitive tokens

public struct ColorGlobalPrimitiveTokens {
    
    // MARK: Primitive token - Colors - Black, white

    public static let colorFunctionalWhite: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#FFFFFF")
    public static let colorFunctionalBlack: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#000000")

    // MARK: Primitive token - Colors - Functional light gray

    public static let colorFunctionalLightGray80: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#F4F4F4")
    public static let colorFunctionalLightGray160: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#EEEEEE")
    public static let colorFunctionalLightGray240: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#E0E0E0")
    public static let colorFunctionalLightGray320: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#D6D6D6")
    public static let colorFunctionalLightGray400: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#CCCCCC")
    public static let colorFunctionalLightGray480: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#C2C2C2")
    public static let colorFunctionalLightGray560: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#BBBBBB")
    public static let colorFunctionalLightGray640: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#ADADAD")
    public static let colorFunctionalLightGray720: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#A3A3A3")
    public static let colorFunctionalLightGray800: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#999999")
    public static let colorFunctionalLightGray880: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#8F8F8F")
    public static let colorFunctionalLightGray960: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#858585")

    // MARK: Primitive token - Colors - Functional dark gray

    public static let colorFunctionalDarkGray80: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#7A7A7A")
    public static let colorFunctionalDarkGray160: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#707070")
    public static let colorFunctionalDarkGray240: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#666666")
    public static let colorFunctionalDarkGray320: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#5C5C5C")
    public static let colorFunctionalDarkGray400: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#555555")
    public static let colorFunctionalDarkGray480: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#44444")
    public static let colorFunctionalDarkGray560: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#3D3D3D")
    public static let colorFunctionalDarkGray640: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#333333")
    public static let colorFunctionalDarkGray720: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#272727")
    public static let colorFunctionalDarkGray800: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#1F1F1F")
    public static let colorFunctionalDarkGray880: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#141414")
    public static let colorFunctionalDarkGray960: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#0A0A0A")

    // MARK: Primitive token - Colors - Functional scarlet

    public static let colorFunctionalScarlet100: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#FFE5E6")
    public static let colorFunctionalScarlet200: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#FFB2B3")
    public static let colorFunctionalScarlet300: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#FF8081")
    public static let colorFunctionalScarlet400: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#FF4D4E")
    public static let colorFunctionalScarlet500: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#FF1A1B")
    public static let colorFunctionalScarlet600: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#EA0305")
    public static let colorFunctionalScarlet700: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#BZ000Z")
    public static let colorFunctionalScarlet800: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#800001")
    public static let colorFunctionalScarlet900: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#4D0001")

    // MARK: Primitive token - Colors - Functional sun

    public static let colorFunctionalSun100: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#FFF7D6")
    public static let colorFunctionalSun200: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#FFED99")
    public static let colorFunctionalSun300: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#FFE270")
    public static let colorFunctionalSun400: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#FFD73D")
    public static let colorFunctionalSun500: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#FFD0D0")
    public static let colorFunctionalSun600: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#D6AA00")
    public static let colorFunctionalSun700: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#A38200")
    public static let colorFunctionalSun800: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#665100")
    public static let colorFunctionalSun900: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#3D3100")

    // MARK: Primitive token - Colors - Functional malachite

    public static let colorFunctionalMalachite100: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#EDFCF0")
    public static let colorFunctionalMalachite200: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#C1F6CA")
    public static let colorFunctionalMalachite300: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#94F0A4")
    public static let colorFunctionalMalachite400: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#67E97E")
    public static let colorFunctionalMalachite500: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#3DE35A")
    public static let colorFunctionalMalachite600: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#1ECD3C")
    public static let colorFunctionalMalachite700: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#17A02F")
    public static let colorFunctionalMalachite800: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#0E621D")
    public static let colorFunctionalMalachite900: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#0A4715")

    // MARK: Primitive token - Colors - Functional dodger blue

    public static let colorFunctionalDodgerBlue100: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#F0FAFF")
    public static let colorFunctionalDodgerBlue200: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#BDE7FF")
    public static let colorFunctionalDodgerBlue300: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#8AD5FF")
    public static let colorFunctionalDodgerBlue400: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#57C3FF")
    public static let colorFunctionalDodgerBlue500: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#26B2FF")
    public static let colorFunctionalDodgerBlue600: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#009BF0")
    public static let colorFunctionalDodgerBlue700: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#007ABD")
    public static let colorFunctionalDodgerBlue800: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#00598A")
    public static let colorFunctionalDodgerBlue900: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#003857")

    // MARK: Primitive token - Colors - Transparent black

    public static let colorTransparentBlack0: ColorTransparentPrimitiveToken = colorFunctionalBlack.opacity(OpacityPrimitiveTokens.opacity0)
    public static let colorTransparentBlack100: ColorTransparentPrimitiveToken = colorFunctionalBlack.opacity(OpacityPrimitiveTokens.opacity100)
    public static let colorTransparentBlack200: ColorTransparentPrimitiveToken = colorFunctionalBlack.opacity(OpacityPrimitiveTokens.opacity200)
    public static let colorTransparentBlack300: ColorTransparentPrimitiveToken = colorFunctionalBlack.opacity(OpacityPrimitiveTokens.opacity300)
    public static let colorTransparentBlack400: ColorTransparentPrimitiveToken = colorFunctionalBlack.opacity(OpacityPrimitiveTokens.opacity400)
    public static let colorTransparentBlack500: ColorTransparentPrimitiveToken = colorFunctionalBlack.opacity(OpacityPrimitiveTokens.opacity500)
    public static let colorTransparentBlack600: ColorTransparentPrimitiveToken = colorFunctionalBlack.opacity(OpacityPrimitiveTokens.opacity600)
    public static let colorTransparentBlack700: ColorTransparentPrimitiveToken = colorFunctionalBlack.opacity(OpacityPrimitiveTokens.opacity700)
    public static let colorTransparentBlack800: ColorTransparentPrimitiveToken = colorFunctionalBlack.opacity(OpacityPrimitiveTokens.opacity800)
    public static let colorTransparentBlack900: ColorTransparentPrimitiveToken = colorFunctionalBlack.opacity(OpacityPrimitiveTokens.opacity900)

    // MARK: Primitive token - Colors - Transparent white

    public static let colorTransparentWhite0: ColorTransparentPrimitiveToken = colorFunctionalWhite.opacity(OpacityPrimitiveTokens.opacity0)
    public static let colorTransparentWhite100: ColorTransparentPrimitiveToken = colorFunctionalWhite.opacity(OpacityPrimitiveTokens.opacity100)
    public static let colorTransparentWhite200: ColorTransparentPrimitiveToken = colorFunctionalWhite.opacity(OpacityPrimitiveTokens.opacity200)
    public static let colorTransparentWhite300: ColorTransparentPrimitiveToken = colorFunctionalWhite.opacity(OpacityPrimitiveTokens.opacity300)
    public static let colorTransparentWhite400: ColorTransparentPrimitiveToken = colorFunctionalWhite.opacity(OpacityPrimitiveTokens.opacity400)
    public static let colorTransparentWhite500: ColorTransparentPrimitiveToken = colorFunctionalWhite.opacity(OpacityPrimitiveTokens.opacity500)
    public static let colorTransparentWhite600: ColorTransparentPrimitiveToken = colorFunctionalWhite.opacity(OpacityPrimitiveTokens.opacity600)
    public static let colorTransparentWhite700: ColorTransparentPrimitiveToken = colorFunctionalWhite.opacity(OpacityPrimitiveTokens.opacity700)
    public static let colorTransparentWhite800: ColorTransparentPrimitiveToken = colorFunctionalWhite.opacity(OpacityPrimitiveTokens.opacity800)
    public static let colorTransparentWhite900: ColorTransparentPrimitiveToken = colorFunctionalWhite.opacity(OpacityPrimitiveTokens.opacity900)
    
}
