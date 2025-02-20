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

// swiftlint:disable required_deinit
// swiftlint:disable implicitly_unwrapped_optional

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
        #expect(inheritedTheme.grids.gridExtraCompactMinWidth != abstractTheme.grids.gridExtraCompactMinWidth)
        #expect(inheritedTheme.grids.gridExtraCompactMinWidth == MockThemeGridSemanticTokensProvider.mockThemeGridRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenGridIOSExtraCompactMaxWidth() throws {
        #expect(inheritedTheme.grids.gridExtraCompactMaxWidth != abstractTheme.grids.gridExtraCompactMaxWidth)
        #expect(inheritedTheme.grids.gridExtraCompactMaxWidth == MockThemeGridSemanticTokensProvider.mockThemeGridRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenGridIOSExtraCompactMargin() throws {
        #expect(inheritedTheme.grids.gridExtraCompactMargin != abstractTheme.grids.gridExtraCompactMargin)
        #expect(inheritedTheme.grids.gridExtraCompactMargin == MockThemeGridSemanticTokensProvider.mockThemeGridRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenGridIOSExtraCompactColumnGap() throws {
        #expect(inheritedTheme.grids.gridExtraCompactColumnGap != abstractTheme.grids.gridExtraCompactColumnGap)
        #expect(inheritedTheme.grids.gridExtraCompactColumnGap == MockThemeGridSemanticTokensProvider.mockThemeGridRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenGridIOSCompactMinWidth() throws {
        #expect(inheritedTheme.grids.gridCompactMinWidth != abstractTheme.grids.gridCompactMinWidth)
        #expect(inheritedTheme.grids.gridCompactMinWidth == MockThemeGridSemanticTokensProvider.mockThemeGridRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenGridIOSCompactMaxWidth() throws {
        #expect(inheritedTheme.grids.gridCompactMaxWidth != abstractTheme.grids.gridCompactMaxWidth)
        #expect(inheritedTheme.grids.gridCompactMaxWidth == MockThemeGridSemanticTokensProvider.mockThemeGridRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenGridIOSCompactMargin() throws {
        #expect(inheritedTheme.grids.gridCompactMargin != abstractTheme.grids.gridCompactMargin)
        #expect(inheritedTheme.grids.gridCompactMargin == MockThemeGridSemanticTokensProvider.mockThemeGridRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenGridIOSCompactColumnGap() throws {
        #expect(inheritedTheme.grids.gridCompactColumnGap != abstractTheme.grids.gridCompactColumnGap)
        #expect(inheritedTheme.grids.gridCompactColumnGap == MockThemeGridSemanticTokensProvider.mockThemeGridRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenGridIOSRegularMinWidth() throws {
        #expect(inheritedTheme.grids.gridRegularMinWidth != abstractTheme.grids.gridRegularMinWidth)
        #expect(inheritedTheme.grids.gridRegularMinWidth == MockThemeGridSemanticTokensProvider.mockThemeGridRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenGridIOSRegularMaxWidth() throws {
        #expect(inheritedTheme.grids.gridRegularMaxWidth != abstractTheme.grids.gridRegularMaxWidth)
        #expect(inheritedTheme.grids.gridRegularMaxWidth == MockThemeGridSemanticTokensProvider.mockThemeGridRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenGridIOSRegularMargin() throws {
        #expect(inheritedTheme.grids.gridRegularMargin != abstractTheme.grids.gridRegularMargin)
        #expect(inheritedTheme.grids.gridRegularMargin == MockThemeGridSemanticTokensProvider.mockThemeGridRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenGridIOSRegularColumnGap() throws {
        #expect(inheritedTheme.grids.gridRegularColumnGap != abstractTheme.grids.gridRegularColumnGap)
        #expect(inheritedTheme.grids.gridRegularColumnGap == MockThemeGridSemanticTokensProvider.mockThemeGridRawToken)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
