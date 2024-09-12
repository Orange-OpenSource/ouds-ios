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

    override var gridIOSExtraCompactDesignWidth: GridIOSExtraCompactSemanticToken { Self.mockThemeGridRawToken }
    override var gridIOSExtraCompactMinWidth: GridIOSExtraCompactSemanticToken { Self.mockThemeGridRawToken }
    override var gridIOSExtraCompactMaxWidth: GridIOSExtraCompactSemanticToken { Self.mockThemeGridRawToken }
    override var gridIOSExtraCompactMargin: GridIOSExtraCompactSemanticToken { Self.mockThemeGridRawToken }
    override var gridIOSExtraCompactColumnGap: GridIOSExtraCompactSemanticToken { Self.mockThemeGridRawToken }
    override var gridIOSExtraCompactColumnCount: GridIOSExtraCompactSemanticToken { Self.mockThemeGridRawToken }

    override var gridIOSCompactDesignWidth: GridIOSExtraCompactSemanticToken { Self.mockThemeGridRawToken }
    override var gridIOSCompactMinWidth: GridIOSCompactSemanticToken { Self.mockThemeGridRawToken }
    override var gridIOSCompactMaxWidth: GridIOSCompactSemanticToken { Self.mockThemeGridRawToken }
    override var gridIOSCompactMargin: GridIOSCompactSemanticToken { Self.mockThemeGridRawToken }
    override var gridIOSCompactColumnGap: GridIOSCompactSemanticToken { Self.mockThemeGridRawToken }
    override var gridIOSCompactColumnCount: GridIOSCompactSemanticToken { Self.mockThemeGridRawToken }

    override var gridIOSRegularDesignWidth: GridIOSExtraCompactSemanticToken { Self.mockThemeGridRawToken }
    override var gridIOSRegularMinWidth: GridIOSRegularSemanticToken { Self.mockThemeGridRawToken }
    override var gridIOSRegularMaxWidth: GridIOSRegularSemanticToken { Self.mockThemeGridRawToken }
    override var gridIOSRegularMargin: GridIOSRegularSemanticToken { Self.mockThemeGridRawToken }
    override var gridIOSRegularColumnGap: GridIOSRegularSemanticToken { Self.mockThemeGridRawToken }
    override var gridIOSRegularColumnCount: GridIOSRegularSemanticToken { Self.mockThemeGridRawToken }
}
