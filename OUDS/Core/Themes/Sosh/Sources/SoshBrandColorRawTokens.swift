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
import OUDSTokensRaw

// MARK: - Type aliases to keep grammar clear

public typealias ColorSoshPrimitiveToken = ColorRawToken

// MARK: Primitive tokens

/// This extension helps to add new raw tokens for this theme.
/// Type aliases here are just for consistancy reasons.
/// Such tokens are packed in a _Swift enum_ so as to gather them in one object with the suitable namespace and avoid to have just constants in nothing else
///  (i.e. publicly accessible from everywhere). More optimized than _struct_.
public enum SoshBrandColorRawTokens {

    // MARK: Primitive token - Colors - Sosh - Magenta

    public static let colorDecorativeMagenta50: ColorSoshPrimitiveToken = "#FCE9EE"
    public static let colorDecorativeMagenta100: ColorSoshPrimitiveToken = "#F8D3DC"
    public static let colorDecorativeMagenta200: ColorSoshPrimitiveToken = "#F2A6B9"
    public static let colorDecorativeMagenta300: ColorSoshPrimitiveToken = "#EB7A96"
    public static let colorDecorativeMagenta400: ColorSoshPrimitiveToken = "#E55277"
    public static let colorDecorativeMagenta500: ColorSoshPrimitiveToken = "#DE2554"
    public static let colorDecorativeMagenta600: ColorSoshPrimitiveToken = "#B61B42"
    public static let colorDecorativeMagenta700: ColorSoshPrimitiveToken = "#851430"
    public static let colorDecorativeMagenta800: ColorSoshPrimitiveToken = "#590D20"
    public static let colorDecorativeMagenta900: ColorSoshPrimitiveToken = "#2C0710"
    public static let colorDecorativeMagenta950: ColorSoshPrimitiveToken = "#160308"

    // MARK: Primitive token - Colors - Sosh - Citrine

    public static let colorDecorativeCitrine50: ColorSoshPrimitiveToken = "#FFFAE5"
    public static let colorDecorativeCitrine100: ColorSoshPrimitiveToken = "#FFF6CC"
    public static let colorDecorativeCitrine200: ColorSoshPrimitiveToken = "#FFEC99"
    public static let colorDecorativeCitrine300: ColorSoshPrimitiveToken = "#FFE366"
    public static let colorDecorativeCitrine400: ColorSoshPrimitiveToken = "#FFD92E"
    public static let colorDecorativeCitrine500: ColorSoshPrimitiveToken = "#FBCD00"
    public static let colorDecorativeCitrine600: ColorSoshPrimitiveToken = "#C7A200"
    public static let colorDecorativeCitrine700: ColorSoshPrimitiveToken = "#997D00"
    public static let colorDecorativeCitrine800: ColorSoshPrimitiveToken = "#665300"
    public static let colorDecorativeCitrine900: ColorSoshPrimitiveToken = "#332A00"
    public static let colorDecorativeCitrine950: ColorSoshPrimitiveToken = "#191500"

    // MARK: Primitive token - Colors - Sosh - Blue Duck

    public static let colorDecorativeBlueDuck50: ColorSoshPrimitiveToken = "#E7F6F9"
    public static let colorDecorativeBlueDuck100: ColorSoshPrimitiveToken = "#CBEDF1"
    public static let colorDecorativeBlueDuck200: ColorSoshPrimitiveToken = "#96DAE3"
    public static let colorDecorativeBlueDuck300: ColorSoshPrimitiveToken = "#62C8D5"
    public static let colorDecorativeBlueDuck400: ColorSoshPrimitiveToken = "#34B1C1"
    public static let colorDecorativeBlueDuck500: ColorSoshPrimitiveToken = "#26828E"
    public static let colorDecorativeBlueDuck600: ColorSoshPrimitiveToken = "#1E6771"
    public static let colorDecorativeBlueDuck700: ColorSoshPrimitiveToken = "#174D55"
    public static let colorDecorativeBlueDuck800: ColorSoshPrimitiveToken = "#0F3438"
    public static let colorDecorativeBlueDuck900: ColorSoshPrimitiveToken = "#081A1C"
    public static let colorDecorativeBlueDuck950: ColorSoshPrimitiveToken = "#040F10"
}
