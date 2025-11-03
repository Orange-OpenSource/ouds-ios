//
// Software Name: OUDSThemesContract iOS
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
        #expect(inheritedTheme.elevations.colorNone != abstractTheme.elevations.colorNone)
        #expect(inheritedTheme.elevations.colorNone == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorDefaultLight() throws {
        #expect(inheritedTheme.elevations.colorDefaultLight != abstractTheme.elevations.colorDefaultLight)
        #expect(inheritedTheme.elevations.colorDefaultLight == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorDefaultDark() throws {
        #expect(inheritedTheme.elevations.colorDefaultDark != abstractTheme.elevations.colorDefaultDark)
        #expect(inheritedTheme.elevations.colorDefaultDark == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorRaisedLight() throws {
        #expect(inheritedTheme.elevations.colorRaisedLight != abstractTheme.elevations.colorRaisedLight)
        #expect(inheritedTheme.elevations.colorRaisedLight == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorRaisedDark() throws {
        #expect(inheritedTheme.elevations.colorRaisedDark != abstractTheme.elevations.colorRaisedDark)
        #expect(inheritedTheme.elevations.colorRaisedDark == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorDragLight() throws {
        #expect(inheritedTheme.elevations.colorDragLight != abstractTheme.elevations.colorDragLight)
        #expect(inheritedTheme.elevations.colorDragLight == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorDragDark() throws {
        #expect(inheritedTheme.elevations.colorDragDark != abstractTheme.elevations.colorDragDark)
        #expect(inheritedTheme.elevations.colorDragDark == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorEmphasizedLight() throws {
        #expect(inheritedTheme.elevations.colorEmphasizedLight != abstractTheme.elevations.colorEmphasizedLight)
        #expect(inheritedTheme.elevations.colorEmphasizedLight == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorEmphasizedDark() throws {
        #expect(inheritedTheme.elevations.colorEmphasizedDark != abstractTheme.elevations.colorEmphasizedDark)
        #expect(inheritedTheme.elevations.colorEmphasizedDark == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorStickyLight() throws {
        #expect(inheritedTheme.elevations.colorStickyLight != abstractTheme.elevations.colorStickyLight)
        #expect(inheritedTheme.elevations.colorStickyLight == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorStickyDark() throws {
        #expect(inheritedTheme.elevations.colorStickyDark != abstractTheme.elevations.colorStickyDark)
        #expect(inheritedTheme.elevations.colorStickyDark == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }
}

// swiftlint:enable type_name
