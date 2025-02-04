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
import XCTest

// swiftlint:disable required_deinit
// swiftlint:disable implicitly_unwrapped_optional
// swiftlint:disable type_name

final class TestThemeOverrideOfCheckRadioComponentTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Sizes

    func testInheritedThemeCanOverrideCheckRadioComponentTokenSizeMaxHeightAssetsContainer() throws {
        XCTAssertNotEqual(inheritedTheme.checkRadio.checkRadioSizeMaxHeightAssetsContainer, abstractTheme.checkRadio.checkRadioSizeMaxHeightAssetsContainer)
        XCTAssertTrue(inheritedTheme.checkRadio.checkRadioSizeMaxHeightAssetsContainer == MockThemeCheckRadioComponentTokenProvider.mockThemeCheckRadioSize)
    }

    func testInheritedThemeCanOverrideCheckRadioComponentTokenSizeMaxHeightSelectorOnly() throws {
        XCTAssertNotEqual(inheritedTheme.checkRadio.checkRadioSizeMaxHeightSelectorOnly, abstractTheme.checkRadio.checkRadioSizeMaxHeightSelectorOnly)
        XCTAssertTrue(inheritedTheme.checkRadio.checkRadioSizeMaxHeightSelectorOnly == MockThemeCheckRadioComponentTokenProvider.mockThemeCheckRadioSize)
    }

    func testInheritedThemeCanOverrideCheckRadioComponentTokenSizeMinHeightSelectorOnly() throws {
        XCTAssertNotEqual(inheritedTheme.checkRadio.checkRadioSizeMinHeightSelectorOnly, abstractTheme.checkRadio.checkRadioSizeMinHeightSelectorOnly)
        XCTAssertTrue(inheritedTheme.checkRadio.checkRadioSizeMinHeightSelectorOnly == MockThemeCheckRadioComponentTokenProvider.mockThemeCheckRadioSize)
    }

    func testInheritedThemeCanOverrideCheckRadioComponentTokenSizeMinWidthSelectorOnly() throws {
        XCTAssertNotEqual(inheritedTheme.checkRadio.checkRadioSizeMinWidthSelectorOnly, abstractTheme.checkRadio.checkRadioSizeMinWidthSelectorOnly)
        XCTAssertTrue(inheritedTheme.checkRadio.checkRadioSizeMinWidthSelectorOnly == MockThemeCheckRadioComponentTokenProvider.mockThemeCheckRadioSize)
    }

    func testInheritedThemeCanOverrideCheckRadioComponentTokenSizeCheckInnerAsset() throws {
        XCTAssertNotEqual(inheritedTheme.checkRadio.checkRadioSizeCheckInnerAsset, abstractTheme.checkRadio.checkRadioSizeCheckInnerAsset)
        XCTAssertTrue(inheritedTheme.checkRadio.checkRadioSizeCheckInnerAsset == MockThemeCheckRadioComponentTokenProvider.mockThemeCheckRadioSize)
    }

    func testInheritedThemeCanOverrideCheckRadioComponentTokenSizeRadioInnerCircle() throws {
        XCTAssertNotEqual(inheritedTheme.checkRadio.checkRadioSizeRadioInnerCircle, abstractTheme.checkRadio.checkRadioSizeRadioInnerCircle)
        XCTAssertTrue(inheritedTheme.checkRadio.checkRadioSizeRadioInnerCircle == MockThemeCheckRadioComponentTokenProvider.mockThemeCheckRadioSize)
    }

    func testInheritedThemeCanOverrideCheckRadioComponentTokenSizeSelector() throws {
        XCTAssertNotEqual(inheritedTheme.checkRadio.checkRadioSizeSelector, abstractTheme.checkRadio.checkRadioSizeSelector)
        XCTAssertTrue(inheritedTheme.checkRadio.checkRadioSizeSelector == MockThemeCheckRadioComponentTokenProvider.mockThemeCheckRadioSize)
    }

    // MARK: - Borders

    func testInheritedThemeCanOverrideCheckRadioComponentTokenBorderRadiusCheckbox() throws {
        XCTAssertNotEqual(inheritedTheme.checkRadio.checkRadioBorderRadiusCheckbox, abstractTheme.checkRadio.checkRadioBorderRadiusCheckbox)
        XCTAssertTrue(inheritedTheme.checkRadio.checkRadioBorderRadiusCheckbox == MockThemeCheckRadioComponentTokenProvider.mockThemeCheckRadioBorderRadius)
    }

    func testInheritedThemeCanOverrideCheckRadioComponentTokenBorderWidthSelected() throws {
        XCTAssertNotEqual(inheritedTheme.checkRadio.checkRadioBorderWidthSelected, abstractTheme.checkRadio.checkRadioBorderWidthSelected)
        XCTAssertTrue(inheritedTheme.checkRadio.checkRadioBorderWidthSelected == MockThemeCheckRadioComponentTokenProvider.mockThemeCheckRadioBorderWidth)
    }

    func testInheritedThemeCanOverrideCheckRadioComponentTokenBorderWidthSelectedFocus() throws {
        XCTAssertNotEqual(inheritedTheme.checkRadio.checkRadioBorderWidthSelectedFocus, abstractTheme.checkRadio.checkRadioBorderWidthSelectedFocus)
        XCTAssertTrue(inheritedTheme.checkRadio.checkRadioBorderWidthSelectedFocus == MockThemeCheckRadioComponentTokenProvider.mockThemeCheckRadioBorderWidth)
    }

    func testInheritedThemeCanOverrideCheckRadioComponentTokenBorderWidthSelectedHover() throws {
        XCTAssertNotEqual(inheritedTheme.checkRadio.checkRadioBorderWidthSelectedHover, abstractTheme.checkRadio.checkRadioBorderWidthSelectedHover)
        XCTAssertTrue(inheritedTheme.checkRadio.checkRadioBorderWidthSelectedHover == MockThemeCheckRadioComponentTokenProvider.mockThemeCheckRadioBorderWidth)
    }

    func testInheritedThemeCanOverrideCheckRadioComponentTokenBorderWidthSelectedPressed() throws {
        XCTAssertNotEqual(inheritedTheme.checkRadio.checkRadioBorderWidthSelectedPressed, abstractTheme.checkRadio.checkRadioBorderWidthSelectedPressed)
        XCTAssertTrue(inheritedTheme.checkRadio.checkRadioBorderWidthSelectedPressed == MockThemeCheckRadioComponentTokenProvider.mockThemeCheckRadioBorderWidth)
    }

    func testInheritedThemeCanOverrideCheckRadioComponentTokenBorderWidthUnselected() throws {
        XCTAssertNotEqual(inheritedTheme.checkRadio.checkRadioBorderWidthUnselected, abstractTheme.checkRadio.checkRadioBorderWidthUnselected)
        XCTAssertTrue(inheritedTheme.checkRadio.checkRadioBorderWidthUnselected == MockThemeCheckRadioComponentTokenProvider.mockThemeCheckRadioBorderWidth)
    }

    func testInheritedThemeCanOverrideCheckRadioComponentTokenBorderWidthUnselectedFocus() throws {
        XCTAssertNotEqual(inheritedTheme.checkRadio.checkRadioBorderWidthUnselectedFocus, abstractTheme.checkRadio.checkRadioBorderWidthUnselectedFocus)
        XCTAssertTrue(inheritedTheme.checkRadio.checkRadioBorderWidthUnselectedFocus == MockThemeCheckRadioComponentTokenProvider.mockThemeCheckRadioBorderWidth)
    }

    func testInheritedThemeCanOverrideCheckRadioComponentTokenBorderWidthUnselectedHover() throws {
        XCTAssertNotEqual(inheritedTheme.checkRadio.checkRadioBorderWidthUnselectedHover, abstractTheme.checkRadio.checkRadioBorderWidthUnselectedHover)
        XCTAssertTrue(inheritedTheme.checkRadio.checkRadioBorderWidthUnselectedHover == MockThemeCheckRadioComponentTokenProvider.mockThemeCheckRadioBorderWidth)
    }

    func testInheritedThemeCanOverrideCheckRadioComponentTokenBorderWidthUnselectedPressed() throws {
        XCTAssertNotEqual(inheritedTheme.checkRadio.checkRadioBorderWidthUnselectedPressed, abstractTheme.checkRadio.checkRadioBorderWidthUnselectedPressed)
        XCTAssertTrue(inheritedTheme.checkRadio.checkRadioBorderWidthUnselectedPressed == MockThemeCheckRadioComponentTokenProvider.mockThemeCheckRadioBorderWidth)
    }

    // MARK: - Opacities

    func testInheritedThemeCanOverrideCheckRadioComponentTokenOpacitySelectorBgSelected() throws {
        XCTAssertNotEqual(inheritedTheme.checkRadio.checkRadioOpacitySelectorBgSelected, abstractTheme.checkRadio.checkRadioOpacitySelectorBgSelected)
        XCTAssertTrue(inheritedTheme.checkRadio.checkRadioOpacitySelectorBgSelected == MockThemeCheckRadioComponentTokenProvider.mockThemeCheckRadioOpacity)
    }

    func testInheritedThemeCanOverrideCheckRadioComponentTokenOpacitySelectorBgSelectedFocus() throws {
        XCTAssertNotEqual(inheritedTheme.checkRadio.checkRadioOpacitySelectorBgSelectedFocus, abstractTheme.checkRadio.checkRadioOpacitySelectorBgSelectedFocus)
        XCTAssertTrue(inheritedTheme.checkRadio.checkRadioOpacitySelectorBgSelectedFocus == MockThemeCheckRadioComponentTokenProvider.mockThemeCheckRadioOpacity)
    }

    func testInheritedThemeCanOverrideCheckRadioComponentTokenOpacitySelectorBgSelectedHover() throws {
        XCTAssertNotEqual(inheritedTheme.checkRadio.checkRadioOpacitySelectorBgSelectedHover, abstractTheme.checkRadio.checkRadioOpacitySelectorBgSelectedHover)
        XCTAssertTrue(inheritedTheme.checkRadio.checkRadioOpacitySelectorBgSelectedHover == MockThemeCheckRadioComponentTokenProvider.mockThemeCheckRadioOpacity)
    }

    func testInheritedThemeCanOverrideCheckRadioComponentTokenOpacitySelectorBgSelectedPressed() throws {
        XCTAssertNotEqual(inheritedTheme.checkRadio.checkRadioOpacitySelectorBgSelectedPressed, abstractTheme.checkRadio.checkRadioOpacitySelectorBgSelectedPressed)
        XCTAssertTrue(inheritedTheme.checkRadio.checkRadioOpacitySelectorBgSelectedPressed == MockThemeCheckRadioComponentTokenProvider.mockThemeCheckRadioOpacity)
    }

    func testInheritedThemeCanOverrideCheckRadioComponentTokenOpacitySelectorBgUnselected() throws {
        XCTAssertNotEqual(inheritedTheme.checkRadio.checkRadioOpacitySelectorBgUnselected, abstractTheme.checkRadio.checkRadioOpacitySelectorBgUnselected)
        XCTAssertTrue(inheritedTheme.checkRadio.checkRadioOpacitySelectorBgUnselected == MockThemeCheckRadioComponentTokenProvider.mockThemeCheckRadioOpacity)
    }

    func testInheritedThemeCanOverrideCheckRadioComponentTokenOpacitySelectorBgUnselectedFocus() throws {
        XCTAssertNotEqual(inheritedTheme.checkRadio.checkRadioOpacitySelectorBgUnselectedFocus, abstractTheme.checkRadio.checkRadioOpacitySelectorBgUnselectedFocus)
        XCTAssertTrue(inheritedTheme.checkRadio.checkRadioOpacitySelectorBgUnselectedFocus == MockThemeCheckRadioComponentTokenProvider.mockThemeCheckRadioOpacity)
    }

    func testInheritedThemeCanOverrideCheckRadioComponentTokenOpacitySelectorBgUnselectedHover() throws {
        XCTAssertNotEqual(inheritedTheme.checkRadio.checkRadioOpacitySelectorBgUnselectedHover, abstractTheme.checkRadio.checkRadioOpacitySelectorBgUnselectedHover)
        XCTAssertTrue(inheritedTheme.checkRadio.checkRadioOpacitySelectorBgUnselectedHover == MockThemeCheckRadioComponentTokenProvider.mockThemeCheckRadioOpacity)
    }

    func testInheritedThemeCanOverrideCheckRadioComponentTokenOpacitySelectorBgUnselectedPressed() throws {
        XCTAssertNotEqual(inheritedTheme.checkRadio.checkRadioOpacitySelectorBgUnselectedPressed, abstractTheme.checkRadio.checkRadioOpacitySelectorBgUnselectedPressed)
        XCTAssertTrue(inheritedTheme.checkRadio.checkRadioOpacitySelectorBgUnselectedPressed == MockThemeCheckRadioComponentTokenProvider.mockThemeCheckRadioOpacity)
    }

    // MARK: - Colors

    func testInheritedThemeCanOverrideCheckRadioComponentTokenColorContentAssetDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.checkRadio.checkRadioColorContentAssetDisabled, abstractTheme.checkRadio.checkRadioColorContentAssetDisabled)
        XCTAssertTrue(inheritedTheme.checkRadio.checkRadioColorContentAssetDisabled == MockThemeCheckRadioComponentTokenProvider.mockThemeCheckRadioColor)
    }

    func testInheritedThemeCanOverrideCheckRadioComponentTokenColorContentAssetEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.checkRadio.checkRadioColorContentAssetEnabled, abstractTheme.checkRadio.checkRadioColorContentAssetEnabled)
        XCTAssertTrue(inheritedTheme.checkRadio.checkRadioColorContentAssetEnabled == MockThemeCheckRadioComponentTokenProvider.mockThemeCheckRadioColor)
    }

    func testInheritedThemeCanOverrideCheckRadioComponentTokenColorContentAssetErrorEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.checkRadio.checkRadioColorContentAssetErrorEnabled, abstractTheme.checkRadio.checkRadioColorContentAssetErrorEnabled)
        XCTAssertTrue(inheritedTheme.checkRadio.checkRadioColorContentAssetErrorEnabled == MockThemeCheckRadioComponentTokenProvider.mockThemeCheckRadioColor)
    }

    func testInheritedThemeCanOverrideCheckRadioComponentTokenColorContentAssetErrorFocus() throws {
        XCTAssertNotEqual(inheritedTheme.checkRadio.checkRadioColorContentAssetErrorFocus, abstractTheme.checkRadio.checkRadioColorContentAssetErrorFocus)
        XCTAssertTrue(inheritedTheme.checkRadio.checkRadioColorContentAssetErrorFocus == MockThemeCheckRadioComponentTokenProvider.mockThemeCheckRadioColor)
    }

    func testInheritedThemeCanOverrideCheckRadioComponentTokenColorContentAssetErrorHover() throws {
        XCTAssertNotEqual(inheritedTheme.checkRadio.checkRadioColorContentAssetErrorHover, abstractTheme.checkRadio.checkRadioColorContentAssetErrorHover)
        XCTAssertTrue(inheritedTheme.checkRadio.checkRadioColorContentAssetErrorHover == MockThemeCheckRadioComponentTokenProvider.mockThemeCheckRadioColor)
    }

    func testInheritedThemeCanOverrideCheckRadioComponentTokenColorContentAssetErrorPressed() throws {
        XCTAssertNotEqual(inheritedTheme.checkRadio.checkRadioColorContentAssetErrorPressed, abstractTheme.checkRadio.checkRadioColorContentAssetErrorPressed)
        XCTAssertTrue(inheritedTheme.checkRadio.checkRadioColorContentAssetErrorPressed == MockThemeCheckRadioComponentTokenProvider.mockThemeCheckRadioColor)
    }

    func testInheritedThemeCanOverrideCheckRadioComponentTokenColorContentAssetFocus() throws {
        XCTAssertNotEqual(inheritedTheme.checkRadio.checkRadioColorContentAssetFocus, abstractTheme.checkRadio.checkRadioColorContentAssetFocus)
        XCTAssertTrue(inheritedTheme.checkRadio.checkRadioColorContentAssetFocus == MockThemeCheckRadioComponentTokenProvider.mockThemeCheckRadioColor)
    }

    func testInheritedThemeCanOverrideCheckRadioComponentTokenColorContentAssetHover() throws {
        XCTAssertNotEqual(inheritedTheme.checkRadio.checkRadioColorContentAssetHover, abstractTheme.checkRadio.checkRadioColorContentAssetHover)
        XCTAssertTrue(inheritedTheme.checkRadio.checkRadioColorContentAssetHover == MockThemeCheckRadioComponentTokenProvider.mockThemeCheckRadioColor)
    }

    func testInheritedThemeCanOverrideCheckRadioComponentTokenColorContentAssetPressed() throws {
        XCTAssertNotEqual(inheritedTheme.checkRadio.checkRadioColorContentAssetPressed, abstractTheme.checkRadio.checkRadioColorContentAssetPressed)
        XCTAssertTrue(inheritedTheme.checkRadio.checkRadioColorContentAssetPressed == MockThemeCheckRadioComponentTokenProvider.mockThemeCheckRadioColor)
    }

    func testInheritedThemeCanOverrideCheckRadioComponentTokenColorContentAssetSelected() throws {
        XCTAssertNotEqual(inheritedTheme.checkRadio.checkRadioColorContentAssetSelected, abstractTheme.checkRadio.checkRadioColorContentAssetSelected)
        XCTAssertTrue(inheritedTheme.checkRadio.checkRadioColorContentAssetSelected == MockThemeCheckRadioComponentTokenProvider.mockThemeCheckRadioColor)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable type_name
