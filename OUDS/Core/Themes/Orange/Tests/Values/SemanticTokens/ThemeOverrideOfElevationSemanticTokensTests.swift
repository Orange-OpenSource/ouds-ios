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
        XCTAssertNotEqual(inheritedTheme.elevations.elevationXNone, abstractTheme.elevations.elevationXNone)
        XCTAssertTrue(inheritedTheme.elevations.elevationXNone == MockThemeElevationSemanticTokensProvider.mockThemeElevationXRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationXRaised() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationXRaised, abstractTheme.elevations.elevationXRaised)
        XCTAssertTrue(inheritedTheme.elevations.elevationXRaised == MockThemeElevationSemanticTokensProvider.mockThemeElevationXRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationXDrag() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationXDrag, abstractTheme.elevations.elevationXDrag)
        XCTAssertTrue(inheritedTheme.elevations.elevationXDrag == MockThemeElevationSemanticTokensProvider.mockThemeElevationXRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationXStickyDefault() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationXStickyDefault, abstractTheme.elevations.elevationXStickyDefault)
        XCTAssertTrue(inheritedTheme.elevations.elevationXStickyDefault == MockThemeElevationSemanticTokensProvider.mockThemeElevationXRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationXStickyEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationXStickyEmphasized, abstractTheme.elevations.elevationXStickyEmphasized)
        XCTAssertTrue(inheritedTheme.elevations.elevationXStickyEmphasized == MockThemeElevationSemanticTokensProvider.mockThemeElevationXRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationXStickyNavigationScrolled() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationXStickyNavigationScrolled, abstractTheme.elevations.elevationXStickyNavigationScrolled)
        XCTAssertTrue(inheritedTheme.elevations.elevationXStickyNavigationScrolled == MockThemeElevationSemanticTokensProvider.mockThemeElevationXRawToken)
    }

    // MARK: - Semantic token - Elevation - Y

    @Test func inheritedThemeCanOverrideSemanticTokenElevationYNone() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationYNone, abstractTheme.elevations.elevationYNone)
        XCTAssertTrue(inheritedTheme.elevations.elevationYNone == MockThemeElevationSemanticTokensProvider.mockThemeElevationYRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationYRaised() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationYRaised, abstractTheme.elevations.elevationYRaised)
        XCTAssertTrue(inheritedTheme.elevations.elevationYRaised == MockThemeElevationSemanticTokensProvider.mockThemeElevationYRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationYDrag() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationYDrag, abstractTheme.elevations.elevationYDrag)
        XCTAssertTrue(inheritedTheme.elevations.elevationYDrag == MockThemeElevationSemanticTokensProvider.mockThemeElevationYRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationYStickyDefault() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationYStickyDefault, abstractTheme.elevations.elevationYStickyDefault)
        XCTAssertTrue(inheritedTheme.elevations.elevationYStickyDefault == MockThemeElevationSemanticTokensProvider.mockThemeElevationYRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationYStickyEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationYStickyEmphasized, abstractTheme.elevations.elevationYStickyEmphasized)
        XCTAssertTrue(inheritedTheme.elevations.elevationYStickyEmphasized == MockThemeElevationSemanticTokensProvider.mockThemeElevationYRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationYStickyNavigationScrolled() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationYStickyNavigationScrolled, abstractTheme.elevations.elevationYStickyNavigationScrolled)
        XCTAssertTrue(inheritedTheme.elevations.elevationYStickyNavigationScrolled == MockThemeElevationSemanticTokensProvider.mockThemeElevationYRawToken)
    }

    // MARK: - Semantic token - Elevation - Blur

    @Test func inheritedThemeCanOverrideSemanticTokenElevationBlurNone() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationBlurNone, abstractTheme.elevations.elevationBlurNone)
        XCTAssertTrue(inheritedTheme.elevations.elevationBlurNone == MockThemeElevationSemanticTokensProvider.mockThemeElevationBlurRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationBlurRaised() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationBlurRaised, abstractTheme.elevations.elevationBlurRaised)
        XCTAssertTrue(inheritedTheme.elevations.elevationBlurRaised == MockThemeElevationSemanticTokensProvider.mockThemeElevationBlurRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationBlurDrag() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationBlurDrag, abstractTheme.elevations.elevationBlurDrag)
        XCTAssertTrue(inheritedTheme.elevations.elevationBlurDrag == MockThemeElevationSemanticTokensProvider.mockThemeElevationBlurRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationBlurStickyDefault() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationBlurStickyDefault, abstractTheme.elevations.elevationBlurStickyDefault)
        XCTAssertTrue(inheritedTheme.elevations.elevationBlurStickyDefault == MockThemeElevationSemanticTokensProvider.mockThemeElevationBlurRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationBlurStickyEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationBlurStickyEmphasized, abstractTheme.elevations.elevationBlurStickyEmphasized)
        XCTAssertTrue(inheritedTheme.elevations.elevationBlurStickyEmphasized == MockThemeElevationSemanticTokensProvider.mockThemeElevationBlurRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationBlurStickyNavigationScrolled() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationBlurStickyNavigationScrolled, abstractTheme.elevations.elevationBlurStickyNavigationScrolled)
        XCTAssertTrue(inheritedTheme.elevations.elevationBlurStickyNavigationScrolled == MockThemeElevationSemanticTokensProvider.mockThemeElevationBlurRawToken)
    }

    // MARK: - Semantic token - Elevation - Colors

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorDefaultLight, abstractTheme.elevations.elevationColorDefaultLight)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorDefaultLight == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorDefaultDark, abstractTheme.elevations.elevationColorDefaultDark)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorDefaultDark == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorNoneLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorNoneLight, abstractTheme.elevations.elevationColorNoneLight)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorNoneLight == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorNoneDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorNoneDark, abstractTheme.elevations.elevationColorNoneDark)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorNoneDark == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorRaisedLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorRaisedLight, abstractTheme.elevations.elevationColorRaisedLight)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorRaisedLight == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorRaisedDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorRaisedDark, abstractTheme.elevations.elevationColorRaisedDark)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorRaisedDark == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorDragLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorDragLight, abstractTheme.elevations.elevationColorDragLight)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorDragLight == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorDragDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorDragDark, abstractTheme.elevations.elevationColorDragDark)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorDragDark == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorEmphasizedLight, abstractTheme.elevations.elevationColorEmphasizedLight)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorEmphasizedLight == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorEmphasizedDark, abstractTheme.elevations.elevationColorEmphasizedDark)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorEmphasizedDark == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorStickyDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorStickyDefaultLight, abstractTheme.elevations.elevationColorStickyDefaultLight)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorStickyDefaultLight == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorStickyDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorStickyDefaultDark, abstractTheme.elevations.elevationColorStickyDefaultDark)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorStickyDefaultDark == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorStickyEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorStickyEmphasizedLight, abstractTheme.elevations.elevationColorStickyEmphasizedLight)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorStickyEmphasizedLight == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorStickyEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorStickyEmphasizedDark, abstractTheme.elevations.elevationColorStickyEmphasizedDark)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorStickyEmphasizedDark == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorStickyNavigationScrolledLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorStickyNavigationScrolledLight, abstractTheme.elevations.elevationColorStickyNavigationScrolledLight)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorStickyNavigationScrolledLight == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorStickyNavigationScrolledDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorStickyNavigationScrolledDark, abstractTheme.elevations.elevationColorStickyNavigationScrolledDark)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorStickyNavigationScrolledDark == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }
}

// swiftlint:enable type_name
