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

/// Overrides some color tokens using values available in `OrangeBrandColorRawTokens`
extension OrangeTheme {

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorBackgroundTertiary: ColorSemanticToken { MultipleColorTokens(light: OrangeBrandColorRawTokens.colorWarmGray100, dark: OrangeBrandColorRawTokens.colorWarmGray900) }
 
    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorBackgroundBrandPrimary: ColorSemanticToken { MultipleColorTokens(light: OrangeBrandColorRawTokens.colorOrange550, dark: OrangeBrandColorRawTokens.colorOrange500) }

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorBackgroundStatusAccentMuted: ColorSemanticToken { MultipleColorTokens(light: OrangeBrandColorRawTokens.colorWarmGray100, dark: OrangeBrandColorRawTokens.colorWarmGray900) }
    
}

