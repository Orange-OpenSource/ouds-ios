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

/// A color raw token is finaly a `String` containing the hexadecimal code of the color
public typealias ColorRawToken = String

// MARK: Raw tokens

/// This is the group of all **raw tokens** related to **colors**.
/// Primitive types such as  `String` must be used to as to allow to use `@objc` keywords in extensions for overriding.
/// Such tokens are packed in a _Swift enum_ so as to gather them in one object with the suitable namespace and avoid to have just constants in nothing else
///  (i.e. publicly accessible from everywhere). More optimized than _struct_.
public enum ColorRawTokens {

    // MARK: Primitive token - Colors - Black, white

    public static let colorFunctionalWhite: ColorRawToken = "#FFFFFF"
    public static let colorFunctionalBlack: ColorRawToken = "#000000"

    // MARK: Primitive token - Colors - Functional light gray

    public static let colorFunctionalLightGray80: ColorRawToken = "#F4F4F4"
    public static let colorFunctionalLightGray160: ColorRawToken = "#EEEEEE"
    public static let colorFunctionalLightGray240: ColorRawToken = "#E0E0E0"
    public static let colorFunctionalLightGray320: ColorRawToken = "#D6D6D6"
    public static let colorFunctionalLightGray400: ColorRawToken = "#CCCCCC"
    public static let colorFunctionalLightGray480: ColorRawToken = "#C2C2C2"
    public static let colorFunctionalLightGray560: ColorRawToken = "#BBBBBB"
    public static let colorFunctionalLightGray640: ColorRawToken = "#ADADAD"
    public static let colorFunctionalLightGray720: ColorRawToken = "#A3A3A3"
    public static let colorFunctionalLightGray800: ColorRawToken = "#999999"
    public static let colorFunctionalLightGray880: ColorRawToken = "#8F8F8F"
    public static let colorFunctionalLightGray960: ColorRawToken = "#858585"

    // MARK: Primitive token - Colors - Functional dark gray

    public static let colorFunctionalDarkGray80: ColorRawToken = "#7A7A7A"
    public static let colorFunctionalDarkGray160: ColorRawToken = "#707070"
    public static let colorFunctionalDarkGray240: ColorRawToken = "#666666"
    public static let colorFunctionalDarkGray320: ColorRawToken = "#5C5C5C"
    public static let colorFunctionalDarkGray400: ColorRawToken = "#555555"
    public static let colorFunctionalDarkGray480: ColorRawToken = "#444444"
    public static let colorFunctionalDarkGray560: ColorRawToken = "#3D3D3D"
    public static let colorFunctionalDarkGray640: ColorRawToken = "#333333"
    public static let colorFunctionalDarkGray720: ColorRawToken = "#272727"
    public static let colorFunctionalDarkGray800: ColorRawToken = "#1F1F1F"
    public static let colorFunctionalDarkGray880: ColorRawToken = "#141414"
    public static let colorFunctionalDarkGray960: ColorRawToken = "#0A0A0A"

    // MARK: Primitive token - Colors - Functional scarlet

    public static let colorFunctionalScarlet100: ColorRawToken = "#FFE5E6"
    public static let colorFunctionalScarlet200: ColorRawToken = "#FFB2B3"
    public static let colorFunctionalScarlet300: ColorRawToken = "#FF8081"
    public static let colorFunctionalScarlet400: ColorRawToken = "#FF4D4E"
    public static let colorFunctionalScarlet500: ColorRawToken = "#FF1A1B"
    public static let colorFunctionalScarlet600: ColorRawToken = "#EA0305"
    public static let colorFunctionalScarlet700: ColorRawToken = "#B20002"
    public static let colorFunctionalScarlet800: ColorRawToken = "#800001"
    public static let colorFunctionalScarlet900: ColorRawToken = "#4D0001"

    // MARK: Primitive token - Colors - Functional sun

    public static let colorFunctionalSun100: ColorRawToken = "#FFF7D6"
    public static let colorFunctionalSun200: ColorRawToken = "#FFED99"
    public static let colorFunctionalSun300: ColorRawToken = "#FFE270"
    public static let colorFunctionalSun400: ColorRawToken = "#FFD73D"
    public static let colorFunctionalSun500: ColorRawToken = "#FFD0D0"
    public static let colorFunctionalSun600: ColorRawToken = "#D6AA00"
    public static let colorFunctionalSun700: ColorRawToken = "#A38200"
    public static let colorFunctionalSun800: ColorRawToken = "#665100"
    public static let colorFunctionalSun900: ColorRawToken = "#3D3100"

    // MARK: Primitive token - Colors - Functional malachite

