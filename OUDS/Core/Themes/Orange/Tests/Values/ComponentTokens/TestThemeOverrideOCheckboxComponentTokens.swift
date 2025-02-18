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

final class TestThemeOverrideOfCheckboxComponentTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Sizes

    func testInheritedThemeCanOverrideCheckboxComponentTokenSizeMinWidth() throws {
        XCTAssertNotEqual(inheritedTheme.checkbox.checkboxSizeMinWidth, abstractTheme.checkbox.checkboxSizeMinWidth)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxSizeMinWidth == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxSize)
    }

    func testInheritedThemeCanOverrideCheckboxComponentTokenSizeMaxHeight() throws {
        XCTAssertNotEqual(inheritedTheme.checkbox.checkboxSizeMaxHeight, abstractTheme.checkbox.checkboxSizeMaxHeight)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxSizeMaxHeight == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxSize)
    }

    func testInheritedThemeCanOverrideCheckboxComponentTokenSizeMinHeight() throws {
        XCTAssertNotEqual(inheritedTheme.checkbox.checkboxSizeMinHeight, abstractTheme.checkbox.checkboxSizeMinHeight)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxSizeMinHeight == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxSize)
    }

    func testInheritedThemeCanOverrideCheckboxComponentTokenSizeIndicatorInnerIcon() throws {
        XCTAssertNotEqual(inheritedTheme.checkbox.checkboxSizeIndicatorInnerIcon, abstractTheme.checkbox.checkboxSizeIndicatorInnerIcon)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxSizeIndicatorInnerIcon == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxSize)
    }

    // MARK: - Borders

    func testInheritedThemeCanOverrideCheckboxComponentTokenBorderRadius() throws {
        XCTAssertNotEqual(inheritedTheme.checkbox.checkboxBorderRadius, abstractTheme.checkbox.checkboxBorderRadius)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxBorderRadius == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxBorderRadius)
    }

    func testInheritedThemeCanOverrideCheckboxComponentTokenBorderWidthSelected() throws {
        XCTAssertNotEqual(inheritedTheme.checkbox.checkboxBorderWidthSelected, abstractTheme.checkbox.checkboxBorderWidthSelected)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxBorderWidthSelected == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxBorderWidth)
    }

    func testInheritedThemeCanOverrideCheckboxComponentTokenBorderWidthSelectedHover() throws {
        XCTAssertNotEqual(inheritedTheme.checkbox.checkboxBorderWidthSelectedHover, abstractTheme.checkbox.checkboxBorderWidthSelectedHover)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxBorderWidthSelectedHover == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxBorderWidth)
    }

    func testInheritedThemeCanOverrideCheckboxComponentTokenBorderWidthSelectedPressed() throws {
        XCTAssertNotEqual(inheritedTheme.checkbox.checkboxBorderWidthSelectedPressed, abstractTheme.checkbox.checkboxBorderWidthSelectedPressed)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxBorderWidthSelectedPressed == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxBorderWidth)
    }

    func testInheritedThemeCanOverrideCheckboxComponentTokenBorderWidthSelectedFocus() throws {
        XCTAssertNotEqual(inheritedTheme.checkbox.checkboxBorderWidthSelectedFocus, abstractTheme.checkbox.checkboxBorderWidthSelectedFocus)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxBorderWidthSelectedFocus == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxBorderWidth)
    }

    func testInheritedThemeCanOverrideCheckboxComponentTokenBorderWidthUnselected() throws {
        XCTAssertNotEqual(inheritedTheme.checkbox.checkboxBorderWidthUnselected, abstractTheme.checkbox.checkboxBorderWidthUnselected)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxBorderWidthUnselected == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxBorderWidth)
    }

    func testInheritedThemeCanOverrideCheckboxComponentTokenBorderWidthUnselectedHover() throws {
        XCTAssertNotEqual(inheritedTheme.checkbox.checkboxBorderWidthUnselectedHover, abstractTheme.checkbox.checkboxBorderWidthUnselectedHover)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxBorderWidthUnselectedHover == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxBorderWidth)
    }

    func testInheritedThemeCanOverrideCheckboxComponentTokenBorderWidthUnselectedPressed() throws {
        XCTAssertNotEqual(inheritedTheme.checkbox.checkboxBorderWidthUnselectedPressed, abstractTheme.checkbox.checkboxBorderWidthUnselectedPressed)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxBorderWidthUnselectedPressed == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxBorderWidth)
    }

    func testInheritedThemeCanOverrideCheckboxComponentTokenBorderWidthUnselectedFocus() throws {
        XCTAssertNotEqual(inheritedTheme.checkbox.checkboxBorderWidthUnselectedFocus, abstractTheme.checkbox.checkboxBorderWidthUnselectedFocus)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxBorderWidthUnselectedFocus == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxBorderWidth)
    }

    func testInheritedThemeCanOverrideCheckboxComponentTokenOpacityBgSelected() throws {
        XCTAssertNotEqual(inheritedTheme.checkbox.checkboxOpacityBgSelected, abstractTheme.checkbox.checkboxOpacityBgSelected)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxOpacityBgSelected == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxOpacity)
    }

    func testInheritedThemeCanOverrideCheckboxComponentTokenOpacityBgUnselected() throws {
        XCTAssertNotEqual(inheritedTheme.checkbox.checkboxOpacityBgUnselected, abstractTheme.checkbox.checkboxOpacityBgUnselected)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxOpacityBgUnselected == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxOpacity)
    }

    func testInheritedThemeCanOverrideCheckboxComponentTokenOpacityBgSelectedHover() throws {
        XCTAssertNotEqual(inheritedTheme.checkbox.checkboxOpacityBgSelectedHover, abstractTheme.checkbox.checkboxOpacityBgSelectedHover)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxOpacityBgSelectedHover == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxOpacity)
    }

    func testInheritedThemeCanOverrideCheckboxComponentTokenOpacityBgUnselectedHover() throws {
        XCTAssertNotEqual(inheritedTheme.checkbox.checkboxOpacityBgUnselectedHover, abstractTheme.checkbox.checkboxOpacityBgUnselectedHover)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxOpacityBgUnselectedHover == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxOpacity)
    }

    func testInheritedThemeCanOverrideCheckboxComponentTokenOpacityBgSelectedPressed() throws {
        XCTAssertNotEqual(inheritedTheme.checkbox.checkboxOpacityBgSelectedPressed, abstractTheme.checkbox.checkboxOpacityBgSelectedPressed)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxOpacityBgSelectedPressed == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxOpacity)
    }

    func testInheritedThemeCanOverrideCheckboxComponentTokenOpacityBgUnselectedPressed() throws {
        XCTAssertNotEqual(inheritedTheme.checkbox.checkboxOpacityBgUnselectedPressed, abstractTheme.checkbox.checkboxOpacityBgUnselectedPressed)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxOpacityBgUnselectedPressed == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxOpacity)
    }

    func testInheritedThemeCanOverrideCheckboxComponentTokenOpacityBgSelectedFocus() throws {
        XCTAssertNotEqual(inheritedTheme.checkbox.checkboxOpacityBgSelectedFocus, abstractTheme.checkbox.checkboxOpacityBgSelectedFocus)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxOpacityBgSelectedFocus == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxOpacity)
    }

    func testInheritedThemeCanOverrideCheckboxComponentTokenOpacityBgUnselectedFocus() throws {
        XCTAssertNotEqual(inheritedTheme.checkbox.checkboxOpacityBgUnselectedFocus, abstractTheme.checkbox.checkboxOpacityBgUnselectedFocus)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxOpacityBgUnselectedFocus == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxOpacity)
    }

    func testInheritedThemeCanOverrideCheckboxComponentTokenSizeIndicator() throws {
        XCTAssertNotEqual(inheritedTheme.checkbox.checkboxSizeIndicator, abstractTheme.checkbox.checkboxSizeIndicator)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxSizeIndicator == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxSize)
    }

    // MARK: - Colors

    func testInheritedThemeCanOverrideCheckboxComponentTokenColorContentSelected() throws {
        XCTAssertNotEqual(inheritedTheme.checkbox.checkboxColorContentSelected, abstractTheme.checkbox.checkboxColorContentSelected)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxColorContentSelected == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxColor)
    }

    func testInheritedThemeCanOverrideCheckboxComponentTokenColorContentEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.checkbox.checkboxColorContentEnabled, abstractTheme.checkbox.checkboxColorContentEnabled)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxColorContentEnabled == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxColor)
    }

    func testInheritedThemeCanOverrideCheckboxComponentTokenColorContentHover() throws {
        XCTAssertNotEqual(inheritedTheme.checkbox.checkboxColorContentHover, abstractTheme.checkbox.checkboxColorContentHover)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxColorContentHover == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxColor)
    }

    func testInheritedThemeCanOverrideCheckboxComponentTokenColorContentPressed() throws {
        XCTAssertNotEqual(inheritedTheme.checkbox.checkboxColorContentPressed, abstractTheme.checkbox.checkboxColorContentPressed)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxColorContentPressed == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxColor)
    }

    func testInheritedThemeCanOverrideCheckboxComponentTokenColorContentDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.checkbox.checkboxColorContentDisabled, abstractTheme.checkbox.checkboxColorContentDisabled)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxColorContentDisabled == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxColor)
    }

    func testInheritedThemeCanOverrideCheckboxComponentTokenColorContentFocus() throws {
        XCTAssertNotEqual(inheritedTheme.checkbox.checkboxColorContentFocus, abstractTheme.checkbox.checkboxColorContentFocus)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxColorContentFocus == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxColor)
    }

    func testInheritedThemeCanOverrideCheckboxComponentTokenColorContentErrorEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.checkbox.checkboxColorContentErrorEnabled, abstractTheme.checkbox.checkboxColorContentErrorEnabled)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxColorContentErrorEnabled == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxColor)
    }

    func testInheritedThemeCanOverrideCheckboxComponentTokenColorContentErrorHover() throws {
        XCTAssertNotEqual(inheritedTheme.checkbox.checkboxColorContentErrorHover, abstractTheme.checkbox.checkboxColorContentErrorHover)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxColorContentErrorHover == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxColor)
    }

    func testInheritedThemeCanOverrideCheckboxComponentTokenColorContentErrorPressed() throws {
        XCTAssertNotEqual(inheritedTheme.checkbox.checkboxColorContentErrorPressed, abstractTheme.checkbox.checkboxColorContentErrorPressed)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxColorContentErrorPressed == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxColor)
    }

    func testInheritedThemeCanOverrideCheckboxComponentTokenColorContentErrorFocus() throws {
        XCTAssertNotEqual(inheritedTheme.checkbox.checkboxColorContentErrorFocus, abstractTheme.checkbox.checkboxColorContentErrorFocus)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxColorContentErrorFocus == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxColor)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable type_name
