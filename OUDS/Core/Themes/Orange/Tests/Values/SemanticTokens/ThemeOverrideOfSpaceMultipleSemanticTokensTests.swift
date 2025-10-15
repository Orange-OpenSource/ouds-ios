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

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaled3xsmall() throws {
        #expect(inheritedTheme.spaces.spaceScaled3xsmall != abstractTheme.spaces.spaceScaled3xsmall)
        #expect(inheritedTheme.spaces.spaceScaled3xsmall.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaled2xsmall() throws {
        #expect(inheritedTheme.spaces.spaceScaled2xsmall != abstractTheme.spaces.spaceScaled2xsmall)
        #expect(inheritedTheme.spaces.spaceScaled2xsmall.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaledXsmall() throws {
        #expect(inheritedTheme.spaces.spaceScaledXsmall != abstractTheme.spaces.spaceScaledXsmall)
        #expect(inheritedTheme.spaces.spaceScaledXsmall.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaledSmall() throws {
        #expect(inheritedTheme.spaces.spaceScaledSmall != abstractTheme.spaces.spaceScaledSmall)
        #expect(inheritedTheme.spaces.spaceScaledSmall.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaledMedium() throws {
        #expect(inheritedTheme.spaces.spaceScaledMedium != abstractTheme.spaces.spaceScaledMedium)
        #expect(inheritedTheme.spaces.spaceScaledMedium.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaledLarge() throws {
        #expect(inheritedTheme.spaces.spaceScaledLarge != abstractTheme.spaces.spaceScaledLarge)
        #expect(inheritedTheme.spaces.spaceScaledLarge.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaledXlarge() throws {
        #expect(inheritedTheme.spaces.spaceScaledXlarge != abstractTheme.spaces.spaceScaledXlarge)
        #expect(inheritedTheme.spaces.spaceScaledXlarge.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaled2xlarge() throws {
        #expect(inheritedTheme.spaces.spaceScaled2xlarge != abstractTheme.spaces.spaceScaled2xlarge)
        #expect(inheritedTheme.spaces.spaceScaled2xlarge.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaled3xlarge() throws {
        #expect(inheritedTheme.spaces.spaceScaled3xlarge != abstractTheme.spaces.spaceScaled3xlarge)
        #expect(inheritedTheme.spaces.spaceScaled3xlarge.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }
}

// swiftlint:enable type_name
