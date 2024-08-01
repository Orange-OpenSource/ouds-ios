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
import OUDSTokensRaw
import OUDSTokensSemantic

/// Defines basic values common to all themes for `BorderSemanticTokens`.
/// These values can be overriden inside `OUDSTheme` subclasses (in extensions or not, in the same module or not) thanks to the `@objc open` combination.
extension OUDSTheme: BorderSemanticTokens {

    // MARK: Semantic token - Border - Width

    @objc open var borderWidthNone: BorderWidthSemanticToken { BorderRawTokens.borderWidth0 }
    @objc open var borderWidthDefault: BorderWidthSemanticToken { BorderRawTokens.borderWidth25 }
    @objc open var borderWidthThin: BorderWidthSemanticToken { BorderRawTokens.borderWidth25 }
    @objc open var borderWidthThick: BorderWidthSemanticToken { BorderRawTokens.borderWidth50 }
    @objc open var borderWidthThicker: BorderWidthSemanticToken { BorderRawTokens.borderWidth75 }
    @objc open var borderWidthThickest: BorderWidthSemanticToken { BorderRawTokens.borderWidth100 }
    @objc open var borderWidthInterfactivePrimaryFocus: BorderWidthSemanticToken { BorderRawTokens.borderWidth100 }

    // MARK: Semantic token - Border - Radius

    @objc open var borderRadiusNone: BorderRadiusSemanticToken { BorderRawTokens.borderRadius0 }
    @objc open var borderRadiusDefault: BorderRadiusSemanticToken { BorderRawTokens.borderRadius0 }
    @objc open var borderRadiusShort: BorderRadiusSemanticToken { BorderRawTokens.borderRadius75 }
    @objc open var borderRadiusMedium: BorderRadiusSemanticToken { BorderRawTokens.borderRadius150 }
    @objc open var borderRadiusTall: BorderRadiusSemanticToken { BorderRawTokens.borderRadius300 }
    @objc open var borderRadiusPill: BorderRadiusSemanticToken { BorderRawTokens.borderRadius9999 }

    // MARK: Semantic token - Border - Style

    @objc open var borderStyleDefault: BorderStyleSemanticToken { BorderRawTokens.borderStyleSolid }
    @objc open var borderStyleDrag: BorderStyleSemanticToken { BorderRawTokens.borderStyleDashed }
}
