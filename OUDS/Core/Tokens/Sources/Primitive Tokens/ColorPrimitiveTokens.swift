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
    
    static let colorFunctionalWhite: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#FFFFFF")
    static let colorFunctionalBlack: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#000000")
    static let colorFunctionalLightGray80: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#F4F4F4")
    static let colorFunctionalLightGray160: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#EEEEEE")
    // ...
    static let colorFunctionalLightGray880: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#8F8F8F")
    static let colorFunctionalLightGray960: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#858585")
    static let colorFunctionalDarkGray80: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#7A7A7A")
    static let colorFunctionalDarkGray160: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#707070")
    // ...
    static let colorFunctionalDarkGray880: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#141414")
    static let colorFunctionalDarkGray960: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#0A0A0A")
    static let colorFunctionalScarlet100: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#FFE5E6")
    static let colorFunctionalScarlet200: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#FFB2B2")
    // ...
    static let colorFunctionalScarlet800: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#800001")
    static let colorFunctionalScarlet900: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#4D0001")
    static let colorFunctionalSun100: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#FFF7D6")
    static let colorFunctionalSun200: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#FFED99")
    // ...
    static let colorFunctionalSun800: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#665100")
    static let colorFunctionalSun900: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#3D3100")
    static let colorFunctionalMalachite100: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#EDFCF0")
    static let colorFunctionalMalachite200: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#C1F6C4")
    // ...
    static let colorFunctionalMalachite800: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#0E621D")
    static let colorFunctionalMalachite900: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#0A4715")
    static let colorFunctionalDodgerBlue100: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#F0FAFF")
    static let colorFunctionalDodgerBlue200: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#BDE7FF")
    // ...
    static let colorFunctionalDodgerBlue800: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#00598A")
    static let colorFunctionalDodgerBlue900: TypographyColorFunctionalPrimitiveToken = Color(hexadecimalCode: "#003857")
    
    // MARK: - Transparent
    
    static let colorTransparentBlack0: TypographyColorTransparentPrimitiveToken = colorFunctionalBlack.opacity(OpacityPrimitiveTokens.opacity0)
    static let colorTransparentBlack900: TypographyColorTransparentPrimitiveToken = colorFunctionalBlack.opacity(OpacityPrimitiveTokens.opacity900)
    static let colorTransparentWhite0: TypographyColorTransparentPrimitiveToken = colorFunctionalWhite.opacity(OpacityPrimitiveTokens.opacity0)
    static let colorTransparentWhite900: TypographyColorTransparentPrimitiveToken = colorFunctionalWhite.opacity(OpacityPrimitiveTokens.opacity900)
}
