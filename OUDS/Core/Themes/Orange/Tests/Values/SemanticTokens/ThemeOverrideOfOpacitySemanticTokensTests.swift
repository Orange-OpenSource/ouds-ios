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
        #expect(inheritedTheme.opacities.invisible != abstractTheme.opacities.invisible)
        #expect(inheritedTheme.opacities.invisible == MockThemeOpacitySemanticTokensProvider.mockThemeOpacityRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenOpacityWeakest() throws {
        #expect(inheritedTheme.opacities.weakest != abstractTheme.opacities.weakest)
        #expect(inheritedTheme.opacities.weakest == MockThemeOpacitySemanticTokensProvider.mockThemeOpacityRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenOpacityWeaker() throws {
        #expect(inheritedTheme.opacities.weaker != abstractTheme.opacities.weaker)
        #expect(inheritedTheme.opacities.weaker == MockThemeOpacitySemanticTokensProvider.mockThemeOpacityRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenOpacityWeak() throws {
        #expect(inheritedTheme.opacities.weak != abstractTheme.opacities.weak)
        #expect(inheritedTheme.opacities.weak == MockThemeOpacitySemanticTokensProvider.mockThemeOpacityRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenOpacityMedium() throws {
        #expect(inheritedTheme.opacities.medium != abstractTheme.opacities.medium)
        #expect(inheritedTheme.opacities.medium == MockThemeOpacitySemanticTokensProvider.mockThemeOpacityRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenOpacityEmphasized() throws {
        #expect(inheritedTheme.opacities.strong != abstractTheme.opacities.strong)
        #expect(inheritedTheme.opacities.strong == MockThemeOpacitySemanticTokensProvider.mockThemeOpacityRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenOpacityOpaque() throws {
        #expect(inheritedTheme.opacities.opaque != abstractTheme.opacities.opaque)
        #expect(inheritedTheme.opacities.opaque == MockThemeOpacitySemanticTokensProvider.mockThemeOpacityRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenOpacityDisabled() throws {
        #expect(inheritedTheme.opacities.disabled != abstractTheme.opacities.disabled)
        #expect(inheritedTheme.opacities.disabled == MockThemeOpacitySemanticTokensProvider.mockThemeOpacityRawToken)
    }
}

// swiftlint:enable type_name
