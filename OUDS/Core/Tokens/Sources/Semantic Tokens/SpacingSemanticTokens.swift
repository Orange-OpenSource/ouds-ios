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
public typealias SpacingGapInlineSemanticToken = DimensionPrimitiveToken
public typealias SpacingGapStackSemanticToken = DimensionPrimitiveToken

// MARK: - Semantic tokens

public struct SpacingSemanticTokens {
    
    // MARK: Padding inline
    
    static let spacePaddingInlineComponentNone: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension0
    static let spacePaddingInlineComponentShorter: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension50
    static let spacePaddingInlineComponentShort: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension100
    static let spacePaddingInlineComponentMedium: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension200
    static let spacePaddingInlineComponentTall: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension300
    static let spacePaddingInlineComponentTaller: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension400
    static let spacePaddingInlineComponentIsIconNone: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension0
    static let spacePaddingInlineComponentIsIconShorter: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension25
    static let spacePaddingInlineComponentIsIconShort: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension50
    static let spacePaddingInlineComponentIsIconMedium: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension75
    static let spacePaddingInlineComponentIsIconTall: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension100
    static let spacePaddingInlineComponentIsIconTaller: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension200
    static let spacePaddingInlineComponentIsArrowNone: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension0
    static let spacePaddingInlineComponentIsArrowShorter: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension25
    static let spacePaddingInlineComponentIsArrowShort: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension50
    static let spacePaddingInlineComponentIsArrowMedium: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension75
    static let spacePaddingInlineComponentIsArrowTall: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension100
    static let spacePaddingInlineComponentIsArrowTaller: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension200
    
    // MARK: Padding stack
    
    static let spacePaddingBlockComponentNone: SpacingPaddingBlockSemanticToken = DimensionPrimitiveTokens.dimension0
    static let spacePaddingBlockComponentShorter: SpacingPaddingBlockSemanticToken = DimensionPrimitiveTokens.dimension50
    static let spacePaddingBlockComponentShort: SpacingPaddingBlockSemanticToken = DimensionPrimitiveTokens.dimension100
    static let spacePaddingBlockComponentMedium: SpacingPaddingBlockSemanticToken = DimensionPrimitiveTokens.dimension200
    static let spacePaddingBlockComponentTall: SpacingPaddingBlockSemanticToken = DimensionPrimitiveTokens.dimension300
    static let spacePaddingBlockComponentTaller: SpacingPaddingBlockSemanticToken = DimensionPrimitiveTokens.dimension400
    static let spacePaddingBlockComponentIsIconNone: SpacingPaddingBlockSemanticToken = DimensionPrimitiveTokens.dimension0
    static let spacePaddingBlockComponentIsIconShorter: SpacingPaddingBlockSemanticToken = DimensionPrimitiveTokens.dimension25
    static let spacePaddingBlockComponentIsIconShort: SpacingPaddingBlockSemanticToken = DimensionPrimitiveTokens.dimension50
    static let spacePaddingBlockComponentIsIconMedium: SpacingPaddingBlockSemanticToken = DimensionPrimitiveTokens.dimension75
    static let spacePaddingBlockComponentIsIconTall: SpacingPaddingBlockSemanticToken = DimensionPrimitiveTokens.dimension100
    static let spacePaddingBlockComponentIsIconTaller: SpacingPaddingBlockSemanticToken = DimensionPrimitiveTokens.dimension200
 
    // MARK: Padding inset
    
    static let spaceInsetComponentGapComponentNone: SpacingPaddingInsetSemanticToken = DimensionPrimitiveTokens.dimension0
    static let spaceInsetComponentGapComponentSmash: SpacingPaddingInsetSemanticToken = DimensionPrimitiveTokens.dimension25
    static let spaceInsetComponentGapComponentShortest: SpacingPaddingInsetSemanticToken = DimensionPrimitiveTokens.dimension50
    static let spaceInsetComponentGapComponentShorter: SpacingPaddingInsetSemanticToken = DimensionPrimitiveTokens.dimension75
    static let spaceInsetComponentGapComponentShort: SpacingPaddingInsetSemanticToken = DimensionPrimitiveTokens.dimension100
    static let spaceInsetComponentGapComponentMedium: SpacingPaddingInsetSemanticToken = DimensionPrimitiveTokens.dimension150
    static let spaceInsetComponentGapComponentTall: SpacingPaddingInsetSemanticToken = DimensionPrimitiveTokens.dimension200
    static let spaceInsetComponentGapComponentTaller: SpacingPaddingInsetSemanticToken = DimensionPrimitiveTokens.dimension300
    static let spaceInsetComponentGapComponentTallest: SpacingPaddingInsetSemanticToken = DimensionPrimitiveTokens.dimension400
    static let spaceInsetComponentGapComponentSpacious: SpacingPaddingInsetSemanticToken = DimensionPrimitiveTokens.dimension500
    
