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

// swiftlint:disable type_body_length

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

    // MARK: - Semantic token - Elevation - Z index

    func testInheritedThemeCanOverrideSemanticTokenElevationZIndexDeep() throws {
        XCTAssertNotEqual(inheritedTheme.elevationZIndexDeep, abstractTheme.elevationZIndexDeep)
        XCTAssertTrue(inheritedTheme.elevationZIndexDeep == MockTheme.mockThemeZIndexRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationZIndexDefault() throws {
        XCTAssertNotEqual(inheritedTheme.elevationZIndexDefault, abstractTheme.elevationZIndexDefault)
        XCTAssertTrue(inheritedTheme.elevationZIndexDefault == MockTheme.mockThemeZIndexRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationZIndexDropdown() throws {
        XCTAssertNotEqual(inheritedTheme.elevationZIndexDropdown, abstractTheme.elevationZIndexDropdown)
        XCTAssertTrue(inheritedTheme.elevationZIndexDropdown == MockTheme.mockThemeZIndexRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationZIndexSticky() throws {
        XCTAssertNotEqual(inheritedTheme.elevationZIndexSticky, abstractTheme.elevationZIndexSticky)
        XCTAssertTrue(inheritedTheme.elevationZIndexSticky == MockTheme.mockThemeZIndexRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationZIndexFixed() throws {
        XCTAssertNotEqual(inheritedTheme.elevationZIndexFixed, abstractTheme.elevationZIndexFixed)
        XCTAssertTrue(inheritedTheme.elevationZIndexFixed == MockTheme.mockThemeZIndexRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationZIndexBackToTop() throws {
        XCTAssertNotEqual(inheritedTheme.elevationZIndexBackToTop, abstractTheme.elevationZIndexBackToTop)
        XCTAssertTrue(inheritedTheme.elevationZIndexBackToTop == MockTheme.mockThemeZIndexRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationZIndexSpinner() throws {
        XCTAssertNotEqual(inheritedTheme.elevationZIndexSpinner, abstractTheme.elevationZIndexSpinner)
        XCTAssertTrue(inheritedTheme.elevationZIndexSpinner == MockTheme.mockThemeZIndexRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationZIndexOffCanvasBackdrop() throws {
        XCTAssertNotEqual(inheritedTheme.elevationZIndexOffCanvasBackdrop, abstractTheme.elevationZIndexOffCanvasBackdrop)
        XCTAssertTrue(inheritedTheme.elevationZIndexOffCanvasBackdrop == MockTheme.mockThemeZIndexRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationZIndexOffCanvas() throws {
        XCTAssertNotEqual(inheritedTheme.elevationZIndexOffCanvas, abstractTheme.elevationZIndexOffCanvas)
        XCTAssertTrue(inheritedTheme.elevationZIndexOffCanvas == MockTheme.mockThemeZIndexRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationZIndexModalBackdrop() throws {
        XCTAssertNotEqual(inheritedTheme.elevationZIndexModalBackdrop, abstractTheme.elevationZIndexModalBackdrop)
        XCTAssertTrue(inheritedTheme.elevationZIndexModalBackdrop == MockTheme.mockThemeZIndexRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationZIndexModal() throws {
        XCTAssertNotEqual(inheritedTheme.elevationZIndexModal, abstractTheme.elevationZIndexModal)
        XCTAssertTrue(inheritedTheme.elevationZIndexModal == MockTheme.mockThemeZIndexRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationZIndexPopover() throws {
        XCTAssertNotEqual(inheritedTheme.elevationZIndexPopover, abstractTheme.elevationZIndexPopover)
        XCTAssertTrue(inheritedTheme.elevationZIndexPopover == MockTheme.mockThemeZIndexRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationZIndexTooltip() throws {
        XCTAssertNotEqual(inheritedTheme.elevationZIndexTooltip, abstractTheme.elevationZIndexTooltip)
        XCTAssertTrue(inheritedTheme.elevationZIndexTooltip == MockTheme.mockThemeZIndexRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationZIndexToast() throws {
        XCTAssertNotEqual(inheritedTheme.elevationZIndexToast, abstractTheme.elevationZIndexToast)
        XCTAssertTrue(inheritedTheme.elevationZIndexToast == MockTheme.mockThemeZIndexRawToken)
    }

    // MARK: - Semantic token - Elevation - X

    func testInheritedThemeCanOverrideSemanticTokenElevationXNone() throws {
        XCTAssertNotEqual(inheritedTheme.elevationXNone, abstractTheme.elevationXNone)
        XCTAssertTrue(inheritedTheme.elevationXNone == MockTheme.mockThemeXRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationXRaised() throws {
        XCTAssertNotEqual(inheritedTheme.elevationXRaised, abstractTheme.elevationXRaised)
        XCTAssertTrue(inheritedTheme.elevationXRaised == MockTheme.mockThemeXRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationXDrag() throws {
        XCTAssertNotEqual(inheritedTheme.elevationXDrag, abstractTheme.elevationXDrag)
        XCTAssertTrue(inheritedTheme.elevationXDrag == MockTheme.mockThemeXRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationXOverlayDefault() throws {
        XCTAssertNotEqual(inheritedTheme.elevationXOverlayDefault, abstractTheme.elevationXOverlayDefault)
        XCTAssertTrue(inheritedTheme.elevationXOverlayDefault == MockTheme.mockThemeXRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationXOverlayEmphasis() throws {
        XCTAssertNotEqual(inheritedTheme.elevationXOverlayEmphasis, abstractTheme.elevationXOverlayEmphasis)
        XCTAssertTrue(inheritedTheme.elevationXOverlayEmphasis == MockTheme.mockThemeXRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationXStickyDefault() throws {
        XCTAssertNotEqual(inheritedTheme.elevationXStickyDefault, abstractTheme.elevationXStickyDefault)
        XCTAssertTrue(inheritedTheme.elevationXStickyDefault == MockTheme.mockThemeXRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationXStickyEmphasis() throws {
        XCTAssertNotEqual(inheritedTheme.elevationXStickyEmphasis, abstractTheme.elevationXStickyEmphasis)
        XCTAssertTrue(inheritedTheme.elevationXStickyEmphasis == MockTheme.mockThemeXRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationXStickyNavigationScrolled() throws {
        XCTAssertNotEqual(inheritedTheme.elevationXStickyNavigationScrolled, abstractTheme.elevationXStickyNavigationScrolled)
        XCTAssertTrue(inheritedTheme.elevationXStickyNavigationScrolled == MockTheme.mockThemeXRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationXFocus() throws {
        XCTAssertNotEqual(inheritedTheme.elevationXFocus, abstractTheme.elevationXFocus)
        XCTAssertTrue(inheritedTheme.elevationXFocus == MockTheme.mockThemeXRawToken)
    }

    // MARK: - Semantic token - Elevation - Y

    func testInheritedThemeCanOverrideSemanticTokenElevationYNone() throws {
        XCTAssertNotEqual(inheritedTheme.elevationYNone, abstractTheme.elevationYNone)
        XCTAssertTrue(inheritedTheme.elevationYNone == MockTheme.mockThemeYRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationYRaised() throws {
        XCTAssertNotEqual(inheritedTheme.elevationYRaised, abstractTheme.elevationYRaised)
        XCTAssertTrue(inheritedTheme.elevationYRaised == MockTheme.mockThemeYRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationYDrag() throws {
        XCTAssertNotEqual(inheritedTheme.elevationYDrag, abstractTheme.elevationYDrag)
        XCTAssertTrue(inheritedTheme.elevationYDrag == MockTheme.mockThemeYRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationYOverlayDefault() throws {
        XCTAssertNotEqual(inheritedTheme.elevationYOverlayDefault, abstractTheme.elevationYOverlayDefault)
        XCTAssertTrue(inheritedTheme.elevationYOverlayDefault == MockTheme.mockThemeYRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationYOverlayEmphasis() throws {
        XCTAssertNotEqual(inheritedTheme.elevationYOverlayEmphasis, abstractTheme.elevationYOverlayEmphasis)
        XCTAssertTrue(inheritedTheme.elevationYOverlayEmphasis == MockTheme.mockThemeYRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationYStickyDefault() throws {
        XCTAssertNotEqual(inheritedTheme.elevationYStickyDefault, abstractTheme.elevationYStickyDefault)
        XCTAssertTrue(inheritedTheme.elevationYStickyDefault == MockTheme.mockThemeYRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationYStickyEmphasis() throws {
        XCTAssertNotEqual(inheritedTheme.elevationYStickyEmphasis, abstractTheme.elevationYStickyEmphasis)
        XCTAssertTrue(inheritedTheme.elevationYStickyEmphasis == MockTheme.mockThemeYRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationYStickyNavigationScrolled() throws {
        XCTAssertNotEqual(inheritedTheme.elevationYStickyNavigationScrolled, abstractTheme.elevationYStickyNavigationScrolled)
        XCTAssertTrue(inheritedTheme.elevationYStickyNavigationScrolled == MockTheme.mockThemeYRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationYFocus() throws {
        XCTAssertNotEqual(inheritedTheme.elevationYFocus, abstractTheme.elevationYFocus)
        XCTAssertTrue(inheritedTheme.elevationYFocus == MockTheme.mockThemeYRawToken)
    }

    // MARK: - Semantic token - Elevation - Blur

    func testInheritedThemeCanOverrideSemanticTokenElevationBlurNone() throws {
        XCTAssertNotEqual(inheritedTheme.elevationBlurNone, abstractTheme.elevationBlurNone)
        XCTAssertTrue(inheritedTheme.elevationBlurNone == MockTheme.mockThemeBlurRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationBlurRaised() throws {
        XCTAssertNotEqual(inheritedTheme.elevationBlurRaised, abstractTheme.elevationBlurRaised)
        XCTAssertTrue(inheritedTheme.elevationBlurRaised == MockTheme.mockThemeBlurRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationBlurDrag() throws {
        XCTAssertNotEqual(inheritedTheme.elevationBlurDrag, abstractTheme.elevationBlurDrag)
        XCTAssertTrue(inheritedTheme.elevationBlurDrag == MockTheme.mockThemeBlurRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationBlurOverlayDefault() throws {
        XCTAssertNotEqual(inheritedTheme.elevationBlurOverlayDefault, abstractTheme.elevationBlurOverlayDefault)
        XCTAssertTrue(inheritedTheme.elevationBlurOverlayDefault == MockTheme.mockThemeBlurRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationBlurOverlayEmphasis() throws {
        XCTAssertNotEqual(inheritedTheme.elevationBlurOverlayEmphasis, abstractTheme.elevationBlurOverlayEmphasis)
        XCTAssertTrue(inheritedTheme.elevationBlurOverlayEmphasis == MockTheme.mockThemeBlurRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationBlurStickyDefault() throws {
        XCTAssertNotEqual(inheritedTheme.elevationBlurStickyDefault, abstractTheme.elevationBlurStickyDefault)
        XCTAssertTrue(inheritedTheme.elevationBlurStickyDefault == MockTheme.mockThemeBlurRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationBlurStickyEmphasis() throws {
        XCTAssertNotEqual(inheritedTheme.elevationBlurStickyEmphasis, abstractTheme.elevationBlurStickyEmphasis)
        XCTAssertTrue(inheritedTheme.elevationBlurStickyEmphasis == MockTheme.mockThemeBlurRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationBlurStickyNavigationScrolled() throws {
        XCTAssertNotEqual(inheritedTheme.elevationBlurStickyNavigationScrolled, abstractTheme.elevationBlurStickyNavigationScrolled)
        XCTAssertTrue(inheritedTheme.elevationBlurStickyNavigationScrolled == MockTheme.mockThemeBlurRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationBlurFocus() throws {
        XCTAssertNotEqual(inheritedTheme.elevationBlurFocus, abstractTheme.elevationBlurFocus)
        XCTAssertTrue(inheritedTheme.elevationBlurFocus == MockTheme.mockThemeBlurRawToken)
    }

    // MARK: - Semantic token - Elevation - Spread

    func testInheritedThemeCanOverrideSemanticTokenElevationSpreadNone() throws {
        XCTAssertNotEqual(inheritedTheme.elevationSpreadNone, abstractTheme.elevationSpreadNone)
        XCTAssertTrue(inheritedTheme.elevationSpreadNone == MockTheme.mockThemeSpreadRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationSpreadRaised() throws {
        XCTAssertNotEqual(inheritedTheme.elevationSpreadRaised, abstractTheme.elevationSpreadRaised)
        XCTAssertTrue(inheritedTheme.elevationSpreadRaised == MockTheme.mockThemeSpreadRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationSpreadDrag() throws {
        XCTAssertNotEqual(inheritedTheme.elevationSpreadDrag, abstractTheme.elevationSpreadDrag)
        XCTAssertTrue(inheritedTheme.elevationSpreadDrag == MockTheme.mockThemeSpreadRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationSpreadOverlayDefault() throws {
        XCTAssertNotEqual(inheritedTheme.elevationSpreadOverlayDefault, abstractTheme.elevationSpreadOverlayDefault)
        XCTAssertTrue(inheritedTheme.elevationSpreadOverlayDefault == MockTheme.mockThemeSpreadRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationSpreadOverlayEmphasis() throws {
        XCTAssertNotEqual(inheritedTheme.elevationSpreadOverlayEmphasis, abstractTheme.elevationSpreadOverlayEmphasis)
        XCTAssertTrue(inheritedTheme.elevationSpreadOverlayEmphasis == MockTheme.mockThemeSpreadRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationSpreadStickyDefault() throws {
        XCTAssertNotEqual(inheritedTheme.elevationSpreadStickyDefault, abstractTheme.elevationSpreadStickyDefault)
        XCTAssertTrue(inheritedTheme.elevationSpreadStickyDefault == MockTheme.mockThemeSpreadRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationSpreadStickyEmphasis() throws {
        XCTAssertNotEqual(inheritedTheme.elevationSpreadStickyEmphasis, abstractTheme.elevationSpreadStickyEmphasis)
        XCTAssertTrue(inheritedTheme.elevationSpreadStickyEmphasis == MockTheme.mockThemeSpreadRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationSpreadStickyNavigationScrolled() throws {
        XCTAssertNotEqual(inheritedTheme.elevationSpreadStickyNavigationScrolled, abstractTheme.elevationSpreadStickyNavigationScrolled)
        XCTAssertTrue(inheritedTheme.elevationSpreadStickyNavigationScrolled == MockTheme.mockThemeSpreadRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationSpreadFocus() throws {
        XCTAssertNotEqual(inheritedTheme.elevationSpreadFocus, abstractTheme.elevationSpreadFocus)
        XCTAssertTrue(inheritedTheme.elevationSpreadFocus == MockTheme.mockThemeSpreadRawToken)
    }

    // MARK: - Semantic token - Elevation - Color - None

    func testInheritedThemeCanOverrideSemanticTokenElevationColorNoneLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorNoneLight, abstractTheme.elevationColorNoneLight)
        XCTAssertTrue(inheritedTheme.elevationColorNoneLight == MockTheme.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorNoneDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorNoneDark, abstractTheme.elevationColorNoneDark)
        XCTAssertTrue(inheritedTheme.elevationColorNoneDark == MockTheme.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorRaisedLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorRaisedLight, abstractTheme.elevationColorRaisedLight)
        XCTAssertTrue(inheritedTheme.elevationColorRaisedLight == MockTheme.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorRaisedDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorRaisedDark, abstractTheme.elevationColorRaisedDark)
        XCTAssertTrue(inheritedTheme.elevationColorRaisedDark == MockTheme.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorDragLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorDragLight, abstractTheme.elevationColorDragLight)
        XCTAssertTrue(inheritedTheme.elevationColorDragLight == MockTheme.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorDragDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorDragDark, abstractTheme.elevationColorDragDark)
        XCTAssertTrue(inheritedTheme.elevationColorDragDark == MockTheme.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorOverlayDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorOverlayDefaultLight, abstractTheme.elevationColorOverlayDefaultLight)
        XCTAssertTrue(inheritedTheme.elevationColorOverlayDefaultLight == MockTheme.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorOverlayDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorOverlayDefaultDark, abstractTheme.elevationColorOverlayDefaultDark)
        XCTAssertTrue(inheritedTheme.elevationColorOverlayDefaultDark == MockTheme.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorOverlayEmphasisLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorOverlayEmphasisLight, abstractTheme.elevationColorOverlayEmphasisLight)
        XCTAssertTrue(inheritedTheme.elevationColorOverlayEmphasisLight == MockTheme.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorOverlayEmphasisDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorOverlayEmphasisDark, abstractTheme.elevationColorOverlayEmphasisDark)
        XCTAssertTrue(inheritedTheme.elevationColorOverlayEmphasisDark == MockTheme.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorStickyDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorStickyDefaultLight, abstractTheme.elevationColorStickyDefaultLight)
        XCTAssertTrue(inheritedTheme.elevationColorStickyDefaultLight == MockTheme.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorStickyDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorStickyDefaultDark, abstractTheme.elevationColorStickyDefaultDark)
        XCTAssertTrue(inheritedTheme.elevationColorStickyDefaultDark == MockTheme.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorStickyEmphasisLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorStickyEmphasisLight, abstractTheme.elevationColorStickyEmphasisLight)
        XCTAssertTrue(inheritedTheme.elevationColorStickyEmphasisLight == MockTheme.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorStickyEmphasisDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorStickyEmphasisDark, abstractTheme.elevationColorStickyEmphasisDark)
        XCTAssertTrue(inheritedTheme.elevationColorStickyEmphasisDark == MockTheme.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorStickyNavigationScrolledLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorStickyNavigationScrolledLight, abstractTheme.elevationColorStickyNavigationScrolledLight)
        XCTAssertTrue(inheritedTheme.elevationColorStickyNavigationScrolledLight == MockTheme.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorStickyNavigationScrolledDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorStickyNavigationScrolledDark, abstractTheme.elevationColorStickyNavigationScrolledDark)
        XCTAssertTrue(inheritedTheme.elevationColorStickyNavigationScrolledDark == MockTheme.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorFocusLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorFocusLight, abstractTheme.elevationColorFocusLight)
        XCTAssertTrue(inheritedTheme.elevationColorFocusLight == MockTheme.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorFocusDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorFocusDark, abstractTheme.elevationColorFocusDark)
        XCTAssertTrue(inheritedTheme.elevationColorFocusDark == MockTheme.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationBoxShadowRaisedDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevationBoxShadowRaisedDark, abstractTheme.elevationBoxShadowRaisedDark)
        XCTAssertTrue(inheritedTheme.elevationBoxShadowRaisedDark == MockTheme.mockThemeBoxShadowRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationBoxShadowDragLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevationBoxShadowDragLight, abstractTheme.elevationBoxShadowDragLight)
        XCTAssertTrue(inheritedTheme.elevationBoxShadowDragLight == MockTheme.mockThemeBoxShadowRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationBoxShadowDragDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevationBoxShadowDragDark, abstractTheme.elevationBoxShadowDragDark)
        XCTAssertTrue(inheritedTheme.elevationBoxShadowDragDark == MockTheme.mockThemeBoxShadowRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationBoxShadowOverlayDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevationBoxShadowOverlayDefaultLight, abstractTheme.elevationBoxShadowOverlayDefaultLight)
        XCTAssertTrue(inheritedTheme.elevationBoxShadowOverlayDefaultLight == MockTheme.mockThemeBoxShadowRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationBoxShadowOverlayDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevationBoxShadowOverlayDefaultDark, abstractTheme.elevationBoxShadowOverlayDefaultDark)
        XCTAssertTrue(inheritedTheme.elevationBoxShadowOverlayDefaultDark == MockTheme.mockThemeBoxShadowRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationBoxShadowOverlayEmphasisLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevationBoxShadowOverlayEmphasisLight, abstractTheme.elevationBoxShadowOverlayEmphasisLight)
        XCTAssertTrue(inheritedTheme.elevationBoxShadowOverlayEmphasisLight == MockTheme.mockThemeBoxShadowRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationBoxShadowOverlayEmphasisDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevationBoxShadowOverlayEmphasisDark, abstractTheme.elevationBoxShadowOverlayEmphasisDark)
        XCTAssertTrue(inheritedTheme.elevationBoxShadowOverlayEmphasisDark == MockTheme.mockThemeBoxShadowRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationBoxShadowStickyDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevationBoxShadowStickyDefaultLight, abstractTheme.elevationBoxShadowStickyDefaultLight)
        XCTAssertTrue(inheritedTheme.elevationBoxShadowStickyDefaultLight  == MockTheme.mockThemeBoxShadowRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationBoxShadowStickyDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevationBoxShadowStickyDefaultDark, abstractTheme.elevationBoxShadowStickyDefaultDark)
        XCTAssertTrue(inheritedTheme.elevationBoxShadowStickyDefaultDark == MockTheme.mockThemeBoxShadowRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationBoxShadowStickyEmphasisLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevationBoxShadowStickyEmphasisLight, abstractTheme.elevationBoxShadowStickyEmphasisLight)
        XCTAssertTrue(inheritedTheme.elevationBoxShadowStickyEmphasisLight == MockTheme.mockThemeBoxShadowRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationBoxShadowStickyEmphasisDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevationBoxShadowStickyEmphasisDark, abstractTheme.elevationBoxShadowStickyEmphasisDark)
        XCTAssertTrue(inheritedTheme.elevationBoxShadowStickyEmphasisDark == MockTheme.mockThemeBoxShadowRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationBoxShadowStickyNavigationScrolledLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevationBoxShadowStickyNavigationScrolledLight, abstractTheme.elevationBoxShadowStickyNavigationScrolledLight)
        XCTAssertTrue(inheritedTheme.elevationBoxShadowStickyNavigationScrolledLight == MockTheme.mockThemeBoxShadowRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationBoxShadowStickyNavigationScrolledDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevationBoxShadowStickyNavigationScrolledDark, abstractTheme.elevationBoxShadowStickyNavigationScrolledDark)
        XCTAssertTrue(inheritedTheme.elevationBoxShadowStickyNavigationScrolledDark  == MockTheme.mockThemeBoxShadowRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationBoxShadowFocusLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevationBoxShadowFocusLight, abstractTheme.elevationBoxShadowFocusLight)
        XCTAssertTrue(inheritedTheme.elevationBoxShadowFocusLight == MockTheme.mockThemeBoxShadowRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationBoxShadowFocusDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevationBoxShadowFocusDark, abstractTheme.elevationBoxShadowFocusDark)
        XCTAssertTrue(inheritedTheme.elevationBoxShadowFocusDark == MockTheme.mockThemeBoxShadowRawToken)
    }
}

// swiftlint:enable type_body_length
