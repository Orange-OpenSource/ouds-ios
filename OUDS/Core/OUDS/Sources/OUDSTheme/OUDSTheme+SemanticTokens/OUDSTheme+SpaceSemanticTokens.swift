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

// ଘ( ･ω･)_/ﾟ･:*:･｡☆
// [File to generate by the tokenator]
// WARNING: Not synchronized anymore with the Figjam / Figma by developers team
// Create an issue for update https://github.com/Orange-OpenSource/ouds-ios/issues/new?template=token_update.yml

/// Defines basic values common to all themes for `SpaceSemanticTokens`.
/// These values can be overriden inside `OUDSTheme` subclasses (in extensions or not, in the same module or not) thanks to the `@objc open` combination.
extension OUDSTheme: SpaceSemanticTokens {

    // MARK: Semantic token - Spacing - Layout fluid

    @objc open var spaceScaledNoneMobile: SpaceSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spaceScaledNoneTablet: SpaceSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spaceScaledSmashMobile: SpaceSemanticToken { DimensionRawTokens.dimension25 }
    @objc open var spaceScaledSmashTablet: SpaceSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spaceScaledShortestMobile: SpaceSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spaceScaledShortestTablet: SpaceSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spaceScaledShorterMobile: SpaceSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spaceScaledShorterTablet: SpaceSemanticToken { DimensionRawTokens.dimension150 }
    @objc open var spaceScaledShortMobile: SpaceSemanticToken { DimensionRawTokens.dimension150 }
    @objc open var spaceScaledShortTablet: SpaceSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var spaceScaledMediumMobile: SpaceSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var spaceScaledMediumTablet: SpaceSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var spaceScaledTallMobile: SpaceSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var spaceScaledTallTablet: SpaceSemanticToken { DimensionRawTokens.dimension400 }
    @objc open var spaceScaledTallerMobile: SpaceSemanticToken { DimensionRawTokens.dimension400 }
    @objc open var spaceScaledTallerTablet: SpaceSemanticToken { DimensionRawTokens.dimension500}
    @objc open var spaceScaledTallestMobile: SpaceSemanticToken { DimensionRawTokens.dimension500 }
    @objc open var spaceScaledTallestTablet: SpaceSemanticToken { DimensionRawTokens.dimension600 }
    @objc open var spaceScaledSpaciousMobile: SpaceSemanticToken { DimensionRawTokens.dimension600 }
    @objc open var spaceScaledSpaciousTablet: SpaceSemanticToken { DimensionRawTokens.dimension700 }

    // MARK: Semantic token - Spacing - Layout fix

    @objc open var spaceFixedNone: SpaceSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spaceFixedSmash: SpaceSemanticToken { DimensionRawTokens.dimension25 }
    @objc open var spaceFixedShortest: SpaceSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spaceFixedShorter: SpaceSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spaceFixedShort: SpaceSemanticToken { DimensionRawTokens.dimension150 }
    @objc open var spaceFixedMedium: SpaceSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var spaceFixedTall: SpaceSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var spaceFixedTaller: SpaceSemanticToken { DimensionRawTokens.dimension400 }
    @objc open var spaceFixedTallest: SpaceSemanticToken { DimensionRawTokens.dimension500 }
    @objc open var spaceFixedSpacious: SpaceSemanticToken { DimensionRawTokens.dimension600 }
    @objc open var spaceFixedHuge: SpaceSemanticToken { DimensionRawTokens.dimension700 }
    @objc open var spaceFixedJumbo: SpaceSemanticToken { DimensionRawTokens.dimension800 }

    // MARK: Semantic token - Spacing - Padding - Padding inline

    @objc open var spacePaddingInlineNone: SpaceSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spacePaddingInlineShorter: SpaceSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spacePaddingInlineShort: SpaceSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spacePaddingInlineMedium: SpaceSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var spacePaddingInlineTall: SpaceSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var spacePaddingInlineTaller: SpaceSemanticToken { DimensionRawTokens.dimension350 }
    @objc open var spacePaddingInlineTallest: SpaceSemanticToken { DimensionRawTokens.dimension400 }

    @objc open var spacePaddingInlineWithIconNone: SpaceSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spacePaddingInlineWithIconShortest: SpaceSemanticToken { DimensionRawTokens.dimension25 }
    @objc open var spacePaddingInlineWithIconShorter: SpaceSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spacePaddingInlineWithIconShort: SpaceSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spacePaddingInlineWithIconMedium: SpaceSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var spacePaddingInlineWithIconTall: SpaceSemanticToken { DimensionRawTokens.dimension250 }
    @objc open var spacePaddingInlineWithIconTaller: SpaceSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var spacePaddingInlineWithIconTallest: SpaceSemanticToken { DimensionRawTokens.dimension350 }

