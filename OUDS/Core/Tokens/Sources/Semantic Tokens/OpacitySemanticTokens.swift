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

public typealias OpacitySemanticToken = OpacityPrimitiveToken

// MARK: - Semantic tokens

public struct OpacitySemanticTokens {
    
    static let opacityTransparent: OpacitySemanticToken = OpacityPrimitiveTokens.opacity0
    static let opacityWeaker: OpacitySemanticToken = OpacityPrimitiveTokens.opacity100
    static let opacityWeak: OpacitySemanticToken = OpacityPrimitiveTokens.opacity300
    static let opacityMedium: OpacitySemanticToken = OpacityPrimitiveTokens.opacity500
    static let opacityEmphasis: OpacitySemanticToken = OpacityPrimitiveTokens.opacity700
    static let opacityOpaque: OpacitySemanticToken = OpacityPrimitiveTokens.opacity900
}
