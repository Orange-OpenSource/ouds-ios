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

/// Overrides **all** the grid semantic tokens (from its super class, i.e. ``OrangeThemeGridSemanticTokensProvider`` so as to test overriding of them (unit tests)
/// and to act like smoke tests with crashing tests if some tokens disappeared.
final class MockThemeGridSemanticTokensProvider: OrangeThemeGridSemanticTokensProvider {

    static let mockThemeGridRawToken: GridRawToken = 3_630

    override public var gridExtraCompactMinWidth: GridSemanticToken { Self.mockThemeGridRawToken }
    override public var gridExtraCompactMaxWidth: GridSemanticToken { Self.mockThemeGridRawToken }
    override public var gridExtraCompactMargin: GridSemanticToken { Self.mockThemeGridRawToken }
    override public var gridExtraCompactColumnGap: GridSemanticToken { Self.mockThemeGridRawToken }

    override public var gridCompactMinWidth: GridSemanticToken { Self.mockThemeGridRawToken }
    override public var gridCompactMaxWidth: GridSemanticToken { Self.mockThemeGridRawToken }
    override public var gridCompactMargin: GridSemanticToken { Self.mockThemeGridRawToken }
    override public var gridCompactColumnGap: GridSemanticToken { Self.mockThemeGridRawToken }

    override public var gridRegularMinWidth: GridSemanticToken { Self.mockThemeGridRawToken }
    override public var gridRegularMaxWidth: GridSemanticToken { Self.mockThemeGridRawToken }
    override public var gridRegularMargin: GridSemanticToken { Self.mockThemeGridRawToken }
    override public var gridRegularColumnGap: GridSemanticToken { Self.mockThemeGridRawToken }
}

// swiftlint:enable required_deinit
