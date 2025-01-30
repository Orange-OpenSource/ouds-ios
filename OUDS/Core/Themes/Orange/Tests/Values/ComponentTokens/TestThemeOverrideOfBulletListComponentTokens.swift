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

final class TestThemeOverrideOfBulletListComponentTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Sizes

    func testInheritedThemeCanOverrideBulletListComponentTokenSizeMinHeightMedium() throws {
        XCTAssertNotEqual(inheritedTheme.bulletList.bulletListSizeMinHeightMedium, abstractTheme.bulletList.bulletListSizeMinHeightMedium)
        XCTAssertTrue(inheritedTheme.bulletList.bulletListSizeMinHeightMedium == MockThemeBulletListComponentTokenProvider.mockThemeBulletListSize)
    }

    func testInheritedThemeCanOverrideBulletListComponentTokenSizeMinHeightSmall() throws {
        XCTAssertNotEqual(inheritedTheme.bulletList.bulletListSizeMinHeightSmall, abstractTheme.bulletList.bulletListSizeMinHeightSmall)
        XCTAssertTrue(inheritedTheme.bulletList.bulletListSizeMinHeightSmall == MockThemeBulletListComponentTokenProvider.mockThemeBulletListSize)
    }

    func testInheritedThemeCanOverrideBulletListComponentTokenSizeMinWidthMedium() throws {
        XCTAssertNotEqual(inheritedTheme.bulletList.bulletListSizeMinWidthMedium, abstractTheme.bulletList.bulletListSizeMinWidthMedium)
        XCTAssertTrue(inheritedTheme.bulletList.bulletListSizeMinWidthMedium == MockThemeBulletListComponentTokenProvider.mockThemeBulletListSize)
    }

    func testInheritedThemeCanOverrideBulletListComponentTokenSizeMinWidthSmall() throws {
        XCTAssertNotEqual(inheritedTheme.bulletList.bulletListSizeMinWidthSmall, abstractTheme.bulletList.bulletListSizeMinWidthSmall)
        XCTAssertTrue(inheritedTheme.bulletList.bulletListSizeMinWidthSmall == MockThemeBulletListComponentTokenProvider.mockThemeBulletListSize)
    }

    func testInheritedThemeCanOverrideBulletListComponentTokenSizeIconMedium() throws {
        XCTAssertNotEqual(inheritedTheme.bulletList.bulletListSizeIconMedium, abstractTheme.bulletList.bulletListSizeIconMedium)
        XCTAssertTrue(inheritedTheme.bulletList.bulletListSizeIconMedium == MockThemeBulletListComponentTokenProvider.mockThemeBulletListSize)
    }

    func testInheritedThemeCanOverrideBulletListComponentTokenSizeIconSmall() throws {
        XCTAssertNotEqual(inheritedTheme.bulletList.bulletListSizeIconSmall, abstractTheme.bulletList.bulletListSizeIconSmall)
        XCTAssertTrue(inheritedTheme.bulletList.bulletListSizeIconSmall == MockThemeBulletListComponentTokenProvider.mockThemeBulletListSize)
    }

    // MARK: - Colors

    func testInheritedThemeCanOverrideBulletListComponentTokenColorContentEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.bulletList.bulletListColorContentEnabled, abstractTheme.bulletList.bulletListColorContentEnabled)
        XCTAssertTrue(inheritedTheme.bulletList.bulletListColorContentEnabled == MockThemeBulletListComponentTokenProvider.mockThemeBulletListColor)
    }

    // MARK: - Spaces

    func testInheritedThemeCanOverrideBulletListComponentTokenSpaceColumnGapIconMedium() throws {
        XCTAssertNotEqual(inheritedTheme.bulletList.bulletListSpaceColumnGapIconMedium, abstractTheme.bulletList.bulletListSpaceColumnGapIconMedium)
        XCTAssertTrue(inheritedTheme.bulletList.bulletListSpaceColumnGapIconMedium == MockThemeBulletListComponentTokenProvider.mockThemeBulletListSpace)
    }

    func testInheritedThemeCanOverrideBulletListComponentTokenSpaceColumnGapIconSmall() throws {
        XCTAssertNotEqual(inheritedTheme.bulletList.bulletListSpaceColumnGapIconSmall, abstractTheme.bulletList.bulletListSpaceColumnGapIconSmall)
        XCTAssertTrue(inheritedTheme.bulletList.bulletListSpaceColumnGapIconSmall == MockThemeBulletListComponentTokenProvider.mockThemeBulletListSpace)
    }

    func testInheritedThemeCanOverrideBulletListComponentTokenSpacePaddingBlock() throws {
        XCTAssertNotEqual(inheritedTheme.bulletList.bulletListSpacePaddingBlock, abstractTheme.bulletList.bulletListSpacePaddingBlock)
        XCTAssertTrue(inheritedTheme.bulletList.bulletListSpacePaddingBlock == MockThemeBulletListComponentTokenProvider.mockThemeBulletListSpace)
    }

    func testInheritedThemeCanOverrideBulletListComponentTokenSpacePaddingInlineEndNone() throws {
        XCTAssertNotEqual(inheritedTheme.bulletList.bulletListSpacePaddingInlineEndNone, abstractTheme.bulletList.bulletListSpacePaddingInlineEndNone)
        XCTAssertTrue(inheritedTheme.bulletList.bulletListSpacePaddingInlineEndNone == MockThemeBulletListComponentTokenProvider.mockThemeBulletListSpace)
    }

    func testInheritedThemeCanOverrideBulletListComponentTokenSpacePaddingInlineStartIconMedium() throws {
        XCTAssertNotEqual(inheritedTheme.bulletList.bulletListSpacePaddingInlineStartIconMedium, abstractTheme.bulletList.bulletListSpacePaddingInlineStartIconMedium)
        XCTAssertTrue(inheritedTheme.bulletList.bulletListSpacePaddingInlineStartIconMedium == MockThemeBulletListComponentTokenProvider.mockThemeBulletListSpace)
    }

    func testInheritedThemeCanOverrideBulletListComponentTokenSpacePaddingInlineStartIconSmall() throws {
        XCTAssertNotEqual(inheritedTheme.bulletList.bulletListSpacePaddingInlineStartIconSmall, abstractTheme.bulletList.bulletListSpacePaddingInlineStartIconSmall)
        XCTAssertTrue(inheritedTheme.bulletList.bulletListSpacePaddingInlineStartIconSmall == MockThemeBulletListComponentTokenProvider.mockThemeBulletListSpace)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable type_name
