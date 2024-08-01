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

extension OUDSTheme: OpacitySemanticTokens {
    
    @objc open var opacityTransparent: OpacitySemanticToken { get { OpacityPrimitiveTokens.opacity0 } set { } }
    @objc open var opacityWeaker: OpacitySemanticToken { get { OpacityPrimitiveTokens.opacity100 } set { } }
    @objc open var opacityWeak: OpacitySemanticToken { get { OpacityPrimitiveTokens.opacity300 } set { } }
    @objc open var opacityMedum: OpacitySemanticToken { get { OpacityPrimitiveTokens.opacity500 } set { } }
    @objc open var opacityEmphasis: OpacitySemanticToken { get { OpacityPrimitiveTokens.opacity700 } set { } }
    @objc open var opacityOpaque: OpacitySemanticToken { get { OpacityPrimitiveTokens.opacity900 } set { } }
}
