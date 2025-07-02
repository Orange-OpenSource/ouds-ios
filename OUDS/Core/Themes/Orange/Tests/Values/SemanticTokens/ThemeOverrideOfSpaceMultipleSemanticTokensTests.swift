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

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaled3xs() throws {
        #expect(inheritedTheme.spaces.spaceScaled3xs != abstractTheme.spaces.spaceScaled3xs)
        #expect(inheritedTheme.spaces.spaceScaled3xs.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaled2xs() throws {
        #expect(inheritedTheme.spaces.spaceScaled2xs != abstractTheme.spaces.spaceScaled2xs)
        #expect(inheritedTheme.spaces.spaceScaled2xs.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaledXs() throws {
        #expect(inheritedTheme.spaces.spaceScaledXs != abstractTheme.spaces.spaceScaledXs)
        #expect(inheritedTheme.spaces.spaceScaledXs.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaledSm() throws {
        #expect(inheritedTheme.spaces.spaceScaledSm != abstractTheme.spaces.spaceScaledSm)
        #expect(inheritedTheme.spaces.spaceScaledSm.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaledMd() throws {
        #expect(inheritedTheme.spaces.spaceScaledMd != abstractTheme.spaces.spaceScaledMd)
        #expect(inheritedTheme.spaces.spaceScaledMd.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaledLg() throws {
        #expect(inheritedTheme.spaces.spaceScaledLg != abstractTheme.spaces.spaceScaledLg)
        #expect(inheritedTheme.spaces.spaceScaledLg.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaledXl() throws {
        #expect(inheritedTheme.spaces.spaceScaledXl != abstractTheme.spaces.spaceScaledXl)
        #expect(inheritedTheme.spaces.spaceScaledXl.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaled2xl() throws {
        #expect(inheritedTheme.spaces.spaceScaled2xl != abstractTheme.spaces.spaceScaled2xl)
        #expect(inheritedTheme.spaces.spaceScaled2xl.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaled3xl() throws {
        #expect(inheritedTheme.spaces.spaceScaled3xl != abstractTheme.spaces.spaceScaled3xl)
        #expect(inheritedTheme.spaces.spaceScaled3xl.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }
}

// swiftlint:enable type_name
