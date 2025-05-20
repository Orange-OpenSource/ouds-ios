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

import OUDS
import OUDSThemesOrange
import Testing

// swiftlint:disable type_name

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In factn the `OUDSTheme` object is a class, which can be seens as an _asbtract class_, exposing through its extensions and protocols _opacity semantic tokens_.
/// These semantic tokens should be overridable by subclasses like the ``OrangeThemeOpacitySemanticTokensProvider``.
///
/// **These tests checks if any _opacity semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
struct ThemeOverrideOfOpacitySemanticTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    @Test func inheritedThemeCanOverrideSemanticTokenOpacityInvisible() throws {
        #expect(inheritedTheme.opacities.opacityInvisible != abstractTheme.opacities.opacityInvisible)
        #expect(inheritedTheme.opacities.opacityInvisible == MockThemeOpacitySemanticTokensProvider.mockThemeOpacityRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenOpacityWeaker() throws {
        #expect(inheritedTheme.opacities.opacityWeaker != abstractTheme.opacities.opacityWeaker)
        #expect(inheritedTheme.opacities.opacityWeaker == MockThemeOpacitySemanticTokensProvider.mockThemeOpacityRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenOpacityWeak() throws {
        #expect(inheritedTheme.opacities.opacityWeak != abstractTheme.opacities.opacityWeak)
        #expect(inheritedTheme.opacities.opacityWeak == MockThemeOpacitySemanticTokensProvider.mockThemeOpacityRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenOpacityMedium() throws {
        #expect(inheritedTheme.opacities.opacityMedium != abstractTheme.opacities.opacityMedium)
        #expect(inheritedTheme.opacities.opacityMedium == MockThemeOpacitySemanticTokensProvider.mockThemeOpacityRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenOpacityEmphasized() throws {
        #expect(inheritedTheme.opacities.opacityStrong != abstractTheme.opacities.opacityStrong)
        #expect(inheritedTheme.opacities.opacityStrong == MockThemeOpacitySemanticTokensProvider.mockThemeOpacityRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenOpacityOpaque() throws {
        #expect(inheritedTheme.opacities.opacityOpaque != abstractTheme.opacities.opacityOpaque)
        #expect(inheritedTheme.opacities.opacityOpaque == MockThemeOpacitySemanticTokensProvider.mockThemeOpacityRawToken)
    }
}

// swiftlint:enable type_name
