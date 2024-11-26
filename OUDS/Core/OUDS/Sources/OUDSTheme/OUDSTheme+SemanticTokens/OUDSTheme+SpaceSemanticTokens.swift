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

    @objc open var spacePaddingInlineWithIconNone: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spacePaddingInlineWithIconShortest: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension25 }
    @objc open var spacePaddingInlineWithIconShorter: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spacePaddingInlineWithIconShort: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spacePaddingInlineWithIconMedium: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var spacePaddingInlineWithIconTall: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension250 }
    @objc open var spacePaddingInlineWithIconTaller: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var spacePaddingInlineWithIconTallest: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension350 }

    @objc open var spacePaddingInlineWithArrowNone: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spacePaddingInlineWithArrowShortest: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension25 }
    @objc open var spacePaddingInlineWithArrowShorter: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spacePaddingInlineWithArrowShort: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension75 }
    @objc open var spacePaddingInlineWithArrowMedium: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spacePaddingInlineWithArrowTall: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var spacePaddingInlineWithArrowTaller: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension250 }
    @objc open var spacePaddingInlineWithArrowTallest: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension300 }

    // MARK: Semantic token - Padding - Padding stack

    @objc open var spacePaddingBlockNone: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spacePaddingBlockShorter: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spacePaddingBlockShort: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spacePaddingBlockMedium: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension150 }
    @objc open var spacePaddingBlockTall: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var spacePaddingBlockTaller: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var spacePaddingBlockTallest: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension400 }

    @objc open var spacePaddingBlockWithIconNone: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spacePaddingBlockWithIconShortest: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension25 }
    @objc open var spacePaddingBlockWithIconShorter: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spacePaddingBlockWithIconShort: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension75 }
    @objc open var spacePaddingBlockWithIconMedium: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spacePaddingBlockWithIconTall: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension150 }
    @objc open var spacePaddingBlockWithIconTaller: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension200 }

    // MARK: Semantic token - Space - Padding inset

    @objc open var spaceInsetNone: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spaceInsetSmash: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension25 }
    @objc open var spaceInsetShortest: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spaceInsetShorter: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension75 }
    @objc open var spaceInsetShort: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spaceInsetMedium: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension150 }
    @objc open var spaceInsetTall: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var spaceInsetTaller: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var spaceInsetTallest: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension400 }
    @objc open var spaceInsetSpacious: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension500 }

    // MARK: Semantic token - Padding - Gap inline

    @objc open var spaceColumnGapNone: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spaceColumnGapShorter: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spaceColumnGapShort: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spaceColumnGapMedium: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var spaceColumnGapTall: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var spaceColumnGapTaller: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension400 }

    @objc open var spaceColumnGapWithIconNone: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spaceColumnGapWithIconShortest: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension25 }
    @objc open var spaceColumnGapWithIconShorter: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spaceColumnGapWithIconShort: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension75 }
    @objc open var spaceColumnGapWithIconMedium: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spaceColumnGapWithIconTall: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension200 }

    @objc open var spaceColumnGapWithArrowNone: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spaceColumnGapWithArrowShortest: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension25 }
    @objc open var spaceColumnGapWithArrowShorter: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spaceColumnGapWithArrowShort: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension75 }
    @objc open var spaceColumnGapWithArrowMedium: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spaceColumnGapWithArrowTall: SpacePaddingInlineSemanticToken { DimensionRawTokens.dimension200 }

    // MARK: Semantic token - Padding - Gap stack

    @objc open var spaceRowGapNone: SpaceGapStackSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spaceRowGapShortest: SpaceGapStackSemanticToken { DimensionRawTokens.dimension25 }
    @objc open var spaceRowGapShorter: SpaceGapStackSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spaceRowGapShort: SpaceGapStackSemanticToken { DimensionRawTokens.dimension75 }
    @objc open var spaceRowGapMedium: SpaceGapStackSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spaceRowGapTall: SpaceGapStackSemanticToken { DimensionRawTokens.dimension200 }

    @objc open var spaceRowGapWithIconNone: SpaceGapStackSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spaceRowGapWithIconShortest: SpaceGapStackSemanticToken { DimensionRawTokens.dimension25 }
    @objc open var spaceRowGapWithIconShorter: SpaceGapStackSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spaceRowGapWithIconShort: SpaceGapStackSemanticToken { DimensionRawTokens.dimension75 }
    @objc open var spaceRowGapWithIconMedium: SpaceGapStackSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spaceRowGapWithIconTall: SpaceGapStackSemanticToken { DimensionRawTokens.dimension200 }
}