    @objc open var spacePaddingInlineWithArrowNone: SpaceSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spacePaddingInlineWithArrowShortest: SpaceSemanticToken { DimensionRawTokens.dimension25 }
    @objc open var spacePaddingInlineWithArrowShorter: SpaceSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spacePaddingInlineWithArrowShort: SpaceSemanticToken { DimensionRawTokens.dimension75 }
    @objc open var spacePaddingInlineWithArrowMedium: SpaceSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spacePaddingInlineWithArrowTall: SpaceSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var spacePaddingInlineWithArrowTaller: SpaceSemanticToken { DimensionRawTokens.dimension250 }
    @objc open var spacePaddingInlineWithArrowTallest: SpaceSemanticToken { DimensionRawTokens.dimension300 }

    // MARK: Semantic token - Padding - Padding stack

    @objc open var spacePaddingBlockNone: SpaceSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spacePaddingBlockShorter: SpaceSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spacePaddingBlockShort: SpaceSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spacePaddingBlockMedium: SpaceSemanticToken { DimensionRawTokens.dimension150 }
    @objc open var spacePaddingBlockTall: SpaceSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var spacePaddingBlockTaller: SpaceSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var spacePaddingBlockTallest: SpaceSemanticToken { DimensionRawTokens.dimension400 }

    @objc open var spacePaddingBlockWithIconNone: SpaceSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spacePaddingBlockWithIconShortest: SpaceSemanticToken { DimensionRawTokens.dimension25 }
    @objc open var spacePaddingBlockWithIconShorter: SpaceSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spacePaddingBlockWithIconShort: SpaceSemanticToken { DimensionRawTokens.dimension75 }
    @objc open var spacePaddingBlockWithIconMedium: SpaceSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spacePaddingBlockWithIconTall: SpaceSemanticToken { DimensionRawTokens.dimension150 }
    @objc open var spacePaddingBlockWithIconTaller: SpaceSemanticToken { DimensionRawTokens.dimension200 }

    // MARK: Semantic token - Space - Padding inset

    @objc open var spaceInsetNone: SpaceSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spaceInsetSmash: SpaceSemanticToken { DimensionRawTokens.dimension25 }
    @objc open var spaceInsetShortest: SpaceSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spaceInsetShorter: SpaceSemanticToken { DimensionRawTokens.dimension75 }
    @objc open var spaceInsetShort: SpaceSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spaceInsetMedium: SpaceSemanticToken { DimensionRawTokens.dimension150 }
    @objc open var spaceInsetTall: SpaceSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var spaceInsetTaller: SpaceSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var spaceInsetTallest: SpaceSemanticToken { DimensionRawTokens.dimension400 }
    @objc open var spaceInsetSpacious: SpaceSemanticToken { DimensionRawTokens.dimension500 }

    // MARK: Semantic token - Padding - Gap inline

    @objc open var spaceColumnGapNone: SpaceSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spaceColumnGapShorter: SpaceSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spaceColumnGapShort: SpaceSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spaceColumnGapMedium: SpaceSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var spaceColumnGapTall: SpaceSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var spaceColumnGapTaller: SpaceSemanticToken { DimensionRawTokens.dimension400 }

    @objc open var spaceColumnGapWithIconNone: SpaceSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spaceColumnGapWithIconShortest: SpaceSemanticToken { DimensionRawTokens.dimension25 }
    @objc open var spaceColumnGapWithIconShorter: SpaceSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spaceColumnGapWithIconShort: SpaceSemanticToken { DimensionRawTokens.dimension75 }
    @objc open var spaceColumnGapWithIconMedium: SpaceSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spaceColumnGapWithIconTall: SpaceSemanticToken { DimensionRawTokens.dimension200 }

    @objc open var spaceColumnGapWithArrowNone: SpaceSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spaceColumnGapWithArrowShortest: SpaceSemanticToken { DimensionRawTokens.dimension25 }
    @objc open var spaceColumnGapWithArrowShorter: SpaceSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spaceColumnGapWithArrowShort: SpaceSemanticToken { DimensionRawTokens.dimension75 }
    @objc open var spaceColumnGapWithArrowMedium: SpaceSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spaceColumnGapWithArrowTall: SpaceSemanticToken { DimensionRawTokens.dimension200 }

    // MARK: Semantic token - Padding - Gap stack

    @objc open var spaceRowGapNone: SpaceSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spaceRowGapShortest: SpaceSemanticToken { DimensionRawTokens.dimension25 }
    @objc open var spaceRowGapShorter: SpaceSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spaceRowGapShort: SpaceSemanticToken { DimensionRawTokens.dimension75 }
    @objc open var spaceRowGapMedium: SpaceSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spaceRowGapTall: SpaceSemanticToken { DimensionRawTokens.dimension200 }

    @objc open var spaceRowGapWithIconNone: SpaceSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spaceRowGapWithIconShortest: SpaceSemanticToken { DimensionRawTokens.dimension25 }
    @objc open var spaceRowGapWithIconShorter: SpaceSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spaceRowGapWithIconShort: SpaceSemanticToken { DimensionRawTokens.dimension75 }
    @objc open var spaceRowGapWithIconMedium: SpaceSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spaceRowGapWithIconTall: SpaceSemanticToken { DimensionRawTokens.dimension200 }
}
