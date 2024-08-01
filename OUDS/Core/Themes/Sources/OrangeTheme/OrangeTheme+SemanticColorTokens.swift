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
import OUDSTokensPrimitive
import OUDSTokensSemantic

extension OrangeTheme {

    public override var sysColorBrandPrimaryLow: ColorAliasSemanticToken? { get { ColorPrimitiveTokens.colorBrandOrange500 } set { } }
    public override var sysColorBrandPrimaryDefault: ColorAliasSemanticToken? { get { ColorPrimitiveTokens.colorBrandOrange550 } set { } }
    
    public override var sysColorBrandAttractiveLowest: ColorAliasSemanticToken? { get { ColorPrimitiveTokens.colorBrandWarmGray100 } set { } }
    public override var sysColorBrandAttractiveHighest: ColorAliasSemanticToken? { get { ColorPrimitiveTokens.colorBrandWarmGray900 } set { } }
   
}
