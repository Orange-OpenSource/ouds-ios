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
import OUDSTokensSemantic

extension OrangeThemeGridSemanticTokensProvider: GridSemanticTokens {
    @objc open var gridExtraCompactMinWidth: GridSemanticToken { GridRawTokens.gridMinWidthExtraCompact }
    @objc open var gridExtraCompactMaxWidth: GridSemanticToken { GridRawTokens.gridMaxWidthExtraCompact }
    @objc open var gridExtraCompactMargin: GridSemanticToken { GridRawTokens.gridMargin100 }
    @objc open var gridExtraCompactColumnGap: GridSemanticToken { GridRawTokens.gridColumnGap100 }
    @objc open var gridCompactMinWidth: GridSemanticToken { GridRawTokens.gridMinWidthCompact }
    @objc open var gridCompactMaxWidth: GridSemanticToken { GridRawTokens.gridMaxWidthCompact }
    @objc open var gridCompactColumnGap: GridSemanticToken { GridRawTokens.gridColumnGap100 }
    @objc open var gridCompactMargin: GridSemanticToken { GridRawTokens.gridMargin300 }
    @objc open var gridRegularMinWidth: GridSemanticToken { GridRawTokens.gridMinWidthRegular }
    @objc open var gridRegularMaxWidth: GridSemanticToken { GridRawTokens.gridMaxWidthRegular }
    @objc open var gridRegularColumnGap: GridSemanticToken { GridRawTokens.gridColumnGap400 }
    @objc open var gridRegularMargin: GridSemanticToken { GridRawTokens.gridMargin500 }
}
