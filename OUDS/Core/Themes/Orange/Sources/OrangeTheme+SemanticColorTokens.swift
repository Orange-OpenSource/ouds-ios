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

import OUDSTokensRaw
import OUDSTokensSemantic

// ଘ( ･ω･)_/ﾟ･:*:･｡☆
// [File to generate with the tokenator]

/// Overrides some colors using values defined in extension of `ColorRawTokens` in this current module.
extension OrangeTheme {

    public override var sysColorBrandPrimaryLow: ColorAliasSemanticToken! { OrangeBrandColorRawTokens.colorBrandOrange500 }
    public override var sysColorBrandPrimaryDefault: ColorAliasSemanticToken! { OrangeBrandColorRawTokens.colorBrandOrange550 }

    public override var sysColorBrandAttractiveLowest: ColorAliasSemanticToken! { OrangeBrandColorRawTokens.colorBrandWarmGray100 }
    public override var sysColorBrandAttractiveHighest: ColorAliasSemanticToken! { OrangeBrandColorRawTokens.colorBrandWarmGray900 }
}
