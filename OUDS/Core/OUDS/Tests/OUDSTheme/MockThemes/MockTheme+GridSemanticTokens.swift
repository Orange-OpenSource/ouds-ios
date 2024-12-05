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

/// Overrides **all** the grid semantic tokens (from its super class, i.e. `OUDSTheme` so as to test overriding of them (unit tests)
/// and to act like smoke tests with crashing tests if some tokens disappeared.
extension MockTheme {

    static let mockThemeGridRawToken: GridRawToken = 3_630

    override open var gridExtraCompactMinWidth: GridSemanticToken { Self.mockThemeGridRawToken }
    override open var gridExtraCompactMaxWidth: GridSemanticToken { Self.mockThemeGridRawToken }
    override open var gridExtraCompactMargin: GridSemanticToken { Self.mockThemeGridRawToken }
    override open var gridExtraCompactColumnGap: GridSemanticToken { Self.mockThemeGridRawToken }

    override open var gridCompactMinWidth: GridSemanticToken { Self.mockThemeGridRawToken }
    override open var gridCompactMaxWidth: GridSemanticToken { Self.mockThemeGridRawToken }
    override open var gridCompactMargin: GridSemanticToken { Self.mockThemeGridRawToken }
    override open var gridCompactColumnGap: GridSemanticToken { Self.mockThemeGridRawToken }

    override open var gridRegularMinWidth: GridSemanticToken { Self.mockThemeGridRawToken }
    override open var gridRegularMaxWidth: GridSemanticToken { Self.mockThemeGridRawToken }
    override open var gridRegularMargin: GridSemanticToken { Self.mockThemeGridRawToken }
    override open var gridRegularColumnGap: GridSemanticToken { Self.mockThemeGridRawToken }
}
