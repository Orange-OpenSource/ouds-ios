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

    @objc open var gridIOSExtraCompactMinWidth: GridIOSExtraCompactSemanticToken { get { GridPrimitiveTokens.gridMinWidthIOSExtraCompact } set { } }
    @objc open var gridIOSExtraCompactMaxWidth: GridIOSExtraCompactSemanticToken { get { GridPrimitiveTokens.gridMaxWidthIOSExtraCompact } set { } }
    @objc open var gridIOSExtraCompactMargin: GridIOSExtraCompactSemanticToken { get { GridPrimitiveTokens.gridMargin100 } set { } }
    @objc open var gridIOSExtraCompactColumnGap: GridIOSExtraCompactSemanticToken { get { GridPrimitiveTokens.gridColumnGap100 } set { } }
    @objc open var gridIOSExtraCompactColumnCount: GridIOSExtraCompactSemanticToken { get { GridPrimitiveTokens.gridColumnCount100 } set { } }

    // MARK: Semantic token - Grid - iOS Compact

    @objc open var gridIOSCompactMinWidth: GridIOSCompactSemanticToken { get { GridPrimitiveTokens.gridMinWidthIOSCompact } set { } }
    @objc open var gridIOSCompactMaxWidth: GridIOSCompactSemanticToken { get { GridPrimitiveTokens.gridMaxWidthIOSCompact } set { } }
    @objc open var gridIOSCompactMargin: GridIOSCompactSemanticToken { get { GridPrimitiveTokens.gridMargin300 } set { } }
    @objc open var gridIOSCompactColumnGap: GridIOSCompactSemanticToken { get { GridPrimitiveTokens.gridColumnGap100 } set { } }
    @objc open var gridIOSCompactColumnCount: GridIOSCompactSemanticToken { get { GridPrimitiveTokens.gridColumnCount400 } set { } }

    // MARK: Semantic token - Grid - iOS Regular

    @objc open var gridIOSRegularMinWidth: GridIOSRegularSemanticToken { get { GridPrimitiveTokens.gridMinWidthIOSRegular } set { } }
    @objc open var gridIOSRegularMaxWidth: GridIOSRegularSemanticToken { get { GridPrimitiveTokens.gridMaxWidthIOSRegular } set { } }
    @objc open var gridIOSRegularMargin: GridIOSRegularSemanticToken { get { GridPrimitiveTokens.gridMargin500 } set { } }
    @objc open var gridIOSRegularColumnGap: GridIOSRegularSemanticToken { get { GridPrimitiveTokens.gridColumnGap300 } set { } }
    @objc open var gridIOSRegularColumnCount: GridIOSRegularSemanticToken { get { GridPrimitiveTokens.gridColumnCount600 } set { } }

}
