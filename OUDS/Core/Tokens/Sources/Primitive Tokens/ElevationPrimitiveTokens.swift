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

public typealias ElevationPrimitiveToken = Int

// MARK: - Primitive tokens

public struct ElevationPrimitiveTokens {
    
    // MARK: Z Index
    
    static let elevationZIndex0: ElevationPrimitiveToken = 0
    static let elevationZIndexMinus9999: ElevationPrimitiveToken = -9999
    static let elevationZIndex1000: ElevationPrimitiveToken = 1000
    static let elevationZIndex1010: ElevationPrimitiveToken = 1010
    static let elevationZIndex1020: ElevationPrimitiveToken = 1020
    static let elevationZIndex1030: ElevationPrimitiveToken = 1030
    static let elevationZIndex1080: ElevationPrimitiveToken = 1080
    // ...
    static let elevationZIndex1090: ElevationPrimitiveToken = 1090
    
    // MARK: X
    
    static let elevationXZero: ElevationPrimitiveToken = 0
    
    // MARK: Y
    
    static let elevationYZero: ElevationPrimitiveToken = 0
    static let elevationY100: ElevationPrimitiveToken = 1
    static let elevationY200: ElevationPrimitiveToken = 2
    static let elevationY300: ElevationPrimitiveToken = 3
    // ...
    
    // MARK: Blur
    
    static let elevationBlur0: ElevationPrimitiveToken = 0
    static let elevationBlur100: ElevationPrimitiveToken = 1
    static let elevationBlur200: ElevationPrimitiveToken = 2
    // ...
    
    // MARK: Spread
    
    static let elevationSpreadMinus100: ElevationPrimitiveToken = -1
    static let elevationSpreadMinus200: ElevationPrimitiveToken = -2
    static let elevationSpreadMinus300: ElevationPrimitiveToken = -4
    static let elevationSpreadMinus400: ElevationPrimitiveToken = -8
}
