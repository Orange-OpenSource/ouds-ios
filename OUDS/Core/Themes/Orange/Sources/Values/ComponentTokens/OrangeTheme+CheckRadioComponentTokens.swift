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

// ଘ( ･ω･)_/ﾟ･:*:･｡☆
// [File to generate with the tokenator]
// Values are not the expected ones, manual fixes have been added
// Create an issue for update https://github.com/Orange-OpenSource/ouds-ios/issues/new?template=token_update.yml

extension OrangeThemeCheckRadioComponentTokensProvider: CheckRadioComponentTokens {
    @objc open var checkRadioSizeSelector: SizeSemanticToken { sizes.sizeIconWithLabelLargeSizeSm }
    @objc open var checkRadioSizeMinHeightSelectorOnly: SizeSemanticToken { DimensionRawTokens.dimension600 }
    @objc open var checkRadioSizeMinWidthSelectorOnly: SizeSemanticToken { DimensionRawTokens.dimension600 }
    @objc open var checkRadioSizeMaxHeightSelectorOnly: SizeSemanticToken { DimensionRawTokens.dimension600 }
    @objc open var checkRadioSizeMaxHeightAssetsContainer: SizeSemanticToken { DimensionRawTokens.dimension1200 }

    // TODO: #264 - Add true values of tokens

    @objc open var checkRadioSelectorBorderRadius: BorderRadiusSemanticToken { borders.borderRadiusNone }
    @objc open var checkRadioSelectorBorderWidthEnabled: BorderWidthSemanticToken { borders.borderWidthThicker }
    @objc open var checkRadioSelectorBorderWidthHover: BorderWidthSemanticToken { borders.borderWidthFocus }
    @objc open var checkRadioSelectorBorderWidthPressed: BorderWidthSemanticToken { borders.borderWidthFocus }
    @objc open var checkRadioSelectorBorderWidthDisabled: BorderWidthSemanticToken { borders.borderWidthThicker }
    @objc open var checkRadioSelectorColorEnabledSelected: MultipleColorSemanticTokens { colors.colorActionSelected }
    @objc open var checkRadioSelectorColorEnabledUnselected: MultipleColorSemanticTokens { colors.colorActionEnabled }
    @objc open var checkRadioSelectorColorEnabledError: MultipleColorSemanticTokens { colors.colorActionNegativeEnabled }
    @objc open var checkRadioSelectorColorHover: MultipleColorSemanticTokens { colors.colorActionHover }
    @objc open var checkRadioSelectorColorHoverError: MultipleColorSemanticTokens { colors.colorActionNegativeHover }
    @objc open var checkRadioSelectorColorPressed: MultipleColorSemanticTokens { colors.colorActionPressed }
    @objc open var checkRadioSelectorColorPressedError: MultipleColorSemanticTokens { colors.colorActionNegativePressed }
    @objc open var checkRadioSelectorColorDisabled: MultipleColorSemanticTokens { colors.colorActionDisabled }
}
