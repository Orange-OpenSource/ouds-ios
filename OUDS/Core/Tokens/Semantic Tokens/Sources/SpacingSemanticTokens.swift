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

public typealias SpacingPaddingInlineSemanticToken = DimensionPrimitiveToken
public typealias SpacingPaddingBlockSemanticToken = DimensionPrimitiveToken
public typealias SpacingPaddingInsetSemanticToken = DimensionPrimitiveToken
public typealias SpacingGapInlineSemanticToken = DimensionPrimitiveToken
public typealias SpacingGapStackSemanticToken = DimensionPrimitiveToken

// MARK: - Semantic tokens

public protocol SpacingSemanticTokens {
    
    // MARK: Semantic token - Spacing - Padding - Padding inline

    var spacePaddingInlineComponentNone: SpacingPaddingInlineSemanticToken { get set }
    var spacePaddingInlineComponentShorter: SpacingPaddingInlineSemanticToken { get set }
    var spacePaddingInlineComponentShort: SpacingPaddingInlineSemanticToken { get set }
    var spacePaddingInlineComponentMedium: SpacingPaddingInlineSemanticToken { get set }
    var spacePaddingInlineComponentTall: SpacingPaddingInlineSemanticToken { get set }
    var spacePaddingInlineComponentTaller: SpacingPaddingInlineSemanticToken { get set }
    var spacePaddingInlineComponentIsIconNone: SpacingPaddingInlineSemanticToken { get set }
    var spacePaddingInlineComponentIsIconShorter: SpacingPaddingInlineSemanticToken { get set }
    var spacePaddingInlineComponentIsIconShort: SpacingPaddingInlineSemanticToken { get set }
    var spacePaddingInlineComponentIsIconMedium: SpacingPaddingInlineSemanticToken { get set }
    var spacePaddingInlineComponentIsIconTall: SpacingPaddingInlineSemanticToken { get set }
    var spacePaddingInlineComponentIsIconTaller: SpacingPaddingInlineSemanticToken { get set }
    var spacePaddingInlineComponentIsArrowNone: SpacingPaddingInlineSemanticToken { get set }
    var spacePaddingInlineComponentIsArrowShorter: SpacingPaddingInlineSemanticToken { get set }
    var spacePaddingInlineComponentIsArrowShort: SpacingPaddingInlineSemanticToken { get set }
    var spacePaddingInlineComponentIsArrowMedium: SpacingPaddingInlineSemanticToken { get set }
    var spacePaddingInlineComponentIsArrowTall: SpacingPaddingInlineSemanticToken { get set }
    var spacePaddingInlineComponentIsArrowTaller: SpacingPaddingInlineSemanticToken { get set }

    // MARK: Semantic token - Spacing - Padding - Padding stack

    var spacePaddingBlockComponentNone: SpacingPaddingInlineSemanticToken { get set }
    var spacePaddingBlockComponentShorter: SpacingPaddingInlineSemanticToken { get set }
    var spacePaddingBlockComponentShort: SpacingPaddingInlineSemanticToken { get set }
    var spacePaddingBlockComponentMedium: SpacingPaddingInlineSemanticToken { get set }
    var spacePaddingBlockComponentTall: SpacingPaddingInlineSemanticToken { get set }
    var spacePaddingBlockComponentTaller: SpacingPaddingInlineSemanticToken { get set }
    var spacePaddingBlockComponentIsIconNone: SpacingPaddingInlineSemanticToken { get set }
    var spacePaddingBlockComponentIsIconShorter: SpacingPaddingInlineSemanticToken { get set }
    var spacePaddingBlockComponentIsIconShort: SpacingPaddingInlineSemanticToken { get set }
    var spacePaddingBlockComponentIsIconMedium: SpacingPaddingInlineSemanticToken { get set }
    var spacePaddingBlockComponentIsIconTall: SpacingPaddingInlineSemanticToken { get set }
    var spacePaddingBlockComponentIsIconTaller: SpacingPaddingInlineSemanticToken { get set }

    // MARK: Semantic token - Spacing - Padding - Padding inset

