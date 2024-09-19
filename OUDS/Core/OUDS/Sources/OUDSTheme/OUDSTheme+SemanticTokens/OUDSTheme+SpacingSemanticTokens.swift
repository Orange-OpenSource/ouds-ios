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

// swiftlint:disable line_length
/// Defines basic values common to all themes for `SpacingSemanticTokens`.
/// These values can be overriden inside `OUDSTheme` subclasses (in extensions or not, in the same module or not) thanks to the `@objc open` combination.
extension OUDSTheme: SpacingSemanticTokens {

    // MARK: Semantic token - Spacing - Layout fix

    @objc open var spaceLayoutFixNone: SpacingLayoutSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spaceLayoutFixSmash: SpacingLayoutSemanticToken { DimensionRawTokens.dimension25 }
    @objc open var spaceLayoutFixShortest: SpacingLayoutSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spaceLayoutFixShorter: SpacingLayoutSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spaceLayoutFixShort: SpacingLayoutSemanticToken { DimensionRawTokens.dimension150 }
    @objc open var spaceLayoutFixMedium: SpacingLayoutSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var spaceLayoutFixTall: SpacingLayoutSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var spaceLayoutFixTaller: SpacingLayoutSemanticToken { DimensionRawTokens.dimension400 }
    @objc open var spaceLayoutFixTallest: SpacingLayoutSemanticToken { DimensionRawTokens.dimension500 }
    @objc open var spaceLayoutFixSpacious: SpacingLayoutSemanticToken { DimensionRawTokens.dimension600 }

    // MARK: Semantic token - Spacing - Layout fluid

    @objc open var spaceLayoutAdaptableNone: SpacingCompositeSemanticToken { SpacingCompositeSemanticToken(compact: DimensionRawTokens.dimension0, regular: DimensionRawTokens.dimension0) }
    @objc open var spaceLayoutAdaptableSmash: SpacingCompositeSemanticToken { SpacingCompositeSemanticToken(compact: DimensionRawTokens.dimension25, regular: DimensionRawTokens.dimension50) }
    @objc open var spaceLayoutAdaptableShortest: SpacingCompositeSemanticToken { SpacingCompositeSemanticToken(compact: DimensionRawTokens.dimension50, regular: DimensionRawTokens.dimension100) }
    @objc open var spaceLayoutAdaptableShorter: SpacingCompositeSemanticToken { SpacingCompositeSemanticToken(compact: DimensionRawTokens.dimension100, regular: DimensionRawTokens.dimension150) }
    @objc open var spaceLayoutAdaptableShort: SpacingCompositeSemanticToken { SpacingCompositeSemanticToken(compact: DimensionRawTokens.dimension150, regular: DimensionRawTokens.dimension200) }
    @objc open var spaceLayoutAdaptableMedium: SpacingCompositeSemanticToken { SpacingCompositeSemanticToken(compact: DimensionRawTokens.dimension200, regular: DimensionRawTokens.dimension300) }
    @objc open var spaceLayoutAdaptableTall: SpacingCompositeSemanticToken { SpacingCompositeSemanticToken(compact: DimensionRawTokens.dimension300, regular: DimensionRawTokens.dimension400) }
    @objc open var spaceLayoutAdaptableTaller: SpacingCompositeSemanticToken { SpacingCompositeSemanticToken(compact: DimensionRawTokens.dimension400, regular: DimensionRawTokens.dimension500) }
    @objc open var spaceLayoutAdaptableTallest: SpacingCompositeSemanticToken { SpacingCompositeSemanticToken(compact: DimensionRawTokens.dimension500, regular: DimensionRawTokens.dimension600) }
    @objc open var spaceLayoutAdaptableSpacious: SpacingCompositeSemanticToken { SpacingCompositeSemanticToken(compact: DimensionRawTokens.dimension600, regular: DimensionRawTokens.dimension700) }

    // MARK: Semantic token - Spacing - Padding - Padding inline

