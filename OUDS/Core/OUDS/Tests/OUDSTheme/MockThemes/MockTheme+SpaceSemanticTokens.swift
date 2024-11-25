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

    override open var spacePaddingInlineNone: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineShorter: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineShort: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineMedium: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineTall: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineTaller: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineTallest: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }

    override open var spacePaddingInlineWithIconNone: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineWithIconShortest: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineWithIconShorter: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineWithIconShort: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineWithIconMedium: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineWithIconTall: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineWithIconTaller: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineWithIconTallest: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }

    override open var spacePaddingInlineWithArrowNone: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineWithArrowShortest: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineWithArrowShorter: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineWithArrowShort: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineWithArrowMedium: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineWithArrowTall: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineWithArrowTaller: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingInlineWithArrowTallest: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Padding - Padding stack

    override open var spacePaddingBlockNone: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingBlockShorter: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingBlockShort: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingBlockMedium: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingBlockTall: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingBlockTaller: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingBlockTallest: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }

    override open var spacePaddingBlockWithIconNone: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingBlockWithIconShortest: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingBlockWithIconShorter: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingBlockWithIconShort: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingBlockWithIconMedium: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingBlockWithIconTall: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spacePaddingBlockWithIconTaller: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Padding - Padding inset

    override open var spaceInsetNone: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceInsetSmash: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceInsetShortest: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceInsetShorter: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceInsetShort: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceInsetMedium: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceInsetTall: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceInsetTaller: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceInsetTallest: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceInsetSpacious: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Padding - Gap inline

    override open var spaceColumnGapNone: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceColumnGapShorter: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceColumnGapShort: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceColumnGapMedium: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceColumnGapTall: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceColumnGapTaller: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }

    override open var spaceColumnGapWithIconNone: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceColumnGapWithIconShortest: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceColumnGapWithIconShorter: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceColumnGapWithIconShort: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceColumnGapWithIconMedium: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceColumnGapWithIconTall: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }

    override open var spaceColumnGapWithArrowNone: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceColumnGapWithArrowShortest: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceColumnGapWithArrowShorter: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceColumnGapWithArrowShort: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceColumnGapWithArrowMedium: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceColumnGapWithArrowTall: SpacePaddingInlineSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Padding - Gap stack

    override open var spaceRowGapNone: SpaceGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceRowGapShortest: SpaceGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceRowGapShorter: SpaceGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceRowGapShort: SpaceGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceRowGapMedium: SpaceGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceRowGapTall: SpaceGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceRowGapWithIconNone: SpaceGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceRowGapWithIconShortest: SpaceGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceRowGapWithIconShorter: SpaceGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceRowGapWithIconShort: SpaceGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceRowGapWithIconMedium: SpaceGapStackSemanticToken { Self.mockThemeSpaceRawToken }
    override open var spaceRowGapWithIconTall: SpaceGapStackSemanticToken { Self.mockThemeSpaceRawToken }
}
