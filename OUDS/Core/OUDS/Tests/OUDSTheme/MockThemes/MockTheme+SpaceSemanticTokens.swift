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
    static let mockThemeSpaceSemanticToken = MultipleSpaceSemanticTokens(compact: 1, regular: 151)

    // MARK: Semantic token - Spacing - Layout fluid (multiple)

    override open var spaceScaledNone: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override open var spaceScaledSmash: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override open var spaceScaledShortest: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override open var spaceScaledShorter: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override open var spaceScaledShort: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override open var spaceScaledMedium: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override open var spaceScaledTall: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override open var spaceScaledTaller: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override open var spaceScaledTallest: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override open var spaceScaledSpacious: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }

    // MARK: Semantic token - Spacing - Layout fluid (pure semantic)

    override open var spaceScaledNoneMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceScaledNoneTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceScaledSmashMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceScaledSmashTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceScaledShortestMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceScaledShortestTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceScaledShorterMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceScaledShorterTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceScaledShortMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceScaledShortTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceScaledMediumMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceScaledMediumTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceScaledTallMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceScaledTallTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceScaledTallerMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceScaledTallerTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceScaledTallestMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceScaledTallestTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceScaledSpaciousMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceScaledSpaciousTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Spacing - Layout fix

    override open var spaceFixedNone: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceFixedSmash: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceFixedShortest: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceFixedShorter: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceFixedShort: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceFixedMedium: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceFixedTall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceFixedTaller: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceFixedTallest: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceFixedSpacious: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceFixedHuge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceFixedJumbo: SpaceSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Spacing - Padding - Padding inline

    override open var spacePaddingInlineNone: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineSmash: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineShortest: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineShorter: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineShort: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineMedium: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineTall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineTaller: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineTallest: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineSpacious: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineHuge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Padding - Padding stack

    override open var spacePaddingBlockNone: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingBlockShorter: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingBlockShort: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingBlockMedium: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingBlockTall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingBlockTaller: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingBlockTallest: SpaceSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Padding - Padding inset

    override open var spaceInsetNone: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceInsetSmash: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceInsetShortest: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceInsetShorter: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceInsetShort: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceInsetMedium: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceInsetTall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceInsetTaller: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceInsetTallest: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceInsetSpacious: SpaceSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Padding - Gap inline

    override open var spaceColumnGapNone: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceColumnGapShorter: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceColumnGapShort: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceColumnGapMedium: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceColumnGapTall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceColumnGapTaller: SpaceSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Padding - Gap stack

    override open var spaceRowGapNone: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceRowGapShortest: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceRowGapShorter: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceRowGapShort: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceRowGapMedium: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceRowGapTall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
}
