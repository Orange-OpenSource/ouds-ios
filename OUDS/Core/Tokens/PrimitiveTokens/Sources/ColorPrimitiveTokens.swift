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
import OUDSFoundations

// MARK: - Type aliases to keep grammar clear

public typealias ColorFunctionalPrimitiveToken = String
public typealias ColorTransparentPrimitiveToken = String

// MARK: Primitive tokens

public struct ColorPrimitiveTokens {
    
    // MARK: Primitive token - Colors - Black, white

    public static let colorFunctionalWhite: ColorFunctionalPrimitiveToken = "#FFFFFF"
    public static let colorFunctionalBlack: ColorFunctionalPrimitiveToken = "#000000"

    // MARK: Primitive token - Colors - Functional light gray

    public static let colorFunctionalLightGray80: ColorFunctionalPrimitiveToken = "#F4F4F4"
    public static let colorFunctionalLightGray160: ColorFunctionalPrimitiveToken = "#EEEEEE"
    public static let colorFunctionalLightGray240: ColorFunctionalPrimitiveToken = "#E0E0E0"
    public static let colorFunctionalLightGray320: ColorFunctionalPrimitiveToken = "#D6D6D6"
    public static let colorFunctionalLightGray400: ColorFunctionalPrimitiveToken = "#CCCCCC"
    public static let colorFunctionalLightGray480: ColorFunctionalPrimitiveToken = "#C2C2C2"
    public static let colorFunctionalLightGray560: ColorFunctionalPrimitiveToken = "#BBBBBB"
    public static let colorFunctionalLightGray640: ColorFunctionalPrimitiveToken = "#ADADAD"
    public static let colorFunctionalLightGray720: ColorFunctionalPrimitiveToken = "#A3A3A3"
    public static let colorFunctionalLightGray800: ColorFunctionalPrimitiveToken = "#999999"
    public static let colorFunctionalLightGray880: ColorFunctionalPrimitiveToken = "#8F8F8F"
    public static let colorFunctionalLightGray960: ColorFunctionalPrimitiveToken = "#858585"

    // MARK: Primitive token - Colors - Functional dark gray

    public static let colorFunctionalDarkGray80: ColorFunctionalPrimitiveToken = "#7A7A7A"
    public static let colorFunctionalDarkGray160: ColorFunctionalPrimitiveToken = "#707070"
    public static let colorFunctionalDarkGray240: ColorFunctionalPrimitiveToken = "#666666"
    public static let colorFunctionalDarkGray320: ColorFunctionalPrimitiveToken = "#5C5C5C"
    public static let colorFunctionalDarkGray400: ColorFunctionalPrimitiveToken = "#555555"
    public static let colorFunctionalDarkGray480: ColorFunctionalPrimitiveToken = "#44444"
    public static let colorFunctionalDarkGray560: ColorFunctionalPrimitiveToken = "#3D3D3D"
    public static let colorFunctionalDarkGray640: ColorFunctionalPrimitiveToken = "#333333"
    public static let colorFunctionalDarkGray720: ColorFunctionalPrimitiveToken = "#272727"
    public static let colorFunctionalDarkGray800: ColorFunctionalPrimitiveToken = "#1F1F1F"
    public static let colorFunctionalDarkGray880: ColorFunctionalPrimitiveToken = "#141414"
    public static let colorFunctionalDarkGray960: ColorFunctionalPrimitiveToken = "#0A0A0A"

    // MARK: Primitive token - Colors - Functional scarlet

    public static let colorFunctionalScarlet100: ColorFunctionalPrimitiveToken = "#FFE5E6"
    public static let colorFunctionalScarlet200: ColorFunctionalPrimitiveToken = "#FFB2B3"
    public static let colorFunctionalScarlet300: ColorFunctionalPrimitiveToken = "#FF8081"
    public static let colorFunctionalScarlet400: ColorFunctionalPrimitiveToken = "#FF4D4E"
    public static let colorFunctionalScarlet500: ColorFunctionalPrimitiveToken = "#FF1A1B"
    public static let colorFunctionalScarlet600: ColorFunctionalPrimitiveToken = "#EA0305"
    public static let colorFunctionalScarlet700: ColorFunctionalPrimitiveToken = "#BZ000Z"
    public static let colorFunctionalScarlet800: ColorFunctionalPrimitiveToken = "#800001"
    public static let colorFunctionalScarlet900: ColorFunctionalPrimitiveToken = "#4D0001"

