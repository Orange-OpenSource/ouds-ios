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

extension OrangeThemeOpacitySemanticTokensProvider: OpacitySemanticTokens {
    @objc open var opacityInvisible: OpacitySemanticToken { OpacityRawTokens.opacity0 }
    @objc open var opacityWeaker: OpacitySemanticToken { OpacityRawTokens.opacity40 }
    @objc open var opacityWeak: OpacitySemanticToken { OpacityRawTokens.opacity160 }
    @objc open var opacityMedium: OpacitySemanticToken { OpacityRawTokens.opacity320 }
    @objc open var opacityStrong: OpacitySemanticToken { OpacityRawTokens.opacity640 }
    @objc open var opacityOpaque: OpacitySemanticToken { OpacityRawTokens.opacity1000 }
}
