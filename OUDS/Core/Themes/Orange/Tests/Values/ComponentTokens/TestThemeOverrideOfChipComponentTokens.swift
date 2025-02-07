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

    // MARK: - Sizes

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

    // MARK: - Borders

    func testInheritedThemeCanOverrideChipComponentTokenBorderRadiusPill() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipBorderRadiusPill, abstractTheme.chip.chipBorderRadiusPill)
        XCTAssertTrue(inheritedTheme.chip.chipBorderRadiusPill == MockThemeChipComponentTokenProvider.mockThemeChipBorderRadius)
    }

    func testInheritedThemeCanOverrideChipComponentTokenBorderWidthDefault() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipBorderWidthDefault, abstractTheme.chip.chipBorderWidthDefault)
        XCTAssertTrue(inheritedTheme.chip.chipBorderWidthDefault == MockThemeChipComponentTokenProvider.mockThemeChipBorderWidth)
    }

    func testInheritedThemeCanOverrideChipComponentTokenBorderWidthDefaultInteraction() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipBorderWidthDefaultInteraction, abstractTheme.chip.chipBorderWidthDefaultInteraction)
        XCTAssertTrue(inheritedTheme.chip.chipBorderWidthDefaultInteraction == MockThemeChipComponentTokenProvider.mockThemeChipBorderWidth)
    }

    func testInheritedThemeCanOverrideChipComponentTokenBorderWidthDefaultInteractionMono() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipBorderWidthDefaultInteractionMono, abstractTheme.chip.chipBorderWidthDefaultInteractionMono)
        XCTAssertTrue(inheritedTheme.chip.chipBorderWidthDefaultInteractionMono == MockThemeChipComponentTokenProvider.mockThemeChipBorderWidth)
    }

    // MARK: - Colors

    func testInheritedThemeCanOverrideChipComponentTokenColorBgDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorBgDisabled, abstractTheme.chip.chipColorBgDisabled)
        XCTAssertTrue(inheritedTheme.chip.chipColorBgDisabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorBgDisabledMono() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorBgDisabledMono, abstractTheme.chip.chipColorBgDisabledMono)
        XCTAssertTrue(inheritedTheme.chip.chipColorBgDisabledMono == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorBgEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorBgEnabled, abstractTheme.chip.chipColorBgEnabled)
        XCTAssertTrue(inheritedTheme.chip.chipColorBgEnabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorBgEnabledMono() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorBgEnabledMono, abstractTheme.chip.chipColorBgEnabledMono)
        XCTAssertTrue(inheritedTheme.chip.chipColorBgEnabledMono == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorBgFocus() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorBgFocus, abstractTheme.chip.chipColorBgFocus)
        XCTAssertTrue(inheritedTheme.chip.chipColorBgFocus == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorBgFocusMono() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorBgFocusMono, abstractTheme.chip.chipColorBgFocusMono)
        XCTAssertTrue(inheritedTheme.chip.chipColorBgFocusMono == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorBgHover() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorBgHover, abstractTheme.chip.chipColorBgHover)
        XCTAssertTrue(inheritedTheme.chip.chipColorBgHover == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorBgHoverMono() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorBgHoverMono, abstractTheme.chip.chipColorBgHoverMono)
        XCTAssertTrue(inheritedTheme.chip.chipColorBgHoverMono == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorBgPressed() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorBgPressed, abstractTheme.chip.chipColorBgPressed)
        XCTAssertTrue(inheritedTheme.chip.chipColorBgPressed == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorBgPressedMono() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorBgPressedMono, abstractTheme.chip.chipColorBgPressedMono)
        XCTAssertTrue(inheritedTheme.chip.chipColorBgPressedMono == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorBorderDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorBorderDisabled, abstractTheme.chip.chipColorBorderDisabled)
        XCTAssertTrue(inheritedTheme.chip.chipColorBorderDisabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorBorderDisabledMono() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorBorderDisabledMono, abstractTheme.chip.chipColorBorderDisabledMono)
        XCTAssertTrue(inheritedTheme.chip.chipColorBorderDisabledMono == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorBorderEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorBorderEnabled, abstractTheme.chip.chipColorBorderEnabled)
        XCTAssertTrue(inheritedTheme.chip.chipColorBorderEnabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorBorderEnabledMono() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorBorderEnabledMono, abstractTheme.chip.chipColorBorderEnabledMono)
        XCTAssertTrue(inheritedTheme.chip.chipColorBorderEnabledMono == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorBorderHover() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorBorderHover, abstractTheme.chip.chipColorBorderHover)
        XCTAssertTrue(inheritedTheme.chip.chipColorBorderHover == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorBorderHoverMono() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorBorderHoverMono, abstractTheme.chip.chipColorBorderHoverMono)
        XCTAssertTrue(inheritedTheme.chip.chipColorBorderHoverMono == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorBorderPressed() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorBorderPressed, abstractTheme.chip.chipColorBorderPressed)
        XCTAssertTrue(inheritedTheme.chip.chipColorBorderPressed == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorBorderPressedMono() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorBorderPressedMono, abstractTheme.chip.chipColorBorderPressedMono)
        XCTAssertTrue(inheritedTheme.chip.chipColorBorderPressedMono == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorBorderSelected() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorBorderSelected, abstractTheme.chip.chipColorBorderSelected)
        XCTAssertTrue(inheritedTheme.chip.chipColorBorderSelected == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorBorderFocus() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorBorderFocus, abstractTheme.chip.chipColorBorderFocus)
        XCTAssertTrue(inheritedTheme.chip.chipColorBorderFocus == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorBorderFocusMono() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorBorderFocusMono, abstractTheme.chip.chipColorBorderFocusMono)
        XCTAssertTrue(inheritedTheme.chip.chipColorBorderFocusMono == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorContentDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorContentDisabled, abstractTheme.chip.chipColorContentDisabled)
        XCTAssertTrue(inheritedTheme.chip.chipColorContentDisabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorContentDisabledMono() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorContentDisabledMono, abstractTheme.chip.chipColorContentDisabledMono)
        XCTAssertTrue(inheritedTheme.chip.chipColorContentDisabledMono == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorContentEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorContentEnabled, abstractTheme.chip.chipColorContentEnabled)
        XCTAssertTrue(inheritedTheme.chip.chipColorContentEnabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorContentEnabledMono() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorContentEnabledMono, abstractTheme.chip.chipColorContentEnabledMono)
        XCTAssertTrue(inheritedTheme.chip.chipColorContentEnabledMono == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorContentFocus() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorContentFocus, abstractTheme.chip.chipColorContentFocus)
        XCTAssertTrue(inheritedTheme.chip.chipColorContentFocus == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorContentFocusMono() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorContentFocusMono, abstractTheme.chip.chipColorContentFocusMono)
        XCTAssertTrue(inheritedTheme.chip.chipColorContentFocusMono == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorContentHover() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorContentHover, abstractTheme.chip.chipColorContentHover)
        XCTAssertTrue(inheritedTheme.chip.chipColorContentHover == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorContentHoverMono() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorContentHoverMono, abstractTheme.chip.chipColorContentHoverMono)
        XCTAssertTrue(inheritedTheme.chip.chipColorContentHoverMono == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorContentPressed() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorContentPressed, abstractTheme.chip.chipColorContentPressed)
        XCTAssertTrue(inheritedTheme.chip.chipColorContentPressed == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    func testInheritedThemeCanOverrideChipComponentTokenColorContentPressedMono() throws {
        XCTAssertNotEqual(inheritedTheme.chip.chipColorContentPressedMono, abstractTheme.chip.chipColorContentPressedMono)
        XCTAssertTrue(inheritedTheme.chip.chipColorContentPressedMono == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    // MARK: - Spaces

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
