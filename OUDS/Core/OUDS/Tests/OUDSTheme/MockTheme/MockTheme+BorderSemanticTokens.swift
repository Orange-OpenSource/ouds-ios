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
import OUDSTokensSemantic
import OUDSTokensRaw

extension MockTheme {

    static let mockThemeBorderWidthRawToken: BorderWidthRawToken = 1337
    static let mockThemeBorderRadiusRawToken: BorderRadiusRawToken = 42
    static let mockThemeBorderStyleRawToken: BorderStyleRawToken = "(╯°□°）╯︵ ┻━┻"

    // MARK: Semantic token - Border - Width

    override var borderWidthNone: BorderWidthSemanticToken { Self.mockThemeBorderWidthRawToken }
    override var borderWidthDefault: BorderWidthSemanticToken { Self.mockThemeBorderWidthRawToken}
    override var borderWidthThin: BorderWidthSemanticToken { Self.mockThemeBorderWidthRawToken}
    override var borderWidthThick: BorderWidthSemanticToken { Self.mockThemeBorderWidthRawToken}
    override var borderWidthThicker: BorderWidthSemanticToken { Self.mockThemeBorderWidthRawToken}
    override var borderWidthThickest: BorderWidthSemanticToken { Self.mockThemeBorderWidthRawToken}
    override var borderWidthInterfactivePrimaryFocus: BorderWidthSemanticToken { Self.mockThemeBorderWidthRawToken}

    // MARK: Semantic token - Border - Radius

    override var borderRadiusNone: BorderRadiusSemanticToken { Self.mockThemeBorderRadiusRawToken }
    override var borderRadiusDefault: BorderRadiusSemanticToken { Self.mockThemeBorderRadiusRawToken }
    override var borderRadiusShort: BorderRadiusSemanticToken { Self.mockThemeBorderRadiusRawToken }
    override var borderRadiusMedium: BorderRadiusSemanticToken { Self.mockThemeBorderRadiusRawToken }
    override var borderRadiusTall: BorderRadiusSemanticToken { Self.mockThemeBorderRadiusRawToken }

    // MARK: Semantic token - Border - Style

    override var borderStyleDefault: BorderStyleSemanticToken { Self.mockThemeBorderStyleRawToken }
    override var borderStyleDrag: BorderStyleSemanticToken { Self.mockThemeBorderStyleRawToken }
}
