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

    @Test func inheritedThemeCanOverrideSemanticTokenElevationXDrag() throws {
        #expect(inheritedTheme.elevations.elevationXDrag != abstractTheme.elevations.elevationXDrag)
        #expect(inheritedTheme.elevations.elevationXDrag == MockThemeElevationSemanticTokensProvider.mockThemeElevationXRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationXStickyDefault() throws {
        #expect(inheritedTheme.elevations.elevationXStickyDefault != abstractTheme.elevations.elevationXStickyDefault)
        #expect(inheritedTheme.elevations.elevationXStickyDefault == MockThemeElevationSemanticTokensProvider.mockThemeElevationXRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationXStickyEmphasized() throws {
        #expect(inheritedTheme.elevations.elevationXStickyEmphasized != abstractTheme.elevations.elevationXStickyEmphasized)
        #expect(inheritedTheme.elevations.elevationXStickyEmphasized == MockThemeElevationSemanticTokensProvider.mockThemeElevationXRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationXStickyNavigationScrolled() throws {
        #expect(inheritedTheme.elevations.elevationXStickyNavigationScrolled != abstractTheme.elevations.elevationXStickyNavigationScrolled)
        #expect(inheritedTheme.elevations.elevationXStickyNavigationScrolled == MockThemeElevationSemanticTokensProvider.mockThemeElevationXRawToken)
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

    @Test func inheritedThemeCanOverrideSemanticTokenElevationYDrag() throws {
        #expect(inheritedTheme.elevations.elevationYDrag != abstractTheme.elevations.elevationYDrag)
        #expect(inheritedTheme.elevations.elevationYDrag == MockThemeElevationSemanticTokensProvider.mockThemeElevationYRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationYStickyDefault() throws {
        #expect(inheritedTheme.elevations.elevationYStickyDefault != abstractTheme.elevations.elevationYStickyDefault)
        #expect(inheritedTheme.elevations.elevationYStickyDefault == MockThemeElevationSemanticTokensProvider.mockThemeElevationYRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationYStickyEmphasized() throws {
        #expect(inheritedTheme.elevations.elevationYStickyEmphasized != abstractTheme.elevations.elevationYStickyEmphasized)
        #expect(inheritedTheme.elevations.elevationYStickyEmphasized == MockThemeElevationSemanticTokensProvider.mockThemeElevationYRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationYStickyNavigationScrolled() throws {
        #expect(inheritedTheme.elevations.elevationYStickyNavigationScrolled != abstractTheme.elevations.elevationYStickyNavigationScrolled)
        #expect(inheritedTheme.elevations.elevationYStickyNavigationScrolled == MockThemeElevationSemanticTokensProvider.mockThemeElevationYRawToken)
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

    @Test func inheritedThemeCanOverrideSemanticTokenElevationBlurDrag() throws {
        #expect(inheritedTheme.elevations.elevationBlurDrag != abstractTheme.elevations.elevationBlurDrag)
        #expect(inheritedTheme.elevations.elevationBlurDrag == MockThemeElevationSemanticTokensProvider.mockThemeElevationBlurRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationBlurStickyDefault() throws {
        #expect(inheritedTheme.elevations.elevationBlurStickyDefault != abstractTheme.elevations.elevationBlurStickyDefault)
        #expect(inheritedTheme.elevations.elevationBlurStickyDefault == MockThemeElevationSemanticTokensProvider.mockThemeElevationBlurRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationBlurStickyEmphasized() throws {
        #expect(inheritedTheme.elevations.elevationBlurStickyEmphasized != abstractTheme.elevations.elevationBlurStickyEmphasized)
        #expect(inheritedTheme.elevations.elevationBlurStickyEmphasized == MockThemeElevationSemanticTokensProvider.mockThemeElevationBlurRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationBlurStickyNavigationScrolled() throws {
        #expect(inheritedTheme.elevations.elevationBlurStickyNavigationScrolled != abstractTheme.elevations.elevationBlurStickyNavigationScrolled)
        #expect(inheritedTheme.elevations.elevationBlurStickyNavigationScrolled == MockThemeElevationSemanticTokensProvider.mockThemeElevationBlurRawToken)
    }

    // MARK: - Semantic token - Elevation - Colors

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorDefaultLight() throws {
        #expect(inheritedTheme.elevations.elevationColorDefaultLight != abstractTheme.elevations.elevationColorDefaultLight)
        #expect(inheritedTheme.elevations.elevationColorDefaultLight == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorDefaultDark() throws {
        #expect(inheritedTheme.elevations.elevationColorDefaultDark != abstractTheme.elevations.elevationColorDefaultDark)
        #expect(inheritedTheme.elevations.elevationColorDefaultDark == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorNoneLight() throws {
        #expect(inheritedTheme.elevations.elevationColorNoneLight != abstractTheme.elevations.elevationColorNoneLight)
        #expect(inheritedTheme.elevations.elevationColorNoneLight == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorNoneDark() throws {
        #expect(inheritedTheme.elevations.elevationColorNoneDark != abstractTheme.elevations.elevationColorNoneDark)
        #expect(inheritedTheme.elevations.elevationColorNoneDark == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
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

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorStickyDefaultLight() throws {
        #expect(inheritedTheme.elevations.elevationColorStickyDefaultLight != abstractTheme.elevations.elevationColorStickyDefaultLight)
        #expect(inheritedTheme.elevations.elevationColorStickyDefaultLight == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorStickyDefaultDark() throws {
        #expect(inheritedTheme.elevations.elevationColorStickyDefaultDark != abstractTheme.elevations.elevationColorStickyDefaultDark)
        #expect(inheritedTheme.elevations.elevationColorStickyDefaultDark == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorStickyEmphasizedLight() throws {
        #expect(inheritedTheme.elevations.elevationColorStickyEmphasizedLight != abstractTheme.elevations.elevationColorStickyEmphasizedLight)
        #expect(inheritedTheme.elevations.elevationColorStickyEmphasizedLight == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorStickyEmphasizedDark() throws {
        #expect(inheritedTheme.elevations.elevationColorStickyEmphasizedDark != abstractTheme.elevations.elevationColorStickyEmphasizedDark)
        #expect(inheritedTheme.elevations.elevationColorStickyEmphasizedDark == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorStickyNavigationScrolledLight() throws {
        #expect(inheritedTheme.elevations.elevationColorStickyNavigationScrolledLight != abstractTheme.elevations.elevationColorStickyNavigationScrolledLight)
        #expect(inheritedTheme.elevations.elevationColorStickyNavigationScrolledLight == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorStickyNavigationScrolledDark() throws {
        #expect(inheritedTheme.elevations.elevationColorStickyNavigationScrolledDark != abstractTheme.elevations.elevationColorStickyNavigationScrolledDark)
        #expect(inheritedTheme.elevations.elevationColorStickyNavigationScrolledDark == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }
}

// swiftlint:enable type_name
