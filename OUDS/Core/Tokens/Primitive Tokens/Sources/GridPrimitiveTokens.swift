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
    
    static let dimensionBase: GridPrimitiveToken = 4

    // MARK: Min width
    
    static let gridMinWidthIOSExtraCompact: GridPrimitiveToken = 320
    static let gridMinWidthIOSCompact: GridPrimitiveToken = 390
    static let gridMinWidthIOSRegular: GridPrimitiveToken = 736
    
    // MARK: Max width
    
    static let gridMaxWidthIOSExtraCompact: GridPrimitiveToken = 389
    static let gridMaxWidthIOSCompact: GridPrimitiveToken = 852
    static let gridMaxWidthIOSRegular: GridPrimitiveToken = 1336
    
    // MARK: Margin
    
    static let gridMargin100: GridPrimitiveToken = dimensionBase * 4
    static let gridMargin300: GridPrimitiveToken = dimensionBase * 6
    static let gridMargin400: GridPrimitiveToken = dimensionBase * 7
    static let gridMargin500: GridPrimitiveToken = dimensionBase * 8
    static let gridMargin600: GridPrimitiveToken = dimensionBase * 9
    static let gridMargin70: GridPrimitiveToken = dimensionBase * 10
    static let gridMargin1000: GridPrimitiveToken = dimensionBase * 13
    static let gridMargin1100: GridPrimitiveToken = dimensionBase * 14
    static let gridMargin1700: GridPrimitiveToken = dimensionBase * 20
    static let gridMargin2500: GridPrimitiveToken = dimensionBase * 28
    
    // MARK: Column gap
    
    static let gridColumnGap10: GridPrimitiveToken = dimensionBase * 0.25
    static let gridColumnGap100: GridPrimitiveToken = dimensionBase * 4
    static let gridColumnGap200: GridPrimitiveToken = dimensionBase * 5
    static let gridColumnGap300: GridPrimitiveToken = dimensionBase * 6
    static let gridColumnGap500: GridPrimitiveToken = dimensionBase * 8
    static let gridColumnGap700: GridPrimitiveToken = dimensionBase * 10
    
    // MARK: Column count
    
    static let gridColumnCount100: GridPrimitiveToken = dimensionBase * 1
    static let gridColumnCount200: GridPrimitiveToken = dimensionBase * 2
    static let gridColumnCount400: GridPrimitiveToken = dimensionBase * 4
    static let gridColumnCount600: GridPrimitiveToken = dimensionBase * 6
    static let gridColumnCount800: GridPrimitiveToken = dimensionBase * 8
    static let gridColumnCount1000: GridPrimitiveToken = dimensionBase * 10
    static let gridColumnCount1200: GridPrimitiveToken = dimensionBase * 12
    
}
