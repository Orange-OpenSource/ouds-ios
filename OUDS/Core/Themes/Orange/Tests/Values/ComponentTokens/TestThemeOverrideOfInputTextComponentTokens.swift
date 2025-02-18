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

final class TestThemeOverrideOfInputTextComponentTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Sizes

    func testInheritedThemeCanOverrideInputTextComponentTokenSizeMinWidth() throws {
        XCTAssertNotEqual(inheritedTheme.inputText.inputTextSizeMinWidth, abstractTheme.inputText.inputTextSizeMinWidth)
        XCTAssertTrue(inheritedTheme.inputText.inputTextSizeMinWidth == MockThemeInputTextComponentTokenProvider.mockThemeInputTextSize)
    }

    func testInheritedThemeCanOverrideInputTextComponentTokenSizeMaxWidth() throws {
        XCTAssertNotEqual(inheritedTheme.inputText.inputTextSizeMaxWidth, abstractTheme.inputText.inputTextSizeMaxWidth)
        XCTAssertTrue(inheritedTheme.inputText.inputTextSizeMaxWidth == MockThemeInputTextComponentTokenProvider.mockThemeInputTextSize)
    }

    // MARK: - Colors

    func testInheritedThemeCanOverrideInputTextComponentTokenColorBgDefaultEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.inputText.inputTextColorBgDefaultEnabled, abstractTheme.inputText.inputTextColorBgDefaultEnabled)
        XCTAssertTrue(inheritedTheme.inputText.inputTextColorBgDefaultEnabled == MockThemeInputTextComponentTokenProvider.mockThemeInputTextColor)
    }

    func testInheritedThemeCanOverrideInputTextComponentTokenColorBgDefaultHover() throws {
        XCTAssertNotEqual(inheritedTheme.inputText.inputTextColorBgDefaultHover, abstractTheme.inputText.inputTextColorBgDefaultHover)
        XCTAssertTrue(inheritedTheme.inputText.inputTextColorBgDefaultHover == MockThemeInputTextComponentTokenProvider.mockThemeInputTextColor)
    }

    func testInheritedThemeCanOverrideInputTextComponentTokenColorBgDefaultPressed() throws {
        XCTAssertNotEqual(inheritedTheme.inputText.inputTextColorBgDefaultPressed, abstractTheme.inputText.inputTextColorBgDefaultPressed)
        XCTAssertTrue(inheritedTheme.inputText.inputTextColorBgDefaultPressed == MockThemeInputTextComponentTokenProvider.mockThemeInputTextColor)
    }

    func testInheritedThemeCanOverrideInputTextComponentTokenColorBgDefaultLoading() throws {
        XCTAssertNotEqual(inheritedTheme.inputText.inputTextColorBgDefaultLoading, abstractTheme.inputText.inputTextColorBgDefaultLoading)
        XCTAssertTrue(inheritedTheme.inputText.inputTextColorBgDefaultLoading == MockThemeInputTextComponentTokenProvider.mockThemeInputTextColor)
    }

    func testInheritedThemeCanOverrideInputTextComponentTokenColorBgDefaultDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.inputText.inputTextColorBgDefaultDisabled, abstractTheme.inputText.inputTextColorBgDefaultDisabled)
        XCTAssertTrue(inheritedTheme.inputText.inputTextColorBgDefaultDisabled == MockThemeInputTextComponentTokenProvider.mockThemeInputTextColor)
    }

    func testInheritedThemeCanOverrideInputTextComponentTokenColorBgDefaultFocus() throws {
        XCTAssertNotEqual(inheritedTheme.inputText.inputTextColorBgDefaultFocus, abstractTheme.inputText.inputTextColorBgDefaultFocus)
        XCTAssertTrue(inheritedTheme.inputText.inputTextColorBgDefaultFocus == MockThemeInputTextComponentTokenProvider.mockThemeInputTextColor)
    }

    func testInheritedThemeCanOverrideInputTextComponentTokenColorContentDefaultEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.inputText.inputTextColorContentDefaultEnabled, abstractTheme.inputText.inputTextColorContentDefaultEnabled)
        XCTAssertTrue(inheritedTheme.inputText.inputTextColorContentDefaultEnabled == MockThemeInputTextComponentTokenProvider.mockThemeInputTextColor)
    }

    func testInheritedThemeCanOverrideInputTextComponentTokenColorContentDefaultHover() throws {
        XCTAssertNotEqual(inheritedTheme.inputText.inputTextColorContentDefaultHover, abstractTheme.inputText.inputTextColorContentDefaultHover)
        XCTAssertTrue(inheritedTheme.inputText.inputTextColorContentDefaultHover == MockThemeInputTextComponentTokenProvider.mockThemeInputTextColor)
    }

    func testInheritedThemeCanOverrideInputTextComponentTokenColorContentDefaultPressed() throws {
        XCTAssertNotEqual(inheritedTheme.inputText.inputTextColorContentDefaultPressed, abstractTheme.inputText.inputTextColorContentDefaultPressed)
        XCTAssertTrue(inheritedTheme.inputText.inputTextColorContentDefaultPressed == MockThemeInputTextComponentTokenProvider.mockThemeInputTextColor)
    }

    func testInheritedThemeCanOverrideInputTextComponentTokenColorContentDefaultLoading() throws {
        XCTAssertNotEqual(inheritedTheme.inputText.inputTextColorContentDefaultLoading, abstractTheme.inputText.inputTextColorContentDefaultLoading)
        XCTAssertTrue(inheritedTheme.inputText.inputTextColorContentDefaultLoading == MockThemeInputTextComponentTokenProvider.mockThemeInputTextColor)
    }

    func testInheritedThemeCanOverrideInputTextComponentTokenColorContentDefaultDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.inputText.inputTextColorContentDefaultDisabled, abstractTheme.inputText.inputTextColorContentDefaultDisabled)
        XCTAssertTrue(inheritedTheme.inputText.inputTextColorContentDefaultDisabled == MockThemeInputTextComponentTokenProvider.mockThemeInputTextColor)
    }

    func testInheritedThemeCanOverrideInputTextComponentTokenColorContentDefaultFocus() throws {
        XCTAssertNotEqual(inheritedTheme.inputText.inputTextColorContentDefaultFocus, abstractTheme.inputText.inputTextColorContentDefaultFocus)
        XCTAssertTrue(inheritedTheme.inputText.inputTextColorContentDefaultFocus == MockThemeInputTextComponentTokenProvider.mockThemeInputTextColor)
    }

    // MARK: - Spaces

    func testInheritedThemeCanOverrideInputTextComponentTokenSpaceInsetIconAlone() throws {
        XCTAssertNotEqual(inheritedTheme.inputText.inputTextSpaceInsetIconAlone, abstractTheme.inputText.inputTextSpaceInsetIconAlone)
        XCTAssertTrue(inheritedTheme.inputText.inputTextSpaceInsetIconAlone == MockThemeInputTextComponentTokenProvider.mockThemeInputTextSpace)
    }

    func testInheritedThemeCanOverrideInputTextComponentTokenSpacePaddingBlock() throws {
        XCTAssertNotEqual(inheritedTheme.inputText.inputTextSpacePaddingBlock, abstractTheme.inputText.inputTextSpacePaddingBlock)
        XCTAssertTrue(inheritedTheme.inputText.inputTextSpacePaddingBlock == MockThemeInputTextComponentTokenProvider.mockThemeInputTextSpace)
    }

    func testInheritedThemeCanOverrideInputTextComponentTokenSpacePaddingInlineContainerStart() throws {
        XCTAssertNotEqual(inheritedTheme.inputText.inputTextSpacePaddingInlineContainerStart, abstractTheme.inputText.inputTextSpacePaddingInlineContainerStart)
        XCTAssertTrue(inheritedTheme.inputText.inputTextSpacePaddingInlineContainerStart == MockThemeInputTextComponentTokenProvider.mockThemeInputTextSpace)
    }

    func testInheritedThemeCanOverrideInputTextComponentTokenSpacePaddingInlineContainerEnd() throws {
        XCTAssertNotEqual(inheritedTheme.inputText.inputTextSpacePaddingInlineContainerEnd, abstractTheme.inputText.inputTextSpacePaddingInlineContainerEnd)
        XCTAssertTrue(inheritedTheme.inputText.inputTextSpacePaddingInlineContainerEnd == MockThemeInputTextComponentTokenProvider.mockThemeInputTextSpace)
    }

    func testInheritedThemeCanOverrideInputTextComponentTokenSpacePaddingInlineTextEnd() throws {
        XCTAssertNotEqual(inheritedTheme.inputText.inputTextSpacePaddingInlineTextEnd, abstractTheme.inputText.inputTextSpacePaddingInlineTextEnd)
        XCTAssertTrue(inheritedTheme.inputText.inputTextSpacePaddingInlineTextEnd == MockThemeInputTextComponentTokenProvider.mockThemeInputTextSpace)
    }

    func testInheritedThemeCanOverrideInputTextComponentTokenSpacePaddingInlinePrefixTextEnd() throws {
        XCTAssertNotEqual(inheritedTheme.inputText.inputTextSpacePaddingInlinePrefixTextEnd, abstractTheme.inputText.inputTextSpacePaddingInlinePrefixTextEnd)
        XCTAssertTrue(inheritedTheme.inputText.inputTextSpacePaddingInlinePrefixTextEnd == MockThemeInputTextComponentTokenProvider.mockThemeInputTextSpace)
    }

    func testInheritedThemeCanOverrideInputTextComponentTokenSpacePaddingInlineSuffixTextEnd() throws {
        XCTAssertNotEqual(inheritedTheme.inputText.inputTextSpacePaddingInlineSuffixTextEnd, abstractTheme.inputText.inputTextSpacePaddingInlineSuffixTextEnd)
        XCTAssertTrue(inheritedTheme.inputText.inputTextSpacePaddingInlineSuffixTextEnd == MockThemeInputTextComponentTokenProvider.mockThemeInputTextSpace)
    }

    func testInheritedThemeCanOverrideInputTextComponentTokenSpacePaddingInlineIconEnd() throws {
        XCTAssertNotEqual(inheritedTheme.inputText.inputTextSpacePaddingInlineIconEnd, abstractTheme.inputText.inputTextSpacePaddingInlineIconEnd)
        XCTAssertTrue(inheritedTheme.inputText.inputTextSpacePaddingInlineIconEnd == MockThemeInputTextComponentTokenProvider.mockThemeInputTextSpace)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable type_name
