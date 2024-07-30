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

public typealias TypographyColorFunctionalPrimitiveToken = SwiftUI.Color
public typealias TypographyColorTransparentPrimitiveToken = SwiftUI.Color

// MARK: Primitive tokens

// MARK: - Composite primitive token

public struct ColorPrimitiveTokens {
    
    // MARK: Color functional
    
    // Primitive token - Colors - Black, white
    
    static let colorFunctionalWhite: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#FFFFFF")
    static let colorFunctionalBlack: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#000000")
    
    // Primitive token - Colors - Functional light gray
    
    static let colorFunctionalLightGray80: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#F4F4F4")
    static let colorFunctionalLightGray160: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#EEEEEE")
    static let colorFunctionalLightGray240: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#E0E0E0")
    static let colorFunctionalLightGray320: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#D6D6D6")
    static let colorFunctionalLightGray400: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#CCCCCC")
    static let colorFunctionalLightGray480: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#C2C2C2")
    static let colorFunctionalLightGray560: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#BBBBBB")
    static let colorFunctionalLightGray640: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#ADADAD")
    static let colorFunctionalLightGray720: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#A3A3A3")
    static let colorFunctionalLightGray800: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#999999")
    static let colorFunctionalLightGray880: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#8F8F8F")
    static let colorFunctionalLightGray960: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#858585")
    
    // Primitive token - Colors - Functional dark gray
    
    static let colorFunctionalDarkGray80: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#7A7A7A")
    static let colorFunctionalDarkGray160: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#707070")
    static let colorFunctionalDarkGray240: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#666666")
    static let colorFunctionalDarkGray320: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#5C5C5C")
    static let colorFunctionalDarkGray400: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#555555")
    static let colorFunctionalDarkGray480: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#44444")
    static let colorFunctionalDarkGray560: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#3D3D3D")
    static let colorFunctionalDarkGray640: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#333333")
    static let colorFunctionalDarkGray720: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#272727")
    static let colorFunctionalDarkGray800: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#1F1F1F")
    static let colorFunctionalDarkGray880: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#141414")
    static let colorFunctionalDarkGray960: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#0A0A0A")
    
    // Primitive token - Colors - Functional scarlet
    
    static let colorFunctionalScarlet100: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#FFE5E6")
    static let colorFunctionalScarlet200: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#FFB2B3")
    static let colorFunctionalScarlet300: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#FF8081")
    static let colorFunctionalScarlet400: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#FF4D4E")
    static let colorFunctionalScarlet500: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#FF1A1B")
    static let colorFunctionalScarlet600: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#EA0305")
    static let colorFunctionalScarlet700: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#BZ000Z")
    static let colorFunctionalScarlet800: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#800001")
    static let colorFunctionalScarlet900: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#4D0001")
    
    // Primitive token - Colors - Functional sun
    
    static let colorFunctionalSun100: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#FFF7D6")
    static let colorFunctionalSun200: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#FFED99")
    static let colorFunctionalSun300: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#FFE270")
    static let colorFunctionalSun400: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#FFD73D")
    static let colorFunctionalSun500: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#FFD0D0")
    static let colorFunctionalSun600: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#D6AA00")
    static let colorFunctionalSun700: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#A38200")
    static let colorFunctionalSun800: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#665100")
    static let colorFunctionalSun900: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#3D3100")
    
    // Primitive token - Colors - Functional malachite
    
    static let colorFunctionalMalachite100: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#EDFCF0")
    static let colorFunctionalMalachite200: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#C1F6CA")
    static let colorFunctionalMalachite300: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#94F0A4")
    static let colorFunctionalMalachite400: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#67E97E")
    static let colorFunctionalMalachite500: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#3DE35A")
    static let colorFunctionalMalachite600: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#1ECD3C")
    static let colorFunctionalMalachite700: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#17A02F")
    static let colorFunctionalMalachite800: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#0E621D")
    static let colorFunctionalMalachite900: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#0A4715")
    
    // Primitive token - Colors - Functional dodger blue
    
