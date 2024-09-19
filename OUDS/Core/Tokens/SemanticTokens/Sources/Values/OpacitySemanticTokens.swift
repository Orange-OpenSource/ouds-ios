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

/// This is a group of semantic tokens for **opacity.**
/// It defines all `OpacitySemanticToken` a theme must have.
public protocol OpacitySemanticTokens {

    // MARK: Semantic token - Opacity

    var opacityTransparent: OpacitySemanticToken { get }
    var opacityWeaker: OpacitySemanticToken { get }
    var opacityWeak: OpacitySemanticToken { get }
    var opacityMedium: OpacitySemanticToken { get }
    var opacityStrong: OpacitySemanticToken { get }
    var opacityOpaque: OpacitySemanticToken { get }
}
