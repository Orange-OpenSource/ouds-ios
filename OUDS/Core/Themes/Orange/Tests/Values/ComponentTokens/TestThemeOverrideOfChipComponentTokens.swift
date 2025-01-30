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

final class TestThemeOverrideOfChipComponentTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    func testInheritedThemeCanOverrideChipComponentTokenSizeMaxHeight() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipSizeMaxHeight, abstractTheme.chip.chipSizeMaxHeight)
        XCTAssertTrue(inheritedTheme.chip.chipSizeMaxHeight == MockThemeChipComponentTokenProvider.mockThemeChipSize)
    }

    func testInheritedThemeCanOverrideChipComponentTokenSizeMinHeight() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipSizeMinHeight, abstractTheme.chip.chipSizeMinHeight)
        XCTAssertTrue(inheritedTheme.chip.chipSizeMinHeight == MockThemeChipComponentTokenProvider.mockThemeChipSize)
    }

    func testInheritedThemeCanOverrideChipComponentTokenSizeIcon() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipSizeIcon, abstractTheme.chip.chipSizeIcon)
        XCTAssertTrue(inheritedTheme.chip.chipSizeIcon == MockThemeChipComponentTokenProvider.mockThemeChipSize)
    }

    func testInheritedThemeCanOverrideChipComponentTokenBorderRadius() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipBorderRadius, abstractTheme.chip.chipBorderRadius)
        XCTAssertTrue(inheritedTheme.chip.chipBorderRadius == MockThemeChipComponentTokenProvider.mockThemeChipBorderRadius)
    }

    func testInheritedThemeCanOverrideChipComponentTokenBorderWidthDefault() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipBorderWidthDefault, abstractTheme.chip.chipBorderWidthDefault)
        XCTAssertTrue(inheritedTheme.chip.chipBorderWidthDefault == MockThemeChipComponentTokenProvider.mockThemeChipBorderWidth)
    }

    func testInheritedThemeCanOverrideChipComponentTokenBorderWidthDefaultInteraction() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipBorderWidthDefaultInteraction, abstractTheme.chip.chipBorderWidthDefaultInteraction)
        XCTAssertTrue(inheritedTheme.chip.chipBorderWidthDefaultInteraction == MockThemeChipComponentTokenProvider.mockThemeChipBorderWidth)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorBgDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorBgDisabled, abstractTheme.chip.chipColorBgDisabled)
        XCTAssertTrue(inheritedTheme.chip.chipColorBgDisabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorBgEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorBgEnabled, abstractTheme.chip.chipColorBgEnabled)
        XCTAssertTrue(inheritedTheme.chip.chipColorBgEnabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorBgFocus() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorBgFocus, abstractTheme.chip.chipColorBgFocus)
        XCTAssertTrue(inheritedTheme.chip.chipColorBgFocus == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorBgHover() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorBgHover, abstractTheme.chip.chipColorBgHover)
        XCTAssertTrue(inheritedTheme.chip.chipColorBgHover == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorBgPressed() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorBgPressed, abstractTheme.chip.chipColorBgPressed)
        XCTAssertTrue(inheritedTheme.chip.chipColorBgPressed == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorBorderDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorBorderDisabled, abstractTheme.chip.chipColorBorderDisabled)
        XCTAssertTrue(inheritedTheme.chip.chipColorBorderDisabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorBorderEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorBorderEnabled, abstractTheme.chip.chipColorBorderEnabled)
        XCTAssertTrue(inheritedTheme.chip.chipColorBorderEnabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorBorderHover() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorBorderHover, abstractTheme.chip.chipColorBorderHover)
        XCTAssertTrue(inheritedTheme.chip.chipColorBorderHover == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorBorderPressed() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorBorderPressed, abstractTheme.chip.chipColorBorderPressed)
        XCTAssertTrue(inheritedTheme.chip.chipColorBorderPressed == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorBorderSelected() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorBorderSelected, abstractTheme.chip.chipColorBorderSelected)
        XCTAssertTrue(inheritedTheme.chip.chipColorBorderSelected == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorContentDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorContentDisabled, abstractTheme.chip.chipColorContentDisabled)
        XCTAssertTrue(inheritedTheme.chip.chipColorContentDisabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorContentEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorContentEnabled, abstractTheme.chip.chipColorContentEnabled)
        XCTAssertTrue(inheritedTheme.chip.chipColorContentEnabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorContentFocus() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorContentFocus, abstractTheme.chip.chipColorContentFocus)
        XCTAssertTrue(inheritedTheme.chip.chipColorContentFocus == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorContentHover() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorContentHover, abstractTheme.chip.chipColorContentHover)
        XCTAssertTrue(inheritedTheme.chip.chipColorContentHover == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorContentPressed() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorContentPressed, abstractTheme.chip.chipColorContentPressed)
        XCTAssertTrue(inheritedTheme.chip.chipColorContentPressed == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenSpaceColumnGapColumnGap() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipSpaceColumnGapColumnGap, abstractTheme.chip.chipSpaceColumnGapColumnGap)
        XCTAssertTrue(inheritedTheme.chip.chipSpaceColumnGapColumnGap == MockThemeChipComponentTokenProvider.mockThemeChipSpace)
    }

    func testInheritedThemeCanOverrideChipComponentTokenSpaceInsetIconOnly() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipSpaceInsetIconOnly, abstractTheme.chip.chipSpaceInsetIconOnly)
        XCTAssertTrue(inheritedTheme.chip.chipSpaceInsetIconOnly == MockThemeChipComponentTokenProvider.mockThemeChipSpace)
    }

    func testInheritedThemeCanOverrideChipComponentTokenSpacePaddingBlock() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipSpacePaddingBlock, abstractTheme.chip.chipSpacePaddingBlock)
        XCTAssertTrue(inheritedTheme.chip.chipSpacePaddingBlock == MockThemeChipComponentTokenProvider.mockThemeChipSpace)
    }

    func testInheritedThemeCanOverrideChipComponentTokenSpacePaddingInlineIconEnd() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipSpacePaddingInlineIconEnd, abstractTheme.chip.chipSpacePaddingInlineIconEnd)
        XCTAssertTrue(inheritedTheme.chip.chipSpacePaddingInlineIconEnd == MockThemeChipComponentTokenProvider.mockThemeChipSpace)
    }

    func testInheritedThemeCanOverrideChipComponentTokenSpacePaddingInlineIconNone() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipSpacePaddingInlineIconNone, abstractTheme.chip.chipSpacePaddingInlineIconNone)
        XCTAssertTrue(inheritedTheme.chip.chipSpacePaddingInlineIconNone == MockThemeChipComponentTokenProvider.mockThemeChipSpace)
    }

    func testInheritedThemeCanOverrideChipComponentTokenSpacePaddingInlineIconOnly() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipSpacePaddingInlineIconOnly, abstractTheme.chip.chipSpacePaddingInlineIconOnly)
        XCTAssertTrue(inheritedTheme.chip.chipSpacePaddingInlineIconOnly == MockThemeChipComponentTokenProvider.mockThemeChipSpace)
    }

    func testInheritedThemeCanOverrideChipComponentTokenSpacePaddingInlineIconStart() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipSpacePaddingInlineIconStart, abstractTheme.chip.chipSpacePaddingInlineIconStart)
        XCTAssertTrue(inheritedTheme.chip.chipSpacePaddingInlineIconStart == MockThemeChipComponentTokenProvider.mockThemeChipSpace)
    }

    func testInheritedThemeCanOverrideChipComponentTokenSpacePaddingInlineLabelEnd() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipSpacePaddingInlineLabelEnd, abstractTheme.chip.chipSpacePaddingInlineLabelEnd)
        XCTAssertTrue(inheritedTheme.chip.chipSpacePaddingInlineLabelEnd == MockThemeChipComponentTokenProvider.mockThemeChipSpace)
    }

    func testInheritedThemeCanOverrideChipComponentTokenSpacePaddingInlineLabelStart() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipSpacePaddingInlineLabelStart, abstractTheme.chip.chipSpacePaddingInlineLabelStart)
        XCTAssertTrue(inheritedTheme.chip.chipSpacePaddingInlineLabelStart == MockThemeChipComponentTokenProvider.mockThemeChipSpace)
    }

    func testInheritedThemeCanOverrideChipComponentTokenSpacePaddingStackPaddingBlock() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipSpacePaddingStackPaddingBlock, abstractTheme.chip.chipSpacePaddingStackPaddingBlock)
        XCTAssertTrue(inheritedTheme.chip.chipSpacePaddingStackPaddingBlock == MockThemeChipComponentTokenProvider.mockThemeChipSpace)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
