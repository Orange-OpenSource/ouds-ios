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

extension MockTheme {

    static let mockThemeBorderWidthRawToken: BorderWidthRawToken = 1_337
    static let mockThemeBorderRadiusRawToken: BorderRadiusRawToken = 42
    static let mockThemeBorderStyleRawToken: BorderStyleRawToken = "(╯°□°）╯︵ ┻━┻"

    // MARK: Semantic token - Border - Width

    override open var borderWidthNone: BorderWidthSemanticToken { Self.mockThemeBorderWidthRawToken }
    override open var borderWidthDefault: BorderWidthSemanticToken { Self.mockThemeBorderWidthRawToken}
    override open var borderWidthThin: BorderWidthSemanticToken { Self.mockThemeBorderWidthRawToken}
    override open var borderWidthMedium: BorderWidthSemanticToken { Self.mockThemeBorderWidthRawToken}
    override open var borderWidthThick: BorderWidthSemanticToken { Self.mockThemeBorderWidthRawToken}
    override open var borderWidthThicker: BorderWidthSemanticToken { Self.mockThemeBorderWidthRawToken}
    override open var borderWidthOutsideFocus: BorderWidthSemanticToken { Self.mockThemeBorderWidthRawToken}

    // MARK: Semantic token - Border - Radius

    override open var borderRadiusNone: BorderRadiusSemanticToken { Self.mockThemeBorderRadiusRawToken }
    override open var borderRadiusDefault: BorderRadiusSemanticToken { Self.mockThemeBorderRadiusRawToken }
    override open var borderRadiusShort: BorderRadiusSemanticToken { Self.mockThemeBorderRadiusRawToken }
    override open var borderRadiusMedium: BorderRadiusSemanticToken { Self.mockThemeBorderRadiusRawToken }
    override open var borderRadiusTall: BorderRadiusSemanticToken { Self.mockThemeBorderRadiusRawToken }

    // MARK: Semantic token - Border - Style

    override open var borderStyleDefault: BorderStyleSemanticToken { Self.mockThemeBorderStyleRawToken }
    override open var borderStyleDrag: BorderStyleSemanticToken { Self.mockThemeBorderStyleRawToken }
}
