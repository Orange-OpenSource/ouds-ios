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

import OUDSTokensRaw
import OUDSTokensSemantic

extension MockTheme {

    static let mockThemeSpaceRawToken: DimensionRawToken = 911
    static let mockThemeSpaceSemanticToken: MultipleSpacingTokens = MultipleSpacingTokens(compact: 1, regular: 151)

    // MARK: Semantic token - Spacing - Layout fluid

    override var spaceScaledNone: MultipleSpacingTokens { Self.mockThemeSpaceSemanticToken }
    override var spaceScaledSmash: MultipleSpacingTokens { Self.mockThemeSpaceSemanticToken }
    override var spaceScaledShortest: MultipleSpacingTokens { Self.mockThemeSpaceSemanticToken }
    override var spaceScaledShorter: MultipleSpacingTokens { Self.mockThemeSpaceSemanticToken }
    override var spaceScaledShort: MultipleSpacingTokens { Self.mockThemeSpaceSemanticToken }
    override var spaceScaledMedium: MultipleSpacingTokens { Self.mockThemeSpaceSemanticToken }
    override var spaceScaledTall: MultipleSpacingTokens { Self.mockThemeSpaceSemanticToken }
    override var spaceScaledTaller: MultipleSpacingTokens { Self.mockThemeSpaceSemanticToken }
    override var spaceScaledTallest: MultipleSpacingTokens { Self.mockThemeSpaceSemanticToken }
    override var spaceScaledSpacious: MultipleSpacingTokens { Self.mockThemeSpaceSemanticToken }

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

    override var spacePaddingInlineWithIconNone: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineWithIconShortest: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineWithIconShorter: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineWithIconShort: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineWithIconMedium: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineWithIconTall: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineWithIconTaller: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineWithIconTallest: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }

    override var spacePaddingInlineWithArrowNone: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineWithArrowShortest: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineWithArrowShorter: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineWithArrowShort: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineWithArrowMedium: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineWithArrowTall: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineWithArrowTaller: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineWithArrowTallest: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Padding - Padding stack

    override var spacePaddingBlockNone: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlockShorter: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlockShort: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlockMedium: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlockTall: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlockTaller: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }

    override var spacePaddingBlockWithIconNone: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlockWithIconShortest: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlockWithIconShorter: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlockWithIconShort: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlockWithIconMedium: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlockWithIconTall: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlockWithIconTaller: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }

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

    override var spaceColumnGapWithIconNone: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapWithIconShortest: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapWithIconShorter: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapWithIconShort: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapWithIconMedium: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapWithIconTall: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }

    override var spaceColumnGapWithArrowNone: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapWithArrowShorter: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapWithArrowShort: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapWithArrowMedium: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapWithArrowTall: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapWithArrowTaller: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Padding - Gap stack

    override var spaceRowGapNone: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceRowGapShorter: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceRowGapShort: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceRowGapMedium: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceRowGapTall: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceRowGapWithIconNone: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceRowGapWithIconShortest: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceRowGapWithIconShorter: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceRowGapWithIconShort: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceRowGapWithIconMedium: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceRowGapWithIconTall: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
}
