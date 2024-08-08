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

/// Defines basic values common to all themes for `DimensionSemanticTokens`.
/// These values can be overriden inside `OUDSTheme` subclasses (in extensions or not, in the same module or not) thanks to the `@objc open` combination.
extension OUDSTheme: GridSemanticTokens {

    // MARK: Semantic token - Grid - iOS Extra compact

    @objc open var gridIOSExtraCompactDesignWidth: GridIOSExtraCompactSemanticToken { GridRawTokens.gridDesignWidth100 }
    @objc open var gridIOSExtraCompactMinWidth: GridIOSExtraCompactSemanticToken { GridRawTokens.gridMinWidthIOSExtraCompact }
    @objc open var gridIOSExtraCompactMaxWidth: GridIOSExtraCompactSemanticToken { GridRawTokens.gridMaxWidthIOSExtraCompact }
    @objc open var gridIOSExtraCompactMargin: GridIOSExtraCompactSemanticToken { GridRawTokens.gridMargin100 }
    @objc open var gridIOSExtraCompactColumnGap: GridIOSExtraCompactSemanticToken { GridRawTokens.gridColumnGap100 }
    @objc open var gridIOSExtraCompactColumnCount: GridIOSExtraCompactSemanticToken { GridRawTokens.gridColumnCount100 }

    // MARK: Semantic token - Grid - iOS Compact

    @objc open var gridIOSCompactDesignWidth: GridIOSExtraCompactSemanticToken { GridRawTokens.gridDesignWidth200 }
    @objc open var gridIOSCompactMinWidth: GridIOSCompactSemanticToken { GridRawTokens.gridMinWidthIOSCompact }
    @objc open var gridIOSCompactMaxWidth: GridIOSCompactSemanticToken { GridRawTokens.gridMaxWidthIOSCompact }
    @objc open var gridIOSCompactMargin: GridIOSCompactSemanticToken { GridRawTokens.gridMargin300 }
    @objc open var gridIOSCompactColumnGap: GridIOSCompactSemanticToken { GridRawTokens.gridColumnGap100 }
    @objc open var gridIOSCompactColumnCount: GridIOSCompactSemanticToken { GridRawTokens.gridColumnCount400 }

    // MARK: Semantic token - Grid - iOS Regular

    @objc open var gridIOSRegularDesignWidth: GridIOSExtraCompactSemanticToken { GridRawTokens.gridDesignWidth400 }
    @objc open var gridIOSRegularMinWidth: GridIOSRegularSemanticToken { GridRawTokens.gridMinWidthIOSRegular }
    @objc open var gridIOSRegularMaxWidth: GridIOSRegularSemanticToken { GridRawTokens.gridMaxWidthIOSRegular }
    @objc open var gridIOSRegularMargin: GridIOSRegularSemanticToken { GridRawTokens.gridMargin500 }
    @objc open var gridIOSRegularColumnGap: GridIOSRegularSemanticToken { GridRawTokens.gridColumnGap300 }
    @objc open var gridIOSRegularColumnCount: GridIOSRegularSemanticToken { GridRawTokens.gridColumnCount600 }
}