    public static let colorFunctionalMalachite100: ColorRawToken = "#EDFCF0"
    public static let colorFunctionalMalachite200: ColorRawToken = "#C1F6CA"
    public static let colorFunctionalMalachite300: ColorRawToken = "#94F0A4"
    public static let colorFunctionalMalachite400: ColorRawToken = "#67E97E"
    public static let colorFunctionalMalachite500: ColorRawToken = "#3DE35A"
    public static let colorFunctionalMalachite600: ColorRawToken = "#1ECD3C"
    public static let colorFunctionalMalachite700: ColorRawToken = "#17A02F"
    public static let colorFunctionalMalachite800: ColorRawToken = "#0E621D"
    public static let colorFunctionalMalachite900: ColorRawToken = "#0A4715"

    // MARK: Primitive token - Colors - Functional dodger blue

    public static let colorFunctionalDodgerBlue100: ColorRawToken = "#F0FAFF"
    public static let colorFunctionalDodgerBlue200: ColorRawToken = "#BDE7FF"
    public static let colorFunctionalDodgerBlue300: ColorRawToken = "#8AD5FF"
    public static let colorFunctionalDodgerBlue400: ColorRawToken = "#57C3FF"
    public static let colorFunctionalDodgerBlue500: ColorRawToken = "#26B2FF"
    public static let colorFunctionalDodgerBlue600: ColorRawToken = "#009BF0"
    public static let colorFunctionalDodgerBlue700: ColorRawToken = "#007ABD"
    public static let colorFunctionalDodgerBlue800: ColorRawToken = "#00598A"
    public static let colorFunctionalDodgerBlue900: ColorRawToken = "#003857"

    // MARK: Primitive token - Colors - Transparent black

    public static let colorTransparentBlack0: ColorRawToken = apply(opacity: OpacityRawTokens.opacity0, on: colorFunctionalBlack)
    public static let colorTransparentBlack100: ColorRawToken = apply(opacity: OpacityRawTokens.opacity100, on: colorFunctionalBlack)
    public static let colorTransparentBlack200: ColorRawToken = apply(opacity: OpacityRawTokens.opacity200, on: colorFunctionalBlack)
    public static let colorTransparentBlack300: ColorRawToken = apply(opacity: OpacityRawTokens.opacity300, on: colorFunctionalBlack)
    public static let colorTransparentBlack400: ColorRawToken = apply(opacity: OpacityRawTokens.opacity400, on: colorFunctionalBlack)
    public static let colorTransparentBlack500: ColorRawToken = apply(opacity: OpacityRawTokens.opacity500, on: colorFunctionalBlack)
    public static let colorTransparentBlack600: ColorRawToken = apply(opacity: OpacityRawTokens.opacity600, on: colorFunctionalBlack)
    public static let colorTransparentBlack700: ColorRawToken = apply(opacity: OpacityRawTokens.opacity700, on: colorFunctionalBlack)
    public static let colorTransparentBlack800: ColorRawToken = apply(opacity: OpacityRawTokens.opacity800, on: colorFunctionalBlack)
    public static let colorTransparentBlack900: ColorRawToken = apply(opacity: OpacityRawTokens.opacity900, on: colorFunctionalBlack)

    // MARK: Primitive token - Colors - Transparent white

    public static let colorTransparentWhite0: ColorRawToken = apply(opacity: OpacityRawTokens.opacity0, on: colorFunctionalWhite)
    public static let colorTransparentWhite100: ColorRawToken = apply(opacity: OpacityRawTokens.opacity100, on: colorFunctionalWhite)
    public static let colorTransparentWhite200: ColorRawToken = apply(opacity: OpacityRawTokens.opacity200, on: colorFunctionalWhite)
    public static let colorTransparentWhite300: ColorRawToken = apply(opacity: OpacityRawTokens.opacity300, on: colorFunctionalWhite)
    public static let colorTransparentWhite400: ColorRawToken = apply(opacity: OpacityRawTokens.opacity400, on: colorFunctionalWhite)
    public static let colorTransparentWhite500: ColorRawToken = apply(opacity: OpacityRawTokens.opacity500, on: colorFunctionalWhite)
    public static let colorTransparentWhite600: ColorRawToken = apply(opacity: OpacityRawTokens.opacity600, on: colorFunctionalWhite)
    public static let colorTransparentWhite700: ColorRawToken = apply(opacity: OpacityRawTokens.opacity700, on: colorFunctionalWhite)
    public static let colorTransparentWhite800: ColorRawToken = apply(opacity: OpacityRawTokens.opacity800, on: colorFunctionalWhite)
    public static let colorTransparentWhite900: ColorRawToken = apply(opacity: OpacityRawTokens.opacity900, on: colorFunctionalWhite)

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
