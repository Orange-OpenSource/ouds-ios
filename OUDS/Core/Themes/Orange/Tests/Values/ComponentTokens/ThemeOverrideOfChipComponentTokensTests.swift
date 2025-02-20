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
import Testing

struct ThemeOverrideOfChipComponentTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Sizes

    @Test func inheritedThemeCanOverrideChipComponentTokenSizeMaxHeight() throws {
        #expect(inheritedTheme.chip.chipSizeMaxHeight != abstractTheme.chip.chipSizeMaxHeight)
        #expect(inheritedTheme.chip.chipSizeMaxHeight == MockThemeChipComponentTokenProvider.mockThemeChipSize)
    }

    @Test func inheritedThemeCanOverrideChipComponentTokenSizeMinHeight() throws {
        #expect(inheritedTheme.chip.chipSizeMinHeight != abstractTheme.chip.chipSizeMinHeight)
        #expect(inheritedTheme.chip.chipSizeMinHeight == MockThemeChipComponentTokenProvider.mockThemeChipSize)
    }

    @Test func inheritedThemeCanOverrideChipComponentTokenSizeMinWidth() throws {
        #expect(inheritedTheme.chip.chipSizeMinWidth != abstractTheme.chip.chipSizeMinWidth)
        #expect(inheritedTheme.chip.chipSizeMinWidth == MockThemeChipComponentTokenProvider.mockThemeChipSize)
    }

    @Test func inheritedThemeCanOverrideChipComponentTokenSizeIcon() throws {
        #expect(inheritedTheme.chip.chipSizeIcon != abstractTheme.chip.chipSizeIcon)
        #expect(inheritedTheme.chip.chipSizeIcon == MockThemeChipComponentTokenProvider.mockThemeChipSize)
    }

    // MARK: - Borders

    @Test func inheritedThemeCanOverrideChipComponentTokenBorderWidthDefault() throws {
        #expect(inheritedTheme.chip.chipBorderWidthDefault != abstractTheme.chip.chipBorderWidthDefault)
        #expect(inheritedTheme.chip.chipBorderWidthDefault == MockThemeChipComponentTokenProvider.mockThemeChipBorderWidth)
    }

    @Test func inheritedThemeCanOverrideChipComponentTokenBorderWidthDefaultInteraction() throws {
        #expect(inheritedTheme.chip.chipBorderWidthDefaultInteraction != abstractTheme.chip.chipBorderWidthDefaultInteraction)
        #expect(inheritedTheme.chip.chipBorderWidthDefaultInteraction == MockThemeChipComponentTokenProvider.mockThemeChipBorderWidth)
    }

    @Test func inheritedThemeCanOverrideChipComponentTokenBorderWidthSelected() throws {
        #expect(inheritedTheme.chip.chipBorderWidthSelected != abstractTheme.chip.chipBorderWidthSelected)
        #expect(inheritedTheme.chip.chipBorderWidthSelected == MockThemeChipComponentTokenProvider.mockThemeChipBorderWidth)
    }

    @Test func inheritedThemeCanOverrideChipComponentTokenBorderRadiusPill() throws {
        #expect(inheritedTheme.chip.chipBorderRadiusPill != abstractTheme.chip.chipBorderRadiusPill)
        #expect(inheritedTheme.chip.chipBorderRadiusPill == MockThemeChipComponentTokenProvider.mockThemeChipBorderRadius)
    }

    // MARK: - Colors

    @Test func inheritedThemeCanOverrideChipComponentTokenColorContentEnabled() throws {
        #expect(inheritedTheme.chip.chipColorContentEnabled != abstractTheme.chip.chipColorContentEnabled)
        #expect(inheritedTheme.chip.chipColorContentEnabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipComponentTokenColorContentHover() throws {
        #expect(inheritedTheme.chip.chipColorContentHover != abstractTheme.chip.chipColorContentHover)
        #expect(inheritedTheme.chip.chipColorContentHover == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipComponentTokenColorContentPressed() throws {
        #expect(inheritedTheme.chip.chipColorContentPressed != abstractTheme.chip.chipColorContentPressed)
        #expect(inheritedTheme.chip.chipColorContentPressed == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipComponentTokenColorContentDisabled() throws {
        #expect(inheritedTheme.chip.chipColorContentDisabled != abstractTheme.chip.chipColorContentDisabled)
        #expect(inheritedTheme.chip.chipColorContentDisabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipComponentTokenColorContentFocus() throws {
        #expect(inheritedTheme.chip.chipColorContentFocus != abstractTheme.chip.chipColorContentFocus)
        #expect(inheritedTheme.chip.chipColorContentFocus == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipComponentTokenColorBgEnabled() throws {
        #expect(inheritedTheme.chip.chipColorBgEnabled != abstractTheme.chip.chipColorBgEnabled)
        #expect(inheritedTheme.chip.chipColorBgEnabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipComponentTokenColorBgHover() throws {
        #expect(inheritedTheme.chip.chipColorBgHover != abstractTheme.chip.chipColorBgHover)
        #expect(inheritedTheme.chip.chipColorBgHover == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipComponentTokenColorBgPressed() throws {
        #expect(inheritedTheme.chip.chipColorBgPressed != abstractTheme.chip.chipColorBgPressed)
        #expect(inheritedTheme.chip.chipColorBgPressed == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipComponentTokenColorBgDisabled() throws {
        #expect(inheritedTheme.chip.chipColorBgDisabled != abstractTheme.chip.chipColorBgDisabled)
        #expect(inheritedTheme.chip.chipColorBgDisabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipComponentTokenColorBgFocus() throws {
        #expect(inheritedTheme.chip.chipColorBgFocus != abstractTheme.chip.chipColorBgFocus)
        #expect(inheritedTheme.chip.chipColorBgFocus == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipComponentTokenColorBorderEnabled() throws {
        #expect(inheritedTheme.chip.chipColorBorderEnabled != abstractTheme.chip.chipColorBorderEnabled)
        #expect(inheritedTheme.chip.chipColorBorderEnabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipComponentTokenColorBorderHover() throws {
        #expect(inheritedTheme.chip.chipColorBorderHover != abstractTheme.chip.chipColorBorderHover)
        #expect(inheritedTheme.chip.chipColorBorderHover == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipComponentTokenColorBorderPressed() throws {
        #expect(inheritedTheme.chip.chipColorBorderPressed != abstractTheme.chip.chipColorBorderPressed)
        #expect(inheritedTheme.chip.chipColorBorderPressed == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipComponentTokenColorBorderDisabled() throws {
        #expect(inheritedTheme.chip.chipColorBorderDisabled != abstractTheme.chip.chipColorBorderDisabled)
        #expect(inheritedTheme.chip.chipColorBorderDisabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipComponentTokenColorBorderSelected() throws {
        #expect(inheritedTheme.chip.chipColorBorderSelected != abstractTheme.chip.chipColorBorderSelected)
        #expect(inheritedTheme.chip.chipColorBorderSelected == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipComponentTokenColorBorderFocus() throws {
        #expect(inheritedTheme.chip.chipColorBorderFocus != abstractTheme.chip.chipColorBorderFocus)
        #expect(inheritedTheme.chip.chipColorBorderFocus == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    // MARK: - Spaces

    @Test func inheritedThemeCanOverrideChipComponentTokenSpacePaddingInlineLabelStart() throws {
        #expect(inheritedTheme.chip.chipSpacePaddingInlineLabelStart != abstractTheme.chip.chipSpacePaddingInlineLabelStart)
        #expect(inheritedTheme.chip.chipSpacePaddingInlineLabelStart == MockThemeChipComponentTokenProvider.mockThemeChipSpace)
    }

    @Test func inheritedThemeCanOverrideChipComponentTokenSpacePaddingInlineLabelEnd() throws {
        #expect(inheritedTheme.chip.chipSpacePaddingInlineLabelEnd != abstractTheme.chip.chipSpacePaddingInlineLabelEnd)
        #expect(inheritedTheme.chip.chipSpacePaddingInlineLabelEnd == MockThemeChipComponentTokenProvider.mockThemeChipSpace)
    }

    @Test func inheritedThemeCanOverrideChipComponentTokenSpacePaddingInlineIconOnly() throws {
        #expect(inheritedTheme.chip.chipSpacePaddingInlineIconOnly != abstractTheme.chip.chipSpacePaddingInlineIconOnly)
        #expect(inheritedTheme.chip.chipSpacePaddingInlineIconOnly == MockThemeChipComponentTokenProvider.mockThemeChipSpace)
    }

    @Test func inheritedThemeCanOverrideChipComponentTokenSpacePaddingInlineIconStart() throws {
        #expect(inheritedTheme.chip.chipSpacePaddingInlineIconStart != abstractTheme.chip.chipSpacePaddingInlineIconStart)
        #expect(inheritedTheme.chip.chipSpacePaddingInlineIconStart == MockThemeChipComponentTokenProvider.mockThemeChipSpace)
    }

    @Test func inheritedThemeCanOverrideChipComponentTokenSpacePaddingInlineIconEnd() throws {
        #expect(inheritedTheme.chip.chipSpacePaddingInlineIconEnd != abstractTheme.chip.chipSpacePaddingInlineIconEnd)
        #expect(inheritedTheme.chip.chipSpacePaddingInlineIconEnd == MockThemeChipComponentTokenProvider.mockThemeChipSpace)
    }

    @Test func inheritedThemeCanOverrideChipComponentTokenSpacePaddingInlineIconNone() throws {
        #expect(inheritedTheme.chip.chipSpacePaddingInlineIconNone != abstractTheme.chip.chipSpacePaddingInlineIconNone)
        #expect(inheritedTheme.chip.chipSpacePaddingInlineIconNone == MockThemeChipComponentTokenProvider.mockThemeChipSpace)
    }

    @Test func inheritedThemeCanOverrideChipComponentTokenSpaceInsetIconOnly() throws {
        #expect(inheritedTheme.chip.chipSpaceInsetIconOnly != abstractTheme.chip.chipSpaceInsetIconOnly)
        #expect(inheritedTheme.chip.chipSpaceInsetIconOnly == MockThemeChipComponentTokenProvider.mockThemeChipSpace)
    }

    @Test func inheritedThemeCanOverrideChipComponentTokenSpacePaddingBlock() throws {
        #expect(inheritedTheme.chip.chipSpacePaddingBlock != abstractTheme.chip.chipSpacePaddingBlock)
        #expect(inheritedTheme.chip.chipSpacePaddingBlock == MockThemeChipComponentTokenProvider.mockThemeChipSpace)
    }

    @Test func inheritedThemeCanOverrideChipComponentTokenSpaceColumnGapColumnGap() throws {
        #expect(inheritedTheme.chip.chipSpaceColumnGapColumnGap != abstractTheme.chip.chipSpaceColumnGapColumnGap)
        #expect(inheritedTheme.chip.chipSpaceColumnGapColumnGap == MockThemeChipComponentTokenProvider.mockThemeChipSpace)
    }

    @Test func inheritedThemeCanOverrideChipComponentTokenSpacePaddingStackPaddingBlock() throws {
        #expect(inheritedTheme.chip.chipSpacePaddingStackPaddingBlock != abstractTheme.chip.chipSpacePaddingStackPaddingBlock)
        #expect(inheritedTheme.chip.chipSpacePaddingStackPaddingBlock == MockThemeChipComponentTokenProvider.mockThemeChipSpace)
    }
}
