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
import OUDSThemesOrange
import OUDSTokensRaw
import OUDSTokensSemantic

// swiftlint:disable required_deinit

/// Overrides **all** the border semantic tokens (from its super class, i.e. `OrangeThemeBorderSemanticTokensProvider`) so as to test overriding of them (unit tests)
/// and to act like smoke tests with crashing tests if some tokens disappeared.
final class MockThemeBorderSemanticTokensProvider: OrangeThemeBorderSemanticTokensProvider {

    static let mockThemeBorderWidthRawToken: BorderWidthRawToken = 1_337
    static let mockThemeBorderRadiusRawToken: BorderRadiusRawToken = 42
    static let mockThemeBorderStyleRawToken: BorderStyleRawToken = "(╯°□°）╯︵ ┻━┻"

    // MARK: Semantic token - Border - Width

    override var borderWidthNone: BorderWidthSemanticToken { Self.mockThemeBorderWidthRawToken }
    override var borderWidthDefault: BorderWidthSemanticToken { Self.mockThemeBorderWidthRawToken }
    override var borderWidthThin: BorderWidthSemanticToken { Self.mockThemeBorderWidthRawToken }
    override var borderWidthMedium: BorderWidthSemanticToken { Self.mockThemeBorderWidthRawToken }
    override var borderWidthThick: BorderWidthSemanticToken { Self.mockThemeBorderWidthRawToken }
    override var borderWidthThicker: BorderWidthSemanticToken { Self.mockThemeBorderWidthRawToken }
    override var borderWidthFocus: BorderWidthSemanticToken { Self.mockThemeBorderWidthRawToken }
    override var borderWidthFocusInset: BorderWidthSemanticToken { Self.mockThemeBorderWidthRawToken }

    // MARK: Semantic token - Border - Radius

    override var borderRadiusNone: BorderRadiusSemanticToken { Self.mockThemeBorderRadiusRawToken }
    override var borderRadiusDefault: BorderRadiusSemanticToken { Self.mockThemeBorderRadiusRawToken }
    override var borderRadiusSmall: BorderRadiusSemanticToken { Self.mockThemeBorderRadiusRawToken }
    override var borderRadiusMedium: BorderRadiusSemanticToken { Self.mockThemeBorderRadiusRawToken }
    override var borderRadiusLarge: BorderRadiusSemanticToken { Self.mockThemeBorderRadiusRawToken }
    override var borderRadiusPill: BorderRadiusSemanticToken { Self.mockThemeBorderRadiusRawToken }

    // MARK: Semantic token - Border - Style

    override var borderStyleDefault: BorderStyleSemanticToken { Self.mockThemeBorderStyleRawToken }
    override var borderStyleDrag: BorderStyleSemanticToken { Self.mockThemeBorderStyleRawToken }
}

// swiftlint:enable required_deinit
