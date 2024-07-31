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
    
    // MARK: Color functional
    
    // Primitive token - Colors - Black, white
    
    static let colorFunctionalWhite: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#FFFFFF")
    static let colorFunctionalBlack: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#000000")
    
    // Primitive token - Colors - Functional light gray
    
    static let colorFunctionalLightGray80: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#F4F4F4")
    static let colorFunctionalLightGray160: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#EEEEEE")
    static let colorFunctionalLightGray240: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#E0E0E0")
    static let colorFunctionalLightGray320: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#D6D6D6")
    static let colorFunctionalLightGray400: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#CCCCCC")
    static let colorFunctionalLightGray480: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#C2C2C2")
    static let colorFunctionalLightGray560: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#BBBBBB")
    static let colorFunctionalLightGray640: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#ADADAD")
    static let colorFunctionalLightGray720: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#A3A3A3")
    static let colorFunctionalLightGray800: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#999999")
    static let colorFunctionalLightGray880: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#8F8F8F")
    static let colorFunctionalLightGray960: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#858585")
    
    // Primitive token - Colors - Functional dark gray
    
    static let colorFunctionalDarkGray80: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#7A7A7A")
    static let colorFunctionalDarkGray160: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#707070")
    static let colorFunctionalDarkGray240: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#666666")
    static let colorFunctionalDarkGray320: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#5C5C5C")
    static let colorFunctionalDarkGray400: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#555555")
    static let colorFunctionalDarkGray480: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#44444")
    static let colorFunctionalDarkGray560: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#3D3D3D")
    static let colorFunctionalDarkGray640: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#333333")
    static let colorFunctionalDarkGray720: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#272727")
    static let colorFunctionalDarkGray800: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#1F1F1F")
    static let colorFunctionalDarkGray880: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#141414")
    static let colorFunctionalDarkGray960: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#0A0A0A")
    
    // Primitive token - Colors - Functional scarlet
    
    static let colorFunctionalScarlet100: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#FFE5E6")
    static let colorFunctionalScarlet200: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#FFB2B3")
    static let colorFunctionalScarlet300: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#FF8081")
    static let colorFunctionalScarlet400: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#FF4D4E")
    static let colorFunctionalScarlet500: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#FF1A1B")
    static let colorFunctionalScarlet600: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#EA0305")
    static let colorFunctionalScarlet700: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#BZ000Z")
    static let colorFunctionalScarlet800: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#800001")
    static let colorFunctionalScarlet900: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#4D0001")
    
    // Primitive token - Colors - Functional sun
    
    static let colorFunctionalSun100: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#FFF7D6")
    static let colorFunctionalSun200: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#FFED99")
    static let colorFunctionalSun300: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#FFE270")
    static let colorFunctionalSun400: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#FFD73D")
    static let colorFunctionalSun500: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#FFD0D0")
    static let colorFunctionalSun600: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#D6AA00")
    static let colorFunctionalSun700: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#A38200")
    static let colorFunctionalSun800: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#665100")
    static let colorFunctionalSun900: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#3D3100")
    
    // Primitive token - Colors - Functional malachite
    
    static let colorFunctionalMalachite100: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#EDFCF0")
    static let colorFunctionalMalachite200: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#C1F6CA")
    static let colorFunctionalMalachite300: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#94F0A4")
    static let colorFunctionalMalachite400: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#67E97E")
    static let colorFunctionalMalachite500: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#3DE35A")
    static let colorFunctionalMalachite600: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#1ECD3C")
    static let colorFunctionalMalachite700: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#17A02F")
    static let colorFunctionalMalachite800: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#0E621D")
    static let colorFunctionalMalachite900: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#0A4715")
    
    // Primitive token - Colors - Functional dodger blue
    
    static let colorFunctionalDodgerBlue100: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#F0FAFF")
    static let colorFunctionalDodgerBlue200: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#BDE7FF")
    static let colorFunctionalDodgerBlue300: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#8AD5FF")
    static let colorFunctionalDodgerBlue400: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#57C3FF")
    static let colorFunctionalDodgerBlue500: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#26B2FF")
    static let colorFunctionalDodgerBlue600: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#009BF0")
    static let colorFunctionalDodgerBlue700: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#007ABD")
    static let colorFunctionalDodgerBlue800: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#00598A")
    static let colorFunctionalDodgerBlue900: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#003857")
    
    // MARK: - Transparent
    
    // Primitive token - Colors - Transparent black
    
    static let colorTransparentBlack0: ColorTransparentPrimitiveToken = colorFunctionalBlack.opacity(OpacityPrimitiveTokens.opacity0)
    static let colorTransparentBlack100: ColorTransparentPrimitiveToken = colorFunctionalBlack.opacity(OpacityPrimitiveTokens.opacity100)
    static let colorTransparentBlack200: ColorTransparentPrimitiveToken = colorFunctionalBlack.opacity(OpacityPrimitiveTokens.opacity200)
    static let colorTransparentBlack300: ColorTransparentPrimitiveToken = colorFunctionalBlack.opacity(OpacityPrimitiveTokens.opacity300)
    static let colorTransparentBlack400: ColorTransparentPrimitiveToken = colorFunctionalBlack.opacity(OpacityPrimitiveTokens.opacity400)
    static let colorTransparentBlack500: ColorTransparentPrimitiveToken = colorFunctionalBlack.opacity(OpacityPrimitiveTokens.opacity500)
    static let colorTransparentBlack600: ColorTransparentPrimitiveToken = colorFunctionalBlack.opacity(OpacityPrimitiveTokens.opacity600)
    static let colorTransparentBlack700: ColorTransparentPrimitiveToken = colorFunctionalBlack.opacity(OpacityPrimitiveTokens.opacity700)
    static let colorTransparentBlack800: ColorTransparentPrimitiveToken = colorFunctionalBlack.opacity(OpacityPrimitiveTokens.opacity800)
    static let colorTransparentBlack900: ColorTransparentPrimitiveToken = colorFunctionalBlack.opacity(OpacityPrimitiveTokens.opacity900)
    
    // Primitive token - Colors - Transparent white
    
    static let colorTransparentWhite0: ColorTransparentPrimitiveToken = colorFunctionalWhite.opacity(OpacityPrimitiveTokens.opacity0)
    static let colorTransparentWhite100: ColorTransparentPrimitiveToken = colorFunctionalWhite.opacity(OpacityPrimitiveTokens.opacity100)
    static let colorTransparentWhite200: ColorTransparentPrimitiveToken = colorFunctionalWhite.opacity(OpacityPrimitiveTokens.opacity200)
    static let colorTransparentWhite300: ColorTransparentPrimitiveToken = colorFunctionalWhite.opacity(OpacityPrimitiveTokens.opacity300)
    static let colorTransparentWhite400: ColorTransparentPrimitiveToken = colorFunctionalWhite.opacity(OpacityPrimitiveTokens.opacity400)
    static let colorTransparentWhite500: ColorTransparentPrimitiveToken = colorFunctionalWhite.opacity(OpacityPrimitiveTokens.opacity500)
    static let colorTransparentWhite600: ColorTransparentPrimitiveToken = colorFunctionalWhite.opacity(OpacityPrimitiveTokens.opacity600)
    static let colorTransparentWhite700: ColorTransparentPrimitiveToken = colorFunctionalWhite.opacity(OpacityPrimitiveTokens.opacity700)
    static let colorTransparentWhite800: ColorTransparentPrimitiveToken = colorFunctionalWhite.opacity(OpacityPrimitiveTokens.opacity800)
    static let colorTransparentWhite900: ColorTransparentPrimitiveToken = colorFunctionalWhite.opacity(OpacityPrimitiveTokens.opacity900)
    
}
