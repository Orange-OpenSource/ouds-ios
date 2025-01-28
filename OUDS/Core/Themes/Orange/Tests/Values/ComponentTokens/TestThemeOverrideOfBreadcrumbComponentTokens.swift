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

    func testInheritedThemeCanOverrideBreadcrumbComponentTokenSizeMinHeightMedium() throws {
        XCTAssertNotEqual(inheritedTheme.breadcrumb.breadcrumbSizeMinHeightMedium, abstractTheme.breadcrumb.breadcrumbSizeMinHeightMedium)
        XCTAssertTrue(inheritedTheme.breadcrumb.breadcrumbSizeMinHeightMedium == MockThemeBreadcrumbComponentTokenProvider.mockThemeBreadcrumbSize)
    }

    func testInheritedThemeCanOverrideBreadcrumbComponentTokenSizeMinHeightSmall() throws {
        XCTAssertNotEqual(inheritedTheme.breadcrumb.breadcrumbSizeMinHeightSmall, abstractTheme.breadcrumb.breadcrumbSizeMinHeightSmall)
        XCTAssertTrue(inheritedTheme.breadcrumb.breadcrumbSizeMinHeightSmall == MockThemeBreadcrumbComponentTokenProvider.mockThemeBreadcrumbSize)
    }

    func testInheritedThemeCanOverrideBreadcrumbComponentTokenSizeMinWidthMedium() throws {
        XCTAssertNotEqual(inheritedTheme.breadcrumb.breadcrumbSizeMinWidthMedium, abstractTheme.breadcrumb.breadcrumbSizeMinWidthMedium)
        XCTAssertTrue(inheritedTheme.breadcrumb.breadcrumbSizeMinWidthMedium == MockThemeBreadcrumbComponentTokenProvider.mockThemeBreadcrumbSize)
    }

    func testInheritedThemeCanOverrideBreadcrumbComponentTokenSizeMinWidthSmall() throws {
        XCTAssertNotEqual(inheritedTheme.breadcrumb.breadcrumbSizeMinWidthSmall, abstractTheme.breadcrumb.breadcrumbSizeMinWidthSmall)
        XCTAssertTrue(inheritedTheme.breadcrumb.breadcrumbSizeMinWidthSmall == MockThemeBreadcrumbComponentTokenProvider.mockThemeBreadcrumbSize)
    }

    func testInheritedThemeCanOverrideBreadcrumbComponentTokenSizeIconMedium() throws {
        XCTAssertNotEqual(inheritedTheme.breadcrumb.breadcrumbSizeIconMedium, abstractTheme.breadcrumb.breadcrumbSizeIconMedium)
        XCTAssertTrue(inheritedTheme.breadcrumb.breadcrumbSizeIconMedium == MockThemeBreadcrumbComponentTokenProvider.mockThemeBreadcrumbSize)
    }

    func testInheritedThemeCanOverrideBreadcrumbComponentTokenSizeIconSmall() throws {
        XCTAssertNotEqual(inheritedTheme.breadcrumb.breadcrumbSizeIconSmall, abstractTheme.breadcrumb.breadcrumbSizeIconSmall)
        XCTAssertTrue(inheritedTheme.breadcrumb.breadcrumbSizeIconSmall == MockThemeBreadcrumbComponentTokenProvider.mockThemeBreadcrumbSize)
    }

    // MARK: - Colors

    func testInheritedThemeCanOverrideBreadcrumbComponentTokenColorContentEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.breadcrumb.breadcrumbColorContentEnabled, abstractTheme.breadcrumb.breadcrumbColorContentEnabled)
        XCTAssertTrue(inheritedTheme.breadcrumb.breadcrumbColorContentEnabled == MockThemeBreadcrumbComponentTokenProvider.mockThemeBreadcrumbColor)
    }

    func testInheritedThemeCanOverrideBreadcrumbComponentTokenColorContentFocus() throws {
        XCTAssertNotEqual(inheritedTheme.breadcrumb.breadcrumbColorContentFocus, abstractTheme.breadcrumb.breadcrumbColorContentFocus)
        XCTAssertTrue(inheritedTheme.breadcrumb.breadcrumbColorContentFocus == MockThemeBreadcrumbComponentTokenProvider.mockThemeBreadcrumbColor)
    }

    func testInheritedThemeCanOverrideBreadcrumbComponentTokenColorContentHover() throws {
        XCTAssertNotEqual(inheritedTheme.breadcrumb.breadcrumbColorContentHover, abstractTheme.breadcrumb.breadcrumbColorContentHover)
        XCTAssertTrue(inheritedTheme.breadcrumb.breadcrumbColorContentHover == MockThemeBreadcrumbComponentTokenProvider.mockThemeBreadcrumbColor)
    }

    func testInheritedThemeCanOverrideBreadcrumbComponentTokenColorContentPressed() throws {
        XCTAssertNotEqual(inheritedTheme.breadcrumb.breadcrumbColorContentPressed, abstractTheme.breadcrumb.breadcrumbColorContentPressed)
        XCTAssertTrue(inheritedTheme.breadcrumb.breadcrumbColorContentPressed == MockThemeBreadcrumbComponentTokenProvider.mockThemeBreadcrumbColor)
    }

    // MARK: - Spaces

    func testInheritedThemeCanOverrideBreadcrumbComponentTokenSpaceColumnGapArrowMedium() throws {
        XCTAssertNotEqual(inheritedTheme.breadcrumb.breadcrumbSpaceColumnGapArrowMedium, abstractTheme.breadcrumb.breadcrumbSpaceColumnGapArrowMedium)
        XCTAssertTrue(inheritedTheme.breadcrumb.breadcrumbSpaceColumnGapArrowMedium == MockThemeBreadcrumbComponentTokenProvider.mockThemeBreadcrumbSpace)
    }

    func testInheritedThemeCanOverrideBreadcrumbComponentTokenSpaceColumnGapArrowSmall() throws {
        XCTAssertNotEqual(inheritedTheme.breadcrumb.breadcrumbSpaceColumnGapArrowSmall, abstractTheme.breadcrumb.breadcrumbSpaceColumnGapArrowSmall)
        XCTAssertTrue(inheritedTheme.breadcrumb.breadcrumbSpaceColumnGapArrowSmall == MockThemeBreadcrumbComponentTokenProvider.mockThemeBreadcrumbSpace)
    }

    func testInheritedThemeCanOverrideBreadcrumbComponentTokenSpaceColumnGapLevelsMedium() throws {
        XCTAssertNotEqual(inheritedTheme.breadcrumb.breadcrumbSpaceColumnGapLevelsMedium, abstractTheme.breadcrumb.breadcrumbSpaceColumnGapLevelsMedium)
        XCTAssertTrue(inheritedTheme.breadcrumb.breadcrumbSpaceColumnGapLevelsMedium == MockThemeBreadcrumbComponentTokenProvider.mockThemeBreadcrumbSpace)
    }

    func testInheritedThemeCanOverrideBreadcrumbComponentTokenSpaceColumnGapLevelsSmall() throws {
        XCTAssertNotEqual(inheritedTheme.breadcrumb.breadcrumbSpaceColumnGapLevelsSmall, abstractTheme.breadcrumb.breadcrumbSpaceColumnGapLevelsSmall)
        XCTAssertTrue(inheritedTheme.breadcrumb.breadcrumbSpaceColumnGapLevelsSmall == MockThemeBreadcrumbComponentTokenProvider.mockThemeBreadcrumbSpace)
    }

    func testInheritedThemeCanOverrideBreadcrumbComponentTokenSpacePaddingBlock() throws {
        XCTAssertNotEqual(inheritedTheme.breadcrumb.breadcrumbSpacePaddingBlock, abstractTheme.breadcrumb.breadcrumbSpacePaddingBlock)
        XCTAssertTrue(inheritedTheme.breadcrumb.breadcrumbSpacePaddingBlock == MockThemeBreadcrumbComponentTokenProvider.mockThemeBreadcrumbSpace)
    }

    func testInheritedThemeCanOverrideBreadcrumbComponentTokenSpacePaddingInline() throws {
        XCTAssertNotEqual(inheritedTheme.breadcrumb.breadcrumbSpacePaddingInline, abstractTheme.breadcrumb.breadcrumbSpacePaddingInline)
        XCTAssertTrue(inheritedTheme.breadcrumb.breadcrumbSpacePaddingInline == MockThemeBreadcrumbComponentTokenProvider.mockThemeBreadcrumbSpace)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable type_name