    // MARK: Gap inline
    
    static let spaceColumnGapComponentNone: SpacingGapInlineSemanticToken = DimensionPrimitiveTokens.dimension0
    static let spaceColumnGapComponentShorter: SpacingGapInlineSemanticToken = DimensionPrimitiveTokens.dimension50
    static let spaceColumnGapComponentShort: SpacingGapInlineSemanticToken = DimensionPrimitiveTokens.dimension100
    static let spaceColumnGapComponentMedium: SpacingGapInlineSemanticToken = DimensionPrimitiveTokens.dimension200
    static let spaceColumnGapComponentTall: SpacingGapInlineSemanticToken = DimensionPrimitiveTokens.dimension300
    static let spaceColumnGapComponentTaller: SpacingGapInlineSemanticToken = DimensionPrimitiveTokens.dimension400
    static let spaceColumnGapComponentIsIconNone: SpacingGapInlineSemanticToken = DimensionPrimitiveTokens.dimension0
    static let spaceColumnGapComponentIsIconShorter: SpacingGapInlineSemanticToken = DimensionPrimitiveTokens.dimension25
    static let spaceColumnGapComponentIsIconShort: SpacingGapInlineSemanticToken = DimensionPrimitiveTokens.dimension50
    static let spaceColumnGapComponentIsIconMedium: SpacingGapInlineSemanticToken = DimensionPrimitiveTokens.dimension75
    static let spaceColumnGapComponentIsIconTall: SpacingGapInlineSemanticToken = DimensionPrimitiveTokens.dimension100
    static let spaceColumnGapComponentIsIconTaller: SpacingGapInlineSemanticToken = DimensionPrimitiveTokens.dimension200
    static let spaceColumnGapComponentIsArrowNone: SpacingGapInlineSemanticToken = DimensionPrimitiveTokens.dimension0
    static let spaceColumnGapComponentIsArrowShorter: SpacingGapInlineSemanticToken = DimensionPrimitiveTokens.dimension25
    static let spaceColumnGapComponentIsArrowShort: SpacingGapInlineSemanticToken = DimensionPrimitiveTokens.dimension50
    static let spaceColumnGapComponentIsArrowMedium: SpacingGapInlineSemanticToken = DimensionPrimitiveTokens.dimension75
    static let spaceColumnGapComponentIsArrowTall: SpacingGapInlineSemanticToken = DimensionPrimitiveTokens.dimension100
    static let spaceColumnGapComponentIsArrowTaller: SpacingGapInlineSemanticToken = DimensionPrimitiveTokens.dimension200
    
    // MARK: Gap stack
 
    static let spaceRowGapComponentNone: SpacingGapStackSemanticToken = DimensionPrimitiveTokens.dimension0
    static let spaceRowGapComponentShorter: SpacingGapStackSemanticToken = DimensionPrimitiveTokens.dimension25
    static let spaceRowGapComponentShort: SpacingGapStackSemanticToken = DimensionPrimitiveTokens.dimension50
    static let spaceRowGapComponentMedium: SpacingGapStackSemanticToken = DimensionPrimitiveTokens.dimension75
    static let spaceRowGapComponentTall: SpacingGapStackSemanticToken = DimensionPrimitiveTokens.dimension100
    static let spaceRowGapComponentTaller: SpacingGapStackSemanticToken = DimensionPrimitiveTokens.dimension200
    static let spaceRowGapComponentIsIconNone: SpacingGapStackSemanticToken = DimensionPrimitiveTokens.dimension0
    static let spaceRowGapComponentIsIconShorter: SpacingGapStackSemanticToken = DimensionPrimitiveTokens.dimension25
    static let spaceRowGapComponentIsIconShort: SpacingGapStackSemanticToken = DimensionPrimitiveTokens.dimension50
    static let spaceRowGapComponentIsIconMedium: SpacingGapStackSemanticToken = DimensionPrimitiveTokens.dimension75
    static let spaceRowGapComponentIsIconTall: SpacingGapStackSemanticToken = DimensionPrimitiveTokens.dimension100
    static let spaceRowGapComponentIsIconTaller: SpacingGapStackSemanticToken = DimensionPrimitiveTokens.dimension200
}
