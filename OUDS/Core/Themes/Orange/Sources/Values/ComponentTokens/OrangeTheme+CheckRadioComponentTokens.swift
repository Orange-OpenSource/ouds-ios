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

extension OrangeThemeCheckRadioComponentTokensProvider: CheckRadioComponentTokens {
    @objc open var checkRadioSizeMaxHeightAssetsContainer: SizeSemanticToken { DimensionRawTokens.dimension1200 }
    @objc open var checkRadioSizeMaxHeightSelectorOnly: SizeSemanticToken { DimensionRawTokens.dimension600 }
    @objc open var checkRadioSizeMinHeightSelectorOnly: SizeSemanticToken { DimensionRawTokens.dimension600 }
    @objc open var checkRadioSizeMinWidthSelectorOnly: SizeSemanticToken { DimensionRawTokens.dimension600 }
    @objc open var checkRadioBorderRadiusCheckbox: BorderRadiusSemanticToken { borders.borderRadiusDefault }
    @objc open var checkRadioBorderWidthSelected: BorderWidthSemanticToken { borders.borderWidthMedium }
    @objc open var checkRadioBorderWidthSelectedFocus: BorderWidthSemanticToken { borders.borderWidthMedium }
    @objc open var checkRadioBorderWidthSelectedHover: BorderWidthSemanticToken { borders.borderWidthMedium }
    @objc open var checkRadioBorderWidthSelectedPressed: BorderWidthSemanticToken { borders.borderWidthMedium }
    @objc open var checkRadioBorderWidthUnselected: BorderWidthSemanticToken { borders.borderWidthThin }
    @objc open var checkRadioBorderWidthUnselectedFocus: BorderWidthSemanticToken { borders.borderWidthMedium }
    @objc open var checkRadioBorderWidthUnselectedHover: BorderWidthSemanticToken { borders.borderWidthMedium }
    @objc open var checkRadioBorderWidthUnselectedPressed: BorderWidthSemanticToken { borders.borderWidthMedium }
    @objc open var checkRadioOpacitySelectorBgSelected: OpacitySemanticToken { opacities.opacityInvisible }
    @objc open var checkRadioOpacitySelectorBgSelectedFocus: OpacitySemanticToken { opacities.opacityInvisible }
    @objc open var checkRadioOpacitySelectorBgSelectedHover: OpacitySemanticToken { opacities.opacityInvisible }
    @objc open var checkRadioOpacitySelectorBgSelectedPressed: OpacitySemanticToken { opacities.opacityInvisible }
    @objc open var checkRadioOpacitySelectorBgUnselected: OpacitySemanticToken { opacities.opacityInvisible }
    @objc open var checkRadioOpacitySelectorBgUnselectedFocus: OpacitySemanticToken { opacities.opacityInvisible }
    @objc open var checkRadioOpacitySelectorBgUnselectedHover: OpacitySemanticToken { opacities.opacityInvisible }
    @objc open var checkRadioOpacitySelectorBgUnselectedPressed: OpacitySemanticToken { opacities.opacityInvisible }
    @objc open var checkRadioSizeCheckInnerAsset: SizeSemanticToken { sizes.sizeIconDecorative2xs }
    @objc open var checkRadioSizeRadioInnerCircle: SizeSemanticToken { sizes.sizeIconDecorative2xs }
    @objc open var checkRadioColorContentAssetDisabled: MultipleColorSemanticTokens { colors.colorActionDisabled }
    @objc open var checkRadioColorContentAssetEnabled: MultipleColorSemanticTokens { colors.colorActionEnabled }
    @objc open var checkRadioColorContentAssetErrorEnabled: MultipleColorSemanticTokens { colors.colorActionNegativeEnabled }
    @objc open var checkRadioColorContentAssetErrorFocus: MultipleColorSemanticTokens { colors.colorActionNegativeFocus }
    @objc open var checkRadioColorContentAssetErrorHover: MultipleColorSemanticTokens { colors.colorActionNegativeHover }
    @objc open var checkRadioColorContentAssetErrorPressed: MultipleColorSemanticTokens { colors.colorActionNegativePressed }
    @objc open var checkRadioColorContentAssetFocus: MultipleColorSemanticTokens { colors.colorActionFocus }
    @objc open var checkRadioColorContentAssetHover: MultipleColorSemanticTokens { colors.colorActionHover }
    @objc open var checkRadioColorContentAssetPressed: MultipleColorSemanticTokens { colors.colorActionPressed }
    @objc open var checkRadioColorContentAssetSelected: MultipleColorSemanticTokens { colors.colorActionSelected }
    @objc open var checkRadioSizeSelector: SizeSemanticToken { sizes.sizeIconWithLabelLargeSizeXs }
}