    var spaceInsetComponentGapComponentNone: SpacingPaddingInlineSemanticToken { get set }
    var spaceInsetComponentGapComponentSmash: SpacingPaddingInlineSemanticToken { get set }
    var spaceInsetComponentGapComponentShortest: SpacingPaddingInlineSemanticToken { get set }
    var spaceInsetComponentGapComponentShorter: SpacingPaddingInlineSemanticToken { get set }
    var spaceInsetComponentGapComponentShort: SpacingPaddingInlineSemanticToken { get set }
    var spaceInsetComponentGapComponentMedium: SpacingPaddingInlineSemanticToken { get set }
    var spaceInsetComponentGapComponentTall: SpacingPaddingInlineSemanticToken { get set }
    var spaceInsetComponentGapComponentTaller: SpacingPaddingInlineSemanticToken { get set }
    var spaceInsetComponentGapComponentTallest: SpacingPaddingInlineSemanticToken { get set }
    var spaceInsetComponentGapComponentSpacious: SpacingPaddingInlineSemanticToken { get set }

    // MARK: Semantic token - Spacing - Padding - Gap inline

    var spaceColumnGapComponentNone: SpacingPaddingInlineSemanticToken { get set }
    var spaceColumnGapComponentShorter: SpacingPaddingInlineSemanticToken { get set }
    var spaceColumnGapComponentShort: SpacingPaddingInlineSemanticToken { get set }
    var spaceColumnGapComponentMedium: SpacingPaddingInlineSemanticToken { get set }
    var spaceColumnGapComponentTall: SpacingPaddingInlineSemanticToken { get set }
    var spaceColumnGapComponentTaller: SpacingPaddingInlineSemanticToken { get set }
    var spaceColumnGapComponentIsIconNone: SpacingPaddingInlineSemanticToken { get set }
    var spaceColumnGapComponentIsIconShorter: SpacingPaddingInlineSemanticToken { get set }
    var spaceColumnGapComponentIsIconShort: SpacingPaddingInlineSemanticToken { get set }
    var spaceColumnGapComponentIsIconMedium: SpacingPaddingInlineSemanticToken { get set }
    var spaceColumnGapComponentIsIconTall: SpacingPaddingInlineSemanticToken { get set }
    var spaceColumnGapComponentIsIconTaller: SpacingPaddingInlineSemanticToken { get set }
    var spaceColumnGapComponentIsArrowNone: SpacingPaddingInlineSemanticToken { get set }
    var spaceColumnGapComponentIsArrowShorter: SpacingPaddingInlineSemanticToken { get set }
    var spaceColumnGapComponentIsArrowShort: SpacingPaddingInlineSemanticToken { get set }
    var spaceColumnGapComponentIsArrowMedium: SpacingPaddingInlineSemanticToken { get set }
    var spaceColumnGapComponentIsArrowTall: SpacingPaddingInlineSemanticToken { get set }
    var spaceColumnGapComponentIsArrowTaller: SpacingPaddingInlineSemanticToken { get set }

    // MARK: Semantic token - Spacing - Padding - Gap stack

    var spaceRowGapComponentNone: SpacingGapStackSemanticToken { get set }
    var spaceRowGapComponentShorter: SpacingGapStackSemanticToken { get set }
    var spaceRowGapComponentShort: SpacingGapStackSemanticToken { get set }
    var spaceRowGapComponentMedium: SpacingGapStackSemanticToken { get set }
    var spaceRowGapComponentTall: SpacingGapStackSemanticToken { get set }
    var spaceRowGapComponentTaller: SpacingGapStackSemanticToken { get set }
    var spaceRowGapComponentIsIconNone: SpacingGapStackSemanticToken { get set }
    var spaceRowGapComponentIsIconShorter: SpacingGapStackSemanticToken { get set }
    var spaceRowGapComponentIsIconShort: SpacingGapStackSemanticToken { get set }
    var spaceRowGapComponentIsIconMedium: SpacingGapStackSemanticToken { get set }
    var spaceRowGapComponentIsIconTall: SpacingGapStackSemanticToken { get set }
    var spaceRowGapComponentIsIconTaller: SpacingGapStackSemanticToken { get set }
}
