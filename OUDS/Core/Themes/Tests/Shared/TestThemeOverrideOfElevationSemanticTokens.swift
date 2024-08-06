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
import OUDSThemesShared

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In fact, the `OUDSTheme` object is a class, which can be seens as an _asbtract class_, exposing through its extensions and protocols _elevation semantic tokens_.
/// These semantic tokens should be overriden by subclass like the `OrangeTheme` default theme.
/// **These tests checks if any _elevation semantic tokens_ can be surcharged by a child theme**
final class TestThemeOverrideOfElevationSemanticTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OUDSTheme()
        inheritedTheme = MockTheme()
    }

    /// Test overriding of elevation Z Index semantic tokens
    func testInheritedThemeCanOverrideElevationZIndexSemanticTokens() throws {
        XCTAssertNotEqual(inheritedTheme.elevationZIndexDeep, abstractTheme.elevationZIndexDeep)
        XCTAssertTrue(inheritedTheme.elevationZIndexDeep == MockTheme.mockThemeZIndexRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationZIndexDefault, abstractTheme.elevationZIndexDefault)
        XCTAssertTrue(inheritedTheme.elevationZIndexDefault == MockTheme.mockThemeZIndexRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationZIndexDropdown, abstractTheme.elevationZIndexDropdown)
        XCTAssertTrue(inheritedTheme.elevationZIndexDropdown == MockTheme.mockThemeZIndexRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationZIndexSticky, abstractTheme.elevationZIndexSticky)
        XCTAssertTrue(inheritedTheme.elevationZIndexSticky == MockTheme.mockThemeZIndexRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationZIndexFixed, abstractTheme.elevationZIndexFixed)
        XCTAssertTrue(inheritedTheme.elevationZIndexFixed == MockTheme.mockThemeZIndexRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationZIndexBackToTop, abstractTheme.elevationZIndexBackToTop)
        XCTAssertTrue(inheritedTheme.elevationZIndexBackToTop == MockTheme.mockThemeZIndexRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationZIndexSpinner, abstractTheme.elevationZIndexSpinner)
        XCTAssertTrue(inheritedTheme.elevationZIndexSpinner == MockTheme.mockThemeZIndexRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationZIndexOffCanvasBackdrop, abstractTheme.elevationZIndexOffCanvasBackdrop)
        XCTAssertTrue(inheritedTheme.elevationZIndexOffCanvasBackdrop == MockTheme.mockThemeZIndexRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationZIndexOffCanvas, abstractTheme.elevationZIndexOffCanvas)
        XCTAssertTrue(inheritedTheme.elevationZIndexOffCanvas == MockTheme.mockThemeZIndexRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationZIndexModalBackdrop, abstractTheme.elevationZIndexModalBackdrop)
        XCTAssertTrue(inheritedTheme.elevationZIndexModalBackdrop == MockTheme.mockThemeZIndexRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationZIndexModal, abstractTheme.elevationZIndexModal)
        XCTAssertTrue(inheritedTheme.elevationZIndexModal == MockTheme.mockThemeZIndexRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationZIndexPopover, abstractTheme.elevationZIndexPopover)
        XCTAssertTrue(inheritedTheme.elevationZIndexPopover == MockTheme.mockThemeZIndexRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationZIndexTooltip, abstractTheme.elevationZIndexTooltip)
        XCTAssertTrue(inheritedTheme.elevationZIndexTooltip == MockTheme.mockThemeZIndexRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationZIndexToast, abstractTheme.elevationZIndexToast)
        XCTAssertTrue(inheritedTheme.elevationZIndexToast == MockTheme.mockThemeZIndexRawToken)
    }

    /// Test overriding of elevation X Index semantic tokens
    func testInheritedThemeCanOverrideElevationXSemanticTokens() throws {
        XCTAssertNotEqual(inheritedTheme.elevationXNone, abstractTheme.elevationXNone)
        XCTAssertTrue(inheritedTheme.elevationXNone == MockTheme.mockThemeXRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationXRaised, abstractTheme.elevationXRaised)
        XCTAssertTrue(inheritedTheme.elevationXRaised == MockTheme.mockThemeXRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationXDrag, abstractTheme.elevationXDrag)
        XCTAssertTrue(inheritedTheme.elevationXDrag == MockTheme.mockThemeXRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationXOverlayDefault, abstractTheme.elevationXOverlayDefault)
        XCTAssertTrue(inheritedTheme.elevationXOverlayDefault == MockTheme.mockThemeXRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationXOverlayEmphasis, abstractTheme.elevationXOverlayEmphasis)
        XCTAssertTrue(inheritedTheme.elevationXOverlayEmphasis == MockTheme.mockThemeXRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationXStickyDefault, abstractTheme.elevationXStickyDefault)
        XCTAssertTrue(inheritedTheme.elevationXStickyDefault == MockTheme.mockThemeXRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationXStickyEmphasis, abstractTheme.elevationXStickyEmphasis)
        XCTAssertTrue(inheritedTheme.elevationXStickyEmphasis == MockTheme.mockThemeXRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationXStickyNavigationScrolled, abstractTheme.elevationXStickyNavigationScrolled)
        XCTAssertTrue(inheritedTheme.elevationXStickyNavigationScrolled == MockTheme.mockThemeXRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationXFocus, abstractTheme.elevationXFocus)
        XCTAssertTrue(inheritedTheme.elevationXFocus == MockTheme.mockThemeXRawToken)
    }

    /// Test overriding of elevation Y Index semantic tokens
    func testInheritedThemeCanOverrideElevationYSemanticTokens() throws {
        XCTAssertNotEqual(inheritedTheme.elevationYNone, abstractTheme.elevationYNone)
        XCTAssertTrue(inheritedTheme.elevationYNone == MockTheme.mockThemeYRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationYRaised, abstractTheme.elevationYRaised)
        XCTAssertTrue(inheritedTheme.elevationYRaised == MockTheme.mockThemeYRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationYDrag, abstractTheme.elevationYDrag)
        XCTAssertTrue(inheritedTheme.elevationYDrag == MockTheme.mockThemeYRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationYOverlayDefault, abstractTheme.elevationYOverlayDefault)
        XCTAssertTrue(inheritedTheme.elevationYOverlayDefault == MockTheme.mockThemeYRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationYOverlayEmphasis, abstractTheme.elevationYOverlayEmphasis)
        XCTAssertTrue(inheritedTheme.elevationYOverlayEmphasis == MockTheme.mockThemeYRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationYStickyDefault, abstractTheme.elevationYStickyDefault)
        XCTAssertTrue(inheritedTheme.elevationYStickyDefault == MockTheme.mockThemeYRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationYStickyEmphasis, abstractTheme.elevationYStickyEmphasis)
        XCTAssertTrue(inheritedTheme.elevationYStickyEmphasis == MockTheme.mockThemeYRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationYStickyNavigationScrolled, abstractTheme.elevationYStickyNavigationScrolled)
        XCTAssertTrue(inheritedTheme.elevationYStickyNavigationScrolled == MockTheme.mockThemeYRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationYFocus, abstractTheme.elevationYFocus)
        XCTAssertTrue(inheritedTheme.elevationYFocus == MockTheme.mockThemeYRawToken)
    }

    func testInheritedThemeCanOverrideElevationBlurSemanticTokens() throws {
        XCTAssertNotEqual(inheritedTheme.elevationBlurNone, abstractTheme.elevationBlurNone)
        XCTAssertTrue(inheritedTheme.elevationBlurNone == MockTheme.mockThemeBlurRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationBlurRaised, abstractTheme.elevationBlurRaised)
        XCTAssertTrue(inheritedTheme.elevationBlurRaised == MockTheme.mockThemeBlurRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationBlurDrag, abstractTheme.elevationBlurDrag)
        XCTAssertTrue(inheritedTheme.elevationBlurDrag == MockTheme.mockThemeBlurRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationBlurOverlayDefault, abstractTheme.elevationBlurOverlayDefault)
        XCTAssertTrue(inheritedTheme.elevationBlurOverlayDefault == MockTheme.mockThemeBlurRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationBlurOverlayEmphasis, abstractTheme.elevationBlurOverlayEmphasis)
        XCTAssertTrue(inheritedTheme.elevationBlurOverlayEmphasis == MockTheme.mockThemeBlurRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationBlurStickyDefault, abstractTheme.elevationBlurStickyDefault)
        XCTAssertTrue(inheritedTheme.elevationBlurStickyDefault == MockTheme.mockThemeBlurRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationBlurStickyEmphasis, abstractTheme.elevationBlurStickyEmphasis)
        XCTAssertTrue(inheritedTheme.elevationBlurStickyEmphasis == MockTheme.mockThemeBlurRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationBlurStickyNavigationScrolled, abstractTheme.elevationBlurStickyNavigationScrolled)
        XCTAssertTrue(inheritedTheme.elevationBlurStickyNavigationScrolled == MockTheme.mockThemeBlurRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationBlurFocus, abstractTheme.elevationBlurFocus)
        XCTAssertTrue(inheritedTheme.elevationBlurFocus == MockTheme.mockThemeBlurRawToken)
    }

    func testInheritedThemeCanOverrideElevationSpreadSemanticTokens() throws {
        XCTAssertNotEqual(inheritedTheme.elevationSpreadNone, abstractTheme.elevationSpreadNone)
        XCTAssertTrue(inheritedTheme.elevationSpreadNone == MockTheme.mockThemeSpreadRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationSpreadRaised, abstractTheme.elevationSpreadRaised)
        XCTAssertTrue(inheritedTheme.elevationSpreadRaised == MockTheme.mockThemeSpreadRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationSpreadDrag, abstractTheme.elevationSpreadDrag)
        XCTAssertTrue(inheritedTheme.elevationSpreadDrag == MockTheme.mockThemeSpreadRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationSpreadOverlayDefault, abstractTheme.elevationSpreadOverlayDefault)
        XCTAssertTrue(inheritedTheme.elevationSpreadOverlayDefault == MockTheme.mockThemeSpreadRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationSpreadOverlayEmphasis, abstractTheme.elevationSpreadOverlayEmphasis)
        XCTAssertTrue(inheritedTheme.elevationSpreadOverlayEmphasis == MockTheme.mockThemeSpreadRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationSpreadStickyDefault, abstractTheme.elevationSpreadStickyDefault)
        XCTAssertTrue(inheritedTheme.elevationSpreadStickyDefault == MockTheme.mockThemeSpreadRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationSpreadStickyEmphasis, abstractTheme.elevationSpreadStickyEmphasis)
        XCTAssertTrue(inheritedTheme.elevationSpreadStickyEmphasis == MockTheme.mockThemeSpreadRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationSpreadStickyNavigationScrolled, abstractTheme.elevationSpreadStickyNavigationScrolled)
        XCTAssertTrue(inheritedTheme.elevationSpreadStickyNavigationScrolled == MockTheme.mockThemeSpreadRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationSpreadFocus, abstractTheme.elevationSpreadFocus)
        XCTAssertTrue(inheritedTheme.elevationSpreadFocus == MockTheme.mockThemeSpreadRawToken)
    }

    func testInheritedThemeCanOverrideElevationColorSemanticTokens() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorNoneLight, abstractTheme.elevationColorNoneLight)
        XCTAssertTrue(inheritedTheme.elevationColorNoneLight == MockTheme.mockThemeColorRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationColorNoneDark, abstractTheme.elevationColorNoneDark)
        XCTAssertTrue(inheritedTheme.elevationColorNoneDark == MockTheme.mockThemeColorRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationColorRaisedLight, abstractTheme.elevationColorRaisedLight)
        XCTAssertTrue(inheritedTheme.elevationColorRaisedLight == MockTheme.mockThemeColorRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationColorRaisedDark, abstractTheme.elevationColorRaisedDark)
        XCTAssertTrue(inheritedTheme.elevationColorRaisedDark == MockTheme.mockThemeColorRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationColorDragLight, abstractTheme.elevationColorDragLight)
        XCTAssertTrue(inheritedTheme.elevationColorDragLight == MockTheme.mockThemeColorRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationColorDragDark, abstractTheme.elevationColorDragDark)
        XCTAssertTrue(inheritedTheme.elevationColorDragDark == MockTheme.mockThemeColorRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationColorOverlayDefaultLight, abstractTheme.elevationColorOverlayDefaultLight)
        XCTAssertTrue(inheritedTheme.elevationColorOverlayDefaultLight == MockTheme.mockThemeColorRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationColorOverlayDefaultDark, abstractTheme.elevationColorOverlayDefaultDark)
        XCTAssertTrue(inheritedTheme.elevationColorOverlayDefaultDark == MockTheme.mockThemeColorRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationColorOverlayEmphasisLight, abstractTheme.elevationColorOverlayEmphasisLight)
        XCTAssertTrue(inheritedTheme.elevationColorOverlayEmphasisLight == MockTheme.mockThemeColorRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationColorOverlayEmphasisDark, abstractTheme.elevationColorOverlayEmphasisDark)
        XCTAssertTrue(inheritedTheme.elevationColorOverlayEmphasisDark == MockTheme.mockThemeColorRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationColorStickyDefaultLight, abstractTheme.elevationColorStickyDefaultLight)
        XCTAssertTrue(inheritedTheme.elevationColorStickyDefaultLight == MockTheme.mockThemeColorRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationColorStickyDefaultDark, abstractTheme.elevationColorStickyDefaultDark)
        XCTAssertTrue(inheritedTheme.elevationColorStickyDefaultDark == MockTheme.mockThemeColorRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationColorStickyEmphasisLight, abstractTheme.elevationColorStickyEmphasisLight)
        XCTAssertTrue(inheritedTheme.elevationColorStickyEmphasisLight == MockTheme.mockThemeColorRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationColorStickyEmphasisDark, abstractTheme.elevationColorStickyEmphasisDark)
        XCTAssertTrue(inheritedTheme.elevationColorStickyEmphasisDark == MockTheme.mockThemeColorRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationColorStickyNavigationScrolledLight, abstractTheme.elevationColorStickyNavigationScrolledLight)
        XCTAssertTrue(inheritedTheme.elevationColorStickyNavigationScrolledLight == MockTheme.mockThemeColorRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationColorStickyNavigationScrolledDark, abstractTheme.elevationColorStickyNavigationScrolledDark)
        XCTAssertTrue(inheritedTheme.elevationColorStickyNavigationScrolledDark == MockTheme.mockThemeColorRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationColorFocusLight, abstractTheme.elevationColorFocusLight)
        XCTAssertTrue(inheritedTheme.elevationColorFocusLight == MockTheme.mockThemeColorRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationColorFocusDark, abstractTheme.elevationColorFocusDark)
        XCTAssertTrue(inheritedTheme.elevationColorFocusDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideElevationBpxShadowSemanticTokens() throws {
        XCTAssertNotEqual(inheritedTheme.elevationBoxShadowRaisedLight, abstractTheme.elevationBoxShadowRaisedLight)
        XCTAssertTrue(inheritedTheme.elevationBoxShadowRaisedLight == MockTheme.mockThemeBoxShadowRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationBoxShadowRaisedDark, abstractTheme.elevationBoxShadowRaisedDark)
        XCTAssertTrue(inheritedTheme.elevationBoxShadowRaisedDark == MockTheme.mockThemeBoxShadowRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationBoxShadowDragLight, abstractTheme.elevationBoxShadowDragLight)
        XCTAssertTrue(inheritedTheme.elevationBoxShadowDragLight == MockTheme.mockThemeBoxShadowRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationBoxShadowDragDark, abstractTheme.elevationBoxShadowDragDark)
        XCTAssertTrue(inheritedTheme.elevationBoxShadowDragDark == MockTheme.mockThemeBoxShadowRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationBoxShadowOverlayDefaultLight, abstractTheme.elevationBoxShadowOverlayDefaultLight)
        XCTAssertTrue(inheritedTheme.elevationBoxShadowOverlayDefaultLight == MockTheme.mockThemeBoxShadowRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationBoxShadowOverlayDefaultDark, abstractTheme.elevationBoxShadowOverlayDefaultDark)
        XCTAssertTrue(inheritedTheme.elevationBoxShadowOverlayDefaultDark == MockTheme.mockThemeBoxShadowRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationBoxShadowOverlayEmphasisLight, abstractTheme.elevationBoxShadowOverlayEmphasisLight)
        XCTAssertTrue(inheritedTheme.elevationBoxShadowOverlayEmphasisLight == MockTheme.mockThemeBoxShadowRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationBoxShadowOverlayEmphasisDark, abstractTheme.elevationBoxShadowOverlayEmphasisDark)
        XCTAssertTrue(inheritedTheme.elevationBoxShadowOverlayEmphasisDark == MockTheme.mockThemeBoxShadowRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationBoxShadowStickyDefaultLight, abstractTheme.elevationBoxShadowStickyDefaultLight)
        XCTAssertTrue(inheritedTheme.elevationBoxShadowStickyDefaultLight == MockTheme.mockThemeBoxShadowRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationBoxShadowStickyDefaultDark, abstractTheme.elevationBoxShadowStickyDefaultDark)
        XCTAssertTrue(inheritedTheme.elevationBoxShadowStickyDefaultDark == MockTheme.mockThemeBoxShadowRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationBoxShadowStickyEmphasisLight, abstractTheme.elevationBoxShadowStickyEmphasisLight)
        XCTAssertTrue(inheritedTheme.elevationBoxShadowStickyEmphasisLight == MockTheme.mockThemeBoxShadowRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationBoxShadowStickyEmphasisDark, abstractTheme.elevationBoxShadowStickyEmphasisDark)
        XCTAssertTrue(inheritedTheme.elevationBoxShadowStickyEmphasisDark == MockTheme.mockThemeBoxShadowRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationBoxShadowStickyNavigationScrolledLight, abstractTheme.elevationBoxShadowStickyNavigationScrolledLight)
        XCTAssertTrue(inheritedTheme.elevationBoxShadowStickyNavigationScrolledLight == MockTheme.mockThemeBoxShadowRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationBoxShadowStickyNavigationScrolledDark, abstractTheme.elevationBoxShadowStickyNavigationScrolledDark)
        XCTAssertTrue(inheritedTheme.elevationBoxShadowStickyNavigationScrolledDark == MockTheme.mockThemeBoxShadowRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationBoxShadowFocusLight, abstractTheme.elevationBoxShadowFocusLight)
        XCTAssertTrue(inheritedTheme.elevationBoxShadowFocusLight == MockTheme.mockThemeBoxShadowRawToken)

        XCTAssertNotEqual(inheritedTheme.elevationBoxShadowFocusDark, abstractTheme.elevationBoxShadowFocusDark)
        XCTAssertTrue(inheritedTheme.elevationBoxShadowFocusDark == MockTheme.mockThemeBoxShadowRawToken)
    }
}
