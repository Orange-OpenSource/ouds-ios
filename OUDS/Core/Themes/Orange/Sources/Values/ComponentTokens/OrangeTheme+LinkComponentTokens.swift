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
import OUDSTokensComponent
import OUDSTokensRaw
import OUDSTokensSemantic

// 🧱 Tokens version: 0.7.0
// 🤖 Generated by Tokenator

extension OrangeThemeLinkComponentTokensProvider: LinkComponentTokens {
    @objc open var linkSizeMinHeightMedium: SizeSemanticToken { DimensionRawTokens.dimension600 }
    @objc open var linkSizeMinHeightSmall: SizeSemanticToken { DimensionRawTokens.dimension550 }
    @objc open var linkSizeMinWidthMedium: SizeSemanticToken { DimensionRawTokens.dimension600 }
    @objc open var linkSizeMinWidthSmall: SizeSemanticToken { DimensionRawTokens.dimension550 }
    @objc open var linkColorContentDisabledMono: MultipleColorSemanticTokens { colors.colorRepositoryOpacityBlackSoft }
    @objc open var linkColorContentEnabledMono: MultipleColorSemanticTokens { colors.colorRepositoryNeutralEmphasizedBlack }
    @objc open var linkColorContentFocusMono: MultipleColorSemanticTokens { colors.colorRepositoryNeutralEmphasizedBlack }
    @objc open var linkColorContentHoverMono: MultipleColorSemanticTokens { colors.colorRepositoryNeutralEmphasizedBlack }
    @objc open var linkColorContentPressedMono: MultipleColorSemanticTokens { colors.colorRepositoryOpacityBlackHigher }
    @objc open var linkSizeIconMedium: SizeSemanticToken { sizes.sizeIconWithLabelLargeSizeXs }
    @objc open var linkSizeIconSmall: SizeSemanticToken { sizes.sizeIconWithLabelMediumSizeSm }
    @objc open var linkSpaceColumnGapArrowMedium: SpaceSemanticToken { spaces.spaceColumnGapShorter }
    @objc open var linkSpaceColumnGapArrowSmall: SpaceSemanticToken { spaces.spaceColumnGapShortest }
    @objc open var linkSpaceColumnGapIconMedium: SpaceSemanticToken { spaces.spaceColumnGapShort }
    @objc open var linkSpaceColumnGapIconSmall: SpaceSemanticToken { spaces.spaceColumnGapShorter }
    @objc open var linkSpacePaddingBlock: SpaceSemanticToken { spaces.spacePaddingBlockMedium }
    @objc open var linkSpacePaddingInline: SpaceSemanticToken { spaces.spacePaddingInlineNone }
    @objc open var linkColorArrowEnabled: MultipleColorSemanticTokens { colors.colorContentBrandPrimary }
    @objc open var linkColorArrowFocus: MultipleColorSemanticTokens { colors.colorContentBrandPrimary }
    @objc open var linkColorArrowHover: MultipleColorSemanticTokens { colors.colorContentBrandPrimary }
    @objc open var linkColorArrowPressed: MultipleColorSemanticTokens { colors.colorContentBrandPrimary }
    @objc open var linkColorContentEnabled: MultipleColorSemanticTokens { colors.colorActionEnabled }
    @objc open var linkColorContentFocus: MultipleColorSemanticTokens { colors.colorActionFocus }
    @objc open var linkColorContentHover: MultipleColorSemanticTokens { colors.colorActionHover }
    @objc open var linkColorContentPressed: MultipleColorSemanticTokens { colors.colorActionPressed }
}
