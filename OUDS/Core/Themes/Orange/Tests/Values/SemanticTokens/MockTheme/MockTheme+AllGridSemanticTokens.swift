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

    override var extraCompactMinWidth: GridSemanticToken { Self.mockThemeGridRawToken }
    override var extraCompactMaxWidth: GridSemanticToken { Self.mockThemeGridRawToken }
    override var extraCompactMargin: GridSemanticToken { Self.mockThemeGridRawToken }
    override var extraCompactColumnGap: GridSemanticToken { Self.mockThemeGridRawToken }

    override var compactMinWidth: GridSemanticToken { Self.mockThemeGridRawToken }
    override var compactMaxWidth: GridSemanticToken { Self.mockThemeGridRawToken }
    override var compactMargin: GridSemanticToken { Self.mockThemeGridRawToken }
    override var compactColumnGap: GridSemanticToken { Self.mockThemeGridRawToken }

    override var regularMinWidth: GridSemanticToken { Self.mockThemeGridRawToken }
    override var regularMaxWidth: GridSemanticToken { Self.mockThemeGridRawToken }
    override var regularMargin: GridSemanticToken { Self.mockThemeGridRawToken }
    override var regularColumnGap: GridSemanticToken { Self.mockThemeGridRawToken }
}

// swiftlint:enable required_deinit
