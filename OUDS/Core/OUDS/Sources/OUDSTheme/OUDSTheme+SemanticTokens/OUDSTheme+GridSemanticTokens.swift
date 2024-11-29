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
// [File to generate by the tokenator]
// WARNING: Not synchronized anymore with the Figjam / Figma by developers team
// Create an issue for update https://github.com/Orange-OpenSource/ouds-ios/issues/new?template=token_update.yml

/// Defines basic values common to all themes for `GridSemanticTokens`.
/// These values can be overriden inside `OUDSTheme` subclasses (in extensions or not, in the same module or not) thanks to the `@objc open` combination.
extension OUDSTheme: GridSemanticTokens {

    // MARK: Semantic token - Grid - iOS Extra compact

    @objc open var gridExtraCompactMinWidth: GridSemanticToken { GridRawTokens.gridMinWidthExtraCompact }
    @objc open var gridExtraCompactMaxWidth: GridSemanticToken { GridRawTokens.gridMaxWidthExtraCompact }
    @objc open var gridExtraCompactMargin: GridSemanticToken { GridRawTokens.gridMargin100 }
    @objc open var gridExtraCompactColumnGap: GridSemanticToken { GridRawTokens.gridColumnGap100 }
    @objc open var gridExtraCompactColumnCount: GridSemanticToken { GridRawTokens.gridColumnCount400 }

    // MARK: Semantic token - Grid - iOS Compact

    @objc open var gridCompactMinWidth: GridSemanticToken { GridRawTokens.gridMinWidthCompact }
    @objc open var gridCompactMaxWidth: GridSemanticToken { GridRawTokens.gridMaxWidthCompact }
    @objc open var gridCompactMargin: GridSemanticToken { GridRawTokens.gridMargin300 }
    @objc open var gridCompactColumnGap: GridSemanticToken { GridRawTokens.gridColumnGap200 }
    @objc open var gridCompactColumnCount: GridSemanticToken { GridRawTokens.gridColumnCount400 }

    // MARK: Semantic token - Grid - iOS Regular

    @objc open var gridRegularMinWidth: GridSemanticToken { GridRawTokens.gridMinWidthRegular }
    @objc open var gridRegularMaxWidth: GridSemanticToken { GridRawTokens.gridMaxWidthRegular }
    @objc open var gridRegularMargin: GridSemanticToken { GridRawTokens.gridMargin500 }
    @objc open var gridRegularColumnGap: GridSemanticToken { GridRawTokens.gridColumnGap400 }
    @objc open var gridRegularColumnCount: GridSemanticToken { GridRawTokens.gridColumnCount600 }
}
