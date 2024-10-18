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

// ଘ( ･ω･)_/ﾟ･:*:･｡☆
// [File to generate with the tokenator]

/// Defines basic values common to all themes for `DimensionSemanticTokens`.
/// These values can be overriden inside `OUDSTheme` subclasses (in extensions or not, in the same module or not) thanks to the `@objc open` combination.
extension OUDSTheme: GridSemanticTokens {

    // MARK: Semantic token - Grid - iOS Extra compact

    @objc open var gridExtraCompactMinWidth: GridExtraCompactSemanticToken { GridRawTokens.gridMinWidthExtraCompact }
    @objc open var gridExtraCompactMaxWidth: GridExtraCompactSemanticToken { GridRawTokens.gridMaxWidthExtraCompact }
    @objc open var gridExtraCompactMargin: GridExtraCompactSemanticToken { GridRawTokens.gridMargin100 }
    @objc open var gridExtraCompactColumnGap: GridExtraCompactSemanticToken { GridRawTokens.gridColumnGap100 }
    @objc open var gridExtraCompactColumnCount: GridExtraCompactSemanticToken { GridRawTokens.gridColumnCount400 }

    // MARK: Semantic token - Grid - iOS Compact

    @objc open var gridCompactMinWidth: GridCompactSemanticToken { GridRawTokens.gridMinWidthCompact }
    @objc open var gridCompactMaxWidth: GridCompactSemanticToken { GridRawTokens.gridMaxWidthCompact }
    @objc open var gridCompactMargin: GridCompactSemanticToken { GridRawTokens.gridMargin300 }
    @objc open var gridCompactColumnGap: GridCompactSemanticToken { GridRawTokens.gridColumnGap200 }
    @objc open var gridCompactColumnCount: GridCompactSemanticToken { GridRawTokens.gridColumnCount400 }

    // MARK: Semantic token - Grid - iOS Regular

    @objc open var gridRegularMinWidth: GridRegularSemanticToken { GridRawTokens.gridMinWidthRegular }
    @objc open var gridRegularMaxWidth: GridRegularSemanticToken { GridRawTokens.gridMaxWidthRegular }
    @objc open var gridRegularMargin: GridRegularSemanticToken { GridRawTokens.gridMargin500 }
    @objc open var gridRegularColumnGap: GridRegularSemanticToken { GridRawTokens.gridColumnGap400 }
    @objc open var gridRegularColumnCount: GridRegularSemanticToken { GridRawTokens.gridColumnCount600 }
}
