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

final class TestThemeOverrideOfListItemComponentTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Colors

    func testInheritedThemeCanOverrideListItemComponentTokenSizeMinHeight() throws {
        XCTAssertNotEqual(inheritedTheme.listItem.listItemSizeMinHeight, abstractTheme.listItem.listItemSizeMinHeight)
        XCTAssertTrue(inheritedTheme.listItem.listItemSizeMinHeight == MockThemeListItemComponentTokenProvider.mockThemeListItemSize)
    }

    func testInheritedThemeCanOverrideListItemComponentTokenSizeMinWidth() throws {
        XCTAssertNotEqual(inheritedTheme.listItem.listItemSizeMinWidth, abstractTheme.listItem.listItemSizeMinWidth)
        XCTAssertTrue(inheritedTheme.listItem.listItemSizeMinWidth == MockThemeListItemComponentTokenProvider.mockThemeListItemSize)
    }

    func testInheritedThemeCanOverrideListItemComponentTokenColorBgFocus() throws {
        XCTAssertNotEqual(inheritedTheme.listItem.listItemColorBgFocus, abstractTheme.listItem.listItemColorBgFocus)
        XCTAssertTrue(inheritedTheme.listItem.listItemColorBgFocus == MockThemeListItemComponentTokenProvider.mockThemeListItemColor)
    }

    func testInheritedThemeCanOverrideListItemComponentTokenColorBgHover() throws {
        XCTAssertNotEqual(inheritedTheme.listItem.listItemColorBgHover, abstractTheme.listItem.listItemColorBgHover)
        XCTAssertTrue(inheritedTheme.listItem.listItemColorBgHover == MockThemeListItemComponentTokenProvider.mockThemeListItemColor)
    }

    func testInheritedThemeCanOverrideListItemComponentTokenColorBgLoading() throws {
        XCTAssertNotEqual(inheritedTheme.listItem.listItemColorBgLoading, abstractTheme.listItem.listItemColorBgLoading)
        XCTAssertTrue(inheritedTheme.listItem.listItemColorBgLoading == MockThemeListItemComponentTokenProvider.mockThemeListItemColor)
    }

    func testInheritedThemeCanOverrideListItemComponentTokenColorBgPressed() throws {
        XCTAssertNotEqual(inheritedTheme.listItem.listItemColorBgPressed, abstractTheme.listItem.listItemColorBgPressed)
        XCTAssertTrue(inheritedTheme.listItem.listItemColorBgPressed == MockThemeListItemComponentTokenProvider.mockThemeListItemColor)
    }

    func testInheritedThemeCanOverrideListItemComponentTokenColorContentLoader() throws {
        XCTAssertNotEqual(inheritedTheme.listItem.listItemColorContentLoader, abstractTheme.listItem.listItemColorContentLoader)
        XCTAssertTrue(inheritedTheme.listItem.listItemColorContentLoader == MockThemeListItemComponentTokenProvider.mockThemeListItemColor)
    }

    // MARK: - Sizes

    func testInheritedThemeCanOverrideListItemComponentTokenSizeIcon() throws {
        XCTAssertNotEqual(inheritedTheme.listItem.listItemSizeIcon, abstractTheme.listItem.listItemSizeIcon)
        XCTAssertTrue(inheritedTheme.listItem.listItemSizeIcon == MockThemeListItemComponentTokenProvider.mockThemeListItemSize)
    }

    func testInheritedThemeCanOverrideListItemComponentTokenSizeLoader() throws {
        XCTAssertNotEqual(inheritedTheme.listItem.listItemSizeLoader, abstractTheme.listItem.listItemSizeLoader)
        XCTAssertTrue(inheritedTheme.listItem.listItemSizeLoader == MockThemeListItemComponentTokenProvider.mockThemeListItemSize)
    }

    // MARK: - Spaces

    func testInheritedThemeCanOverrideListItemComponentTokenSpaceColumnGap() throws {
        XCTAssertNotEqual(inheritedTheme.listItem.listItemSpaceColumnGap, abstractTheme.listItem.listItemSpaceColumnGap)
        XCTAssertTrue(inheritedTheme.listItem.listItemSpaceColumnGap == MockThemeListItemComponentTokenProvider.mockThemeListItemSpace)
    }

    func testInheritedThemeCanOverrideListItemComponentTokenSpaceInset() throws {
        XCTAssertNotEqual(inheritedTheme.listItem.listItemSpaceInset, abstractTheme.listItem.listItemSpaceInset)
        XCTAssertTrue(inheritedTheme.listItem.listItemSpaceInset == MockThemeListItemComponentTokenProvider.mockThemeListItemSpace)
    }

    func testInheritedThemeCanOverrideListItemComponentTokenSpaceRowGap() throws {
        XCTAssertNotEqual(inheritedTheme.listItem.listItemSpaceRowGap, abstractTheme.listItem.listItemSpaceRowGap)
        XCTAssertTrue(inheritedTheme.listItem.listItemSpaceRowGap == MockThemeListItemComponentTokenProvider.mockThemeListItemSpace)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable type_name
