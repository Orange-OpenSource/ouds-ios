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
    @objc open var checkRadioSizeSelector: SizeSemanticToken { sizes.sizeIconWithLabelLargeSizeSm }
}
