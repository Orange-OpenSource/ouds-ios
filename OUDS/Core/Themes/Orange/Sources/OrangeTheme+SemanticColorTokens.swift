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

// TODO: Check if we can get rid of alias colors tokens which are optional
// swiftlint:disable implicitly_unwrapped_optional

/// Overrides some colors using values defined in extension of `ColorRawTokens` in this current module.
extension OrangeTheme {

    override public var sysColorBrandPrimaryLow: ColorAliasSemanticToken! { OrangeBrandColorRawTokens.colorOrange500 }
    override public var sysColorBrandPrimaryDefault: ColorAliasSemanticToken! { OrangeBrandColorRawTokens.colorOrange550 }

    override public var sysColorBrandAttractiveLowest: ColorAliasSemanticToken! { OrangeBrandColorRawTokens.colorWarmGray100 }
    override public var sysColorBrandAttractiveHighest: ColorAliasSemanticToken! { OrangeBrandColorRawTokens.colorWarmGray900 }
}

// swiftlint:enable implicitly_unwrapped_optional
