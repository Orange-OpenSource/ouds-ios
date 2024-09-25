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
    @objc open var spacePaddingInlineTaller: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension400 }

    @objc open var spacePaddingInlineIsIconNone: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spacePaddingInlineIsIconShorter: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension25 }
    @objc open var spacePaddingInlineIsIconShort: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spacePaddingInlineIsIconMedium: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension75 }
    @objc open var spacePaddingInlineIsIconTall: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spacePaddingInlineIsIconTaller: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension200 }

    @objc open var spacePaddingInlineIsArrowNone: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spacePaddingInlineIsArrowShorter: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension25 }
    @objc open var spacePaddingInlineIsArrowShort: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spacePaddingInlineIsArrowMedium: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension75 }
    @objc open var spacePaddingInlineIsArrowTall: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spacePaddingInlineIsArrowTaller: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension200 }

    // MARK: Semantic token - Padding - Padding stack

    @objc open var spacePaddingBlockNone: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spacePaddingBlockShorter: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spacePaddingBlockShort: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spacePaddingBlockMedium: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var spacePaddingBlockTall: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var spacePaddingBlockTaller: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension400 }

    @objc open var spacePaddingBlockIsIconNone: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spacePaddingBlockIsIconShorter: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension25 }
    @objc open var spacePaddingBlockIsIconShort: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spacePaddingBlockIsIconMedium: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension75 }
    @objc open var spacePaddingBlockIsIconTall: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spacePaddingBlockIsIconTaller: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension200 }

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

    @objc open var spaceColumnGapNone: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spaceColumnGapShorter: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spaceColumnGapShort: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spaceColumnGapMedium: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var spaceColumnGapTall: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var spaceColumnGapTaller: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension400 }

    @objc open var spaceColumnGapIsIconNone: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spaceColumnGapIsIconShorter: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension25 }
    @objc open var spaceColumnGapIsIconShort: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spaceColumnGapIsIconMedium: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension75 }
    @objc open var spaceColumnGapIsIconTall: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spaceColumnGapIsIconTaller: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension200 }

    @objc open var spaceColumnGapIsArrowNone: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spaceColumnGapIsArrowShorter: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension25 }
    @objc open var spaceColumnGapIsArrowShort: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spaceColumnGapIsArrowMedium: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension75 }
    @objc open var spaceColumnGapIsArrowTall: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spaceColumnGapIsArrowTaller: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension200 }

    // MARK: Semantic token - Padding - Gap stack

    @objc open var spaceRowGapNone: SpacingGapStackSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spaceRowGapShorter: SpacingGapStackSemanticToken { DimensionRawTokens.dimension25 }
    @objc open var spaceRowGapShort: SpacingGapStackSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spaceRowGapMedium: SpacingGapStackSemanticToken { DimensionRawTokens.dimension75 }
    @objc open var spaceRowGapTall: SpacingGapStackSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spaceRowGapTaller: SpacingGapStackSemanticToken { DimensionRawTokens.dimension200 }

    @objc open var spaceRowGapIsIconNone: SpacingGapStackSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spaceRowGapIsIconShorter: SpacingGapStackSemanticToken { DimensionRawTokens.dimension25 }
    @objc open var spaceRowGapIsIconShort: SpacingGapStackSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spaceRowGapIsIconMedium: SpacingGapStackSemanticToken { DimensionRawTokens.dimension75 }
    @objc open var spaceRowGapIsIconTall: SpacingGapStackSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spaceRowGapIsIconTaller: SpacingGapStackSemanticToken { DimensionRawTokens.dimension200 }
}
