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

final class TestThemeOverrideOfBreadcrumbComponentTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Sizes

    func testInheritedThemeCanOverrideBreadcrumbComponentTokenSpaceColumnGapArrow() throws {
        XCTAssertNotEqual(inheritedTheme.breadcrumb.breadcrumbSpaceColumnGapArrow, abstractTheme.breadcrumb.breadcrumbSpaceColumnGapArrow)
        XCTAssertTrue(inheritedTheme.breadcrumb.breadcrumbSpaceColumnGapArrow == MockThemeBreadcrumbComponentTokenProvider.mockThemeBreadcrumbSpace)
    }

    func testInheritedThemeCanOverrideBreadcrumbComponentTokenSpaceColumnGapLevels() throws {
        XCTAssertNotEqual(inheritedTheme.breadcrumb.breadcrumbSpaceColumnGapLevels, abstractTheme.breadcrumb.breadcrumbSpaceColumnGapLevels)
        XCTAssertTrue(inheritedTheme.breadcrumb.breadcrumbSpaceColumnGapLevels == MockThemeBreadcrumbComponentTokenProvider.mockThemeBreadcrumbSpace)
    }

    func testInheritedThemeCanOverrideBreadcrumbComponentTokenSizeArrow() throws {
        XCTAssertNotEqual(inheritedTheme.breadcrumb.breadcrumbSizeArrow, abstractTheme.breadcrumb.breadcrumbSizeArrow)
        XCTAssertTrue(inheritedTheme.breadcrumb.breadcrumbSizeArrow == MockThemeBreadcrumbComponentTokenProvider.mockThemeBreadcrumbSize)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable type_name
