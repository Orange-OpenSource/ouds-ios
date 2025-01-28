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
    @objc open var checkRadioSize: SizeSemanticToken { sizes.sizeIconWithLabelLargeSizeSm }
    @objc open var checkRadioSizeMinHeightSelectorOnly: DimensionRawToken { DimensionRawTokens.dimension600 }
    @objc open var checkRadioSizeMinWidthSelectorOnly: DimensionRawToken { DimensionRawTokens.dimension600 }
    @objc open var checkRadioSizeMaxHeightSelectorOnly: DimensionRawToken { DimensionRawTokens.dimension600 }
    @objc open var checkRadioSizeMaxHeightAssetsContainer: DimensionRawToken { DimensionRawTokens.dimension1200 }
}