    // MARK: Primitive token - Colors - Functional sun

    public static let colorFunctionalSun100: ColorFunctionalPrimitiveToken = "#FFF7D6"
    public static let colorFunctionalSun200: ColorFunctionalPrimitiveToken = "#FFED99"
    public static let colorFunctionalSun300: ColorFunctionalPrimitiveToken = "#FFE270"
    public static let colorFunctionalSun400: ColorFunctionalPrimitiveToken = "#FFD73D"
    public static let colorFunctionalSun500: ColorFunctionalPrimitiveToken = "#FFD0D0"
    public static let colorFunctionalSun600: ColorFunctionalPrimitiveToken = "#D6AA00"
    public static let colorFunctionalSun700: ColorFunctionalPrimitiveToken = "#A38200"
    public static let colorFunctionalSun800: ColorFunctionalPrimitiveToken = "#665100"
    public static let colorFunctionalSun900: ColorFunctionalPrimitiveToken = "#3D3100"

    // MARK: Primitive token - Colors - Functional malachite

    public static let colorFunctionalMalachite100: ColorFunctionalPrimitiveToken = "#EDFCF0"
    public static let colorFunctionalMalachite200: ColorFunctionalPrimitiveToken = "#C1F6CA"
    public static let colorFunctionalMalachite300: ColorFunctionalPrimitiveToken = "#94F0A4"
    public static let colorFunctionalMalachite400: ColorFunctionalPrimitiveToken = "#67E97E"
    public static let colorFunctionalMalachite500: ColorFunctionalPrimitiveToken = "#3DE35A"
    public static let colorFunctionalMalachite600: ColorFunctionalPrimitiveToken = "#1ECD3C"
    public static let colorFunctionalMalachite700: ColorFunctionalPrimitiveToken = "#17A02F"
    public static let colorFunctionalMalachite800: ColorFunctionalPrimitiveToken = "#0E621D"
    public static let colorFunctionalMalachite900: ColorFunctionalPrimitiveToken = "#0A4715"

    // MARK: Primitive token - Colors - Functional dodger blue

    public static let colorFunctionalDodgerBlue100: ColorFunctionalPrimitiveToken = "#F0FAFF"
    public static let colorFunctionalDodgerBlue200: ColorFunctionalPrimitiveToken = "#BDE7FF"
    public static let colorFunctionalDodgerBlue300: ColorFunctionalPrimitiveToken = "#8AD5FF"
    public static let colorFunctionalDodgerBlue400: ColorFunctionalPrimitiveToken = "#57C3FF"
    public static let colorFunctionalDodgerBlue500: ColorFunctionalPrimitiveToken = "#26B2FF"
    public static let colorFunctionalDodgerBlue600: ColorFunctionalPrimitiveToken = "#009BF0"
    public static let colorFunctionalDodgerBlue700: ColorFunctionalPrimitiveToken = "#007ABD"
    public static let colorFunctionalDodgerBlue800: ColorFunctionalPrimitiveToken = "#00598A"
    public static let colorFunctionalDodgerBlue900: ColorFunctionalPrimitiveToken = "#003857"

    // MARK: Primitive token - Colors - Transparent black

