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

import OUDSThemesContract
import OUDSThemesOrange
import Testing

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In fact, the `OUDSTheme` object is a class, which can be seen as an _asbtract class_, exposing through its extensions and protocols _elevation semantic tokens_.
/// These semantic tokens should be overridable by subclasses like the ``OrangeThemeEffectSemanticTokensProvider``.
///
/// **These tests checks if any _effect semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
struct ThemeOverrideOfEffectSemanticTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationXNone() throws {
        #expect(inheritedTheme.effects.blurDrag != abstractTheme.effects.blurDrag)
        #expect(inheritedTheme.effects.blurDrag == MockThemeEffectSemanticTokensProvider.mockThemeEffectSemanticToken)
    }
}
