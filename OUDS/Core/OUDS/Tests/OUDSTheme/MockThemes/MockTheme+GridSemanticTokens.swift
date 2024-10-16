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

extension MockTheme {

    static let mockThemeGridRawToken: GridRawToken = 3_630

    override open var gridExtraCompactMinWidth: GridExtraCompactSemanticToken { Self.mockThemeGridRawToken }
    override open var gridExtraCompactMaxWidth: GridExtraCompactSemanticToken { Self.mockThemeGridRawToken }
    override open var gridExtraCompactMargin: GridExtraCompactSemanticToken { Self.mockThemeGridRawToken }
    override open var gridExtraCompactColumnGap: GridExtraCompactSemanticToken { Self.mockThemeGridRawToken }
    override open var gridExtraCompactColumnCount: GridExtraCompactSemanticToken { Self.mockThemeGridRawToken }

    override open var gridCompactMinWidth: GridCompactSemanticToken { Self.mockThemeGridRawToken }
    override open var gridCompactMaxWidth: GridCompactSemanticToken { Self.mockThemeGridRawToken }
    override open var gridCompactMargin: GridCompactSemanticToken { Self.mockThemeGridRawToken }
    override open var gridCompactColumnGap: GridCompactSemanticToken { Self.mockThemeGridRawToken }
    override open var gridCompactColumnCount: GridCompactSemanticToken { Self.mockThemeGridRawToken }

    override open var gridRegularMinWidth: GridRegularSemanticToken { Self.mockThemeGridRawToken }
    override open var gridRegularMaxWidth: GridRegularSemanticToken { Self.mockThemeGridRawToken }
    override open var gridRegularMargin: GridRegularSemanticToken { Self.mockThemeGridRawToken }
    override open var gridRegularColumnGap: GridRegularSemanticToken { Self.mockThemeGridRawToken }
    override open var gridRegularColumnCount: GridRegularSemanticToken { Self.mockThemeGridRawToken }
}
