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
import OUDSTokensSemantic

// swiftlint:disable required_deinit

/// Overrides **all** the effect semantic tokens (from its super class, i.e. ``OrangeThemeEffectSemanticTokensProvider`` so as to test overriding of them (unit tests)
/// and to act like smoke tests with crashing tests if some tokens disappeared.
/// This ``MockThemeEffectSemanticTokensProvider`` will be asigned in ``MockTheme`` as an ``AllEffectSemanticTokensProvider`` implementation.
final class MockThemeEffectSemanticTokensProvider: OrangeThemeEffectSemanticTokensProvider {

    static let mockThemeEffectSemanticToken: EffectSemanticToken = 666_666

    override var blurDrag: EffectSemanticToken { Self.mockThemeEffectSemanticToken }
}

// swiftlint:enable required_deinit
