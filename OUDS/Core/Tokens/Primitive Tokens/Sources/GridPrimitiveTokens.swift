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

public typealias GridPrimitiveToken = DimensionPrimitiveToken

// MARK: - Primitive tokens

public struct GridPrimitiveTokens {
    
    private static let dimensionBase: GridPrimitiveToken = 4

    // MARK: Primitive token - Grid - Min width

    public static let gridMinWidthIOSExtraCompact: GridPrimitiveToken = 320
    public static let gridMinWidthIOSCompact: GridPrimitiveToken = 390
    public static let gridMinWidthIOSRegular: GridPrimitiveToken = 736

    // MARK: Primitive token - Grid - Max width

    public static let gridMaxWidthIOSExtraCompact: GridPrimitiveToken = 389
    public static let gridMaxWidthIOSCompact: GridPrimitiveToken = 852
    public static let gridMaxWidthIOSRegular: GridPrimitiveToken = 1336

    // MARK: Primitive token - Grid - Margin

    public static let gridMargin100: GridPrimitiveToken = dimensionBase * 4
    public static let gridMargin300: GridPrimitiveToken = dimensionBase * 6
    public static let gridMargin400: GridPrimitiveToken = dimensionBase * 7
    public static let gridMargin500: GridPrimitiveToken = dimensionBase * 8
    public static let gridMargin600: GridPrimitiveToken = dimensionBase * 9
    public static let gridMargin700: GridPrimitiveToken = dimensionBase * 10
    public static let gridMargin1000: GridPrimitiveToken = dimensionBase * 13
    public static let gridMargin1100: GridPrimitiveToken = dimensionBase * 14
    public static let gridMargin1700: GridPrimitiveToken = dimensionBase * 20
    public static let gridMargin2500: GridPrimitiveToken = dimensionBase * 28

    // MARK: Primitive token - Grid - Column gap

    public static let gridColumnGap10: GridPrimitiveToken = dimensionBase * 0.25
    public static let gridColumnGap100: GridPrimitiveToken = dimensionBase * 4
    public static let gridColumnGap200: GridPrimitiveToken = dimensionBase * 5
    public static let gridColumnGap300: GridPrimitiveToken = dimensionBase * 6
    public static let gridColumnGap500: GridPrimitiveToken = dimensionBase * 8
    public static let gridColumnGap700: GridPrimitiveToken = dimensionBase * 10

    // MARK: Primitive token - Grid - Column count

    public static let gridColumnCount100: GridPrimitiveToken = dimensionBase * 1
    public static let gridColumnCount200: GridPrimitiveToken = dimensionBase * 2
    public static let gridColumnCount400: GridPrimitiveToken = dimensionBase * 4
    public static let gridColumnCount600: GridPrimitiveToken = dimensionBase * 6
    public static let gridColumnCount800: GridPrimitiveToken = dimensionBase * 8
    public static let gridColumnCount1000: GridPrimitiveToken = dimensionBase * 10
    public static let gridColumnCount1200: GridPrimitiveToken = dimensionBase * 12
    
}
