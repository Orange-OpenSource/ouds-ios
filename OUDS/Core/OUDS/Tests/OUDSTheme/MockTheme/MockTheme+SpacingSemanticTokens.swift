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
    override var spaceFixedHuge: SpacingSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceFixedJumbo: SpacingSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Spacing - Padding - Padding inline

    override var spacePaddingInlineNone: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineShorter: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineShort: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineMedium: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineTall: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineTaller: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineIsIconNone: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineIsIconShorter: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineIsIconShort: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineIsIconMedium: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineIsIconTall: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineIsIconTaller: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineIsArrowNone: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineIsArrowShorter: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineIsArrowShort: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineIsArrowMedium: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineIsArrowTall: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineIsArrowTaller: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Padding - Padding stack

    override var spacePaddingBlockNone: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlockShorter: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlockShort: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlockMedium: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlockTall: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlockTaller: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlockIsIconNone: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlockIsIconShorter: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlockIsIconShort: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlockIsIconMedium: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlockIsIconTall: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlockIsIconTaller: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Padding - Padding inset

    override var spaceInsetNone: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceInsetSmash: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceInsetShortest: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceInsetShorter: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceInsetShort: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceInsetMedium: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceInsetTall: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceInsetTaller: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceInsetTallest: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceInsetSpacious: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Padding - Gap inline

    override var spaceColumnGapNone: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapShorter: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapShort: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapMedium: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapTall: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapTaller: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapIsIconNone: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapIsIconShorter: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapIsIconShort: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapIsIconMedium: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapIsIconTall: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapIsIconTaller: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapIsArrowNone: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapIsArrowShorter: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapIsArrowShort: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapIsArrowMedium: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapIsArrowTall: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapIsArrowTaller: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Padding - Gap stack

    override var spaceRowGapNone: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceRowGapShorter: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceRowGapShort: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceRowGapMedium: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceRowGapTall: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceRowGapTaller: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceRowGapIsIconNone: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceRowGapIsIconShorter: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceRowGapIsIconShort: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceRowGapIsIconMedium: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceRowGapIsIconTall: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceRowGapIsIconTaller: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
}
