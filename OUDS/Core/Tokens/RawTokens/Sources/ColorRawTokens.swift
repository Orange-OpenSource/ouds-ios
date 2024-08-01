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

public typealias ColorFunctionalRawToken = String
public typealias ColorTransparentRawToken = String

// MARK: Raw tokens

/// This is the group of all **raw tokens** related to **colors**.
/// Primitive types such as  `String` must be used to as to allow to use `@objc` keywords in extensions for overriding.
public struct ColorRawTokens {

    // MARK: Primitive token - Colors - Black, white

    public static let colorFunctionalWhite: ColorFunctionalRawToken = "#FFFFFF"
    public static let colorFunctionalBlack: ColorFunctionalRawToken = "#000000"

    // MARK: Primitive token - Colors - Functional light gray

    public static let colorFunctionalLightGray80: ColorFunctionalRawToken = "#F4F4F4"
    public static let colorFunctionalLightGray160: ColorFunctionalRawToken = "#EEEEEE"
    public static let colorFunctionalLightGray240: ColorFunctionalRawToken = "#E0E0E0"
    public static let colorFunctionalLightGray320: ColorFunctionalRawToken = "#D6D6D6"
    public static let colorFunctionalLightGray400: ColorFunctionalRawToken = "#CCCCCC"
    public static let colorFunctionalLightGray480: ColorFunctionalRawToken = "#C2C2C2"
    public static let colorFunctionalLightGray560: ColorFunctionalRawToken = "#BBBBBB"
    public static let colorFunctionalLightGray640: ColorFunctionalRawToken = "#ADADAD"
    public static let colorFunctionalLightGray720: ColorFunctionalRawToken = "#A3A3A3"
    public static let colorFunctionalLightGray800: ColorFunctionalRawToken = "#999999"
    public static let colorFunctionalLightGray880: ColorFunctionalRawToken = "#8F8F8F"
    public static let colorFunctionalLightGray960: ColorFunctionalRawToken = "#858585"

    // MARK: Primitive token - Colors - Functional dark gray

    public static let colorFunctionalDarkGray80: ColorFunctionalRawToken = "#7A7A7A"
    public static let colorFunctionalDarkGray160: ColorFunctionalRawToken = "#707070"
    public static let colorFunctionalDarkGray240: ColorFunctionalRawToken = "#666666"
    public static let colorFunctionalDarkGray320: ColorFunctionalRawToken = "#5C5C5C"
    public static let colorFunctionalDarkGray400: ColorFunctionalRawToken = "#555555"
    public static let colorFunctionalDarkGray480: ColorFunctionalRawToken = "#44444"
    public static let colorFunctionalDarkGray560: ColorFunctionalRawToken = "#3D3D3D"
    public static let colorFunctionalDarkGray640: ColorFunctionalRawToken = "#333333"
    public static let colorFunctionalDarkGray720: ColorFunctionalRawToken = "#272727"
    public static let colorFunctionalDarkGray800: ColorFunctionalRawToken = "#1F1F1F"
    public static let colorFunctionalDarkGray880: ColorFunctionalRawToken = "#141414"
    public static let colorFunctionalDarkGray960: ColorFunctionalRawToken = "#0A0A0A"

    // MARK: Primitive token - Colors - Functional scarlet

    public static let colorFunctionalScarlet100: ColorFunctionalRawToken = "#FFE5E6"
    public static let colorFunctionalScarlet200: ColorFunctionalRawToken = "#FFB2B3"
    public static let colorFunctionalScarlet300: ColorFunctionalRawToken = "#FF8081"
    public static let colorFunctionalScarlet400: ColorFunctionalRawToken = "#FF4D4E"
    public static let colorFunctionalScarlet500: ColorFunctionalRawToken = "#FF1A1B"
    public static let colorFunctionalScarlet600: ColorFunctionalRawToken = "#EA0305"
    public static let colorFunctionalScarlet700: ColorFunctionalRawToken = "#BZ000Z"
    public static let colorFunctionalScarlet800: ColorFunctionalRawToken = "#800001"
    public static let colorFunctionalScarlet900: ColorFunctionalRawToken = "#4D0001"

    // MARK: Primitive token - Colors - Functional sun

    public static let colorFunctionalSun100: ColorFunctionalRawToken = "#FFF7D6"
    public static let colorFunctionalSun200: ColorFunctionalRawToken = "#FFED99"
    public static let colorFunctionalSun300: ColorFunctionalRawToken = "#FFE270"
    public static let colorFunctionalSun400: ColorFunctionalRawToken = "#FFD73D"
    public static let colorFunctionalSun500: ColorFunctionalRawToken = "#FFD0D0"
    public static let colorFunctionalSun600: ColorFunctionalRawToken = "#D6AA00"
    public static let colorFunctionalSun700: ColorFunctionalRawToken = "#A38200"
    public static let colorFunctionalSun800: ColorFunctionalRawToken = "#665100"
    public static let colorFunctionalSun900: ColorFunctionalRawToken = "#3D3100"

    // MARK: Primitive token - Colors - Functional malachite

    public static let colorFunctionalMalachite100: ColorFunctionalRawToken = "#EDFCF0"
    public static let colorFunctionalMalachite200: ColorFunctionalRawToken = "#C1F6CA"
    public static let colorFunctionalMalachite300: ColorFunctionalRawToken = "#94F0A4"
    public static let colorFunctionalMalachite400: ColorFunctionalRawToken = "#67E97E"
    public static let colorFunctionalMalachite500: ColorFunctionalRawToken = "#3DE35A"
    public static let colorFunctionalMalachite600: ColorFunctionalRawToken = "#1ECD3C"
    public static let colorFunctionalMalachite700: ColorFunctionalRawToken = "#17A02F"
    public static let colorFunctionalMalachite800: ColorFunctionalRawToken = "#0E621D"
    public static let colorFunctionalMalachite900: ColorFunctionalRawToken = "#0A4715"

