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
    static let mockThemeSpaceSemanticToken = MultipleSpacingTokens(compact: 1, regular: 151)

    // MARK: Semantic token - Spacing - Layout fluid

    override open var spaceScaledNone: MultipleSpacingTokens { Self.mockThemeSpaceSemanticToken }
    override open var spaceScaledSmash: MultipleSpacingTokens { Self.mockThemeSpaceSemanticToken }
    override open var spaceScaledShortest: MultipleSpacingTokens { Self.mockThemeSpaceSemanticToken }
    override open var spaceScaledShorter: MultipleSpacingTokens { Self.mockThemeSpaceSemanticToken }
    override open var spaceScaledShort: MultipleSpacingTokens { Self.mockThemeSpaceSemanticToken }
    override open var spaceScaledMedium: MultipleSpacingTokens { Self.mockThemeSpaceSemanticToken }
    override open var spaceScaledTall: MultipleSpacingTokens { Self.mockThemeSpaceSemanticToken }
    override open var spaceScaledTaller: MultipleSpacingTokens { Self.mockThemeSpaceSemanticToken }
    override open var spaceScaledTallest: MultipleSpacingTokens { Self.mockThemeSpaceSemanticToken }
    override open var spaceScaledSpacious: MultipleSpacingTokens { Self.mockThemeSpaceSemanticToken }

    // MARK: Semantic token - Spacing - Layout fix

    override open var spaceFixedNone: SpacingSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceFixedSmash: SpacingSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceFixedShortest: SpacingSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceFixedShorter: SpacingSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceFixedShort: SpacingSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceFixedMedium: SpacingSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceFixedTall: SpacingSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceFixedTaller: SpacingSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceFixedTallest: SpacingSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceFixedSpacious: SpacingSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceFixedHuge: SpacingSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceFixedJumbo: SpacingSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Spacing - Padding - Padding inline

    override open var spacePaddingInlineNone: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineShorter: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineShort: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineMedium: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineTall: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineTaller: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineTallest: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    
    override open var spacePaddingInlineWithIconNone: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineWithIconShortest: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineWithIconShorter: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineWithIconShort: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineWithIconMedium: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineWithIconTall: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineWithIconTaller: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineWithIconTallest: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }

    override open var spacePaddingInlineWithArrowNone: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineWithArrowShortest: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineWithArrowShorter: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineWithArrowShort: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineWithArrowMedium: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineWithArrowTall: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineWithArrowTaller: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineWithArrowTallest: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Padding - Padding stack

    override open var spacePaddingBlockNone: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingBlockShorter: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingBlockShort: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingBlockMedium: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingBlockTall: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingBlockTaller: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingBlockTallest: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    
    override open var spacePaddingBlockWithIconNone: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingBlockWithIconShortest: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingBlockWithIconShorter: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingBlockWithIconShort: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingBlockWithIconMedium: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingBlockWithIconTall: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingBlockWithIconTaller: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Padding - Padding inset

    override open var spaceInsetNone: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceInsetSmash: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceInsetShortest: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceInsetShorter: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceInsetShort: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceInsetMedium: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceInsetTall: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceInsetTaller: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceInsetTallest: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceInsetSpacious: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Padding - Gap inline

    override open var spaceColumnGapNone: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceColumnGapShorter: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceColumnGapShort: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceColumnGapMedium: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceColumnGapTall: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }

    override open var spaceColumnGapWithIconNone: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceColumnGapWithIconShortest: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceColumnGapWithIconShorter: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceColumnGapWithIconShort: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceColumnGapWithIconMedium: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceColumnGapWithIconTall: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }

    override open var spaceColumnGapWithArrowNone: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceColumnGapWithArrowShorter: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceColumnGapWithArrowShort: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceColumnGapWithArrowMedium: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceColumnGapWithArrowTall: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceColumnGapWithArrowTaller: SpacingPaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Padding - Gap stack

    override open var spaceRowGapNone: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceRowGapShorter: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceRowGapShort: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceRowGapMedium: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceRowGapTall: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceRowGapWithIconNone: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceRowGapWithIconShortest: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceRowGapWithIconShorter: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceRowGapWithIconShort: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceRowGapWithIconMedium: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceRowGapWithIconTall: SpacingGapStackSemanticToken { Self.mockThemeSpaceRawToken }
}
