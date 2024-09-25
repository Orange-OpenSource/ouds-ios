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

import XCTest
import OUDS

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In fact, the `OUDSTheme` object is a class, which can be seen as an _asbtract class_, exposing through its extensions and protocols _elevation semantic tokens_.
/// These semantic tokens should be overriden by subclass like the `OrangeTheme` default theme.
/// **These tests checks if any _elevation semantic tokens_ can be surcharged by a child theme**
final class TestThemeOverrideOfElevationSemanticTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OUDSTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Semantic token - Elevation - X

    func testInheritedThemeCanOverrideSemanticTokenElevationXNone() throws {
        XCTAssertNotEqual(inheritedTheme.elevationXNone, abstractTheme.elevationXNone)
        XCTAssertTrue(inheritedTheme.elevationXNone == MockTheme.mockThemeElevationXRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationXRaised() throws {
        XCTAssertNotEqual(inheritedTheme.elevationXRaised, abstractTheme.elevationXRaised)
        XCTAssertTrue(inheritedTheme.elevationXRaised == MockTheme.mockThemeElevationXRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationXDrag() throws {
        XCTAssertNotEqual(inheritedTheme.elevationXDrag, abstractTheme.elevationXDrag)
        XCTAssertTrue(inheritedTheme.elevationXDrag == MockTheme.mockThemeElevationXRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationXOverlayDefault() throws {
        XCTAssertNotEqual(inheritedTheme.elevationXOverlayDefault, abstractTheme.elevationXOverlayDefault)
        XCTAssertTrue(inheritedTheme.elevationXOverlayDefault == MockTheme.mockThemeElevationXRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationXOverlayEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.elevationXOverlayEmphasized, abstractTheme.elevationXOverlayEmphasized)
        XCTAssertTrue(inheritedTheme.elevationXOverlayEmphasized == MockTheme.mockThemeElevationXRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationXStickyDefault() throws {
        XCTAssertNotEqual(inheritedTheme.elevationXStickyDefault, abstractTheme.elevationXStickyDefault)
        XCTAssertTrue(inheritedTheme.elevationXStickyDefault == MockTheme.mockThemeElevationXRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationXStickyEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.elevationXStickyEmphasized, abstractTheme.elevationXStickyEmphasized)
        XCTAssertTrue(inheritedTheme.elevationXStickyEmphasized == MockTheme.mockThemeElevationXRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationXStickyNavigationScrolled() throws {
        XCTAssertNotEqual(inheritedTheme.elevationXStickyNavigationScrolled, abstractTheme.elevationXStickyNavigationScrolled)
        XCTAssertTrue(inheritedTheme.elevationXStickyNavigationScrolled == MockTheme.mockThemeElevationXRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationXFocus() throws {
        XCTAssertNotEqual(inheritedTheme.elevationXFocus, abstractTheme.elevationXFocus)
        XCTAssertTrue(inheritedTheme.elevationXFocus == MockTheme.mockThemeElevationXRawToken)
    }

    // MARK: - Semantic token - Elevation - Y

    func testInheritedThemeCanOverrideSemanticTokenElevationYNone() throws {
        XCTAssertNotEqual(inheritedTheme.elevationYNone, abstractTheme.elevationYNone)
        XCTAssertTrue(inheritedTheme.elevationYNone == MockTheme.mockThemeElevationYRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationYRaised() throws {
        XCTAssertNotEqual(inheritedTheme.elevationYRaised, abstractTheme.elevationYRaised)
        XCTAssertTrue(inheritedTheme.elevationYRaised == MockTheme.mockThemeElevationYRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationYDrag() throws {
        XCTAssertNotEqual(inheritedTheme.elevationYDrag, abstractTheme.elevationYDrag)
        XCTAssertTrue(inheritedTheme.elevationYDrag == MockTheme.mockThemeElevationYRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationYOverlayDefault() throws {
        XCTAssertNotEqual(inheritedTheme.elevationYOverlayDefault, abstractTheme.elevationYOverlayDefault)
        XCTAssertTrue(inheritedTheme.elevationYOverlayDefault == MockTheme.mockThemeElevationYRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationYOverlayEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.elevationYOverlayEmphasized, abstractTheme.elevationYOverlayEmphasized)
        XCTAssertTrue(inheritedTheme.elevationYOverlayEmphasized == MockTheme.mockThemeElevationYRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationYStickyDefault() throws {
        XCTAssertNotEqual(inheritedTheme.elevationYStickyDefault, abstractTheme.elevationYStickyDefault)
        XCTAssertTrue(inheritedTheme.elevationYStickyDefault == MockTheme.mockThemeElevationYRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationYStickyEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.elevationYStickyEmphasized, abstractTheme.elevationYStickyEmphasized)
        XCTAssertTrue(inheritedTheme.elevationYStickyEmphasized == MockTheme.mockThemeElevationYRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationYStickyNavigationScrolled() throws {
        XCTAssertNotEqual(inheritedTheme.elevationYStickyNavigationScrolled, abstractTheme.elevationYStickyNavigationScrolled)
        XCTAssertTrue(inheritedTheme.elevationYStickyNavigationScrolled == MockTheme.mockThemeElevationYRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationYFocus() throws {
        XCTAssertNotEqual(inheritedTheme.elevationYFocus, abstractTheme.elevationYFocus)
        XCTAssertTrue(inheritedTheme.elevationYFocus == MockTheme.mockThemeElevationYRawToken)
    }

    // MARK: - Semantic token - Elevation - Blur

    func testInheritedThemeCanOverrideSemanticTokenElevationBlurNone() throws {
        XCTAssertNotEqual(inheritedTheme.elevationBlurNone, abstractTheme.elevationBlurNone)
        XCTAssertTrue(inheritedTheme.elevationBlurNone == MockTheme.mockThemeElevationBlurRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationBlurRaised() throws {
        XCTAssertNotEqual(inheritedTheme.elevationBlurRaised, abstractTheme.elevationBlurRaised)
        XCTAssertTrue(inheritedTheme.elevationBlurRaised == MockTheme.mockThemeElevationBlurRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationBlurDrag() throws {
        XCTAssertNotEqual(inheritedTheme.elevationBlurDrag, abstractTheme.elevationBlurDrag)
        XCTAssertTrue(inheritedTheme.elevationBlurDrag == MockTheme.mockThemeElevationBlurRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationBlurOverlayDefault() throws {
        XCTAssertNotEqual(inheritedTheme.elevationBlurOverlayDefault, abstractTheme.elevationBlurOverlayDefault)
        XCTAssertTrue(inheritedTheme.elevationBlurOverlayDefault == MockTheme.mockThemeElevationBlurRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationBlurOverlayEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.elevationBlurOverlayEmphasized, abstractTheme.elevationBlurOverlayEmphasized)
        XCTAssertTrue(inheritedTheme.elevationBlurOverlayEmphasized == MockTheme.mockThemeElevationBlurRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationBlurStickyDefault() throws {
        XCTAssertNotEqual(inheritedTheme.elevationBlurStickyDefault, abstractTheme.elevationBlurStickyDefault)
        XCTAssertTrue(inheritedTheme.elevationBlurStickyDefault == MockTheme.mockThemeElevationBlurRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationBlurStickyEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.elevationBlurStickyEmphasized, abstractTheme.elevationBlurStickyEmphasized)
        XCTAssertTrue(inheritedTheme.elevationBlurStickyEmphasized == MockTheme.mockThemeElevationBlurRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationBlurStickyNavigationScrolled() throws {
        XCTAssertNotEqual(inheritedTheme.elevationBlurStickyNavigationScrolled, abstractTheme.elevationBlurStickyNavigationScrolled)
        XCTAssertTrue(inheritedTheme.elevationBlurStickyNavigationScrolled == MockTheme.mockThemeElevationBlurRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationBlurFocus() throws {
        XCTAssertNotEqual(inheritedTheme.elevationBlurFocus, abstractTheme.elevationBlurFocus)
        XCTAssertTrue(inheritedTheme.elevationBlurFocus == MockTheme.mockThemeElevationBlurRawToken)
    }

    // MARK: - Semantic token - Elevation - Color - None

    func testInheritedThemeCanOverrideSemanticTokenElevationColorNone() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorNone, abstractTheme.elevationColorNone)
        XCTAssertTrue(inheritedTheme.elevationColorNone == MockTheme.mockThemeMultipleColorSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorRaised() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorRaised, abstractTheme.elevationColorRaised)
        XCTAssertTrue(inheritedTheme.elevationColorRaised == MockTheme.mockThemeMultipleColorSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorDrag() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorDrag, abstractTheme.elevationColorDrag)
        XCTAssertTrue(inheritedTheme.elevationColorDrag == MockTheme.mockThemeMultipleColorSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorOverlayDefault() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorOverlayDefault, abstractTheme.elevationColorOverlayDefault)
        XCTAssertTrue(inheritedTheme.elevationColorOverlayDefault == MockTheme.mockThemeMultipleColorSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorOverlayEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorOverlayEmphasized, abstractTheme.elevationColorOverlayEmphasized)
        XCTAssertTrue(inheritedTheme.elevationColorOverlayEmphasized == MockTheme.mockThemeMultipleColorSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorStickyDefault() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorStickyDefault, abstractTheme.elevationColorStickyDefault)
        XCTAssertTrue(inheritedTheme.elevationColorStickyDefault == MockTheme.mockThemeMultipleColorSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorStickyEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorStickyEmphasized, abstractTheme.elevationColorStickyEmphasized)
        XCTAssertTrue(inheritedTheme.elevationColorStickyEmphasized == MockTheme.mockThemeMultipleColorSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorStickyNavigationScrolled() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorStickyNavigationScrolled, abstractTheme.elevationColorStickyNavigationScrolled)
        XCTAssertTrue(inheritedTheme.elevationColorStickyNavigationScrolled == MockTheme.mockThemeMultipleColorSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorFocus() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorFocus, abstractTheme.elevationColorFocus)
        XCTAssertTrue(inheritedTheme.elevationColorFocus == MockTheme.mockThemeMultipleColorSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationCompositeRaisedDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevationRaisedDark, abstractTheme.elevationRaisedDark)
        XCTAssertTrue(inheritedTheme.elevationRaisedDark == MockTheme.mockThemeElevationCompositeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationCompositeDragLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevationDragLight, abstractTheme.elevationDragLight)
        XCTAssertTrue(inheritedTheme.elevationDragLight == MockTheme.mockThemeElevationCompositeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationCompositeDragDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevationDragDark, abstractTheme.elevationDragDark)
        XCTAssertTrue(inheritedTheme.elevationDragDark == MockTheme.mockThemeElevationCompositeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationCompositeOverlayDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevationOverlayDefaultLight, abstractTheme.elevationOverlayDefaultLight)
        XCTAssertTrue(inheritedTheme.elevationOverlayDefaultLight == MockTheme.mockThemeElevationCompositeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationCompositeOverlayDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevationOverlayDefaultDark, abstractTheme.elevationOverlayDefaultDark)
        XCTAssertTrue(inheritedTheme.elevationOverlayDefaultDark == MockTheme.mockThemeElevationCompositeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationCompositeOverlayEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevationOverlayEmphasizedLight, abstractTheme.elevationOverlayEmphasizedLight)
        XCTAssertTrue(inheritedTheme.elevationOverlayEmphasizedLight == MockTheme.mockThemeElevationCompositeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationCompositeOverlayEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevationOverlayEmphasizedDark, abstractTheme.elevationOverlayEmphasizedDark)
        XCTAssertTrue(inheritedTheme.elevationOverlayEmphasizedDark == MockTheme.mockThemeElevationCompositeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationCompositeStickyDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevationStickyDefaultLight, abstractTheme.elevationStickyDefaultLight)
        XCTAssertTrue(inheritedTheme.elevationStickyDefaultLight  == MockTheme.mockThemeElevationCompositeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationCompositeStickyDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevationStickyDefaultDark, abstractTheme.elevationStickyDefaultDark)
        XCTAssertTrue(inheritedTheme.elevationStickyDefaultDark == MockTheme.mockThemeElevationCompositeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationCompositeStickyEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevationStickyEmphasizedLight, abstractTheme.elevationStickyEmphasizedLight)
        XCTAssertTrue(inheritedTheme.elevationStickyEmphasizedLight == MockTheme.mockThemeElevationCompositeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationCompositeStickyEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevationStickyEmphasizedDark, abstractTheme.elevationStickyEmphasizedDark)
        XCTAssertTrue(inheritedTheme.elevationStickyEmphasizedDark == MockTheme.mockThemeElevationCompositeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationCompositeStickyNavigationScrolledLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevationStickyNavigationScrolledLight, abstractTheme.elevationStickyNavigationScrolledLight)
        XCTAssertTrue(inheritedTheme.elevationStickyNavigationScrolledLight == MockTheme.mockThemeElevationCompositeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationCompositeStickyNavigationScrolledDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevationStickyNavigationScrolledDark, abstractTheme.elevationStickyNavigationScrolledDark)
        XCTAssertTrue(inheritedTheme.elevationStickyNavigationScrolledDark  == MockTheme.mockThemeElevationCompositeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationCompositeFocusLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevationFocusLight, abstractTheme.elevationFocusLight)
        XCTAssertTrue(inheritedTheme.elevationFocusLight == MockTheme.mockThemeElevationCompositeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationCompositeFocusDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevationFocusDark, abstractTheme.elevationFocusDark)
        XCTAssertTrue(inheritedTheme.elevationFocusDark == MockTheme.mockThemeElevationCompositeRawToken)
    }
}
