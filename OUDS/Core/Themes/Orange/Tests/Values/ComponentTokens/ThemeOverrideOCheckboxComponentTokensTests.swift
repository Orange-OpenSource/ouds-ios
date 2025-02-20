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
import Testig

// swiftlint:disable type_name

final class ThemeOverrideOCheckboxComponentTokensTests: XCTestCase {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Sizes

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenSizeMinWidth() throws {
        #expect(inheritedTheme.checkbox.checkboxSizeMinWidth != abstractTheme.checkbox.checkboxSizeMinWidth)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxSizeMinWidth == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxSize)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenSizeMaxHeight() throws {
        #expect(inheritedTheme.checkbox.checkboxSizeMaxHeight != abstractTheme.checkbox.checkboxSizeMaxHeight)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxSizeMaxHeight == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxSize)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenSizeMinHeight() throws {
        #expect(inheritedTheme.checkbox.checkboxSizeMinHeight != abstractTheme.checkbox.checkboxSizeMinHeight)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxSizeMinHeight == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxSize)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenSizeIndicatorInnerIcon() throws {
        #expect(inheritedTheme.checkbox.checkboxSizeIndicatorInnerIcon != abstractTheme.checkbox.checkboxSizeIndicatorInnerIcon)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxSizeIndicatorInnerIcon == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxSize)
    }

    // MARK: - Borders

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenBorderRadius() throws {
        #expect(inheritedTheme.checkbox.checkboxBorderRadius != abstractTheme.checkbox.checkboxBorderRadius)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxBorderRadius == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxBorderRadius)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenBorderWidthSelected() throws {
        #expect(inheritedTheme.checkbox.checkboxBorderWidthSelected != abstractTheme.checkbox.checkboxBorderWidthSelected)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxBorderWidthSelected == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxBorderWidth)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenBorderWidthSelectedHover() throws {
        #expect(inheritedTheme.checkbox.checkboxBorderWidthSelectedHover != abstractTheme.checkbox.checkboxBorderWidthSelectedHover)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxBorderWidthSelectedHover == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxBorderWidth)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenBorderWidthSelectedPressed() throws {
        #expect(inheritedTheme.checkbox.checkboxBorderWidthSelectedPressed != abstractTheme.checkbox.checkboxBorderWidthSelectedPressed)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxBorderWidthSelectedPressed == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxBorderWidth)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenBorderWidthSelectedFocus() throws {
        #expect(inheritedTheme.checkbox.checkboxBorderWidthSelectedFocus != abstractTheme.checkbox.checkboxBorderWidthSelectedFocus)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxBorderWidthSelectedFocus == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxBorderWidth)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenBorderWidthUnselected() throws {
        #expect(inheritedTheme.checkbox.checkboxBorderWidthUnselected != abstractTheme.checkbox.checkboxBorderWidthUnselected)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxBorderWidthUnselected == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxBorderWidth)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenBorderWidthUnselectedHover() throws {
        #expect(inheritedTheme.checkbox.checkboxBorderWidthUnselectedHover != abstractTheme.checkbox.checkboxBorderWidthUnselectedHover)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxBorderWidthUnselectedHover == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxBorderWidth)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenBorderWidthUnselectedPressed() throws {
        #expect(inheritedTheme.checkbox.checkboxBorderWidthUnselectedPressed != abstractTheme.checkbox.checkboxBorderWidthUnselectedPressed)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxBorderWidthUnselectedPressed == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxBorderWidth)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenBorderWidthUnselectedFocus() throws {
        #expect(inheritedTheme.checkbox.checkboxBorderWidthUnselectedFocus != abstractTheme.checkbox.checkboxBorderWidthUnselectedFocus)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxBorderWidthUnselectedFocus == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxBorderWidth)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenOpacityBgSelected() throws {
        #expect(inheritedTheme.checkbox.checkboxOpacityBgSelected != abstractTheme.checkbox.checkboxOpacityBgSelected)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxOpacityBgSelected == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxOpacity)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenOpacityBgUnselected() throws {
        #expect(inheritedTheme.checkbox.checkboxOpacityBgUnselected != abstractTheme.checkbox.checkboxOpacityBgUnselected)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxOpacityBgUnselected == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxOpacity)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenOpacityBgSelectedHover() throws {
        #expect(inheritedTheme.checkbox.checkboxOpacityBgSelectedHover != abstractTheme.checkbox.checkboxOpacityBgSelectedHover)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxOpacityBgSelectedHover == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxOpacity)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenOpacityBgUnselectedHover() throws {
        #expect(inheritedTheme.checkbox.checkboxOpacityBgUnselectedHover != abstractTheme.checkbox.checkboxOpacityBgUnselectedHover)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxOpacityBgUnselectedHover == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxOpacity)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenOpacityBgSelectedPressed() throws {
        #expect(inheritedTheme.checkbox.checkboxOpacityBgSelectedPressed != abstractTheme.checkbox.checkboxOpacityBgSelectedPressed)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxOpacityBgSelectedPressed == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxOpacity)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenOpacityBgUnselectedPressed() throws {
        #expect(inheritedTheme.checkbox.checkboxOpacityBgUnselectedPressed != abstractTheme.checkbox.checkboxOpacityBgUnselectedPressed)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxOpacityBgUnselectedPressed == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxOpacity)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenOpacityBgSelectedFocus() throws {
        #expect(inheritedTheme.checkbox.checkboxOpacityBgSelectedFocus != abstractTheme.checkbox.checkboxOpacityBgSelectedFocus)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxOpacityBgSelectedFocus == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxOpacity)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenOpacityBgUnselectedFocus() throws {
        #expect(inheritedTheme.checkbox.checkboxOpacityBgUnselectedFocus != abstractTheme.checkbox.checkboxOpacityBgUnselectedFocus)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxOpacityBgUnselectedFocus == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxOpacity)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenSizeIndicator() throws {
        #expect(inheritedTheme.checkbox.checkboxSizeIndicator != abstractTheme.checkbox.checkboxSizeIndicator)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxSizeIndicator == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxSize)
    }

