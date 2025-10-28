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
/// In fact, the `OUDSTheme` object is a class, which can be seen as an _asbtract class_, exposing through its extensions and protocols _elevation semantic tokens_.
/// These semantic tokens should be overridable by subclasses like the ``OrangeThemeElevatioSemanticTokensProvider``.
///
/// **These tests checks if any _elevation semantic semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
struct ThemeOverrideOfElevationSemanticTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Semantic token - Elevation - X

    @Test func inheritedThemeCanOverrideSemanticTokenElevationXNone() throws {
        #expect(inheritedTheme.elevations.xNone != abstractTheme.elevations.xNone)
        #expect(inheritedTheme.elevations.xNone == MockThemeElevationSemanticTokensProvider.mockThemeElevationXRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationXRaised() throws {
        #expect(inheritedTheme.elevations.xRaised != abstractTheme.elevations.xRaised)
        #expect(inheritedTheme.elevations.xRaised == MockThemeElevationSemanticTokensProvider.mockThemeElevationXRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationXDefault() throws {
        #expect(inheritedTheme.elevations.xDefault != abstractTheme.elevations.xDefault)
        #expect(inheritedTheme.elevations.xDefault == MockThemeElevationSemanticTokensProvider.mockThemeElevationXRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationXEmphasized() throws {
        #expect(inheritedTheme.elevations.xEmphasized != abstractTheme.elevations.xEmphasized)
        #expect(inheritedTheme.elevations.xEmphasized == MockThemeElevationSemanticTokensProvider.mockThemeElevationXRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationXDrag() throws {
        #expect(inheritedTheme.elevations.xDrag != abstractTheme.elevations.xDrag)
        #expect(inheritedTheme.elevations.xDrag == MockThemeElevationSemanticTokensProvider.mockThemeElevationXRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationXSticky() throws {
        #expect(inheritedTheme.elevations.xSticky != abstractTheme.elevations.xSticky)
        #expect(inheritedTheme.elevations.xSticky == MockThemeElevationSemanticTokensProvider.mockThemeElevationXRawToken)
    }

    // MARK: - Semantic token - Elevation - Y

    @Test func inheritedThemeCanOverrideSemanticTokenElevationYNone() throws {
        #expect(inheritedTheme.elevations.yNone != abstractTheme.elevations.yNone)
        #expect(inheritedTheme.elevations.yNone == MockThemeElevationSemanticTokensProvider.mockThemeElevationYRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationYRaised() throws {
        #expect(inheritedTheme.elevations.yRaised != abstractTheme.elevations.yRaised)
        #expect(inheritedTheme.elevations.yRaised == MockThemeElevationSemanticTokensProvider.mockThemeElevationYRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationYDefault() throws {
        #expect(inheritedTheme.elevations.yDefault != abstractTheme.elevations.yDefault)
        #expect(inheritedTheme.elevations.yDefault == MockThemeElevationSemanticTokensProvider.mockThemeElevationYRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationYEmphasized() throws {
        #expect(inheritedTheme.elevations.yEmphasized != abstractTheme.elevations.yEmphasized)
        #expect(inheritedTheme.elevations.yEmphasized == MockThemeElevationSemanticTokensProvider.mockThemeElevationYRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationYDrag() throws {
        #expect(inheritedTheme.elevations.yDrag != abstractTheme.elevations.yDrag)
        #expect(inheritedTheme.elevations.yDrag == MockThemeElevationSemanticTokensProvider.mockThemeElevationYRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationYSticky() throws {
        #expect(inheritedTheme.elevations.ySticky != abstractTheme.elevations.ySticky)
        #expect(inheritedTheme.elevations.ySticky == MockThemeElevationSemanticTokensProvider.mockThemeElevationYRawToken)
    }

    // MARK: - Semantic token - Elevation - Blur

    @Test func inheritedThemeCanOverrideSemanticTokenElevationBlurNone() throws {
        #expect(inheritedTheme.elevations.blurNone != abstractTheme.elevations.blurNone)
        #expect(inheritedTheme.elevations.blurNone == MockThemeElevationSemanticTokensProvider.mockThemeElevationBlurRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationBlurRaised() throws {
        #expect(inheritedTheme.elevations.blurRaised != abstractTheme.elevations.blurRaised)
        #expect(inheritedTheme.elevations.blurRaised == MockThemeElevationSemanticTokensProvider.mockThemeElevationBlurRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationBlurDefault() throws {
        #expect(inheritedTheme.elevations.blurDefault != abstractTheme.elevations.blurDefault)
        #expect(inheritedTheme.elevations.blurDefault == MockThemeElevationSemanticTokensProvider.mockThemeElevationBlurRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationBlurEmpahsized() throws {
        #expect(inheritedTheme.elevations.blurEmphasized != abstractTheme.elevations.blurEmphasized)
        #expect(inheritedTheme.elevations.blurEmphasized == MockThemeElevationSemanticTokensProvider.mockThemeElevationBlurRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationBlurDrag() throws {
        #expect(inheritedTheme.elevations.blurDrag != abstractTheme.elevations.blurDrag)
        #expect(inheritedTheme.elevations.blurDrag == MockThemeElevationSemanticTokensProvider.mockThemeElevationBlurRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationBlurSticky() throws {
        #expect(inheritedTheme.elevations.blurSticky != abstractTheme.elevations.blurSticky)
        #expect(inheritedTheme.elevations.blurSticky == MockThemeElevationSemanticTokensProvider.mockThemeElevationBlurRawToken)
    }

    // MARK: - Semantic token - Elevation - Colors

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorNone() throws {
        #expect(inheritedTheme.elevations.elevationColorNone != abstractTheme.elevations.elevationColorNone)
        #expect(inheritedTheme.elevations.elevationColorNone == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorDefaultLight() throws {
        #expect(inheritedTheme.elevations.elevationColorDefaultLight != abstractTheme.elevations.elevationColorDefaultLight)
        #expect(inheritedTheme.elevations.elevationColorDefaultLight == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorDefaultDark() throws {
        #expect(inheritedTheme.elevations.elevationColorDefaultDark != abstractTheme.elevations.elevationColorDefaultDark)
        #expect(inheritedTheme.elevations.elevationColorDefaultDark == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorRaisedLight() throws {
        #expect(inheritedTheme.elevations.elevationColorRaisedLight != abstractTheme.elevations.elevationColorRaisedLight)
        #expect(inheritedTheme.elevations.elevationColorRaisedLight == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorRaisedDark() throws {
        #expect(inheritedTheme.elevations.elevationColorRaisedDark != abstractTheme.elevations.elevationColorRaisedDark)
        #expect(inheritedTheme.elevations.elevationColorRaisedDark == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorDragLight() throws {
        #expect(inheritedTheme.elevations.elevationColorDragLight != abstractTheme.elevations.elevationColorDragLight)
        #expect(inheritedTheme.elevations.elevationColorDragLight == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorDragDark() throws {
        #expect(inheritedTheme.elevations.elevationColorDragDark != abstractTheme.elevations.elevationColorDragDark)
        #expect(inheritedTheme.elevations.elevationColorDragDark == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorEmphasizedLight() throws {
        #expect(inheritedTheme.elevations.elevationColorEmphasizedLight != abstractTheme.elevations.elevationColorEmphasizedLight)
        #expect(inheritedTheme.elevations.elevationColorEmphasizedLight == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorEmphasizedDark() throws {
        #expect(inheritedTheme.elevations.elevationColorEmphasizedDark != abstractTheme.elevations.elevationColorEmphasizedDark)
        #expect(inheritedTheme.elevations.elevationColorEmphasizedDark == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorStickyLight() throws {
        #expect(inheritedTheme.elevations.elevationColorStickyLight != abstractTheme.elevations.elevationColorStickyLight)
        #expect(inheritedTheme.elevations.elevationColorStickyLight == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorStickyDark() throws {
        #expect(inheritedTheme.elevations.elevationColorStickyDark != abstractTheme.elevations.elevationColorStickyDark)
        #expect(inheritedTheme.elevations.elevationColorStickyDark == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }
}

// swiftlint:enable type_name
