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
// [File to generate with the tokenator]

/// Defines basic values common to all themes for `SpacingSemanticTokens`.
/// These values can be overriden inside `OUDSTheme` subclasses (in extensions or not, in the same module or not) thanks to the `@objc open` combination.
extension OUDSTheme: SpacingSemanticTokens {

    // MARK: Semantic token - Spacing - Layout fluid

    @objc open var spaceScaledNone: MultipleSpacingTokens { MultipleSpacingTokens(compact: DimensionRawTokens.dimension0, regular: DimensionRawTokens.dimension0) }
    @objc open var spaceScaledSmash: MultipleSpacingTokens { MultipleSpacingTokens(compact: DimensionRawTokens.dimension25, regular: DimensionRawTokens.dimension50) }
    @objc open var spaceScaledShortest: MultipleSpacingTokens { MultipleSpacingTokens(compact: DimensionRawTokens.dimension50, regular: DimensionRawTokens.dimension100) }
    @objc open var spaceScaledShorter: MultipleSpacingTokens { MultipleSpacingTokens(compact: DimensionRawTokens.dimension100, regular: DimensionRawTokens.dimension150) }
    @objc open var spaceScaledShort: MultipleSpacingTokens { MultipleSpacingTokens(compact: DimensionRawTokens.dimension150, regular: DimensionRawTokens.dimension200) }
    @objc open var spaceScaledMedium: MultipleSpacingTokens { MultipleSpacingTokens(compact: DimensionRawTokens.dimension200, regular: DimensionRawTokens.dimension300) }
    @objc open var spaceScaledTall: MultipleSpacingTokens { MultipleSpacingTokens(compact: DimensionRawTokens.dimension300, regular: DimensionRawTokens.dimension400) }
    @objc open var spaceScaledTaller: MultipleSpacingTokens { MultipleSpacingTokens(compact: DimensionRawTokens.dimension400, regular: DimensionRawTokens.dimension500) }
    @objc open var spaceScaledTallest: MultipleSpacingTokens { MultipleSpacingTokens(compact: DimensionRawTokens.dimension500, regular: DimensionRawTokens.dimension600) }
    @objc open var spaceScaledSpacious: MultipleSpacingTokens { MultipleSpacingTokens(compact: DimensionRawTokens.dimension600, regular: DimensionRawTokens.dimension700) }

    // MARK: Semantic token - Spacing - Layout fix

    @objc open var spaceFixedNone: SpacingSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spaceFixedSmash: SpacingSemanticToken { DimensionRawTokens.dimension25 }
    @objc open var spaceFixedShortest: SpacingSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spaceFixedShorter: SpacingSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spaceFixedShort: SpacingSemanticToken { DimensionRawTokens.dimension150 }
    @objc open var spaceFixedMedium: SpacingSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var spaceFixedTall: SpacingSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var spaceFixedTaller: SpacingSemanticToken { DimensionRawTokens.dimension400 }
    @objc open var spaceFixedTallest: SpacingSemanticToken { DimensionRawTokens.dimension500 }
    @objc open var spaceFixedSpacious: SpacingSemanticToken { DimensionRawTokens.dimension600 }
    @objc open var spaceFixedHuge: SpacingSemanticToken { DimensionRawTokens.dimension700 }
    @objc open var spaceFixedJumbo: SpacingSemanticToken { DimensionRawTokens.dimension800 }

    // MARK: Semantic token - Spacing - Padding - Padding inline

