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

    override var widthNone: BorderWidthSemanticToken { Self.mockThemeBorderWidthRawToken }
    override var widthDefault: BorderWidthSemanticToken { Self.mockThemeBorderWidthRawToken }
    override var widthThin: BorderWidthSemanticToken { Self.mockThemeBorderWidthRawToken }
    override var widthMedium: BorderWidthSemanticToken { Self.mockThemeBorderWidthRawToken }
    override var widthThick: BorderWidthSemanticToken { Self.mockThemeBorderWidthRawToken }
    override var widthThicker: BorderWidthSemanticToken { Self.mockThemeBorderWidthRawToken }
    override var widthFocus: BorderWidthSemanticToken { Self.mockThemeBorderWidthRawToken }
    override var widthFocusInset: BorderWidthSemanticToken { Self.mockThemeBorderWidthRawToken }

    // MARK: Semantic token - Border - Radius

    override var radiusNone: BorderRadiusSemanticToken { Self.mockThemeBorderRadiusRawToken }
    override var radiusDefault: BorderRadiusSemanticToken { Self.mockThemeBorderRadiusRawToken }
    override var radiusSmall: BorderRadiusSemanticToken { Self.mockThemeBorderRadiusRawToken }
    override var radiusMedium: BorderRadiusSemanticToken { Self.mockThemeBorderRadiusRawToken }
    override var radiusLarge: BorderRadiusSemanticToken { Self.mockThemeBorderRadiusRawToken }
    override var radiusPill: BorderRadiusSemanticToken { Self.mockThemeBorderRadiusRawToken }

    // MARK: Semantic token - Border - Style

    override var styleDefault: BorderStyleSemanticToken { Self.mockThemeBorderStyleRawToken }
    override var styleDrag: BorderStyleSemanticToken { Self.mockThemeBorderStyleRawToken }
}

// swiftlint:enable required_deinit