    static let colorFunctionalDodgerBlue100: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#F0FAFF")
    static let colorFunctionalDodgerBlue200: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#BDE7FF")
    static let colorFunctionalDodgerBlue300: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#8AD5FF")
    static let colorFunctionalDodgerBlue400: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#57C3FF")
    static let colorFunctionalDodgerBlue500: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#26B2FF")
    static let colorFunctionalDodgerBlue600: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#009BF0")
    static let colorFunctionalDodgerBlue700: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#007ABD")
    static let colorFunctionalDodgerBlue800: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#00598A")
    static let colorFunctionalDodgerBlue900: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#003857")
    
    // MARK: - Transparent
    
    // Primitive token - Colors - Transparent black
    
    static let colorTransparentBlack0: TypographyColorTransparentPrimitiveToken = colorFunctionalBlack.opacity(OpacityPrimitiveTokens.opacity0)
    static let colorTransparentBlack100: TypographyColorTransparentPrimitiveToken = colorFunctionalBlack.opacity(OpacityPrimitiveTokens.opacity100)
    static let colorTransparentBlack200: TypographyColorTransparentPrimitiveToken = colorFunctionalBlack.opacity(OpacityPrimitiveTokens.opacity200)
    static let colorTransparentBlack300: TypographyColorTransparentPrimitiveToken = colorFunctionalBlack.opacity(OpacityPrimitiveTokens.opacity300)
    static let colorTransparentBlack400: TypographyColorTransparentPrimitiveToken = colorFunctionalBlack.opacity(OpacityPrimitiveTokens.opacity400)
    static let colorTransparentBlack500: TypographyColorTransparentPrimitiveToken = colorFunctionalBlack.opacity(OpacityPrimitiveTokens.opacity500)
    static let colorTransparentBlack600: TypographyColorTransparentPrimitiveToken = colorFunctionalBlack.opacity(OpacityPrimitiveTokens.opacity600)
    static let colorTransparentBlack700: TypographyColorTransparentPrimitiveToken = colorFunctionalBlack.opacity(OpacityPrimitiveTokens.opacity700)
    static let colorTransparentBlack800: TypographyColorTransparentPrimitiveToken = colorFunctionalBlack.opacity(OpacityPrimitiveTokens.opacity800)
    static let colorTransparentBlack900: TypographyColorTransparentPrimitiveToken = colorFunctionalBlack.opacity(OpacityPrimitiveTokens.opacity900)
    
    // Primitive token - Colors - Transparent white
    
    static let colorTransparentWhite0: TypographyColorTransparentPrimitiveToken = colorFunctionalWhite.opacity(OpacityPrimitiveTokens.opacity0)
    static let colorTransparentWhite100: TypographyColorTransparentPrimitiveToken = colorFunctionalWhite.opacity(OpacityPrimitiveTokens.opacity100)
    static let colorTransparentWhite200: TypographyColorTransparentPrimitiveToken = colorFunctionalWhite.opacity(OpacityPrimitiveTokens.opacity200)
    static let colorTransparentWhite300: TypographyColorTransparentPrimitiveToken = colorFunctionalWhite.opacity(OpacityPrimitiveTokens.opacity300)
    static let colorTransparentWhite400: TypographyColorTransparentPrimitiveToken = colorFunctionalWhite.opacity(OpacityPrimitiveTokens.opacity400)
    static let colorTransparentWhite500: TypographyColorTransparentPrimitiveToken = colorFunctionalWhite.opacity(OpacityPrimitiveTokens.opacity500)
    static let colorTransparentWhite600: TypographyColorTransparentPrimitiveToken = colorFunctionalWhite.opacity(OpacityPrimitiveTokens.opacity600)
    static let colorTransparentWhite700: TypographyColorTransparentPrimitiveToken = colorFunctionalWhite.opacity(OpacityPrimitiveTokens.opacity700)
    static let colorTransparentWhite800: TypographyColorTransparentPrimitiveToken = colorFunctionalWhite.opacity(OpacityPrimitiveTokens.opacity800)
    static let colorTransparentWhite900: TypographyColorTransparentPrimitiveToken = colorFunctionalWhite.opacity(OpacityPrimitiveTokens.opacity900)
    
}
