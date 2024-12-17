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

// swiftlint:disable required_deinit

/// Overrides **all** the border semantic tokens (from its super class, i.e. `OUDSBorderSemanticTokensProvider`) so as to test overriding of them (unit tests)
/// and to act like smoke tests with crashing tests if some tokens disappeared.
final class MockThemeBorderSemanticTokensProvider: OUDSBorderSemanticTokensProvider {

    static let mockThemeBorderWidthRawToken: BorderWidthRawToken = 1_337
    static let mockThemeBorderRadiusRawToken: BorderRadiusRawToken = 42
    static let mockThemeBorderStyleRawToken: BorderStyleRawToken = "(╯°□°）╯︵ ┻━┻"

    // MARK: Semantic token - Border - Width

    override public var borderWidthNone: BorderWidthSemanticToken { Self.mockThemeBorderWidthRawToken }
    override public var borderWidthDefault: BorderWidthSemanticToken { Self.mockThemeBorderWidthRawToken }
    override public var borderWidthThin: BorderWidthSemanticToken { Self.mockThemeBorderWidthRawToken }
    override public var borderWidthMedium: BorderWidthSemanticToken { Self.mockThemeBorderWidthRawToken }
    override public var borderWidthThick: BorderWidthSemanticToken { Self.mockThemeBorderWidthRawToken }
    override public var borderWidthThicker: BorderWidthSemanticToken { Self.mockThemeBorderWidthRawToken }
    override public var borderWidthFocus: BorderWidthSemanticToken { Self.mockThemeBorderWidthRawToken }
    override public var borderWidthFocusInset: BorderWidthSemanticToken { Self.mockThemeBorderWidthRawToken }

    // MARK: Semantic token - Border - Radius

    override public var borderRadiusNone: BorderRadiusSemanticToken { Self.mockThemeBorderRadiusRawToken }
    override public var borderRadiusDefault: BorderRadiusSemanticToken { Self.mockThemeBorderRadiusRawToken }
    override public var borderRadiusShort: BorderRadiusSemanticToken { Self.mockThemeBorderRadiusRawToken }
    override public var borderRadiusMedium: BorderRadiusSemanticToken { Self.mockThemeBorderRadiusRawToken }
    override public var borderRadiusTall: BorderRadiusSemanticToken { Self.mockThemeBorderRadiusRawToken }

    // MARK: Semantic token - Border - Style

    override public var borderStyleDefault: BorderStyleSemanticToken { Self.mockThemeBorderStyleRawToken }
    override public var borderStyleDrag: BorderStyleSemanticToken { Self.mockThemeBorderStyleRawToken }
}

// swiftlint:enable required_deinit
