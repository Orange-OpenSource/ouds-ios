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
        #expect(inheritedTheme.elevations.elevationXNone != abstractTheme.elevations.elevationXNone)
        #expect(inheritedTheme.elevations.elevationXNone == MockThemeElevationSemanticTokensProvider.mockThemeElevationXRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationXRaised() throws {
        #expect(inheritedTheme.elevations.elevationXRaised != abstractTheme.elevations.elevationXRaised)
        #expect(inheritedTheme.elevations.elevationXRaised == MockThemeElevationSemanticTokensProvider.mockThemeElevationXRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationXDefault() throws {
        #expect(inheritedTheme.elevations.elevationXDefault != abstractTheme.elevations.elevationXDefault)
        #expect(inheritedTheme.elevations.elevationXDefault == MockThemeElevationSemanticTokensProvider.mockThemeElevationXRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationXEmphasized() throws {
        #expect(inheritedTheme.elevations.elevationXEmphasized != abstractTheme.elevations.elevationXEmphasized)
        #expect(inheritedTheme.elevations.elevationXEmphasized == MockThemeElevationSemanticTokensProvider.mockThemeElevationXRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationXDrag() throws {
        #expect(inheritedTheme.elevations.elevationXDrag != abstractTheme.elevations.elevationXDrag)
        #expect(inheritedTheme.elevations.elevationXDrag == MockThemeElevationSemanticTokensProvider.mockThemeElevationXRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationXSticky() throws {
        #expect(inheritedTheme.elevations.elevationXSticky != abstractTheme.elevations.elevationXSticky)
        #expect(inheritedTheme.elevations.elevationXSticky == MockThemeElevationSemanticTokensProvider.mockThemeElevationXRawToken)
    }

    // MARK: - Semantic token - Elevation - Y

    @Test func inheritedThemeCanOverrideSemanticTokenElevationYNone() throws {
        #expect(inheritedTheme.elevations.elevationYNone != abstractTheme.elevations.elevationYNone)
        #expect(inheritedTheme.elevations.elevationYNone == MockThemeElevationSemanticTokensProvider.mockThemeElevationYRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationYRaised() throws {
        #expect(inheritedTheme.elevations.elevationYRaised != abstractTheme.elevations.elevationYRaised)
        #expect(inheritedTheme.elevations.elevationYRaised == MockThemeElevationSemanticTokensProvider.mockThemeElevationYRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationYDefault() throws {
        #expect(inheritedTheme.elevations.elevationYDefault != abstractTheme.elevations.elevationYDefault)
        #expect(inheritedTheme.elevations.elevationYDefault == MockThemeElevationSemanticTokensProvider.mockThemeElevationYRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationYEmphasized() throws {
        #expect(inheritedTheme.elevations.elevationYEmphasized != abstractTheme.elevations.elevationYEmphasized)
        #expect(inheritedTheme.elevations.elevationYEmphasized == MockThemeElevationSemanticTokensProvider.mockThemeElevationYRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationYDrag() throws {
        #expect(inheritedTheme.elevations.elevationYDrag != abstractTheme.elevations.elevationYDrag)
        #expect(inheritedTheme.elevations.elevationYDrag == MockThemeElevationSemanticTokensProvider.mockThemeElevationYRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationYSticky() throws {
        #expect(inheritedTheme.elevations.elevationYSticky != abstractTheme.elevations.elevationYSticky)
        #expect(inheritedTheme.elevations.elevationYSticky == MockThemeElevationSemanticTokensProvider.mockThemeElevationYRawToken)
    }

    // MARK: - Semantic token - Elevation - Blur

    @Test func inheritedThemeCanOverrideSemanticTokenElevationBlurNone() throws {
        #expect(inheritedTheme.elevations.elevationBlurNone != abstractTheme.elevations.elevationBlurNone)
        #expect(inheritedTheme.elevations.elevationBlurNone == MockThemeElevationSemanticTokensProvider.mockThemeElevationBlurRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationBlurRaised() throws {
        #expect(inheritedTheme.elevations.elevationBlurRaised != abstractTheme.elevations.elevationBlurRaised)
        #expect(inheritedTheme.elevations.elevationBlurRaised == MockThemeElevationSemanticTokensProvider.mockThemeElevationBlurRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationBlurDefault() throws {
        #expect(inheritedTheme.elevations.elevationBlurDefault != abstractTheme.elevations.elevationBlurDefault)
        #expect(inheritedTheme.elevations.elevationBlurDefault == MockThemeElevationSemanticTokensProvider.mockThemeElevationBlurRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationBlurEmpahsized() throws {
        #expect(inheritedTheme.elevations.elevationBlurEmphasized != abstractTheme.elevations.elevationBlurEmphasized)
        #expect(inheritedTheme.elevations.elevationBlurEmphasized == MockThemeElevationSemanticTokensProvider.mockThemeElevationBlurRawToken)
    }
    
    @Test func inheritedThemeCanOverrideSemanticTokenElevationBlurDrag() throws {
        #expect(inheritedTheme.elevations.elevationBlurDrag != abstractTheme.elevations.elevationBlurDrag)
        #expect(inheritedTheme.elevations.elevationBlurDrag == MockThemeElevationSemanticTokensProvider.mockThemeElevationBlurRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationBlurSticky() throws {
        #expect(inheritedTheme.elevations.elevationBlurSticky != abstractTheme.elevations.elevationBlurSticky)
        #expect(inheritedTheme.elevations.elevationBlurSticky == MockThemeElevationSemanticTokensProvider.mockThemeElevationBlurRawToken)
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
