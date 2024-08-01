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

public typealias GridIOSExtraCompactSemanticToken = GridPrimitiveToken
public typealias GridIOSCompactSemanticToken = GridPrimitiveToken
public typealias GridIOSRegularSemanticToken = GridPrimitiveToken

// MARK: - Semantic tokens

public protocol GridSemanticTokens {
    
    // MARK: Semantic token - Grid - iOS Extra compact

    var gridIOSExtraCompactMinWidth: GridIOSExtraCompactSemanticToken { get set }
    var gridIOSExtraCompactMaxWidth: GridIOSExtraCompactSemanticToken { get set }
    var gridIOSExtraCompactMargin: GridIOSExtraCompactSemanticToken { get set }
    var gridIOSExtraCompactColumnGap: GridIOSExtraCompactSemanticToken { get set }
    var gridIOSExtraCompactColumnCount: GridIOSExtraCompactSemanticToken { get set }

    // MARK: Semantic token - Grid - iOS Compact

    var gridIOSCompactMinWidth: GridIOSCompactSemanticToken { get set }
    var gridIOSCompactMaxWidth: GridIOSCompactSemanticToken { get set }
    var gridIOSCompactMargin: GridIOSCompactSemanticToken { get set }
    var gridIOSCompactColumnGap: GridIOSCompactSemanticToken { get set }
    var gridIOSCompactColumnCount: GridIOSCompactSemanticToken { get set }

    // MARK: Semantic token - Grid - iOS Regular

    var gridIOSRegularMinWidth: GridIOSRegularSemanticToken { get set }
    var gridIOSRegularMaxWidth: GridIOSRegularSemanticToken { get set }
    var gridIOSRegularMargin: GridIOSRegularSemanticToken { get set }
    var gridIOSRegularColumnGap: GridIOSRegularSemanticToken { get set }
    var gridIOSRegularColumnCount: GridIOSRegularSemanticToken { get set }
    
}
