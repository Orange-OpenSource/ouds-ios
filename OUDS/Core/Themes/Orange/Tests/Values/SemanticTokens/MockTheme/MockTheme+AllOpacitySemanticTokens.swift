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

/// Overrides **all** the opacity semantic tokens (from its super class, i.e. ``OrangeThemeOpacitySemanticTokensProvider``) so as to test overriding of them (unit tests)
/// and to act like smoke tests with crashing tests if some tokens disappeared.
final class MockThemeOpacitySemanticTokensProvider: OrangeThemeOpacitySemanticTokensProvider {

    static let mockThemeOpacityRawToken: OpacityRawToken = 713

    override public var opacityInvisible: OpacitySemanticToken { Self.mockThemeOpacityRawToken }
    override public var opacityWeaker: OpacitySemanticToken { Self.mockThemeOpacityRawToken }
    override public var opacityWeak: OpacitySemanticToken { Self.mockThemeOpacityRawToken }
    override public var opacityMedium: OpacitySemanticToken { Self.mockThemeOpacityRawToken }
    override public var opacityStrong: OpacitySemanticToken { Self.mockThemeOpacityRawToken }
    override public var opacityOpaque: OpacitySemanticToken { Self.mockThemeOpacityRawToken }
}

// swiftlint:enable required_deinit
