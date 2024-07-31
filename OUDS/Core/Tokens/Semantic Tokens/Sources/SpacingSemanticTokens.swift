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
import OUDSTokensPrimitive

// MARK: - Type aliases to keep grammar clear

typealias SpacingPaddingInlineSemanticToken = DimensionPrimitiveToken
typealias SpacingPaddingBlockSemanticToken = DimensionPrimitiveToken
typealias SpacingPaddingInsetSemanticToken = DimensionPrimitiveToken
typealias SpacingGapInlineSemanticToken = DimensionPrimitiveToken
typealias SpacingGapStackSemanticToken = DimensionPrimitiveToken

// MARK: - Semantic tokens

protocol SpacingSemanticTokens { }

extension SpacingSemanticTokens {
    
    // MARK: Semantic token - Padding - Padding inline

    var spacePaddingInlineComponentNone: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension0
    var spacePaddingInlineComponentShorter: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension50
    var spacePaddingInlineComponentShort: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension100
    var spacePaddingInlineComponentMedium: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension200
    var spacePaddingInlineComponentTall: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension300
    var spacePaddingInlineComponentTaller: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension400
    var spacePaddingInlineComponentIsIconNone: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension0
    var spacePaddingInlineComponentIsIconShorter: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension25
    var spacePaddingInlineComponentIsIconShort: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension50
    var spacePaddingInlineComponentIsIconMedium: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension75
    var spacePaddingInlineComponentIsIconTall: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension100
    var spacePaddingInlineComponentIsIconTaller: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension200
    var spacePaddingInlineComponentIsArrowNone: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension0
    var spacePaddingInlineComponentIsArrowShorter: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension25
    var spacePaddingInlineComponentIsArrowShort: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension50
    var spacePaddingInlineComponentIsArrowMedium: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension75
    var spacePaddingInlineComponentIsArrowTall: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension100
    var spacePaddingInlineComponentIsArrowTaller: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension200
    
    // MARK: Semantic token - Padding - Padding stack

    var spacePaddingBlockComponentNone: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension0
    var spacePaddingBlockComponentShorter: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension50
    var spacePaddingBlockComponentShort: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension100
    var spacePaddingBlockComponentMedium: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension200
    var spacePaddingBlockComponentTall: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension300
    var spacePaddingBlockComponentTaller: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension400
    var spacePaddingBlockComponentIsIconNone: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension0
    var spacePaddingBlockComponentIsIconShorter: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension25
    var spacePaddingBlockComponentIsIconShort: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension50
    var spacePaddingBlockComponentIsIconMedium: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension75
    var spacePaddingBlockComponentIsIconTall: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension100
    var spacePaddingBlockComponentIsIconTaller: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension200

    // MARK: Semantic token - Padding - Padding inset

    var spaceInsetComponentGapComponentNone: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension0
    var spaceInsetComponentGapComponentSmash: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension25
    var spaceInsetComponentGapComponentShortest: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension50
    var spaceInsetComponentGapComponentShorter: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension75
    var spaceInsetComponentGapComponentShort: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension100
    var spaceInsetComponentGapComponentMedium: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension150
    var spaceInsetComponentGapComponentTall: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension200
    var spaceInsetComponentGapComponentTaller: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension300
    var spaceInsetComponentGapComponentTallest: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension400
    var spaceInsetComponentGapComponentSpacious: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension500

    // MARK: Semantic token - Padding - Gap inline

    var spaceColumnGapComponentNone: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension0
    var spaceColumnGapComponentShorter: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension50
    var spaceColumnGapComponentShort: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension100
    var spaceColumnGapComponentMedium: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension200
    var spaceColumnGapComponentTall: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension300
    var spaceColumnGapComponentTaller: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension400
    var spaceColumnGapComponentIsIconNone: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension0
    var spaceColumnGapComponentIsIconShorter: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension25
    var spaceColumnGapComponentIsIconShort: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension50
    var spaceColumnGapComponentIsIconMedium: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension75
    var spaceColumnGapComponentIsIconTall: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension100
    var spaceColumnGapComponentIsIconTaller: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension200
    var spaceColumnGapComponentIsArrowNone: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension0
    var spaceColumnGapComponentIsArrowShorter: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension25
    var spaceColumnGapComponentIsArrowShort: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension50
    var spaceColumnGapComponentIsArrowMedium: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension75
    var spaceColumnGapComponentIsArrowTall: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension100
    var spaceColumnGapComponentIsArrowTaller: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension200

    // MARK: Semantic token - Padding - Gap stack

    var spaceRowGapComponentNone: SpacingGapStackSemanticToken = DimensionPrimitiveTokens.dimension0
    var spaceRowGapComponentShorter: SpacingGapStackSemanticToken = DimensionPrimitiveTokens.dimension25
    var spaceRowGapComponentShort: SpacingGapStackSemanticToken = DimensionPrimitiveTokens.dimension50
    var spaceRowGapComponentMedium: SpacingGapStackSemanticToken = DimensionPrimitiveTokens.dimension75
    var spaceRowGapComponentTall: SpacingGapStackSemanticToken = DimensionPrimitiveTokens.dimension100
    var spaceRowGapComponentTaller: SpacingGapStackSemanticToken = DimensionPrimitiveTokens.dimension200
    var spaceRowGapComponentIsIconNone: SpacingGapStackSemanticToken = DimensionPrimitiveTokens.dimension0
    var spaceRowGapComponentIsIconShorter: SpacingGapStackSemanticToken = DimensionPrimitiveTokens.dimension25
    var spaceRowGapComponentIsIconShort: SpacingGapStackSemanticToken = DimensionPrimitiveTokens.dimension50
    var spaceRowGapComponentIsIconMedium: SpacingGapStackSemanticToken = DimensionPrimitiveTokens.dimension75
    var spaceRowGapComponentIsIconTall: SpacingGapStackSemanticToken = DimensionPrimitiveTokens.dimension100
    var spaceRowGapComponentIsIconTaller: SpacingGapStackSemanticToken = DimensionPrimitiveTokens.dimension200
}
