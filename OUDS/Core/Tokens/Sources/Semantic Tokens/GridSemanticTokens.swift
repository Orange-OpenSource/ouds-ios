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

// MARK: - Type aliases to keep grammar clear

public typealias GridIOSExtraCompactSemanticToken = GridPrimitiveToken
public typealias GridIOSCompactSemanticToken = GridPrimitiveToken
public typealias GridIOSRegularSemanticToken = GridPrimitiveToken

// MARK: - Semantic tokens

public struct GridSemanticTokens {
    
    // MARK: iOS Extra Compact
    
    static let gridIOSExtraCompactMinWidth: GridIOSExtraCompactSemanticToken = GridPrimitiveTokens.gridMinWidthIOSExtraCompact
    static let gridIOSExtraCompactMaxWidth: GridIOSExtraCompactSemanticToken = GridPrimitiveTokens.gridMaxWidthIOSExtraCompact
    static let gridIOSExtraCompactMargin: GridIOSExtraCompactSemanticToken = GridPrimitiveTokens.gridMargin100
    static let gridIOSExtraCompactColumnGap: GridIOSExtraCompactSemanticToken = GridPrimitiveTokens.gridColumnGap100
    static let gridIOSExtraCompactColumnCount: GridIOSExtraCompactSemanticToken = GridPrimitiveTokens.gridColumnCount100
    
    // MARK: iOS Compact
    
    static let gridIOSCompactMinWidth: GridIOSCompactSemanticToken = GridPrimitiveTokens.gridMinWidthIOSCompact
    static let gridIOSCompactMaxWidth: GridIOSCompactSemanticToken = GridPrimitiveTokens.gridMaxWidthIOSCompact
    static let gridIOSCompactMargin: GridIOSCompactSemanticToken = GridPrimitiveTokens.gridMargin300
    static let gridIOSCompactColumnGap: GridIOSCompactSemanticToken = GridPrimitiveTokens.gridColumnGap100
    static let gridIOSCompactColumnCount: GridIOSCompactSemanticToken = GridPrimitiveTokens.gridColumnCount400
    
    // MARK: iOS Regular
    
    static let gridIOSRegularMinWidth: GridIOSRegularSemanticToken = GridPrimitiveTokens.gridMinWidthIOSRegular
    static let gridIOSRegularMaxWidth: GridIOSRegularSemanticToken = GridPrimitiveTokens.gridMaxWidthIOSRegular
    static let gridIOSRegularMargin: GridIOSRegularSemanticToken = GridPrimitiveTokens.gridMargin500
    static let gridIOSRegularColumnGap: GridIOSRegularSemanticToken = GridPrimitiveTokens.gridColumnGap300
    static let gridIOSRegularColumnCount: GridIOSRegularSemanticToken = GridPrimitiveTokens.gridColumnCount600
}
