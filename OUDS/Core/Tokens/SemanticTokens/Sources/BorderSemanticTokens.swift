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

// MARK: - Type aliases to keep grammar clear

/// Type alias precising `BorderWidthRawToken` is used as a value of this **border width semantic token**.
public typealias BorderWidthSemanticToken = BorderWidthRawToken

/// Type alias precising `BorderRadiusRawToken` is used as a value of this **border raw semantic token**.
public typealias BorderRadiusSemanticToken = BorderRadiusRawToken

/// Type alias precising `BorderStyleRawToken` is used as a value of this **border style semantic token**.
public typealias BorderStyleSemanticToken = BorderStyleRawToken

// MARK: - Semantic tokens

/// This is a group of semantic tokens for **borders**.
/// It defines all `BorderWidthSemanticToken`, `BorderRadiusSemanticToken` and `BorderStyleSemanticToken` a theme must have.
public protocol BorderSemanticTokens {

    // MARK: - Semantic token - Border - Width
    var borderWidthNone: BorderWidthSemanticToken { get }
    var borderWidthDefault: BorderWidthSemanticToken { get }
    var borderWidthThin: BorderWidthSemanticToken { get }
    var borderWidthThick: BorderWidthSemanticToken { get }
    var borderWidthThicker: BorderWidthSemanticToken { get }
    var borderWidthThickest: BorderWidthSemanticToken { get }
    var borderWidthInterfactivePrimaryFocus: BorderWidthSemanticToken { get }

    // MARK: - Semantic token - Border - Radius

    var borderRadiusNone: BorderRadiusSemanticToken { get }
    var borderRadiusDefault: BorderRadiusSemanticToken { get }
    var borderRadiusShort: BorderRadiusSemanticToken { get }
    var borderRadiusMedium: BorderRadiusSemanticToken { get }
    var borderRadiusTall: BorderRadiusSemanticToken { get }

    // MARK: - Semantic token - Border - Style

    var borderStyleDefault: BorderStyleSemanticToken { get }
    var borderStyleDrag: BorderStyleSemanticToken { get }
}
