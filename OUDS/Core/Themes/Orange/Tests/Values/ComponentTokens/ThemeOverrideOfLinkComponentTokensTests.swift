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

final class ThemeOverrideOfLinkComponentTokensTests: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Sizes

    func testInheritedThemeCanOverrideLinkComponentTokenSizeMinHeightMedium() throws {
        XCTAssertNotEqual(inheritedTheme.link.linkSizeMinHeightMedium, abstractTheme.link.linkSizeMinHeightMedium)
        XCTAssertTrue(inheritedTheme.link.linkSizeMinHeightMedium == MockThemeLinkComponentTokenProvider.mockThemeLinkSize)
    }

    func testInheritedThemeCanOverrideLinkComponentTokenSizeMinWidthMedium() throws {
        XCTAssertNotEqual(inheritedTheme.link.linkSizeMinWidthMedium, abstractTheme.link.linkSizeMinWidthMedium)
        XCTAssertTrue(inheritedTheme.link.linkSizeMinWidthMedium == MockThemeLinkComponentTokenProvider.mockThemeLinkSize)
    }

    func testInheritedThemeCanOverrideLinkComponentTokenSizeMinHeightSmall() throws {
        XCTAssertNotEqual(inheritedTheme.link.linkSizeMinHeightSmall, abstractTheme.link.linkSizeMinHeightSmall)
        XCTAssertTrue(inheritedTheme.link.linkSizeMinHeightSmall == MockThemeLinkComponentTokenProvider.mockThemeLinkSize)
    }

    func testInheritedThemeCanOverrideLinkComponentTokenSizeMinWidthSmall() throws {
        XCTAssertNotEqual(inheritedTheme.link.linkSizeMinWidthSmall, abstractTheme.link.linkSizeMinWidthSmall)
        XCTAssertTrue(inheritedTheme.link.linkSizeMinWidthSmall == MockThemeLinkComponentTokenProvider.mockThemeLinkSize)
    }

    func testInheritedThemeCanOverrideLinkComponentTokenSizeIconMedium() throws {
        XCTAssertNotEqual(inheritedTheme.link.linkSizeIconMedium, abstractTheme.link.linkSizeIconMedium)
        XCTAssertTrue(inheritedTheme.link.linkSizeIconMedium == MockThemeLinkComponentTokenProvider.mockThemeLinkSize)
    }

    func testInheritedThemeCanOverrideLinkComponentTokenSizeIconSmall() throws {
        XCTAssertNotEqual(inheritedTheme.link.linkSizeIconSmall, abstractTheme.link.linkSizeIconSmall)
        XCTAssertTrue(inheritedTheme.link.linkSizeIconSmall == MockThemeLinkComponentTokenProvider.mockThemeLinkSize)
    }

    // MARK: - Colors

    func testInheritedThemeCanOverrideLinkComponentTokenColorContentEnabledMono() throws {
        XCTAssertNotEqual(inheritedTheme.link.linkColorContentEnabledMono, abstractTheme.link.linkColorContentEnabledMono)
        XCTAssertTrue(inheritedTheme.link.linkColorContentEnabledMono == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    func testInheritedThemeCanOverrideLinkComponentTokenColorContentHoverMono() throws {
        XCTAssertNotEqual(inheritedTheme.link.linkColorContentHoverMono, abstractTheme.link.linkColorContentHoverMono)
        XCTAssertTrue(inheritedTheme.link.linkColorContentHoverMono == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    func testInheritedThemeCanOverrideLinkComponentTokenColorContentPressedMono() throws {
        XCTAssertNotEqual(inheritedTheme.link.linkColorContentPressedMono, abstractTheme.link.linkColorContentPressedMono)
        XCTAssertTrue(inheritedTheme.link.linkColorContentPressedMono == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    func testInheritedThemeCanOverrideLinkComponentTokenColorContentFocusMono() throws {
        XCTAssertNotEqual(inheritedTheme.link.linkColorContentFocusMono, abstractTheme.link.linkColorContentFocusMono)
        XCTAssertTrue(inheritedTheme.link.linkColorContentFocusMono == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    func testInheritedThemeCanOverrideLinkComponentTokenColorContentDisabledMono() throws {
        XCTAssertNotEqual(inheritedTheme.link.linkColorContentDisabledMono, abstractTheme.link.linkColorContentDisabledMono)
        XCTAssertTrue(inheritedTheme.link.linkColorContentDisabledMono == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    func testInheritedThemeCanOverrideLinkComponentTokenColorContentEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.link.linkColorContentEnabled, abstractTheme.link.linkColorContentEnabled)
        XCTAssertTrue(inheritedTheme.link.linkColorContentEnabled == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    func testInheritedThemeCanOverrideLinkComponentTokenColorContentHover() throws {
        XCTAssertNotEqual(inheritedTheme.link.linkColorContentHover, abstractTheme.link.linkColorContentHover)
        XCTAssertTrue(inheritedTheme.link.linkColorContentHover == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    func testInheritedThemeCanOverrideLinkComponentTokenColorContentPressed() throws {
        XCTAssertNotEqual(inheritedTheme.link.linkColorContentPressed, abstractTheme.link.linkColorContentPressed)
        XCTAssertTrue(inheritedTheme.link.linkColorContentPressed == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    func testInheritedThemeCanOverrideLinkComponentTokenColorContentFocus() throws {
        XCTAssertNotEqual(inheritedTheme.link.linkColorContentFocus, abstractTheme.link.linkColorContentFocus)
        XCTAssertTrue(inheritedTheme.link.linkColorContentFocus == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    func testInheritedThemeCanOverrideLinkComponentTokenColorArrowEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.link.linkColorArrowEnabled, abstractTheme.link.linkColorArrowEnabled)
        XCTAssertTrue(inheritedTheme.link.linkColorArrowEnabled == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    func testInheritedThemeCanOverrideLinkComponentTokenColorArrowHover() throws {
        XCTAssertNotEqual(inheritedTheme.link.linkColorArrowHover, abstractTheme.link.linkColorArrowHover)
        XCTAssertTrue(inheritedTheme.link.linkColorArrowHover == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    func testInheritedThemeCanOverrideLinkComponentTokenColorArrowPressed() throws {
        XCTAssertNotEqual(inheritedTheme.link.linkColorArrowPressed, abstractTheme.link.linkColorArrowPressed)
        XCTAssertTrue(inheritedTheme.link.linkColorArrowPressed == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    func testInheritedThemeCanOverrideLinkComponentTokenColorArrowFocus() throws {
        XCTAssertNotEqual(inheritedTheme.link.linkColorArrowFocus, abstractTheme.link.linkColorArrowFocus)
        XCTAssertTrue(inheritedTheme.link.linkColorArrowFocus == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    // MARK: - Spaces

    func testInheritedThemeCanOverrideLinkComponentTokenSpacePaddingInline() throws {
        XCTAssertNotEqual(inheritedTheme.link.linkSpacePaddingInline, abstractTheme.link.linkSpacePaddingInline)
        XCTAssertTrue(inheritedTheme.link.linkSpacePaddingInline == MockThemeLinkComponentTokenProvider.mockThemeLinkSpace)
    }

    func testInheritedThemeCanOverrideLinkComponentTokenSpacePaddingBlock() throws {
        XCTAssertNotEqual(inheritedTheme.link.linkSpacePaddingBlock, abstractTheme.link.linkSpacePaddingBlock)
        XCTAssertTrue(inheritedTheme.link.linkSpacePaddingBlock == MockThemeLinkComponentTokenProvider.mockThemeLinkSpace)
    }

    func testInheritedThemeCanOverrideLinkComponentTokenSpaceColumnGapIconMedium() throws {
        XCTAssertNotEqual(inheritedTheme.link.linkSpaceColumnGapIconMedium, abstractTheme.link.linkSpaceColumnGapIconMedium)
        XCTAssertTrue(inheritedTheme.link.linkSpaceColumnGapIconMedium == MockThemeLinkComponentTokenProvider.mockThemeLinkSpace)
    }

    func testInheritedThemeCanOverrideLinkComponentTokenSpaceColumnGapIconSmall() throws {
        XCTAssertNotEqual(inheritedTheme.link.linkSpaceColumnGapIconSmall, abstractTheme.link.linkSpaceColumnGapIconSmall)
        XCTAssertTrue(inheritedTheme.link.linkSpaceColumnGapIconSmall == MockThemeLinkComponentTokenProvider.mockThemeLinkSpace)
    }

    func testInheritedThemeCanOverrideLinkComponentTokenSpaceColumnGapArrowMedium() throws {
        XCTAssertNotEqual(inheritedTheme.link.linkSpaceColumnGapArrowMedium, abstractTheme.link.linkSpaceColumnGapArrowMedium)
        XCTAssertTrue(inheritedTheme.link.linkSpaceColumnGapArrowMedium == MockThemeLinkComponentTokenProvider.mockThemeLinkSpace)
    }

    func testInheritedThemeCanOverrideLinkComponentTokenSpaceColumnGapArrowSmall() throws {
        XCTAssertNotEqual(inheritedTheme.link.linkSpaceColumnGapArrowSmall, abstractTheme.link.linkSpaceColumnGapArrowSmall)
        XCTAssertTrue(inheritedTheme.link.linkSpaceColumnGapArrowSmall == MockThemeLinkComponentTokenProvider.mockThemeLinkSpace)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
