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

extension OrangeThemeControlItemComponentTokensProvider: ControlItemComponentTokens {
    @objc open var controlItemSizeMinHeight: SizeSemanticToken { DimensionRawTokens.dimension650 }
    @objc open var controlItemSizeMinWidth: SizeSemanticToken { DimensionRawTokens.dimension1400 }
    @objc open var controlItemSizeMaxHeightAssetsContainer: SizeSemanticToken { DimensionRawTokens.dimension1200 }
    @objc open var controlItemColorBgHover: MultipleColorSemanticTokens { colors.colorActionSupportHover }
    @objc open var controlItemColorBgPressed: MultipleColorSemanticTokens { colors.colorActionSupportPressed }
    @objc open var controlItemColorBgLoading: MultipleColorSemanticTokens { colors.colorActionSupportLoading }
    @objc open var controlItemColorBgFocus: MultipleColorSemanticTokens { colors.colorActionSupportFocus }
    @objc open var controlItemColorContentLoader: MultipleColorSemanticTokens { colors.colorContentDefault }
    @objc open var controlItemSizeIcon: SizeSemanticToken { sizes.sizeIconWithLabelLargeSizeMd }
    @objc open var controlItemSizeLoader: SizeSemanticToken { sizes.sizeIconWithLabelLargeSizeSm }
    @objc open var controlItemSpaceColumnGap: SpaceSemanticToken { spaces.spaceColumnGapTall }
    @objc open var controlItemSpaceRowGap: SpaceSemanticToken { spaces.spaceRowGapNone }
    @objc open var controlItemSpaceInset: SpaceSemanticToken { spaces.spaceInsetMedium }
}
