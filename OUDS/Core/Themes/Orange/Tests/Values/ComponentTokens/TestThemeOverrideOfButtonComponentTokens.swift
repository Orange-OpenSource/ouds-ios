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

final class TestThemeOverrideOfButtonComponentTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonSizeMaxHeight() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonSizeMaxHeight, abstractTheme.button.buttonSizeMaxHeight)
        XCTAssertTrue(inheritedTheme.button.buttonSizeMaxHeight == MockThemeButtonComponentTokenProvider.mockThemeButtonSize)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonBorderRadius() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonBorderRadius, abstractTheme.button.buttonBorderRadius)
        XCTAssertTrue(inheritedTheme.button.buttonBorderRadius == MockThemeButtonComponentTokenProvider.mockThemeButtonRadius)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBgDefaultFocusMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBgDefaultFocusMono, abstractTheme.button.buttonColorBgDefaultFocusMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorBgDefaultFocusMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    // ...
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
