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

final class TestThemeOverrideOfSelectComponentTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    func testInheritedThemeCanOverrideSelectComponentTokenSizeMaxHeightContainerIcon() throws {
        XCTAssertNotEqual(inheritedTheme.select.selectSizeMaxHeightContainerIcon, abstractTheme.select.selectSizeMaxHeightContainerIcon)
        XCTAssertTrue(inheritedTheme.select.selectSizeMaxHeightContainerIcon == MockThemeSelectComponentTokenProvider.mockThemeSelectSize)
    }

    func testInheritedThemeCanOverrideSelectComponentTokenSizeMinHeight() throws {
        XCTAssertNotEqual(inheritedTheme.select.selectSizeMinHeight, abstractTheme.select.selectSizeMinHeight)
        XCTAssertTrue(inheritedTheme.select.selectSizeMinHeight == MockThemeSelectComponentTokenProvider.mockThemeSelectSize)
    }

    func testInheritedThemeCanOverrideSelectComponentTokenSizeMinHeightIconOnly() throws {
        XCTAssertNotEqual(inheritedTheme.select.selectSizeMinHeightIconOnly, abstractTheme.select.selectSizeMinHeightIconOnly)
        XCTAssertTrue(inheritedTheme.select.selectSizeMinHeightIconOnly == MockThemeSelectComponentTokenProvider.mockThemeSelectSize)
    }

    func testInheritedThemeCanOverrideSelectComponentTokenSizeMinWidth() throws {
        XCTAssertNotEqual(inheritedTheme.select.selectSizeMinWidth, abstractTheme.select.selectSizeMinWidth)
        XCTAssertTrue(inheritedTheme.select.selectSizeMinWidth == MockThemeSelectComponentTokenProvider.mockThemeSelectSize)
    }

    func testInheritedThemeCanOverrideSelectComponentTokenSizeMinWidthIconOnly() throws {
        XCTAssertNotEqual(inheritedTheme.select.selectSizeMinWidthIconOnly, abstractTheme.select.selectSizeMinWidthIconOnly)
        XCTAssertTrue(inheritedTheme.select.selectSizeMinWidthIconOnly == MockThemeSelectComponentTokenProvider.mockThemeSelectSize)
    }

    func testInheritedThemeCanOverrideSelectComponentTokenSizeCheckBox() throws {
        XCTAssertNotEqual(inheritedTheme.select.selectSizeCheckBox, abstractTheme.select.selectSizeCheckBox)
        XCTAssertTrue(inheritedTheme.select.selectSizeCheckBox == MockThemeSelectComponentTokenProvider.mockThemeSelectSize)
    }

    func testInheritedThemeCanOverrideSelectComponentTokenSizeIcon() throws {
        XCTAssertNotEqual(inheritedTheme.select.selectSizeIcon, abstractTheme.select.selectSizeIcon)
        XCTAssertTrue(inheritedTheme.select.selectSizeIcon == MockThemeSelectComponentTokenProvider.mockThemeSelectSize)
    }

    func testInheritedThemeCanOverrideSelectComponentTokenSizeLoader() throws {
        XCTAssertNotEqual(inheritedTheme.select.selectSizeLoader, abstractTheme.select.selectSizeLoader)
        XCTAssertTrue(inheritedTheme.select.selectSizeLoader == MockThemeSelectComponentTokenProvider.mockThemeSelectSize)
    }

    func testInheritedThemeCanOverrideSelectComponentTokenColorBgDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.select.selectColorBgDisabled, abstractTheme.select.selectColorBgDisabled)
        XCTAssertTrue(inheritedTheme.select.selectColorBgDisabled == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    func testInheritedThemeCanOverrideSelectComponentTokenColorBgEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.select.selectColorBgEnabled, abstractTheme.select.selectColorBgEnabled)
        XCTAssertTrue(inheritedTheme.select.selectColorBgEnabled == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    func testInheritedThemeCanOverrideSelectComponentTokenColorBgFocus() throws {
        XCTAssertNotEqual(inheritedTheme.select.selectColorBgFocus, abstractTheme.select.selectColorBgFocus)
        XCTAssertTrue(inheritedTheme.select.selectColorBgFocus == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    func testInheritedThemeCanOverrideSelectComponentTokenColorBgHover() throws {
        XCTAssertNotEqual(inheritedTheme.select.selectColorBgHover, abstractTheme.select.selectColorBgHover)
        XCTAssertTrue(inheritedTheme.select.selectColorBgHover == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    func testInheritedThemeCanOverrideSelectComponentTokenColorBgLoading() throws {
        XCTAssertNotEqual(inheritedTheme.select.selectColorBgLoading, abstractTheme.select.selectColorBgLoading)
        XCTAssertTrue(inheritedTheme.select.selectColorBgLoading == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    func testInheritedThemeCanOverrideSelectComponentTokenColorBgPressed() throws {
        XCTAssertNotEqual(inheritedTheme.select.selectColorBgPressed, abstractTheme.select.selectColorBgPressed)
        XCTAssertTrue(inheritedTheme.select.selectColorBgPressed == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    func testInheritedThemeCanOverrideSelectComponentTokenColorBorderDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.select.selectColorBorderDisabled, abstractTheme.select.selectColorBorderDisabled)
        XCTAssertTrue(inheritedTheme.select.selectColorBorderDisabled == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    func testInheritedThemeCanOverrideSelectComponentTokenColorBorderEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.select.selectColorBorderEnabled, abstractTheme.select.selectColorBorderEnabled)
        XCTAssertTrue(inheritedTheme.select.selectColorBorderEnabled == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    func testInheritedThemeCanOverrideSelectComponentTokenColorBorderHover() throws {
        XCTAssertNotEqual(inheritedTheme.select.selectColorBorderHover, abstractTheme.select.selectColorBorderHover)
        XCTAssertTrue(inheritedTheme.select.selectColorBorderHover == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    func testInheritedThemeCanOverrideSelectComponentTokenColorBorderLoading() throws {
        XCTAssertNotEqual(inheritedTheme.select.selectColorBorderLoading, abstractTheme.select.selectColorBorderLoading)
        XCTAssertTrue(inheritedTheme.select.selectColorBorderLoading == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    func testInheritedThemeCanOverrideSelectComponentTokenColorBorderPressed() throws {
        XCTAssertNotEqual(inheritedTheme.select.selectColorBorderPressed, abstractTheme.select.selectColorBorderPressed)
        XCTAssertTrue(inheritedTheme.select.selectColorBorderPressed == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    func testInheritedThemeCanOverrideSelectComponentTokenColorContentDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.select.selectColorContentDisabled, abstractTheme.select.selectColorContentDisabled)
        XCTAssertTrue(inheritedTheme.select.selectColorContentDisabled == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    func testInheritedThemeCanOverrideSelectComponentTokenColorContentEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.select.selectColorContentEnabled, abstractTheme.select.selectColorContentEnabled)
        XCTAssertTrue(inheritedTheme.select.selectColorContentEnabled == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    func testInheritedThemeCanOverrideSelectComponentTokenColorContentFocus() throws {
        XCTAssertNotEqual(inheritedTheme.select.selectColorContentFocus, abstractTheme.select.selectColorContentFocus)
        XCTAssertTrue(inheritedTheme.select.selectColorContentFocus == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    func testInheritedThemeCanOverrideSelectComponentTokenColorContentHelperTextDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.select.selectColorContentHelperTextDisabled, abstractTheme.select.selectColorContentHelperTextDisabled)
        XCTAssertTrue(inheritedTheme.select.selectColorContentHelperTextDisabled == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    func testInheritedThemeCanOverrideSelectComponentTokenColorContentHelperTextEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.select.selectColorContentHelperTextEnabled, abstractTheme.select.selectColorContentHelperTextEnabled)
        XCTAssertTrue(inheritedTheme.select.selectColorContentHelperTextEnabled == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    func testInheritedThemeCanOverrideSelectComponentTokenColorContentHelperTextFocus() throws {
        XCTAssertNotEqual(inheritedTheme.select.selectColorContentHelperTextFocus, abstractTheme.select.selectColorContentHelperTextFocus)
        XCTAssertTrue(inheritedTheme.select.selectColorContentHelperTextFocus == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    func testInheritedThemeCanOverrideSelectComponentTokenColorContentHelperTextHover() throws {
        XCTAssertNotEqual(inheritedTheme.select.selectColorContentHelperTextHover, abstractTheme.select.selectColorContentHelperTextHover)
        XCTAssertTrue(inheritedTheme.select.selectColorContentHelperTextHover == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    func testInheritedThemeCanOverrideSelectComponentTokenColorContentHelperTextLoading() throws {
        XCTAssertNotEqual(inheritedTheme.select.selectColorContentHelperTextLoading, abstractTheme.select.selectColorContentHelperTextLoading)
        XCTAssertTrue(inheritedTheme.select.selectColorContentHelperTextLoading == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    func testInheritedThemeCanOverrideSelectComponentTokenColorContentHelperTextPressed() throws {
        XCTAssertNotEqual(inheritedTheme.select.selectColorContentHelperTextPressed, abstractTheme.select.selectColorContentHelperTextPressed)
        XCTAssertTrue(inheritedTheme.select.selectColorContentHelperTextPressed == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    func testInheritedThemeCanOverrideSelectComponentTokenColorContentHover() throws {
        XCTAssertNotEqual(inheritedTheme.select.selectColorContentHover, abstractTheme.select.selectColorContentHover)
        XCTAssertTrue(inheritedTheme.select.selectColorContentHover == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    func testInheritedThemeCanOverrideSelectComponentTokenColorContentLoading() throws {
        XCTAssertNotEqual(inheritedTheme.select.selectColorContentLoading, abstractTheme.select.selectColorContentLoading)
        XCTAssertTrue(inheritedTheme.select.selectColorContentLoading == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    func testInheritedThemeCanOverrideSelectComponentTokenColorContentPressed() throws {
        XCTAssertNotEqual(inheritedTheme.select.selectColorContentPressed, abstractTheme.select.selectColorContentPressed)
        XCTAssertTrue(inheritedTheme.select.selectColorContentPressed == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    func testInheritedThemeCanOverrideSelectComponentTokenSpaceColumnGap() throws {
        XCTAssertNotEqual(inheritedTheme.select.selectSpaceColumnGap, abstractTheme.select.selectSpaceColumnGap)
        XCTAssertTrue(inheritedTheme.select.selectSpaceColumnGap == MockThemeSelectComponentTokenProvider.mockThemeSelectSpace)
    }

    func testInheritedThemeCanOverrideSelectComponentTokenSpacePaddingInset() throws {
        XCTAssertNotEqual(inheritedTheme.select.selectSpacePaddingInset, abstractTheme.select.selectSpacePaddingInset)
        XCTAssertTrue(inheritedTheme.select.selectSpacePaddingInset == MockThemeSelectComponentTokenProvider.mockThemeSelectSpace)
    }

    func testInheritedThemeCanOverrideSelectComponentTokenSpaceRowGap() throws {
        XCTAssertNotEqual(inheritedTheme.select.selectSpaceRowGap, abstractTheme.select.selectSpaceRowGap)
        XCTAssertTrue(inheritedTheme.select.selectSpaceRowGap == MockThemeSelectComponentTokenProvider.mockThemeSelectSpace)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