    @objc open var spacePaddingInlineComponentNone: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spacePaddingInlineComponentShorter: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spacePaddingInlineComponentShort: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spacePaddingInlineComponentMedium: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var spacePaddingInlineComponentTall: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var spacePaddingInlineComponentTaller: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension400 }

    @objc open var spacePaddingInlineComponentIsIconNone: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spacePaddingInlineComponentIsIconShorter: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension25 }
    @objc open var spacePaddingInlineComponentIsIconShort: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spacePaddingInlineComponentIsIconMedium: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension75 }
    @objc open var spacePaddingInlineComponentIsIconTall: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spacePaddingInlineComponentIsIconTaller: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension200 }

    @objc open var spacePaddingInlineComponentIsArrowNone: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spacePaddingInlineComponentIsArrowShorter: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension25 }
    @objc open var spacePaddingInlineComponentIsArrowShort: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spacePaddingInlineComponentIsArrowMedium: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension75 }
    @objc open var spacePaddingInlineComponentIsArrowTall: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spacePaddingInlineComponentIsArrowTaller: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension200 }

    // MARK: Semantic token - Padding - Padding stack

    @objc open var spacePaddingBlockComponentNone: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spacePaddingBlockComponentShorter: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spacePaddingBlockComponentShort: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spacePaddingBlockComponentMedium: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var spacePaddingBlockComponentTall: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var spacePaddingBlockComponentTaller: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension400 }

    @objc open var spacePaddingBlockComponentIsIconNone: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spacePaddingBlockComponentIsIconShorter: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension25 }
    @objc open var spacePaddingBlockComponentIsIconShort: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spacePaddingBlockComponentIsIconMedium: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension75 }
    @objc open var spacePaddingBlockComponentIsIconTall: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spacePaddingBlockComponentIsIconTaller: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension200 }

    // MARK: Semantic token - Padding - Padding inset

    @objc open var spaceInsetComponentNone: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spaceInsetComponentSmash: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension25 }
    @objc open var spaceInsetComponentShortest: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spaceInsetComponentShorter: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension75 }
    @objc open var spaceInsetComponentShort: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spaceInsetComponentMedium: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension150 }
    @objc open var spaceInsetComponentTall: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var spaceInsetComponentTaller: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var spaceInsetComponentTallest: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension400 }
    @objc open var spaceInsetComponentSpacious: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension500 }

    // MARK: Semantic token - Padding - Gap inline

    @objc open var spaceColumnGapComponentNone: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spaceColumnGapComponentShorter: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spaceColumnGapComponentShort: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spaceColumnGapComponentMedium: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var spaceColumnGapComponentTall: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var spaceColumnGapComponentTaller: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension400 }

    @objc open var spaceColumnGapComponentIsIconNone: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spaceColumnGapComponentIsIconShorter: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension25 }
    @objc open var spaceColumnGapComponentIsIconShort: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spaceColumnGapComponentIsIconMedium: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension75 }
    @objc open var spaceColumnGapComponentIsIconTall: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spaceColumnGapComponentIsIconTaller: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension200 }

    @objc open var spaceColumnGapComponentIsArrowNone: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spaceColumnGapComponentIsArrowShorter: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension25 }
    @objc open var spaceColumnGapComponentIsArrowShort: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spaceColumnGapComponentIsArrowMedium: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension75 }
    @objc open var spaceColumnGapComponentIsArrowTall: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spaceColumnGapComponentIsArrowTaller: SpacingPaddingInlineSemanticToken { DimensionRawTokens.dimension200 }

    // MARK: Semantic token - Padding - Gap stack

    @objc open var spaceRowGapComponentNone: SpacingGapStackSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spaceRowGapComponentShorter: SpacingGapStackSemanticToken { DimensionRawTokens.dimension25 }
    @objc open var spaceRowGapComponentShort: SpacingGapStackSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spaceRowGapComponentMedium: SpacingGapStackSemanticToken { DimensionRawTokens.dimension75 }
    @objc open var spaceRowGapComponentTall: SpacingGapStackSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spaceRowGapComponentTaller: SpacingGapStackSemanticToken { DimensionRawTokens.dimension200 }

    @objc open var spaceRowGapComponentIsIconNone: SpacingGapStackSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var spaceRowGapComponentIsIconShorter: SpacingGapStackSemanticToken { DimensionRawTokens.dimension25 }
    @objc open var spaceRowGapComponentIsIconShort: SpacingGapStackSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var spaceRowGapComponentIsIconMedium: SpacingGapStackSemanticToken { DimensionRawTokens.dimension75 }
    @objc open var spaceRowGapComponentIsIconTall: SpacingGapStackSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var spaceRowGapComponentIsIconTaller: SpacingGapStackSemanticToken { DimensionRawTokens.dimension200 }
}
// swiftlint:enable line_length
