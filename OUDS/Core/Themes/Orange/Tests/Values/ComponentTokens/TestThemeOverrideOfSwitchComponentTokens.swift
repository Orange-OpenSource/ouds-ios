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

final class TestThemeOverrideOfSwitchComponentTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    func testInheritedThemeCanOverrideSwitchComponentTokenColorCheck() throws {
        XCTAssertNotEqual(inheritedTheme.switch.switchColorCheck, abstractTheme.switch.switchColorCheck)
        XCTAssertTrue(inheritedTheme.switch.switchColorCheck == MockThemeSwitchComponentTokenProvider.mockThemeSwitchColor)
    }

    func testInheritedThemeCanOverrideSwitchComponentTokenColorCursor() throws {
        XCTAssertNotEqual(inheritedTheme.switch.switchColorCursor, abstractTheme.switch.switchColorCursor)
        XCTAssertTrue(inheritedTheme.switch.switchColorCursor == MockThemeSwitchComponentTokenProvider.mockThemeSwitchColor)
    }

    func testInheritedThemeCanOverrideSwitchComponentTokenColorTrackFalse() throws {
        XCTAssertNotEqual(inheritedTheme.switch.switchColorTrackFalse, abstractTheme.switch.switchColorTrackFalse)
        XCTAssertTrue(inheritedTheme.switch.switchColorTrackFalse == MockThemeSwitchComponentTokenProvider.mockThemeSwitchColor)
    }

    func testInheritedThemeCanOverrideSwitchComponentTokenColorTrackFalseInteraction() throws {
        XCTAssertNotEqual(inheritedTheme.switch.switchColorTrackFalseInteraction, abstractTheme.switch.switchColorTrackFalseInteraction)
        XCTAssertTrue(inheritedTheme.switch.switchColorTrackFalseInteraction == MockThemeSwitchComponentTokenProvider.mockThemeSwitchColor)
    }

    func testInheritedThemeCanOverrideSwitchComponentTokenColorTrackTrue() throws {
        XCTAssertNotEqual(inheritedTheme.switch.switchColorTrackTrue, abstractTheme.switch.switchColorTrackTrue)
        XCTAssertTrue(inheritedTheme.switch.switchColorTrackTrue == MockThemeSwitchComponentTokenProvider.mockThemeSwitchColor)
    }

    func testInheritedThemeCanOverrideSwitchComponentTokenColorTrackTrueInteraction() throws {
        XCTAssertNotEqual(inheritedTheme.switch.switchColorTrackTrueInteraction, abstractTheme.switch.switchColorTrackTrueInteraction)
        XCTAssertTrue(inheritedTheme.switch.switchColorTrackTrueInteraction == MockThemeSwitchComponentTokenProvider.mockThemeSwitchColor)
    }

    // MARK: - Spaces

    func testInheritedThemeCanOverrideSwitchComponentTokenSpacePaddingInlineFalse() throws {
        XCTAssertNotEqual(inheritedTheme.switch.switchSpacePaddingInlineFalse, abstractTheme.switch.switchSpacePaddingInlineFalse)
        XCTAssertTrue(inheritedTheme.switch.switchSpacePaddingInlineFalse == MockThemeSwitchComponentTokenProvider.mockThemeSwitchSpace)
    }

    func testInheritedThemeCanOverrideSwitchComponentTokenSpacePaddingInlineTrue() throws {
        XCTAssertNotEqual(inheritedTheme.switch.switchSpacePaddingInlineTrue, abstractTheme.switch.switchSpacePaddingInlineTrue)
        XCTAssertTrue(inheritedTheme.switch.switchSpacePaddingInlineTrue == MockThemeSwitchComponentTokenProvider.mockThemeSwitchSpace)
    }

    // MARK: - Sizes

    func testInheritedThemeCanOverrideSwitchComponentTokenSize() throws {
        XCTAssertNotEqual(inheritedTheme.switch.switchSize, abstractTheme.switch.switchSize)
        XCTAssertTrue(inheritedTheme.switch.switchSize == MockThemeSwitchComponentTokenProvider.mockThemeSwitchSize)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
