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

extension OUDSTheme: GridSemanticTokens {
    @objc open var gridCompactColumnGap: GridRawToken { GridRawTokens.gridColumnGap100 }
    @objc open var gridCompactMargin: GridRawToken { GridRawTokens.gridMargin300 }
    @objc open var gridCompactMaxWidth: GridRawToken { GridRawTokens.gridMaxWidthIosCompact }
    @objc open var gridCompactMinWidth: GridRawToken { GridRawTokens.gridMinWidthIosCompact }
    @objc open var gridExtraCompactColumnGap: GridRawToken { GridRawTokens.gridColumnGap100 }
    @objc open var gridExtraCompactMargin: GridRawToken { GridRawTokens.gridMargin100 }
    @objc open var gridExtraCompactMaxWidth: GridRawToken { GridRawTokens.gridMaxWidthIosExtraCompact }
    @objc open var gridExtraCompactMinWidth: GridRawToken { GridRawTokens.gridMinWidthIosExtraCompact }
    @objc open var gridRegularColumnGap: GridRawToken { GridRawTokens.gridColumnGap400 }
    @objc open var gridRegularMargin: GridRawToken { GridRawTokens.gridMargin500 }
    @objc open var gridRegularMaxWidth: GridRawToken { GridRawTokens.gridMaxWidthIosRegular }
    @objc open var gridRegularMinWidth: GridRawToken { GridRawTokens.gridMinWidthIosRegular }
}
