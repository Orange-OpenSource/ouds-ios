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

public typealias DimensionPrimitiveToken = Double

// MARK: - Primitive tokens

public struct DimensionPrimitiveTokens {
 
    private static let dimensionBase: DimensionPrimitiveToken = 4
    
    // MARK: Primitive token - Dimension

    public static let dimension0: DimensionPrimitiveToken = dimensionBase * 0
    public static let dimension25: DimensionPrimitiveToken = dimensionBase * 0.5
    public static let dimension50: DimensionPrimitiveToken = dimensionBase * 1
    public static let dimension75: DimensionPrimitiveToken = dimensionBase * 1.5
    public static let dimension100: DimensionPrimitiveToken = dimensionBase * 2
    public static let dimension150: DimensionPrimitiveToken = dimensionBase * 3
    public static let dimension200: DimensionPrimitiveToken = dimensionBase * 4
    public static let dimension250: DimensionPrimitiveToken = dimensionBase * 5
    public static let dimension300: DimensionPrimitiveToken = dimensionBase * 6
    public static let dimension350: DimensionPrimitiveToken = dimensionBase * 7
    public static let dimension400: DimensionPrimitiveToken = dimensionBase * 8
    public static let dimension450: DimensionPrimitiveToken = dimensionBase * 9
    public static let dimension500: DimensionPrimitiveToken = dimensionBase * 10
    public static let dimension550: DimensionPrimitiveToken = dimensionBase * 11
    public static let dimension600: DimensionPrimitiveToken = dimensionBase * 12
    public static let dimension650: DimensionPrimitiveToken = dimensionBase * 13
    public static let dimension700: DimensionPrimitiveToken = dimensionBase * 14
    public static let dimension750: DimensionPrimitiveToken = dimensionBase * 15
    public static let dimension800: DimensionPrimitiveToken = dimensionBase * 16
    public static let dimension900: DimensionPrimitiveToken = dimensionBase * 18
    public static let dimension1000: DimensionPrimitiveToken = dimensionBase * 20
    public static let dimension1200: DimensionPrimitiveToken = dimensionBase * 24
    public static let dimension1400: DimensionPrimitiveToken = dimensionBase * 28
    public static let dimension1600: DimensionPrimitiveToken = dimensionBase * 32
    public static let dimension1800: DimensionPrimitiveToken = dimensionBase * 6
    public static let dimension2000: DimensionPrimitiveToken = dimensionBase * 40
    public static let dimension3000: DimensionPrimitiveToken = dimensionBase * 80
    public static let dimension4000: DimensionPrimitiveToken = dimensionBase * 120
    public static let dimension5000: DimensionPrimitiveToken = dimensionBase * 140
    public static let dimension6000: DimensionPrimitiveToken = dimensionBase * 160
    public static let dimension7000: DimensionPrimitiveToken = dimensionBase * 180
    public static let dimension9000: DimensionPrimitiveToken = dimensionBase * 220
    public static let dimension11000: DimensionPrimitiveToken = dimensionBase * 260
}
