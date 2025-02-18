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

// swiftlint:disable identifier_name

extension OrangeThemeBulletListComponentTokensProvider: BulletListComponentTokens {
    @objc open var bulletListSizeMinHeightMedium: SizeSemanticToken { DimensionRawTokens.dimension600 }
    @objc open var bulletListSizeMinHeightSmall: SizeSemanticToken { DimensionRawTokens.dimension550 }
    @objc open var bulletListSizeMinWidthMedium: SizeSemanticToken { DimensionRawTokens.dimension600 }
    @objc open var bulletListSizeMinWidthSmall: SizeSemanticToken { DimensionRawTokens.dimension550 }
    @objc open var bulletListColorContentEnabled: MultipleColorSemanticTokens { colors.colorActionEnabled }
    @objc open var bulletListSpacePaddingBlock: SpaceSemanticToken { spaces.spacePaddingBlockMedium }
    @objc open var bulletListSpaceColumnGapIconMedium: SpaceSemanticToken { spaces.spaceColumnGapShorter }
    @objc open var bulletListSpaceColumnGapIconSmall: SpaceSemanticToken { spaces.spaceColumnGapShortest }
    @objc open var bulletListSpacePaddingInlineStartIconSmall: SpaceSemanticToken { spaces.spacePaddingInlineShort }
    @objc open var bulletListSpacePaddingInlineStartIconMedium: SpaceSemanticToken { spaces.spacePaddingInlineMedium }
    @objc open var bulletListSpacePaddingInlineEndNone: SpaceSemanticToken { spaces.spacePaddingInlineNone }
    @objc open var bulletListSizeIconMedium: SizeSemanticToken { sizes.sizeIconWithLabelLargeSizeXs }
    @objc open var bulletListSizeIconSmall: SizeSemanticToken { sizes.sizeIconWithLabelMediumSizeSm }
}

// swiftlint:enable identifier_name
