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

public typealias ElevationZIndexSemanticToken = ElevationPrimitiveToken

// MARK: - Semantic tokens

public struct ElevationSemanticTokens {
    
    // MARK: Z Index
    
    static let elevationZIndexDeep: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationZIndexMinus9999
    static let elevationZIndexDefault: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationZIndex0
    // ...
    static let elevationZIndexTooltip: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationZIndex1080
    static let elevationZIndexToast: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationZIndex1090
    
    // X
    // ...
    
    // Y
    // ...
    
    // Blur
    // ...
    
    // Spread
    // ...
}
