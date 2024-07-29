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
    
    static let gridMinWidth100: GridPrimitiveToken = 1
    static let gridMinWidth200: GridPrimitiveToken = 390
    static let gridMinWidth300: GridPrimitiveToken = 480
    static let gridMinWidth400: GridPrimitiveToken = 736
    static let gridMinWidth500: GridPrimitiveToken = 1024
    // ...
    
    // MARK: Max width
    
    static let gridMaxWidth100: GridPrimitiveToken = 389
    static let gridMaxWidth200: GridPrimitiveToken = 479
    static let gridMaxWidth300: GridPrimitiveToken = 735
    static let gridMaxWidth400: GridPrimitiveToken = 2013
    static let gridMaxWidth500: GridPrimitiveToken = 1319
    // ...
    
    // MARK: Margin
    
    static let gridMargin100: GridPrimitiveToken = dimensionBase * 4
    static let gridMargin300: GridPrimitiveToken = dimensionBase * 6
    static let gridMargin400: GridPrimitiveToken = dimensionBase * 7
    static let gridMargin500: GridPrimitiveToken = dimensionBase * 8
    // ...
    static let gridMargin2500: GridPrimitiveToken = dimensionBase * 28
    
}