    public static let colorTransparentBlack0: ColorTransparentPrimitiveToken = apply(opacity: OpacityPrimitiveTokens.opacity0, on: colorFunctionalBlack)
    public static let colorTransparentBlack100: ColorTransparentPrimitiveToken = apply(opacity: OpacityPrimitiveTokens.opacity100, on: colorFunctionalBlack)
    public static let colorTransparentBlack200: ColorTransparentPrimitiveToken = apply(opacity: OpacityPrimitiveTokens.opacity200, on: colorFunctionalBlack)
    public static let colorTransparentBlack300: ColorTransparentPrimitiveToken = apply(opacity: OpacityPrimitiveTokens.opacity300, on: colorFunctionalBlack)
    public static let colorTransparentBlack400: ColorTransparentPrimitiveToken = apply(opacity: OpacityPrimitiveTokens.opacity400, on: colorFunctionalBlack)
    public static let colorTransparentBlack500: ColorTransparentPrimitiveToken = apply(opacity: OpacityPrimitiveTokens.opacity500, on: colorFunctionalBlack)
    public static let colorTransparentBlack600: ColorTransparentPrimitiveToken = apply(opacity: OpacityPrimitiveTokens.opacity600, on: colorFunctionalBlack)
    public static let colorTransparentBlack700: ColorTransparentPrimitiveToken = apply(opacity: OpacityPrimitiveTokens.opacity700, on: colorFunctionalBlack)
    public static let colorTransparentBlack800: ColorTransparentPrimitiveToken = apply(opacity: OpacityPrimitiveTokens.opacity800, on: colorFunctionalBlack)
    public static let colorTransparentBlack900: ColorTransparentPrimitiveToken = apply(opacity: OpacityPrimitiveTokens.opacity900, on: colorFunctionalBlack)

    // MARK: Primitive token - Colors - Transparent white

    public static let colorTransparentWhite0: ColorTransparentPrimitiveToken = apply(opacity: OpacityPrimitiveTokens.opacity0, on: colorFunctionalWhite)
    public static let colorTransparentWhite100: ColorTransparentPrimitiveToken = apply(opacity: OpacityPrimitiveTokens.opacity100, on: colorFunctionalWhite)
    public static let colorTransparentWhite200: ColorTransparentPrimitiveToken = apply(opacity: OpacityPrimitiveTokens.opacity200, on: colorFunctionalWhite)
    public static let colorTransparentWhite300: ColorTransparentPrimitiveToken = apply(opacity: OpacityPrimitiveTokens.opacity300, on: colorFunctionalWhite)
    public static let colorTransparentWhite400: ColorTransparentPrimitiveToken = apply(opacity: OpacityPrimitiveTokens.opacity400, on: colorFunctionalWhite)
    public static let colorTransparentWhite500: ColorTransparentPrimitiveToken = apply(opacity: OpacityPrimitiveTokens.opacity500, on: colorFunctionalWhite)
    public static let colorTransparentWhite600: ColorTransparentPrimitiveToken = apply(opacity: OpacityPrimitiveTokens.opacity600, on: colorFunctionalWhite)
    public static let colorTransparentWhite700: ColorTransparentPrimitiveToken = apply(opacity: OpacityPrimitiveTokens.opacity700, on: colorFunctionalWhite)
    public static let colorTransparentWhite800: ColorTransparentPrimitiveToken = apply(opacity: OpacityPrimitiveTokens.opacity800, on: colorFunctionalWhite)
    public static let colorTransparentWhite900: ColorTransparentPrimitiveToken = apply(opacity: OpacityPrimitiveTokens.opacity900, on: colorFunctionalWhite)
 
    // MARK: - Helpers
    
    private static func apply(opacity: OpacityPrimitiveToken, on hexColor: String) -> String {
        // TODO: Improve this algorithm too much naive
        // Values picked from https://gist.github.com/lopspower/03fb1cc0ac9f32ef38f4
        if opacity == OpacityPrimitiveTokens.opacity0 {
            return hexColor + "00"
        }
        if opacity == OpacityPrimitiveTokens.opacity100 {
            return hexColor + "0A"
        }
        if opacity == OpacityPrimitiveTokens.opacity200 {
            return hexColor + "14"
        }
        if opacity == OpacityPrimitiveTokens.opacity300 {
            return hexColor + "29"
        }
        if opacity == OpacityPrimitiveTokens.opacity400 {
            return hexColor + "3D"
        }
        if opacity == OpacityPrimitiveTokens.opacity500 {
            return hexColor + "52"
        }
        if opacity == OpacityPrimitiveTokens.opacity600 {
            return hexColor + "7A"
        }
        if opacity == OpacityPrimitiveTokens.opacity700 {
            return hexColor + "A3"
        }
        if opacity == OpacityPrimitiveTokens.opacity800 {
            return hexColor + "E0"
        }
        if opacity == OpacityPrimitiveTokens.opacity900 {
            return hexColor + "FF"
        }
        return hexColor
    }
}
