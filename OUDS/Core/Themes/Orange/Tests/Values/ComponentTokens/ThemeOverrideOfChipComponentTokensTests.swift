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

    @Test func inheritedThemeCanOverrideChipSizeIcon() throws {
        #expect(inheritedTheme.chip.chipSizeIcon != abstractTheme.chip.chipSizeIcon)
        #expect(inheritedTheme.chip.chipSizeIcon == MockThemeChipComponentTokenProvider.mockThemeChipSize)
    }

    @Test func inheritedThemeCanOverrideChipSizeMinWidth() throws {
        #expect(inheritedTheme.chip.chipSizeMinWidth != abstractTheme.chip.chipSizeMinWidth)
        #expect(inheritedTheme.chip.chipSizeMinWidth == MockThemeChipComponentTokenProvider.mockThemeChipSize)
    }

    @Test func inheritedThemeCanOverrideChipSizeMinHeight() throws {
        #expect(inheritedTheme.chip.chipSizeMinHeight != abstractTheme.chip.chipSizeMinHeight)
        #expect(inheritedTheme.chip.chipSizeMinHeight == MockThemeChipComponentTokenProvider.mockThemeChipSize)
    }

    @Test func inheritedThemeCanOverrideChipSizeMinHeightInteractiveArea() throws {
        #expect(inheritedTheme.chip.chipSizeMinHeightInteractiveArea != abstractTheme.chip.chipSizeMinHeightInteractiveArea)
        #expect(inheritedTheme.chip.chipSizeMinHeightInteractiveArea == MockThemeChipComponentTokenProvider.mockThemeChipSize)
    }

    // MARK: - Borders

    @Test func inheritedThemeCanOverrideChipBorderWidthSelected() throws {
        #expect(inheritedTheme.chip.chipBorderWidthSelected != abstractTheme.chip.chipBorderWidthSelected)
        #expect(inheritedTheme.chip.chipBorderWidthSelected == MockThemeChipComponentTokenProvider.mockThemeChipBorderWidth)
    }

    @Test func inheritedThemeCanOverrideChipBorderWidthUnselected() throws {
        #expect(inheritedTheme.chip.chipBorderWidthUnselected != abstractTheme.chip.chipBorderWidthUnselected)
        #expect(inheritedTheme.chip.chipBorderWidthUnselected == MockThemeChipComponentTokenProvider.mockThemeChipBorderWidth)
    }

    @Test func inheritedThemeCanOverrideChipBorderWidthUnselectedInteraction() throws {
        #expect(inheritedTheme.chip.chipBorderWidthUnselectedInteraction != abstractTheme.chip.chipBorderWidthUnselectedInteraction)
        #expect(inheritedTheme.chip.chipBorderWidthUnselectedInteraction == MockThemeChipComponentTokenProvider.mockThemeChipBorderWidth)
    }

    @Test func inheritedThemeCanOverrideChipBorderRadius() throws {
        #expect(inheritedTheme.chip.chipBorderRadius != abstractTheme.chip.chipBorderRadius)
        #expect(inheritedTheme.chip.chipBorderRadius == MockThemeChipComponentTokenProvider.mockThemeChipBorderRadius)
    }

    // MARK: - Colors

    @Test func inheritedThemeCanOverrideChipBadgeColorBg() throws {
        #expect(inheritedTheme.chip.chipBadgeColorBg != abstractTheme.chip.chipBadgeColorBg)
        #expect(inheritedTheme.chip.chipBadgeColorBg == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipBadgeColorContent() throws {
        #expect(inheritedTheme.chip.chipBadgeColorContent != abstractTheme.chip.chipBadgeColorContent)
        #expect(inheritedTheme.chip.chipBadgeColorContent == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorBgSelectedEnabled() throws {
        #expect(inheritedTheme.chip.chipColorBgSelectedEnabled != abstractTheme.chip.chipColorBgSelectedEnabled)
        #expect(inheritedTheme.chip.chipColorBgSelectedEnabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorBgSelectedHover() throws {
        #expect(inheritedTheme.chip.chipColorBgSelectedHover != abstractTheme.chip.chipColorBgSelectedHover)
        #expect(inheritedTheme.chip.chipColorBgSelectedHover == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorBgSelectedPressed() throws {
        #expect(inheritedTheme.chip.chipColorBgSelectedPressed != abstractTheme.chip.chipColorBgSelectedPressed)
        #expect(inheritedTheme.chip.chipColorBgSelectedPressed == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorBgSelectedDisabled() throws {
        #expect(inheritedTheme.chip.chipColorBgSelectedDisabled != abstractTheme.chip.chipColorBgSelectedDisabled)
        #expect(inheritedTheme.chip.chipColorBgSelectedDisabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorBgSelectedFocus() throws {
        #expect(inheritedTheme.chip.chipColorBgSelectedFocus != abstractTheme.chip.chipColorBgSelectedFocus)
        #expect(inheritedTheme.chip.chipColorBgSelectedFocus == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorBgUnselectedEnabled() throws {
        #expect(inheritedTheme.chip.chipColorBgUnselectedEnabled != abstractTheme.chip.chipColorBgUnselectedEnabled)
        #expect(inheritedTheme.chip.chipColorBgUnselectedEnabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorBgUnselectedHover() throws {
        #expect(inheritedTheme.chip.chipColorBgUnselectedHover != abstractTheme.chip.chipColorBgUnselectedHover)
        #expect(inheritedTheme.chip.chipColorBgUnselectedHover == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorBgUnselectedPressed() throws {
        #expect(inheritedTheme.chip.chipColorBgUnselectedPressed != abstractTheme.chip.chipColorBgUnselectedPressed)
        #expect(inheritedTheme.chip.chipColorBgUnselectedPressed == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorBgUnselectedDisabled() throws {
        #expect(inheritedTheme.chip.chipColorBgUnselectedDisabled != abstractTheme.chip.chipColorBgUnselectedDisabled)
        #expect(inheritedTheme.chip.chipColorBgUnselectedDisabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorBgUnselectedFocus() throws {
        #expect(inheritedTheme.chip.chipColorBgUnselectedFocus != abstractTheme.chip.chipColorBgUnselectedFocus)
        #expect(inheritedTheme.chip.chipColorBgUnselectedFocus == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorContentSelectedTickEnabled() throws {
        #expect(inheritedTheme.chip.chipColorContentSelectedTickEnabled != abstractTheme.chip.chipColorContentSelectedTickEnabled)
        #expect(inheritedTheme.chip.chipColorContentSelectedTickEnabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorContentSelectedEnabled() throws {
        #expect(inheritedTheme.chip.chipColorContentSelectedEnabled != abstractTheme.chip.chipColorContentSelectedEnabled)
        #expect(inheritedTheme.chip.chipColorContentSelectedEnabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorContentSelectedHover() throws {
        #expect(inheritedTheme.chip.chipColorContentSelectedHover != abstractTheme.chip.chipColorContentSelectedHover)
        #expect(inheritedTheme.chip.chipColorContentSelectedHover == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorContentSelectedDisabled() throws {
        #expect(inheritedTheme.chip.chipColorContentSelectedDisabled != abstractTheme.chip.chipColorContentSelectedDisabled)
        #expect(inheritedTheme.chip.chipColorContentSelectedDisabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorContentSelectedFocus() throws {
        #expect(inheritedTheme.chip.chipColorContentSelectedFocus != abstractTheme.chip.chipColorContentSelectedFocus)
        #expect(inheritedTheme.chip.chipColorContentSelectedFocus == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorContentUnselectedEnabled() throws {
        #expect(inheritedTheme.chip.chipColorContentUnselectedEnabled != abstractTheme.chip.chipColorContentUnselectedEnabled)
        #expect(inheritedTheme.chip.chipColorContentUnselectedEnabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorContentUnselectedHover() throws {
        #expect(inheritedTheme.chip.chipColorContentUnselectedHover != abstractTheme.chip.chipColorContentUnselectedHover)
        #expect(inheritedTheme.chip.chipColorContentUnselectedHover == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorContentUnselectedPressed() throws {
        #expect(inheritedTheme.chip.chipColorContentUnselectedPressed != abstractTheme.chip.chipColorContentUnselectedPressed)
        #expect(inheritedTheme.chip.chipColorContentUnselectedPressed == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorContentUnselectedDisabled() throws {
        #expect(inheritedTheme.chip.chipColorContentUnselectedDisabled != abstractTheme.chip.chipColorContentUnselectedDisabled)
        #expect(inheritedTheme.chip.chipColorContentUnselectedDisabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorBorderSelectedEnabled() throws {
        #expect(inheritedTheme.chip.chipColorBorderSelectedEnabled != abstractTheme.chip.chipColorBorderSelectedEnabled)
        #expect(inheritedTheme.chip.chipColorBorderSelectedEnabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorBorderSelectedHover() throws {
        #expect(inheritedTheme.chip.chipColorBorderSelectedHover != abstractTheme.chip.chipColorBorderSelectedHover)
        #expect(inheritedTheme.chip.chipColorBorderSelectedHover == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorBorderSelectedPressed() throws {
        #expect(inheritedTheme.chip.chipColorBorderSelectedPressed != abstractTheme.chip.chipColorBorderSelectedPressed)
        #expect(inheritedTheme.chip.chipColorBorderSelectedPressed == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorBorderSelectedDisabled() throws {
        #expect(inheritedTheme.chip.chipColorBorderSelectedDisabled != abstractTheme.chip.chipColorBorderSelectedDisabled)
        #expect(inheritedTheme.chip.chipColorBorderSelectedDisabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorBorderSelectedFocus() throws {
        #expect(inheritedTheme.chip.chipColorBorderSelectedFocus != abstractTheme.chip.chipColorBorderSelectedFocus)
        #expect(inheritedTheme.chip.chipColorBorderSelectedFocus == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorBorderUnselectedEnabled() throws {
        #expect(inheritedTheme.chip.chipColorBorderUnselectedEnabled != abstractTheme.chip.chipColorBorderUnselectedEnabled)
        #expect(inheritedTheme.chip.chipColorBorderUnselectedEnabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorBorderUnselectedHover() throws {
        #expect(inheritedTheme.chip.chipColorBorderUnselectedHover != abstractTheme.chip.chipColorBorderUnselectedHover)
        #expect(inheritedTheme.chip.chipColorBorderUnselectedHover == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorBorderUnselectedPressed() throws {
        #expect(inheritedTheme.chip.chipColorBorderUnselectedPressed != abstractTheme.chip.chipColorBorderUnselectedPressed)
        #expect(inheritedTheme.chip.chipColorBorderUnselectedPressed == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorBorderUnselectedDisabled() throws {
        #expect(inheritedTheme.chip.chipColorBorderUnselectedDisabled != abstractTheme.chip.chipColorBorderUnselectedDisabled)
        #expect(inheritedTheme.chip.chipColorBorderUnselectedDisabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorBorderUnselectedFocus() throws {
        #expect(inheritedTheme.chip.chipColorBorderUnselectedFocus != abstractTheme.chip.chipColorBorderUnselectedFocus)
        #expect(inheritedTheme.chip.chipColorBorderUnselectedFocus == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    // MARK: - Spaces

    @Test func inheritedThemeCanOverrideChipSpacePaddingBlock() throws {
        #expect(inheritedTheme.chip.chipSpacePaddingBlock != abstractTheme.chip.chipSpacePaddingBlock)
        #expect(inheritedTheme.chip.chipSpacePaddingBlock == MockThemeChipComponentTokenProvider.mockThemeChipSpace)
    }

    @Test func inheritedThemeCanOverrideChipSpacePaddingBlockIconOnly() throws {
        #expect(inheritedTheme.chip.chipSpacePaddingBlockIconOnly != abstractTheme.chip.chipSpacePaddingBlockIconOnly)
        #expect(inheritedTheme.chip.chipSpacePaddingBlockIconOnly == MockThemeChipComponentTokenProvider.mockThemeChipSpace)
    }

    @Test func inheritedThemeCanOverrideChipSpacePaddingInlineIcon() throws {
        #expect(inheritedTheme.chip.chipSpacePaddingInlineIcon != abstractTheme.chip.chipSpacePaddingInlineIcon)
        #expect(inheritedTheme.chip.chipSpacePaddingInlineIcon == MockThemeChipComponentTokenProvider.mockThemeChipSpace)
    }

    @Test func inheritedThemeCanOverrideChipSpacePaddingInlineIconNone() throws {
        #expect(inheritedTheme.chip.chipSpacePaddingInlineIconNone != abstractTheme.chip.chipSpacePaddingInlineIconNone)
        #expect(inheritedTheme.chip.chipSpacePaddingInlineIconNone == MockThemeChipComponentTokenProvider.mockThemeChipSpace)
    }

    @Test func inheritedThemeCanOverrideChipSpacePaddingInlineArrowEnd() throws {
        #expect(inheritedTheme.chip.chipSpacePaddingInlineArrowEnd != abstractTheme.chip.chipSpacePaddingInlineArrowEnd)
        #expect(inheritedTheme.chip.chipSpacePaddingInlineArrowEnd == MockThemeChipComponentTokenProvider.mockThemeChipSpace)
    }

    @Test func inheritedThemeCanOverrideChipSpacePaddingInlineBadgeStart() throws {
        #expect(inheritedTheme.chip.chipSpacePaddingInlineBadgeStart != abstractTheme.chip.chipSpacePaddingInlineBadgeStart)
        #expect(inheritedTheme.chip.chipSpacePaddingInlineBadgeStart == MockThemeChipComponentTokenProvider.mockThemeChipSpace)
    }

    @Test func inheritedThemeCanOverrideChipSpaceColumnGapIcon() throws {
        #expect(inheritedTheme.chip.chipSpaceColumnGapIcon != abstractTheme.chip.chipSpaceColumnGapIcon)
        #expect(inheritedTheme.chip.chipSpaceColumnGapIcon == MockThemeChipComponentTokenProvider.mockThemeChipSpace)
    }

    @Test func inheritedThemeCanOverrideChipSpaceColumnGapBadgeArrow() throws {
        #expect(inheritedTheme.chip.chipSpaceColumnGapBadgeArrow != abstractTheme.chip.chipSpaceColumnGapBadgeArrow)
        #expect(inheritedTheme.chip.chipSpaceColumnGapBadgeArrow == MockThemeChipComponentTokenProvider.mockThemeChipSpace)
    }
}
