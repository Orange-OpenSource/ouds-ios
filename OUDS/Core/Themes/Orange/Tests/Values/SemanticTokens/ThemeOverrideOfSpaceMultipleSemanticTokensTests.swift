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
/// In factn the `OUDSTheme` object is a class, which can be seens as an _asbtract class_, exposing through its extensions and protocols _spacing semantic tokens_.
/// These semantic tokens should be overridable by subclasses like the ``OrangeThemeSpaceSemanticTokensProvider``.

/// **These tests checks if any _space multiple semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
struct ThemeOverrideOfSpaceMultipleSemanticTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Semantic token - Spacing - Layout fluid

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledNone() throws {
        #expect(inheritedTheme.spaces.spaceScaledNone != abstractTheme.spaces.spaceScaledNone)
        #expect(inheritedTheme.spaces.spaceScaledNone.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledSmash() throws {
        #expect(inheritedTheme.spaces.spaceScaledSmash != abstractTheme.spaces.spaceScaledSmash)
        #expect(inheritedTheme.spaces.spaceScaledSmash.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledShortest() throws {
        #expect(inheritedTheme.spaces.spaceScaledShortest != abstractTheme.spaces.spaceScaledShortest)
        #expect(inheritedTheme.spaces.spaceScaledShortest.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledShorter() throws {
        #expect(inheritedTheme.spaces.spaceScaledShorter != abstractTheme.spaces.spaceScaledShorter)
        #expect(inheritedTheme.spaces.spaceScaledShorter.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledShort() throws {
        #expect(inheritedTheme.spaces.spaceScaledShort != abstractTheme.spaces.spaceScaledShort)
        #expect(inheritedTheme.spaces.spaceScaledShort.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledMedium() throws {
        #expect(inheritedTheme.spaces.spaceScaledMedium != abstractTheme.spaces.spaceScaledMedium)
        #expect(inheritedTheme.spaces.spaceScaledMedium.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledTall() throws {
        #expect(inheritedTheme.spaces.spaceScaledTall != abstractTheme.spaces.spaceScaledTall)
        #expect(inheritedTheme.spaces.spaceScaledTall.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledTaller() throws {
        #expect(inheritedTheme.spaces.spaceScaledTaller != abstractTheme.spaces.spaceScaledTaller)
        #expect(inheritedTheme.spaces.spaceScaledTaller.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledTallest() throws {
        #expect(inheritedTheme.spaces.spaceScaledTallest != abstractTheme.spaces.spaceScaledTallest)
        #expect(inheritedTheme.spaces.spaceScaledTallest.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledSpacious() throws {
        #expect(inheritedTheme.spaces.spaceScaledSpacious != abstractTheme.spaces.spaceScaledSpacious)
        #expect(inheritedTheme.spaces.spaceScaledSpacious.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }
}

// swiftlint:enable type_name
