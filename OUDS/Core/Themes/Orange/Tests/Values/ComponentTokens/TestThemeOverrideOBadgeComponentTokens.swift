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

final class TestThemeOverrideOfbadgeComponentTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Dimensions

    func testInheritedThemeCanOverrideBadgeComponentTokenNotificationMinWidthL() throws {
        XCTAssertNotEqual(inheritedTheme.badge.badgeNotificationMinWidthL, abstractTheme.badge.badgeNotificationMinWidthL)
        XCTAssertTrue(inheritedTheme.badge.badgeNotificationMinWidthL == MockThemeBadgeComponentTokenProvider.mockThemeBadgeMinWidth)
    }

    func testInheritedThemeCanOverrideBadgeComponentTokenNotificationMinWidthM() throws {
        XCTAssertNotEqual(inheritedTheme.badge.badgeNotificationMinWidthM, abstractTheme.badge.badgeNotificationMinWidthM)
        XCTAssertTrue(inheritedTheme.badge.badgeNotificationMinWidthM == MockThemeBadgeComponentTokenProvider.mockThemeBadgeMinWidth)
    }

    func testInheritedThemeCanOverrideBadgeComponentTokenNotificationMinWidthS() throws {
        XCTAssertNotEqual(inheritedTheme.badge.badgeNotificationMinWidthS, abstractTheme.badge.badgeNotificationMinWidthS)
        XCTAssertTrue(inheritedTheme.badge.badgeNotificationMinWidthS == MockThemeBadgeComponentTokenProvider.mockThemeBadgeMinWidth)
    }

    // MARK: - Sizes

    func testInheritedThemeCanOverrideBadgeComponentTokenSizeL() throws {
        XCTAssertNotEqual(inheritedTheme.badge.badgeSizeL, abstractTheme.badge.badgeSizeL)
        XCTAssertTrue(inheritedTheme.badge.badgeSizeL == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSize)
    }

    func testInheritedThemeCanOverrideBadgeComponentTokenSizeM() throws {
        XCTAssertNotEqual(inheritedTheme.badge.badgeSizeM, abstractTheme.badge.badgeSizeM)
        XCTAssertTrue(inheritedTheme.badge.badgeSizeM == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSize)
    }

    func testInheritedThemeCanOverrideBadgeComponentTokenSizeS() throws {
        XCTAssertNotEqual(inheritedTheme.badge.badgeSizeS, abstractTheme.badge.badgeSizeS)
        XCTAssertTrue(inheritedTheme.badge.badgeSizeS == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSize)
    }

    func testInheritedThemeCanOverrideBadgeComponentTokenSizeXs() throws {
        XCTAssertNotEqual(inheritedTheme.badge.badgeSizeXs, abstractTheme.badge.badgeSizeXs)
        XCTAssertTrue(inheritedTheme.badge.badgeSizeXs == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSize)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