    @objc open var spacePaddingInlineNone: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spacePaddingInlineShorter: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spacePaddingInlineShort: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spacePaddingInlineMedium: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var spacePaddingInlineTall: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var spacePaddingInlineTaller: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension350 }
    @objc open var spacePaddingInlineTallest: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension400 }

    @objc open var spacePaddingInlineWithIconNone: SpacingPaddingInlineSemanticToken { dimensionNone }
    @objc open var spacePaddingInlineWithIconShortest: SpacingPaddingInlineSemanticToken { dimension10XS }
    @objc open var spacePaddingInlineWithIconShorter: SpacingPaddingInlineSemanticToken { dimension9XS }
    @objc open var spacePaddingInlineWithIconShort: SpacingPaddingInlineSemanticToken { dimension7XS }
    @objc open var spacePaddingInlineWithIconMedium: SpacingPaddingInlineSemanticToken { dimension5XS }
    @objc open var spacePaddingInlineWithIconTall: SpacingPaddingInlineSemanticToken { dimension4XS }
    @objc open var spacePaddingInlineWithIconTaller: SpacingPaddingInlineSemanticToken { dimension3XS }
    @objc open var spacePaddingInlineWithIconTallest: SpacingPaddingInlineSemanticToken { dimension2XS }

    @objc open var spacePaddingInlineWithArrowNone: SpacingPaddingInlineSemanticToken { dimensionNone }
    @objc open var spacePaddingInlineWithArrowShortest: SpacingPaddingInlineSemanticToken { dimension10XS }
    @objc open var spacePaddingInlineWithArrowShorter: SpacingPaddingInlineSemanticToken { dimension9XS }
    @objc open var spacePaddingInlineWithArrowShort: SpacingPaddingInlineSemanticToken { dimension8XS }
    @objc open var spacePaddingInlineWithArrowMedium: SpacingPaddingInlineSemanticToken { dimension7XS }
    @objc open var spacePaddingInlineWithArrowTall: SpacingPaddingInlineSemanticToken { dimension5XS }
    @objc open var spacePaddingInlineWithArrowTaller: SpacingPaddingInlineSemanticToken { dimension4XS }
    @objc open var spacePaddingInlineWithArrowTallest: SpacingPaddingInlineSemanticToken { dimension3XS }

    // MARK: Semantic token - Padding - Padding stack

    @objc open var spacePaddingBlockNone: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spacePaddingBlockShorter: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spacePaddingBlockShort: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spacePaddingBlockMedium: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var spacePaddingBlockTall: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var spacePaddingBlockTaller: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension400 }

    @objc open var spacePaddingBlockWithIconNone: SpacingPaddingInlineSemanticToken { dimensionNone }
    @objc open var spacePaddingBlockWithIconShortest: SpacingPaddingInlineSemanticToken { dimension10XS }
    @objc open var spacePaddingBlockWithIconShorter: SpacingPaddingInlineSemanticToken { dimension9XS }
    @objc open var spacePaddingBlockWithIconShort: SpacingPaddingInlineSemanticToken { dimension8XS }
    @objc open var spacePaddingBlockWithIconMedium: SpacingPaddingInlineSemanticToken { dimension7XS }
    @objc open var spacePaddingBlockWithIconTall: SpacingPaddingInlineSemanticToken { dimension6XS }
    @objc open var spacePaddingBlockWithIconTaller: SpacingPaddingInlineSemanticToken { dimension5XS }

    // MARK: Semantic token - Padding - Padding inset

    @objc open var spaceInsetNone: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spaceInsetSmash: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension25 }
    @objc open var spaceInsetShortest: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spaceInsetShorter: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension75 }
    @objc open var spaceInsetShort: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spaceInsetMedium: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension150 }
    @objc open var spaceInsetTall: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var spaceInsetTaller: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var spaceInsetTallest: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension400 }
    @objc open var spaceInsetSpacious: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension500 }

    // MARK: Semantic token - Padding - Gap inline

    @objc open var spaceColumnGapNone: SpacingPaddingInlineSemanticToken { dimensionNone }
    @objc open var spaceColumnGapShorter: SpacingPaddingInlineSemanticToken { dimension9XS }
    @objc open var spaceColumnGapShort: SpacingPaddingInlineSemanticToken { dimension7XS }
    @objc open var spaceColumnGapMedium: SpacingPaddingInlineSemanticToken { dimension5XS }
    @objc open var spaceColumnGapTall: SpacingPaddingInlineSemanticToken { dimension3XS }

    @objc open var spaceColumnGapWithIconNone: SpacingPaddingInlineSemanticToken { dimensionNone }
    @objc open var spaceColumnGapWithIconShortest: SpacingPaddingInlineSemanticToken { dimension10XS }
    @objc open var spaceColumnGapWithIconShorter: SpacingPaddingInlineSemanticToken { dimension9XS }
    @objc open var spaceColumnGapWithIconShort: SpacingPaddingInlineSemanticToken { dimension8XS }
    @objc open var spaceColumnGapWithIconMedium: SpacingPaddingInlineSemanticToken { dimension7XS }
    @objc open var spaceColumnGapWithIconTall: SpacingPaddingInlineSemanticToken { dimension5XS }

    @objc open var spaceColumnGapWithArrowNone: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spaceColumnGapWithArrowShorter: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension25 }
    @objc open var spaceColumnGapWithArrowShort: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spaceColumnGapWithArrowMedium: SpacingPaddingInlineSemanticToken { dimension7XS }
    @objc open var spaceColumnGapWithArrowTall: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spaceColumnGapWithArrowTaller: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension200 }

    // MARK: Semantic token - Padding - Gap stack

    @objc open var spaceRowGapNone: SpacingGapStackSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spaceRowGapShortest: SpacingGapStackSemanticToken { dimension10XS }
    @objc open var spaceRowGapShorter: SpacingGapStackSemanticToken { dimension9XS }
    @objc open var spaceRowGapShort: SpacingGapStackSemanticToken { dimension8XS }
    @objc open var spaceRowGapMedium: SpacingGapStackSemanticToken { dimension7XS }
    @objc open var spaceRowGapTall: SpacingGapStackSemanticToken { dimension5XS }

    @objc open var spaceRowGapWithIconNone: SpacingGapStackSemanticToken { dimensionNone }
    @objc open var spaceRowGapWithIconShortest: SpacingGapStackSemanticToken { dimension10XS }
    @objc open var spaceRowGapWithIconShorter: SpacingGapStackSemanticToken { dimension9XS }
    @objc open var spaceRowGapWithIconShort: SpacingGapStackSemanticToken { dimension8XS }
    @objc open var spaceRowGapWithIconMedium: SpacingGapStackSemanticToken { dimension7XS }
    @objc open var spaceRowGapWithIconTall: SpacingGapStackSemanticToken { dimension5XS }
}