    // MARK: - Colors

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenColorContentSelected() throws {
        #expect(inheritedTheme.checkbox.checkboxColorContentSelected != abstractTheme.checkbox.checkboxColorContentSelected)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxColorContentSelected == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxColor)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenColorContentEnabled() throws {
        #expect(inheritedTheme.checkbox.checkboxColorContentEnabled != abstractTheme.checkbox.checkboxColorContentEnabled)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxColorContentEnabled == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxColor)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenColorContentHover() throws {
        #expect(inheritedTheme.checkbox.checkboxColorContentHover != abstractTheme.checkbox.checkboxColorContentHover)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxColorContentHover == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxColor)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenColorContentPressed() throws {
        #expect(inheritedTheme.checkbox.checkboxColorContentPressed != abstractTheme.checkbox.checkboxColorContentPressed)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxColorContentPressed == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxColor)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenColorContentDisabled() throws {
        #expect(inheritedTheme.checkbox.checkboxColorContentDisabled != abstractTheme.checkbox.checkboxColorContentDisabled)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxColorContentDisabled == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxColor)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenColorContentFocus() throws {
        #expect(inheritedTheme.checkbox.checkboxColorContentFocus != abstractTheme.checkbox.checkboxColorContentFocus)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxColorContentFocus == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxColor)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenColorContentErrorEnabled() throws {
        #expect(inheritedTheme.checkbox.checkboxColorContentErrorEnabled != abstractTheme.checkbox.checkboxColorContentErrorEnabled)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxColorContentErrorEnabled == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxColor)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenColorContentErrorHover() throws {
        #expect(inheritedTheme.checkbox.checkboxColorContentErrorHover != abstractTheme.checkbox.checkboxColorContentErrorHover)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxColorContentErrorHover == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxColor)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenColorContentErrorPressed() throws {
        #expect(inheritedTheme.checkbox.checkboxColorContentErrorPressed != abstractTheme.checkbox.checkboxColorContentErrorPressed)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxColorContentErrorPressed == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxColor)
    }

    @Test func inheritedThemeCanOverrideCheckboxComponentTokenColorContentErrorFocus() throws {
        #expect(inheritedTheme.checkbox.checkboxColorContentErrorFocus != abstractTheme.checkbox.checkboxColorContentErrorFocus)
        XCTAssertTrue(inheritedTheme.checkbox.checkboxColorContentErrorFocus == MockThemeCheckboxComponentTokenProvider.mockThemeCheckboxColor)
    }

}

// swiftlint:enable type_name
