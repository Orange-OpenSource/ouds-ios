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
import OUDSTokensSemantic

extension OUDSTheme: GridSemanticTokens {
    
    // MARK: Semantic token - Grid - iOS Extra compact

    public var gridIOSExtraCompactMinWidth: GridIOSExtraCompactSemanticToken { get { GridPrimitiveTokens.gridMinWidthIOSExtraCompact } set { } }
    public var gridIOSExtraCompactMaxWidth: GridIOSExtraCompactSemanticToken { get { GridPrimitiveTokens.gridMaxWidthIOSExtraCompact } set { } }
    public var gridIOSExtraCompactMargin: GridIOSExtraCompactSemanticToken { get { GridPrimitiveTokens.gridMargin100 } set { } }
    public var gridIOSExtraCompactColumnGap: GridIOSExtraCompactSemanticToken { get { GridPrimitiveTokens.gridColumnGap100 } set { } }
    public var gridIOSExtraCompactColumnCount: GridIOSExtraCompactSemanticToken { get { GridPrimitiveTokens.gridColumnCount100 } set { } }

    // MARK: Semantic token - Grid - iOS Compact

    public var gridIOSCompactMinWidth: GridIOSCompactSemanticToken { get { GridPrimitiveTokens.gridMinWidthIOSCompact } set { } }
    public var gridIOSCompactMaxWidth: GridIOSCompactSemanticToken { get { GridPrimitiveTokens.gridMaxWidthIOSCompact } set { } }
    public var gridIOSCompactMargin: GridIOSCompactSemanticToken { get { GridPrimitiveTokens.gridMargin300 } set { } }
    public var gridIOSCompactColumnGap: GridIOSCompactSemanticToken { get { GridPrimitiveTokens.gridColumnGap100 } set { } }
    public var gridIOSCompactColumnCount: GridIOSCompactSemanticToken { get { GridPrimitiveTokens.gridColumnCount400 } set { } }

    // MARK: Semantic token - Grid - iOS Regular

    public var gridIOSRegularMinWidth: GridIOSRegularSemanticToken { get { GridPrimitiveTokens.gridMinWidthIOSRegular } set { } }
    public var gridIOSRegularMaxWidth: GridIOSRegularSemanticToken { get { GridPrimitiveTokens.gridMaxWidthIOSRegular } set { } }
    public var gridIOSRegularMargin: GridIOSRegularSemanticToken { get { GridPrimitiveTokens.gridMargin500 } set { } }
    public var gridIOSRegularColumnGap: GridIOSRegularSemanticToken { get { GridPrimitiveTokens.gridColumnGap300 } set { } }
    public var gridIOSRegularColumnCount: GridIOSRegularSemanticToken { get { GridPrimitiveTokens.gridColumnCount600 } set { } }

}
