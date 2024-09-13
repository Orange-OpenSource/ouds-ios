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
public typealias GridExtraCompactSemanticToken = GridRawToken

/// Basically a grid semantic token for iOS Compact values is a grid raw token
public typealias GridCompactSemanticToken = GridRawToken

/// Basically a grid semantic token for iOS Regulard values is a grid raw token
public typealias GridRegularSemanticToken = GridRawToken

// MARK: - Semantic tokens

/// This is a group of semantic tokens for **grids**.
/// It defines all `GridSemanticToken` a theme must have.
public protocol GridSemanticTokens {

    // MARK: Semantic token - Grid - iOS Extra compact

    var gridExtraCompactWidth: GridExtraCompactSemanticToken { get }
    var gridExtraCompactMinWidth: GridExtraCompactSemanticToken { get }
    var gridExtraCompactMaxWidth: GridExtraCompactSemanticToken { get }
    var gridExtraCompactMargin: GridExtraCompactSemanticToken { get }
    var gridExtraCompactColumnGap: GridExtraCompactSemanticToken { get }
    var gridExtraCompactColumnCount: GridExtraCompactSemanticToken { get }

    // MARK: Semantic token - Grid - iOS Compact

    var gridCompactWidth: GridCompactSemanticToken { get }
    var gridCompactMinWidth: GridCompactSemanticToken { get }
    var gridCompactMaxWidth: GridCompactSemanticToken { get }
    var gridCompactMargin: GridCompactSemanticToken { get }
    var gridCompactColumnGap: GridCompactSemanticToken { get }
    var gridCompactColumnCount: GridCompactSemanticToken { get }

    // MARK: Semantic token - Grid - iOS Regular

    var gridRegularWidth: GridRegularSemanticToken { get }
    var gridRegularMinWidth: GridRegularSemanticToken { get }
    var gridRegularMaxWidth: GridRegularSemanticToken { get }
    var gridRegularMargin: GridRegularSemanticToken { get }
    var gridRegularColumnGap: GridRegularSemanticToken { get }
    var gridRegularColumnCount: GridRegularSemanticToken { get }
}
