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

public typealias GridIOSExtraCompactSemanticToken = GridRawToken
public typealias GridIOSCompactSemanticToken = GridRawToken
public typealias GridIOSRegularSemanticToken = GridRawToken

// MARK: - Semantic tokens

/// This is a group of semantic tokens for **grids**.
/// It defines all `GridSemanticToken` a theme must have.
public protocol GridSemanticTokens {

    // MARK: Semantic token - Grid - iOS Extra compact

    var gridIOSExtraCompactMinWidth: GridIOSExtraCompactSemanticToken { get }
    var gridIOSExtraCompactMaxWidth: GridIOSExtraCompactSemanticToken { get }
    var gridIOSExtraCompactMargin: GridIOSExtraCompactSemanticToken { get }
    var gridIOSExtraCompactColumnGap: GridIOSExtraCompactSemanticToken { get }
    var gridIOSExtraCompactColumnCount: GridIOSExtraCompactSemanticToken { get }

    // MARK: Semantic token - Grid - iOS Compact

    var gridIOSCompactMinWidth: GridIOSCompactSemanticToken { get }
    var gridIOSCompactMaxWidth: GridIOSCompactSemanticToken { get }
    var gridIOSCompactMargin: GridIOSCompactSemanticToken { get }
    var gridIOSCompactColumnGap: GridIOSCompactSemanticToken { get }
    var gridIOSCompactColumnCount: GridIOSCompactSemanticToken { get }

    // MARK: Semantic token - Grid - iOS Regular

    var gridIOSRegularMinWidth: GridIOSRegularSemanticToken { get }
    var gridIOSRegularMaxWidth: GridIOSRegularSemanticToken { get }
    var gridIOSRegularMargin: GridIOSRegularSemanticToken { get }
    var gridIOSRegularColumnGap: GridIOSRegularSemanticToken { get }
    var gridIOSRegularColumnCount: GridIOSRegularSemanticToken { get }
}
