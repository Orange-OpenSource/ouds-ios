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
import OUDSTokensPrimitive

// MARK: - Type aliases to keep grammar clear

typealias GridIOSExtraCompactSemanticToken = GridPrimitiveToken
typealias GridIOSCompactSemanticToken = GridPrimitiveToken
typealias GridIOSRegularSemanticToken = GridPrimitiveToken

// MARK: - Semantic tokens

protocol GridSemanticTokens { }

extension GridSemanticTokens {
    
    // MARK: Semantic token - Grid - iOS Extra compact

    var gridIOSExtraCompactMinWidth: GridIOSExtraCompactSemanticTokens = GridPrimitiveTokens.gridMinWidthIOSExtraCompact
    var gridIOSExtraCompactMaxWidth: GridIOSExtraCompactSemanticTokens = GridPrimitiveTokens.gridMaxWidthIOSExtraCompact
    var gridIOSExtraCompactMargin: GridIOSExtraCompactSemanticTokens = GridPrimitiveTokens.gridMargin100
    var gridIOSExtraCompactColumnGap: GridIOSExtraCompactSemanticTokens = GridPrimitiveTokens.gridColumnGap100
    var gridIOSExtraCompactColumnCount: GridIOSExtraCompactSemanticTokens = GridPrimitiveTokens.gridColumnCount100

    // MARK: Semantic token - Grid - iOS Compact

    var gridIOSCompactMinWidth: GridIOSCompactSemanticToken = GridPrimitiveTokens.gridMinWidthIOSCompact
    var gridIOSCompactMaxWidth: GridIOSCompactSemanticToken = GridPrimitiveTokens.gridMaxWidthIOSCompact
    var gridIOSCompactMargin: GridIOSCompactSemanticToken = GridPrimitiveTokens.gridMargin300
    var gridIOSCompactColumnGap: GridIOSCompactSemanticToken = GridPrimitiveTokens.gridColumnGap100
    var gridIOSCompactColumnCount: GridIOSCompactSemanticToken = GridPrimitiveTokens.gridColumnCount400

    // MARK: Semantic token - Grid - iOS Regular

    var gridIOSRegularMinWidth: GridIOSRegularSemanticToken = GridPrimitiveTokens.gridMinWidthIOSRegular
    var gridIOSRegularMaxWidth: GridIOSRegularSemanticToken = GridPrimitiveTokens.gridMaxWidthIOSRegular
    var gridIOSRegularMargin: GridIOSRegularSemanticToken = GridPrimitiveTokens.gridMargin500
    var gridIOSRegularColumnGap: GridIOSRegularSemanticToken = GridPrimitiveTokens.gridColumnGap300
    var gridIOSRegularColumnCount: GridIOSRegularSemanticToken = GridPrimitiveTokens.gridColumnCount600
    
}
