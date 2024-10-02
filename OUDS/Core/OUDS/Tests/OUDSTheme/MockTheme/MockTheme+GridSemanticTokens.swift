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

    static let mockThemeGridRawToken: GridRawToken = 3630

    override var gridExtraCompactMinWidth: GridExtraCompactSemanticToken { Self.mockThemeGridRawToken }
    override var gridExtraCompactMaxWidth: GridExtraCompactSemanticToken { Self.mockThemeGridRawToken }
    override var gridExtraCompactMargin: GridExtraCompactSemanticToken { Self.mockThemeGridRawToken }
    override var gridExtraCompactColumnGap: GridExtraCompactSemanticToken { Self.mockThemeGridRawToken }
    override var gridExtraCompactColumnCount: GridExtraCompactSemanticToken { Self.mockThemeGridRawToken }

    override var gridCompactMinWidth: GridCompactSemanticToken { Self.mockThemeGridRawToken }
    override var gridCompactMaxWidth: GridCompactSemanticToken { Self.mockThemeGridRawToken }
    override var gridCompactMargin: GridCompactSemanticToken { Self.mockThemeGridRawToken }
    override var gridCompactColumnGap: GridCompactSemanticToken { Self.mockThemeGridRawToken }
    override var gridCompactColumnCount: GridCompactSemanticToken { Self.mockThemeGridRawToken }

    override var gridRegularMinWidth: GridRegularSemanticToken { Self.mockThemeGridRawToken }
    override var gridRegularMaxWidth: GridRegularSemanticToken { Self.mockThemeGridRawToken }
    override var gridRegularMargin: GridRegularSemanticToken { Self.mockThemeGridRawToken }
    override var gridRegularColumnGap: GridRegularSemanticToken { Self.mockThemeGridRawToken }
    override var gridRegularColumnCount: GridRegularSemanticToken { Self.mockThemeGridRawToken }
}
