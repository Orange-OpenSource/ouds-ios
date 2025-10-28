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
/// In factn the `OUDSTheme` object is a class, which can be seens as an _asbtract class_, exposing through its extensions and protocols dimensionspacing semantic tokens_.
/// These semantic tokens should be overridable by subclasses like the ``OrangeThemeSpaceSemanticTokensProvider``.

/// **These tests checks if any dimensionspace multiple semantic tokens_ can be surcharged by a child theme**
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
        #expect(inheritedTheme.spaces.scaledNone != abstractTheme.spaces.scaledNone)
        #expect(inheritedTheme.spaces.scaledNone.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaled3xsmall() throws {
        #expect(inheritedTheme.spaces.scaled3xsmall != abstractTheme.spaces.scaled3xsmall)
        #expect(inheritedTheme.spaces.scaled3xsmall.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaled2xsmall() throws {
        #expect(inheritedTheme.spaces.scaled2xsmall != abstractTheme.spaces.scaled2xsmall)
        #expect(inheritedTheme.spaces.scaled2xsmall.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaledXsmall() throws {
        #expect(inheritedTheme.spaces.scaledXsmall != abstractTheme.spaces.scaledXsmall)
        #expect(inheritedTheme.spaces.scaledXsmall.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaledSmall() throws {
        #expect(inheritedTheme.spaces.scaledSmall != abstractTheme.spaces.scaledSmall)
        #expect(inheritedTheme.spaces.scaledSmall.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaledMedium() throws {
        #expect(inheritedTheme.spaces.scaledMedium != abstractTheme.spaces.scaledMedium)
        #expect(inheritedTheme.spaces.scaledMedium.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaledLarge() throws {
        #expect(inheritedTheme.spaces.scaledLarge != abstractTheme.spaces.scaledLarge)
        #expect(inheritedTheme.spaces.scaledLarge.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaledXlarge() throws {
        #expect(inheritedTheme.spaces.scaledXlarge != abstractTheme.spaces.scaledXlarge)
        #expect(inheritedTheme.spaces.scaledXlarge.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaled2xlarge() throws {
        #expect(inheritedTheme.spaces.scaled2xlarge != abstractTheme.spaces.scaled2xlarge)
        #expect(inheritedTheme.spaces.scaled2xlarge.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaled3xlarge() throws {
        #expect(inheritedTheme.spaces.scaled3xlarge != abstractTheme.spaces.scaled3xlarge)
        #expect(inheritedTheme.spaces.scaled3xlarge.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }
}

// swiftlint:enable type_name