    // MARK: Primitive token - Colors - Functional dodger blue

    public static let colorFunctionalDodgerBlue100: ColorFunctionalRawToken = "#F0FAFF"
    public static let colorFunctionalDodgerBlue200: ColorFunctionalRawToken = "#BDE7FF"
    public static let colorFunctionalDodgerBlue300: ColorFunctionalRawToken = "#8AD5FF"
    public static let colorFunctionalDodgerBlue400: ColorFunctionalRawToken = "#57C3FF"
    public static let colorFunctionalDodgerBlue500: ColorFunctionalRawToken = "#26B2FF"
    public static let colorFunctionalDodgerBlue600: ColorFunctionalRawToken = "#009BF0"
    public static let colorFunctionalDodgerBlue700: ColorFunctionalRawToken = "#007ABD"
    public static let colorFunctionalDodgerBlue800: ColorFunctionalRawToken = "#00598A"
    public static let colorFunctionalDodgerBlue900: ColorFunctionalRawToken = "#003857"

    // MARK: Primitive token - Colors - Transparent black

    public static let colorTransparentBlack0: ColorTransparentRawToken = apply(opacity: OpacityRawTokens.opacity0, on: colorFunctionalBlack)
    public static let colorTransparentBlack100: ColorTransparentRawToken = apply(opacity: OpacityRawTokens.opacity100, on: colorFunctionalBlack)
    public static let colorTransparentBlack200: ColorTransparentRawToken = apply(opacity: OpacityRawTokens.opacity200, on: colorFunctionalBlack)
    public static let colorTransparentBlack300: ColorTransparentRawToken = apply(opacity: OpacityRawTokens.opacity300, on: colorFunctionalBlack)
    public static let colorTransparentBlack400: ColorTransparentRawToken = apply(opacity: OpacityRawTokens.opacity400, on: colorFunctionalBlack)
    public static let colorTransparentBlack500: ColorTransparentRawToken = apply(opacity: OpacityRawTokens.opacity500, on: colorFunctionalBlack)
    public static let colorTransparentBlack600: ColorTransparentRawToken = apply(opacity: OpacityRawTokens.opacity600, on: colorFunctionalBlack)
    public static let colorTransparentBlack700: ColorTransparentRawToken = apply(opacity: OpacityRawTokens.opacity700, on: colorFunctionalBlack)
    public static let colorTransparentBlack800: ColorTransparentRawToken = apply(opacity: OpacityRawTokens.opacity800, on: colorFunctionalBlack)
    public static let colorTransparentBlack900: ColorTransparentRawToken = apply(opacity: OpacityRawTokens.opacity900, on: colorFunctionalBlack)

    // MARK: Primitive token - Colors - Transparent white

    public static let colorTransparentWhite0: ColorTransparentRawToken = apply(opacity: OpacityRawTokens.opacity0, on: colorFunctionalWhite)
    public static let colorTransparentWhite100: ColorTransparentRawToken = apply(opacity: OpacityRawTokens.opacity100, on: colorFunctionalWhite)
    public static let colorTransparentWhite200: ColorTransparentRawToken = apply(opacity: OpacityRawTokens.opacity200, on: colorFunctionalWhite)
    public static let colorTransparentWhite300: ColorTransparentRawToken = apply(opacity: OpacityRawTokens.opacity300, on: colorFunctionalWhite)
    public static let colorTransparentWhite400: ColorTransparentRawToken = apply(opacity: OpacityRawTokens.opacity400, on: colorFunctionalWhite)
    public static let colorTransparentWhite500: ColorTransparentRawToken = apply(opacity: OpacityRawTokens.opacity500, on: colorFunctionalWhite)
    public static let colorTransparentWhite600: ColorTransparentRawToken = apply(opacity: OpacityRawTokens.opacity600, on: colorFunctionalWhite)
    public static let colorTransparentWhite700: ColorTransparentRawToken = apply(opacity: OpacityRawTokens.opacity700, on: colorFunctionalWhite)
    public static let colorTransparentWhite800: ColorTransparentRawToken = apply(opacity: OpacityRawTokens.opacity800, on: colorFunctionalWhite)
    public static let colorTransparentWhite900: ColorTransparentRawToken = apply(opacity: OpacityRawTokens.opacity900, on: colorFunctionalWhite)
 
    // MARK: - Helpers
    
    private static func apply(opacity: OpacityRawToken, on hexColor: String) -> String {
        // TODO: Improve this algorithm too much naive
        // Values picked from https://gist.github.com/lopspower/03fb1cc0ac9f32ef38f4
        if opacity == OpacityRawTokens.opacity0 {
            return hexColor + "00"
        }
        if opacity == OpacityRawTokens.opacity100 {
            return hexColor + "0A"
        }
        if opacity == OpacityRawTokens.opacity200 {
            return hexColor + "14"
        }
        if opacity == OpacityRawTokens.opacity300 {
            return hexColor + "29"
        }
        if opacity == OpacityRawTokens.opacity400 {
            return hexColor + "3D"
        }
        if opacity == OpacityRawTokens.opacity500 {
            return hexColor + "52"
        }
        if opacity == OpacityRawTokens.opacity600 {
            return hexColor + "7A"
        }
        if opacity == OpacityRawTokens.opacity700 {
            return hexColor + "A3"
        }
        if opacity == OpacityRawTokens.opacity800 {
            return hexColor + "E0"
        }
        if opacity == OpacityRawTokens.opacity900 {
            return hexColor + "FF"
        }
        return hexColor
    }
}
