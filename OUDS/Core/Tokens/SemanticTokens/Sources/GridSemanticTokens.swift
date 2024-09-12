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

/// Basically a grid semantic token for iOS Extra Compact values is a grid raw token
public typealias GridIOSExtraCompactSemanticToken = GridRawToken

/// Basically a grid semantic token for iOS Compact values is a grid raw token
public typealias GridIOSCompactSemanticToken = GridRawToken

/// Basically a grid semantic token for iOS Regulard values is a grid raw token
public typealias GridIOSRegularSemanticToken = GridRawToken

// MARK: - Semantic tokens

/// This is a group of semantic tokens for **grids**.
/// It defines all `GridSemanticToken` a theme must have.
public protocol GridSemanticTokens {

    // MARK: Semantic token - Grid - iOS Extra compact

    var gridIOSExtraCompactDesignWidth: GridIOSExtraCompactSemanticToken { get }
    var gridIOSExtraCompactMinWidth: GridIOSExtraCompactSemanticToken { get }
    var gridIOSExtraCompactMaxWidth: GridIOSExtraCompactSemanticToken { get }
    var gridIOSExtraCompactMargin: GridIOSExtraCompactSemanticToken { get }
    var gridIOSExtraCompactColumnGap: GridIOSExtraCompactSemanticToken { get }
    var gridIOSExtraCompactColumnCount: GridIOSExtraCompactSemanticToken { get }

    // MARK: Semantic token - Grid - iOS Compact

    var gridIOSCompactDesignWidth: GridIOSCompactSemanticToken { get }
    var gridIOSCompactMinWidth: GridIOSCompactSemanticToken { get }
    var gridIOSCompactMaxWidth: GridIOSCompactSemanticToken { get }
    var gridIOSCompactMargin: GridIOSCompactSemanticToken { get }
    var gridIOSCompactColumnGap: GridIOSCompactSemanticToken { get }
    var gridIOSCompactColumnCount: GridIOSCompactSemanticToken { get }

    // MARK: Semantic token - Grid - iOS Regular

    var gridIOSRegularDesignWidth: GridIOSRegularSemanticToken { get }
    var gridIOSRegularMinWidth: GridIOSRegularSemanticToken { get }
    var gridIOSRegularMaxWidth: GridIOSRegularSemanticToken { get }
    var gridIOSRegularMargin: GridIOSRegularSemanticToken { get }
    var gridIOSRegularColumnGap: GridIOSRegularSemanticToken { get }
    var gridIOSRegularColumnCount: GridIOSRegularSemanticToken { get }
}
