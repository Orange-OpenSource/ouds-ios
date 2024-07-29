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

public typealias SpacingPaddingInlineSemanticToken = DimensionPrimitiveToken
public typealias SpacingPaddingBlockSemanticToken = DimensionPrimitiveToken
public typealias SpacingPaddingInsetSemanticToken = DimensionPrimitiveToken

// MARK: - Semantic tokens

public struct SpacingSemanticTokens {
    
    // MARK: Padding inline
    
    static let spacePaddingInlineComponentNone: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension0
    static let spacePaddingInlineComponentShorter: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension50
    // ...
    static let spacePaddingInlineComponentMedium: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension200
    // ...
    static let spacePaddingInlineComponentIsIconNone: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension0
    
    // MARK: Padding stack
    
    static let spacePaddingBlockComponentNone: SpacingPaddingBlockSemanticToken = DimensionPrimitiveTokens.dimension0
    static let spacePaddingBlockComponentShorter: SpacingPaddingBlockSemanticToken = DimensionPrimitiveTokens.dimension50
    // ...
    static let spacePaddingBlockComponentMedium: SpacingPaddingBlockSemanticToken = DimensionPrimitiveTokens.dimension200
    // ...
    static let spacePaddingBlockComponentIsIconMedium: SpacingPaddingBlockSemanticToken = DimensionPrimitiveTokens.dimension75
    // ...
 
    // MARK: Padding inset
    
    static let spaceInsetComponentNone: SpacingPaddingInsetSemanticToken = DimensionPrimitiveTokens.dimension0
    static let spaceInsetComponentSmash: SpacingPaddingInsetSemanticToken = DimensionPrimitiveTokens.dimension25
    // ...
    
}
