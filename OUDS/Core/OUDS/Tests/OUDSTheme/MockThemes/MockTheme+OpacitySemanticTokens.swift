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

    static let mockThemeOpacityRawToken: OpacityRawToken = 713

    override open var opacityTransparent: OpacitySemanticToken { Self.mockThemeOpacityRawToken }
    override open var opacityWeaker: OpacitySemanticToken { Self.mockThemeOpacityRawToken }
    override open var opacityWeak: OpacitySemanticToken { Self.mockThemeOpacityRawToken }
    override open var opacityMedium: OpacitySemanticToken { Self.mockThemeOpacityRawToken }
    override open var opacityStrong: OpacitySemanticToken { Self.mockThemeOpacityRawToken }
    override open var opacityOpaque: OpacitySemanticToken { Self.mockThemeOpacityRawToken }
}
