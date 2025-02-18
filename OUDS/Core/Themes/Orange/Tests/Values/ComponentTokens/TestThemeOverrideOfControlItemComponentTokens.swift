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

final class TestThemeOverrideOfControlItemComponentTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Sizes

    func testInheritedThemeCanOverrideControlItemComponentTokenSizeMinHeight() throws {
        XCTAssertNotEqual(inheritedTheme.controlItem.controlItemSizeMinHeight, abstractTheme.controlItem.controlItemSizeMinHeight)
        XCTAssertTrue(inheritedTheme.controlItem.controlItemSizeMinHeight == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSize)
    }

    func testInheritedThemeCanOverrideControlItemComponentTokenSizeMinWidth() throws {
        XCTAssertNotEqual(inheritedTheme.controlItem.controlItemSizeMinWidth, abstractTheme.controlItem.controlItemSizeMinWidth)
        XCTAssertTrue(inheritedTheme.controlItem.controlItemSizeMinWidth == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSize)
    }

    func testInheritedThemeCanOverrideControlItemComponentTokenSizeMaxHeightAssetsContainer() throws {
        XCTAssertNotEqual(inheritedTheme.controlItem.controlItemSizeMaxHeightAssetsContainer, abstractTheme.controlItem.controlItemSizeMaxHeightAssetsContainer)
        XCTAssertTrue(inheritedTheme.controlItem.controlItemSizeMaxHeightAssetsContainer == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSize)
    }

    func testInheritedThemeCanOverrideControlItemComponentTokenSizeIcon() throws {
        XCTAssertNotEqual(inheritedTheme.controlItem.controlItemSizeIcon, abstractTheme.controlItem.controlItemSizeIcon)
        XCTAssertTrue(inheritedTheme.controlItem.controlItemSizeIcon == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSize)
    }

    func testInheritedThemeCanOverrideControlItemComponentTokenSizeLoader() throws {
        XCTAssertNotEqual(inheritedTheme.controlItem.controlItemSizeLoader, abstractTheme.controlItem.controlItemSizeLoader)
        XCTAssertTrue(inheritedTheme.controlItem.controlItemSizeLoader == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSize)
    }

    // MARK: - Colors

    func testInheritedThemeCanOverrideControlItemComponentTokenColorBgHover() throws {
        XCTAssertNotEqual(inheritedTheme.controlItem.controlItemColorBgHover, abstractTheme.controlItem.controlItemColorBgHover)
        XCTAssertTrue(inheritedTheme.controlItem.controlItemColorBgHover == MockThemeControlItemComponentTokenProvider.mockThemeControlItemColor)
    }

    func testInheritedThemeCanOverrideControlItemComponentTokenColorBgPressed() throws {
        XCTAssertNotEqual(inheritedTheme.controlItem.controlItemColorBgPressed, abstractTheme.controlItem.controlItemColorBgPressed)
        XCTAssertTrue(inheritedTheme.controlItem.controlItemColorBgPressed == MockThemeControlItemComponentTokenProvider.mockThemeControlItemColor)
    }

    func testInheritedThemeCanOverrideControlItemComponentTokenColorBgLoading() throws {
        XCTAssertNotEqual(inheritedTheme.controlItem.controlItemColorBgLoading, abstractTheme.controlItem.controlItemColorBgLoading)
        XCTAssertTrue(inheritedTheme.controlItem.controlItemColorBgLoading == MockThemeControlItemComponentTokenProvider.mockThemeControlItemColor)
    }

    func testInheritedThemeCanOverrideControlItemComponentTokenColorBgFocus() throws {
        XCTAssertNotEqual(inheritedTheme.controlItem.controlItemColorBgFocus, abstractTheme.controlItem.controlItemColorBgFocus)
        XCTAssertTrue(inheritedTheme.controlItem.controlItemColorBgFocus == MockThemeControlItemComponentTokenProvider.mockThemeControlItemColor)
    }

    func testInheritedThemeCanOverrideControlItemComponentTokenColorContentLoader() throws {
        XCTAssertNotEqual(inheritedTheme.controlItem.controlItemColorContentLoader, abstractTheme.controlItem.controlItemColorContentLoader)
        XCTAssertTrue(inheritedTheme.controlItem.controlItemColorContentLoader == MockThemeControlItemComponentTokenProvider.mockThemeControlItemColor)
    }

    // MARK: - Spaces

    func testInheritedThemeCanOverrideControlItemComponentTokenSpaceColumnGap() throws {
        XCTAssertNotEqual(inheritedTheme.controlItem.controlItemSpaceColumnGap, abstractTheme.controlItem.controlItemSpaceColumnGap)
        XCTAssertTrue(inheritedTheme.controlItem.controlItemSpaceColumnGap == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSpace)
    }

    func testInheritedThemeCanOverrideControlItemComponentTokenSpaceRowGap() throws {
        XCTAssertNotEqual(inheritedTheme.controlItem.controlItemSpaceRowGap, abstractTheme.controlItem.controlItemSpaceRowGap)
        XCTAssertTrue(inheritedTheme.controlItem.controlItemSpaceRowGap == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSpace)
    }

    func testInheritedThemeCanOverrideControlItemComponentTokenSpaceInset() throws {
        XCTAssertNotEqual(inheritedTheme.controlItem.controlItemSpaceInset, abstractTheme.controlItem.controlItemSpaceInset)
        XCTAssertTrue(inheritedTheme.controlItem.controlItemSpaceInset == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSpace)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable type_name
