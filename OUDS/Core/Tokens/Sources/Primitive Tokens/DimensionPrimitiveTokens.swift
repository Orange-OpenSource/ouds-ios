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
 
    static let dimensionBase: DimensionPrimitiveToken = 4
    
    static let dimension0: DimensionPrimitiveToken = dimensionBase * 0
    static let dimension25: DimensionPrimitiveToken = dimensionBase * 0.5
    static let dimension50: DimensionPrimitiveToken = dimensionBase * 1
    static let dimension75: DimensionPrimitiveToken = dimensionBase * 1.5
    // ...
    static let dimension200: DimensionPrimitiveToken = dimensionBase * 4
    // ...
    static let dimension7000: DimensionPrimitiveToken = dimensionBase * 180
    static let dimension9000: DimensionPrimitiveToken = dimensionBase * 220
    static let dimension11000: DimensionPrimitiveToken = dimensionBase * 260
}
