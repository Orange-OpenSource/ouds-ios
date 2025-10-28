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

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In fact the `OUDSTheme` object is a class, which can be seen as an _asbtract class_, exposing through its extensions and protocols _grid semantic tokens_.
/// These semantic tokens should be overridable by subclasses like the ``OrangeThemeGridSemanticTokensProvider``.
///
/// **These tests checks if any _grid semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
struct ThemeOverrideOfGridSemanticTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    @Test func inheritedThemeCanOverrideSemanticTokenGridIOSExtraCompactMinWidth() throws {
        #expect(inheritedTheme.grids.extraCompactMinWidth != abstractTheme.grids.extraCompactMinWidth)
        #expect(inheritedTheme.grids.extraCompactMinWidth == MockThemeGridSemanticTokensProvider.mockThemeGridRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenGridIOSExtraCompactMaxWidth() throws {
        #expect(inheritedTheme.grids.extraCompactMaxWidth != abstractTheme.grids.extraCompactMaxWidth)
        #expect(inheritedTheme.grids.extraCompactMaxWidth == MockThemeGridSemanticTokensProvider.mockThemeGridRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenGridIOSExtraCompactMargin() throws {
        #expect(inheritedTheme.grids.extraCompactMargin != abstractTheme.grids.extraCompactMargin)
        #expect(inheritedTheme.grids.extraCompactMargin == MockThemeGridSemanticTokensProvider.mockThemeGridRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenGridIOSExtraCompactColumnGap() throws {
        #expect(inheritedTheme.grids.extraCompactColumnGap != abstractTheme.grids.extraCompactColumnGap)
        #expect(inheritedTheme.grids.extraCompactColumnGap == MockThemeGridSemanticTokensProvider.mockThemeGridRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenGridIOSCompactMinWidth() throws {
        #expect(inheritedTheme.grids.compactMinWidth != abstractTheme.grids.compactMinWidth)
        #expect(inheritedTheme.grids.compactMinWidth == MockThemeGridSemanticTokensProvider.mockThemeGridRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenGridIOSCompactMaxWidth() throws {
        #expect(inheritedTheme.grids.compactMaxWidth != abstractTheme.grids.compactMaxWidth)
        #expect(inheritedTheme.grids.compactMaxWidth == MockThemeGridSemanticTokensProvider.mockThemeGridRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenGridIOSCompactMargin() throws {
        #expect(inheritedTheme.grids.compactMargin != abstractTheme.grids.compactMargin)
        #expect(inheritedTheme.grids.compactMargin == MockThemeGridSemanticTokensProvider.mockThemeGridRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenGridIOSCompactColumnGap() throws {
        #expect(inheritedTheme.grids.compactColumnGap != abstractTheme.grids.compactColumnGap)
        #expect(inheritedTheme.grids.compactColumnGap == MockThemeGridSemanticTokensProvider.mockThemeGridRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenGridIOSRegularMinWidth() throws {
        #expect(inheritedTheme.grids.regularMinWidth != abstractTheme.grids.regularMinWidth)
        #expect(inheritedTheme.grids.regularMinWidth == MockThemeGridSemanticTokensProvider.mockThemeGridRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenGridIOSRegularMaxWidth() throws {
        #expect(inheritedTheme.grids.regularMaxWidth != abstractTheme.grids.regularMaxWidth)
        #expect(inheritedTheme.grids.regularMaxWidth == MockThemeGridSemanticTokensProvider.mockThemeGridRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenGridIOSRegularMargin() throws {
        #expect(inheritedTheme.grids.regularMargin != abstractTheme.grids.regularMargin)
        #expect(inheritedTheme.grids.regularMargin == MockThemeGridSemanticTokensProvider.mockThemeGridRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenGridIOSRegularColumnGap() throws {
        #expect(inheritedTheme.grids.regularColumnGap != abstractTheme.grids.regularColumnGap)
        #expect(inheritedTheme.grids.regularColumnGap == MockThemeGridSemanticTokensProvider.mockThemeGridRawToken)
    }
}
