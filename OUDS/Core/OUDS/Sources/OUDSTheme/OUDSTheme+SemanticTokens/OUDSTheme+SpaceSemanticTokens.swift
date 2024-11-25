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

    @objc open var spacePaddingInlineNone: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spacePaddingInlineShorter: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spacePaddingInlineShort: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spacePaddingInlineMedium: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var spacePaddingInlineTall: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var spacePaddingInlineTaller: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension350 }
    @objc open var spacePaddingInlineTallest: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension400 }

    @objc open var spacePaddingInlineWithIconNone: SpacePaddingInlineSemanticToken { dimensionNone }
    @objc open var spacePaddingInlineWithIconShortest: SpacePaddingInlineSemanticToken { dimension10XS }
    @objc open var spacePaddingInlineWithIconShorter: SpacePaddingInlineSemanticToken { dimension9XS }
    @objc open var spacePaddingInlineWithIconShort: SpacePaddingInlineSemanticToken { dimension7XS }
    @objc open var spacePaddingInlineWithIconMedium: SpacePaddingInlineSemanticToken { dimension5XS }
    @objc open var spacePaddingInlineWithIconTall: SpacePaddingInlineSemanticToken { dimension4XS }
    @objc open var spacePaddingInlineWithIconTaller: SpacePaddingInlineSemanticToken { dimension3XS }
    @objc open var spacePaddingInlineWithIconTallest: SpacePaddingInlineSemanticToken { dimension2XS }

    @objc open var spacePaddingInlineWithArrowNone: SpacePaddingInlineSemanticToken { dimensionNone }
    @objc open var spacePaddingInlineWithArrowShortest: SpacePaddingInlineSemanticToken { dimension10XS }
    @objc open var spacePaddingInlineWithArrowShorter: SpacePaddingInlineSemanticToken { dimension9XS }
    @objc open var spacePaddingInlineWithArrowShort: SpacePaddingInlineSemanticToken { dimension8XS }
    @objc open var spacePaddingInlineWithArrowMedium: SpacePaddingInlineSemanticToken { dimension7XS }
    @objc open var spacePaddingInlineWithArrowTall: SpacePaddingInlineSemanticToken { dimension5XS }
    @objc open var spacePaddingInlineWithArrowTaller: SpacePaddingInlineSemanticToken { dimension4XS }
    @objc open var spacePaddingInlineWithArrowTallest: SpacePaddingInlineSemanticToken { dimension3XS }

    // MARK: Semantic token - Padding - Padding stack

    @objc open var spacePaddingBlockNone: SpacePaddingInlineSemanticToken { dimensionNone }
    @objc open var spacePaddingBlockShorter: SpacePaddingInlineSemanticToken { dimension9XS }
    @objc open var spacePaddingBlockShort: SpacePaddingInlineSemanticToken { dimension7XS }
    @objc open var spacePaddingBlockMedium: SpacePaddingInlineSemanticToken { dimension6XS }
    @objc open var spacePaddingBlockTall: SpacePaddingInlineSemanticToken { dimension5XS }
    @objc open var spacePaddingBlockTaller: SpacePaddingInlineSemanticToken { dimension3XS }
    @objc open var spacePaddingBlockTallest: SpacePaddingInlineSemanticToken { dimensionXS }

    @objc open var spacePaddingBlockWithIconNone: SpacePaddingInlineSemanticToken { dimensionNone }
    @objc open var spacePaddingBlockWithIconShortest: SpacePaddingInlineSemanticToken { dimension10XS }
    @objc open var spacePaddingBlockWithIconShorter: SpacePaddingInlineSemanticToken { dimension9XS }
    @objc open var spacePaddingBlockWithIconShort: SpacePaddingInlineSemanticToken { dimension8XS }
    @objc open var spacePaddingBlockWithIconMedium: SpacePaddingInlineSemanticToken { dimension7XS }
    @objc open var spacePaddingBlockWithIconTall: SpacePaddingInlineSemanticToken { dimension6XS }
    @objc open var spacePaddingBlockWithIconTaller: SpacePaddingInlineSemanticToken { dimension5XS }

    // MARK: Semantic token - Space - Padding inset

    @objc open var spaceInsetNone: SpacePaddingInlineSemanticToken { dimensionNone }
    @objc open var spaceInsetSmash: SpacePaddingInlineSemanticToken { dimension10XS }
    @objc open var spaceInsetShortest: SpacePaddingInlineSemanticToken { dimension9XS }
    @objc open var spaceInsetShorter: SpacePaddingInlineSemanticToken { dimension8XS }
    @objc open var spaceInsetShort: SpacePaddingInlineSemanticToken { dimension7XS }
    @objc open var spaceInsetMedium: SpacePaddingInlineSemanticToken { dimension6XS }
    @objc open var spaceInsetTall: SpacePaddingInlineSemanticToken { dimension5XS }
    @objc open var spaceInsetTaller: SpacePaddingInlineSemanticToken { dimension3XS }
    @objc open var spaceInsetTallest: SpacePaddingInlineSemanticToken { dimensionXS }
    @objc open var spaceInsetSpacious: SpacePaddingInlineSemanticToken { dimensionMD }

    // MARK: Semantic token - Padding - Gap inline

    @objc open var spaceColumnGapNone: SpacePaddingInlineSemanticToken { dimensionNone }
    @objc open var spaceColumnGapShorter: SpacePaddingInlineSemanticToken { dimension9XS }
    @objc open var spaceColumnGapShort: SpacePaddingInlineSemanticToken { dimension7XS }
    @objc open var spaceColumnGapMedium: SpacePaddingInlineSemanticToken { dimension5XS }
    @objc open var spaceColumnGapTall: SpacePaddingInlineSemanticToken { dimension3XS }
    @objc open var spaceColumnGapTaller: SpacePaddingInlineSemanticToken { dimensionXS }

    @objc open var spaceColumnGapWithIconNone: SpacePaddingInlineSemanticToken { dimensionNone }
    @objc open var spaceColumnGapWithIconShortest: SpacePaddingInlineSemanticToken { dimension10XS }
    @objc open var spaceColumnGapWithIconShorter: SpacePaddingInlineSemanticToken { dimension9XS }
    @objc open var spaceColumnGapWithIconShort: SpacePaddingInlineSemanticToken { dimension8XS }
    @objc open var spaceColumnGapWithIconMedium: SpacePaddingInlineSemanticToken { dimension7XS }
    @objc open var spaceColumnGapWithIconTall: SpacePaddingInlineSemanticToken { dimension5XS }

    @objc open var spaceColumnGapWithArrowNone: SpacePaddingInlineSemanticToken { dimensionNone }
    @objc open var spaceColumnGapWithArrowShortest: SpacePaddingInlineSemanticToken { dimension10XS }
    @objc open var spaceColumnGapWithArrowShorter: SpacePaddingInlineSemanticToken { dimension9XS }
    @objc open var spaceColumnGapWithArrowShort: SpacePaddingInlineSemanticToken { dimension8XS }
    @objc open var spaceColumnGapWithArrowMedium: SpacePaddingInlineSemanticToken { dimension7XS }
    @objc open var spaceColumnGapWithArrowTall: SpacePaddingInlineSemanticToken { dimension5XS }

    // MARK: Semantic token - Padding - Gap stack

    @objc open var spaceRowGapNone: SpaceGapStackSemanticToken { dimensionNone }
    @objc open var spaceRowGapShortest: SpaceGapStackSemanticToken { dimension10XS }
    @objc open var spaceRowGapShorter: SpaceGapStackSemanticToken { dimension9XS }
    @objc open var spaceRowGapShort: SpaceGapStackSemanticToken { dimension8XS }
    @objc open var spaceRowGapMedium: SpaceGapStackSemanticToken { dimension7XS }
    @objc open var spaceRowGapTall: SpaceGapStackSemanticToken { dimension5XS }

    @objc open var spaceRowGapWithIconNone: SpaceGapStackSemanticToken { dimensionNone }
    @objc open var spaceRowGapWithIconShortest: SpaceGapStackSemanticToken { dimension10XS }
    @objc open var spaceRowGapWithIconShorter: SpaceGapStackSemanticToken { dimension9XS }
    @objc open var spaceRowGapWithIconShort: SpaceGapStackSemanticToken { dimension8XS }
    @objc open var spaceRowGapWithIconMedium: SpaceGapStackSemanticToken { dimension7XS }
    @objc open var spaceRowGapWithIconTall: SpaceGapStackSemanticToken { dimension5XS }
}
