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

// WARNING: Maybe removed in the future or needs to be updated with token generation

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
        XCTAssertTrue(inheritedTheme.elevationColorNone == MockTheme.mockThemeElevationMultipleColorSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorRaised() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorRaised, abstractTheme.elevationColorRaised)
        XCTAssertTrue(inheritedTheme.elevationColorRaised == MockTheme.mockThemeElevationMultipleColorSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorDrag() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorDrag, abstractTheme.elevationColorDrag)
        XCTAssertTrue(inheritedTheme.elevationColorDrag == MockTheme.mockThemeElevationMultipleColorSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorOverlayDefault() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorOverlayDefault, abstractTheme.elevationColorOverlayDefault)
        XCTAssertTrue(inheritedTheme.elevationColorOverlayDefault == MockTheme.mockThemeElevationMultipleColorSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorOverlayEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorOverlayEmphasized, abstractTheme.elevationColorOverlayEmphasized)
        XCTAssertTrue(inheritedTheme.elevationColorOverlayEmphasized == MockTheme.mockThemeElevationMultipleColorSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorStickyDefault() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorStickyDefault, abstractTheme.elevationColorStickyDefault)
        XCTAssertTrue(inheritedTheme.elevationColorStickyDefault == MockTheme.mockThemeElevationMultipleColorSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorStickyEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorStickyEmphasized, abstractTheme.elevationColorStickyEmphasized)
        XCTAssertTrue(inheritedTheme.elevationColorStickyEmphasized == MockTheme.mockThemeElevationMultipleColorSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorStickyNavigationScrolled() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorStickyNavigationScrolled, abstractTheme.elevationColorStickyNavigationScrolled)
        XCTAssertTrue(inheritedTheme.elevationColorStickyNavigationScrolled == MockTheme.mockThemeElevationMultipleColorSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorFocus() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorFocus, abstractTheme.elevationColorFocus)
        XCTAssertTrue(inheritedTheme.elevationColorFocus == MockTheme.mockThemeElevationMultipleColorSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationCompositeRaised() throws {
        XCTAssertNotEqual(inheritedTheme.elevationRaised, abstractTheme.elevationRaised)
        XCTAssertTrue(inheritedTheme.elevationRaised == MockTheme.mockThemeElevationCompositeSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationCompositeDrag() throws {
        XCTAssertNotEqual(inheritedTheme.elevationDrag, abstractTheme.elevationDrag)
        XCTAssertTrue(inheritedTheme.elevationDrag == MockTheme.mockThemeElevationCompositeSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationCompositeOverlayDefault() throws {
        XCTAssertNotEqual(inheritedTheme.elevationOverlayDefault, abstractTheme.elevationOverlayDefault)
        XCTAssertTrue(inheritedTheme.elevationOverlayDefault == MockTheme.mockThemeElevationCompositeSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationCompositeOverlayEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.elevationOverlayEmphasized, abstractTheme.elevationOverlayEmphasized)
        XCTAssertTrue(inheritedTheme.elevationOverlayEmphasized == MockTheme.mockThemeElevationCompositeSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationCompositeStickyDefault() throws {
        XCTAssertNotEqual(inheritedTheme.elevationStickyDefault, abstractTheme.elevationStickyDefault)
        XCTAssertTrue(inheritedTheme.elevationStickyDefault  == MockTheme.mockThemeElevationCompositeSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationCompositeStickyEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.elevationStickyEmphasized, abstractTheme.elevationStickyEmphasized)
        XCTAssertTrue(inheritedTheme.elevationStickyEmphasized == MockTheme.mockThemeElevationCompositeSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationCompositeStickyNavigationScrolled() throws {
        XCTAssertNotEqual(inheritedTheme.elevationStickyNavigationScrolled, abstractTheme.elevationStickyNavigationScrolled)
        XCTAssertTrue(inheritedTheme.elevationStickyNavigationScrolled == MockTheme.mockThemeElevationCompositeSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationCompositeFocus() throws {
        XCTAssertNotEqual(inheritedTheme.elevationFocus, abstractTheme.elevationFocus)
        XCTAssertTrue(inheritedTheme.elevationFocus == MockTheme.mockThemeElevationCompositeSemanticToken)
    }
}
