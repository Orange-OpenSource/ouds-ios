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
import OUDSTokensRaw
import OUDSTokensSemantic

extension MockTheme {

    static let mockThemeSpaceRawToken: DimensionRawToken = 911
    static let mockThemeSpaceSemanticToken: SpacingCompositeSemanticToken = SpacingCompositeSemanticToken(compact: 1, regular: 151)

    // MARK: Semantic token - Spacing - Layout fix

    override var spaceFixedNone: SpacingSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceFixedSmash: SpacingSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceFixedShortest: SpacingSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceFixedShorter: SpacingSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceFixedShort: SpacingSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceFixedMedium: SpacingSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceFixedTall: SpacingSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceFixedTaller: SpacingSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceFixedTallest: SpacingSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceFixedSpacious: SpacingSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Spacing - Layout fluid

    override var spaceScaledNone: SpacingCompositeSemanticToken { Self.mockThemeSpaceSemanticToken }
    override var spaceScaledSmash: SpacingCompositeSemanticToken { Self.mockThemeSpaceSemanticToken }
    override var spaceScaledShortest: SpacingCompositeSemanticToken { Self.mockThemeSpaceSemanticToken }
    override var spaceScaledShorter: SpacingCompositeSemanticToken { Self.mockThemeSpaceSemanticToken }
    override var spaceScaledShort: SpacingCompositeSemanticToken { Self.mockThemeSpaceSemanticToken }
    override var spaceScaledMedium: SpacingCompositeSemanticToken { Self.mockThemeSpaceSemanticToken }
    override var spaceScaledTall: SpacingCompositeSemanticToken { Self.mockThemeSpaceSemanticToken }
    override var spaceScaledTaller: SpacingCompositeSemanticToken { Self.mockThemeSpaceSemanticToken }
    override var spaceScaledTallest: SpacingCompositeSemanticToken { Self.mockThemeSpaceSemanticToken }
    override var spaceScaledSpacious: SpacingCompositeSemanticToken { Self.mockThemeSpaceSemanticToken }

    // MARK: Semantic token - Spacing - Padding - Padding inline

    override var spacePaddingInlineComponentNone: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineComponentShorter: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineComponentShort: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineComponentMedium: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineComponentTall: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineComponentTaller: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineComponentIsIconNone: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineComponentIsIconShorter: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineComponentIsIconShort: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineComponentIsIconMedium: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineComponentIsIconTall: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineComponentIsIconTaller: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineComponentIsArrowNone: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineComponentIsArrowShorter: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineComponentIsArrowShort: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineComponentIsArrowMedium: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineComponentIsArrowTall: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineComponentIsArrowTaller: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Padding - Padding stack

    override var spacePaddingBlockComponentNone: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlockComponentShorter: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlockComponentShort: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlockComponentMedium: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlockComponentTall: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlockComponentTaller: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlockComponentIsIconNone: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlockComponentIsIconShorter: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlockComponentIsIconShort: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlockComponentIsIconMedium: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlockComponentIsIconTall: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlockComponentIsIconTaller: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Padding - Padding inset

    override var spaceInsetComponentNone: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceInsetComponentSmash: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceInsetComponentShortest: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceInsetComponentShorter: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceInsetComponentShort: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceInsetComponentMedium: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceInsetComponentTall: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceInsetComponentTaller: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceInsetComponentTallest: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceInsetComponentSpacious: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Padding - Gap inline

    override var spaceColumnGapComponentNone: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapComponentShorter: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapComponentShort: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapComponentMedium: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapComponentTall: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapComponentTaller: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapComponentIsIconNone: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapComponentIsIconShorter: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapComponentIsIconShort: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapComponentIsIconMedium: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapComponentIsIconTall: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapComponentIsIconTaller: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapComponentIsArrowNone: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapComponentIsArrowShorter: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapComponentIsArrowShort: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapComponentIsArrowMedium: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapComponentIsArrowTall: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapComponentIsArrowTaller: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Padding - Gap stack

    override var spaceRowGapComponentNone: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceRowGapComponentShorter: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceRowGapComponentShort: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceRowGapComponentMedium: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceRowGapComponentTall: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceRowGapComponentTaller: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceRowGapComponentIsIconNone: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceRowGapComponentIsIconShorter: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceRowGapComponentIsIconShort: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceRowGapComponentIsIconMedium: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceRowGapComponentIsIconTall: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceRowGapComponentIsIconTaller: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
}
