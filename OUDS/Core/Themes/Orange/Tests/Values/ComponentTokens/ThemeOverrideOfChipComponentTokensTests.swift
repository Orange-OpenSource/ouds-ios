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
        #expect(inheritedTheme.chip.sizeIcon != abstractTheme.chip.sizeIcon)
        #expect(inheritedTheme.chip.sizeIcon == MockThemeChipComponentTokenProvider.mockThemeChipSize)
    }

    @Test func inheritedThemeCanOverrideChipSizeMinWidth() throws {
        #expect(inheritedTheme.chip.sizeMinWidth != abstractTheme.chip.sizeMinWidth)
        #expect(inheritedTheme.chip.sizeMinWidth == MockThemeChipComponentTokenProvider.mockThemeChipSize)
    }

    @Test func inheritedThemeCanOverrideChipSizeMinHeight() throws {
        #expect(inheritedTheme.chip.sizeMinHeight != abstractTheme.chip.sizeMinHeight)
        #expect(inheritedTheme.chip.sizeMinHeight == MockThemeChipComponentTokenProvider.mockThemeChipSize)
    }

    @Test func inheritedThemeCanOverrideChipSizeMinHeightInteractiveArea() throws {
        #expect(inheritedTheme.chip.sizeMinHeightInteractiveArea != abstractTheme.chip.sizeMinHeightInteractiveArea)
        #expect(inheritedTheme.chip.sizeMinHeightInteractiveArea == MockThemeChipComponentTokenProvider.mockThemeChipSize)
    }

    // MARK: - Borders

    @Test func inheritedThemeCanOverrideChipBorderWidthSelected() throws {
        #expect(inheritedTheme.chip.borderWidthSelected != abstractTheme.chip.borderWidthSelected)
        #expect(inheritedTheme.chip.borderWidthSelected == MockThemeChipComponentTokenProvider.mockThemeChipBorderWidth)
    }

    @Test func inheritedThemeCanOverrideChipBorderWidthUnselected() throws {
        #expect(inheritedTheme.chip.borderWidthUnselected != abstractTheme.chip.borderWidthUnselected)
        #expect(inheritedTheme.chip.borderWidthUnselected == MockThemeChipComponentTokenProvider.mockThemeChipBorderWidth)
    }

    @Test func inheritedThemeCanOverrideChipBorderWidthUnselectedInteraction() throws {
        #expect(inheritedTheme.chip.borderWidthUnselectedInteraction != abstractTheme.chip.borderWidthUnselectedInteraction)
        #expect(inheritedTheme.chip.borderWidthUnselectedInteraction == MockThemeChipComponentTokenProvider.mockThemeChipBorderWidth)
    }

    @Test func inheritedThemeCanOverrideChipBorderRadius() throws {
        #expect(inheritedTheme.chip.borderRadius != abstractTheme.chip.borderRadius)
        #expect(inheritedTheme.chip.borderRadius == MockThemeChipComponentTokenProvider.mockThemeChipBorderRadius)
    }

    // MARK: - Colors

    @Test func inheritedThemeCanOverrideChipBadgeColorBg() throws {
        #expect(inheritedTheme.chip.badgeColorBg != abstractTheme.chip.badgeColorBg)
        #expect(inheritedTheme.chip.badgeColorBg == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipBadgeColorContent() throws {
        #expect(inheritedTheme.chip.badgeColorContent != abstractTheme.chip.badgeColorContent)
        #expect(inheritedTheme.chip.badgeColorContent == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorBgSelectedEnabled() throws {
        #expect(inheritedTheme.chip.colorBgSelectedEnabled != abstractTheme.chip.colorBgSelectedEnabled)
        #expect(inheritedTheme.chip.colorBgSelectedEnabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorBgSelectedHover() throws {
        #expect(inheritedTheme.chip.colorBgSelectedHover != abstractTheme.chip.colorBgSelectedHover)
        #expect(inheritedTheme.chip.colorBgSelectedHover == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorBgSelectedPressed() throws {
        #expect(inheritedTheme.chip.colorBgSelectedPressed != abstractTheme.chip.colorBgSelectedPressed)
        #expect(inheritedTheme.chip.colorBgSelectedPressed == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorBgSelectedDisabled() throws {
        #expect(inheritedTheme.chip.colorBgSelectedDisabled != abstractTheme.chip.colorBgSelectedDisabled)
        #expect(inheritedTheme.chip.colorBgSelectedDisabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorBgSelectedFocus() throws {
        #expect(inheritedTheme.chip.colorBgSelectedFocus != abstractTheme.chip.colorBgSelectedFocus)
        #expect(inheritedTheme.chip.colorBgSelectedFocus == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorBgUnselectedEnabled() throws {
        #expect(inheritedTheme.chip.colorBgUnselectedEnabled != abstractTheme.chip.colorBgUnselectedEnabled)
        #expect(inheritedTheme.chip.colorBgUnselectedEnabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorBgUnselectedHover() throws {
        #expect(inheritedTheme.chip.colorBgUnselectedHover != abstractTheme.chip.colorBgUnselectedHover)
        #expect(inheritedTheme.chip.colorBgUnselectedHover == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorBgUnselectedPressed() throws {
        #expect(inheritedTheme.chip.colorBgUnselectedPressed != abstractTheme.chip.colorBgUnselectedPressed)
        #expect(inheritedTheme.chip.colorBgUnselectedPressed == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorBgUnselectedDisabled() throws {
        #expect(inheritedTheme.chip.colorBgUnselectedDisabled != abstractTheme.chip.colorBgUnselectedDisabled)
        #expect(inheritedTheme.chip.colorBgUnselectedDisabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorBgUnselectedFocus() throws {
        #expect(inheritedTheme.chip.colorBgUnselectedFocus != abstractTheme.chip.colorBgUnselectedFocus)
        #expect(inheritedTheme.chip.colorBgUnselectedFocus == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorContentSelectedTickEnabled() throws {
        #expect(inheritedTheme.chip.colorContentSelectedTickEnabled != abstractTheme.chip.colorContentSelectedTickEnabled)
        #expect(inheritedTheme.chip.colorContentSelectedTickEnabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorContentSelectedEnabled() throws {
        #expect(inheritedTheme.chip.colorContentSelectedEnabled != abstractTheme.chip.colorContentSelectedEnabled)
        #expect(inheritedTheme.chip.colorContentSelectedEnabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorContentSelectedHover() throws {
        #expect(inheritedTheme.chip.colorContentSelectedHover != abstractTheme.chip.colorContentSelectedHover)
        #expect(inheritedTheme.chip.colorContentSelectedHover == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorContentSelectedPressed() throws {
        #expect(inheritedTheme.chip.colorContentSelectedPressed != abstractTheme.chip.colorContentSelectedPressed)
        #expect(inheritedTheme.chip.colorContentSelectedPressed == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorContentSelectedDisabled() throws {
        #expect(inheritedTheme.chip.colorContentSelectedDisabled != abstractTheme.chip.colorContentSelectedDisabled)
        #expect(inheritedTheme.chip.colorContentSelectedDisabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorContentSelectedFocus() throws {
        #expect(inheritedTheme.chip.colorContentSelectedFocus != abstractTheme.chip.colorContentSelectedFocus)
        #expect(inheritedTheme.chip.colorContentSelectedFocus == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorContentUnselectedEnabled() throws {
        #expect(inheritedTheme.chip.colorContentUnselectedEnabled != abstractTheme.chip.colorContentUnselectedEnabled)
        #expect(inheritedTheme.chip.colorContentUnselectedEnabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorContentUnselectedHover() throws {
        #expect(inheritedTheme.chip.colorContentUnselectedHover != abstractTheme.chip.colorContentUnselectedHover)
        #expect(inheritedTheme.chip.colorContentUnselectedHover == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorContentUnselectedPressed() throws {
        #expect(inheritedTheme.chip.colorContentUnselectedPressed != abstractTheme.chip.colorContentUnselectedPressed)
        #expect(inheritedTheme.chip.colorContentUnselectedPressed == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorContentUnselectedDisabled() throws {
        #expect(inheritedTheme.chip.colorContentUnselectedDisabled != abstractTheme.chip.colorContentUnselectedDisabled)
        #expect(inheritedTheme.chip.colorContentUnselectedDisabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorBorderSelectedEnabled() throws {
        #expect(inheritedTheme.chip.colorBorderSelectedEnabled != abstractTheme.chip.colorBorderSelectedEnabled)
        #expect(inheritedTheme.chip.colorBorderSelectedEnabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorBorderSelectedHover() throws {
        #expect(inheritedTheme.chip.colorBorderSelectedHover != abstractTheme.chip.colorBorderSelectedHover)
        #expect(inheritedTheme.chip.colorBorderSelectedHover == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorBorderSelectedPressed() throws {
        #expect(inheritedTheme.chip.colorBorderSelectedPressed != abstractTheme.chip.colorBorderSelectedPressed)
        #expect(inheritedTheme.chip.colorBorderSelectedPressed == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorBorderSelectedDisabled() throws {
        #expect(inheritedTheme.chip.colorBorderSelectedDisabled != abstractTheme.chip.colorBorderSelectedDisabled)
        #expect(inheritedTheme.chip.colorBorderSelectedDisabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorBorderSelectedFocus() throws {
        #expect(inheritedTheme.chip.colorBorderSelectedFocus != abstractTheme.chip.colorBorderSelectedFocus)
        #expect(inheritedTheme.chip.colorBorderSelectedFocus == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorBorderUnselectedEnabled() throws {
        #expect(inheritedTheme.chip.colorBorderUnselectedEnabled != abstractTheme.chip.colorBorderUnselectedEnabled)
        #expect(inheritedTheme.chip.colorBorderUnselectedEnabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorBorderUnselectedHover() throws {
        #expect(inheritedTheme.chip.colorBorderUnselectedHover != abstractTheme.chip.colorBorderUnselectedHover)
        #expect(inheritedTheme.chip.colorBorderUnselectedHover == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorBorderUnselectedPressed() throws {
        #expect(inheritedTheme.chip.colorBorderUnselectedPressed != abstractTheme.chip.colorBorderUnselectedPressed)
        #expect(inheritedTheme.chip.colorBorderUnselectedPressed == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorBorderUnselectedDisabled() throws {
        #expect(inheritedTheme.chip.colorBorderUnselectedDisabled != abstractTheme.chip.colorBorderUnselectedDisabled)
        #expect(inheritedTheme.chip.colorBorderUnselectedDisabled == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    @Test func inheritedThemeCanOverrideChipColorBorderUnselectedFocus() throws {
        #expect(inheritedTheme.chip.colorBorderUnselectedFocus != abstractTheme.chip.colorBorderUnselectedFocus)
        #expect(inheritedTheme.chip.colorBorderUnselectedFocus == MockThemeChipComponentTokenProvider.mockThemeChipColor)
    }

    // MARK: - Spaces

    @Test func inheritedThemeCanOverrideChipSpacePaddingBlock() throws {
        #expect(inheritedTheme.chip.spacePaddingBlock != abstractTheme.chip.spacePaddingBlock)
        #expect(inheritedTheme.chip.spacePaddingBlock == MockThemeChipComponentTokenProvider.mockThemeChipSpace)
    }

    @Test func inheritedThemeCanOverrideChipSpacePaddingBlockIconOnly() throws {
        #expect(inheritedTheme.chip.spacePaddingBlockIconOnly != abstractTheme.chip.spacePaddingBlockIconOnly)
        #expect(inheritedTheme.chip.spacePaddingBlockIconOnly == MockThemeChipComponentTokenProvider.mockThemeChipSpace)
    }

    @Test func inheritedThemeCanOverrideChipSpacePaddingInlineIcon() throws {
        #expect(inheritedTheme.chip.spacePaddingInlineIcon != abstractTheme.chip.spacePaddingInlineIcon)
        #expect(inheritedTheme.chip.spacePaddingInlineIcon == MockThemeChipComponentTokenProvider.mockThemeChipSpace)
    }

    @Test func inheritedThemeCanOverrideChipSpacePaddingInlineIconNone() throws {
        #expect(inheritedTheme.chip.spacePaddingInlineIconNone != abstractTheme.chip.spacePaddingInlineIconNone)
        #expect(inheritedTheme.chip.spacePaddingInlineIconNone == MockThemeChipComponentTokenProvider.mockThemeChipSpace)
    }

    @Test func inheritedThemeCanOverridechipSpacePaddingInlineChevronEnd() throws {
        #expect(inheritedTheme.chip.spacePaddingInlineChevronEnd != abstractTheme.chip.spacePaddingInlineChevronEnd)
        #expect(inheritedTheme.chip.spacePaddingInlineChevronEnd == MockThemeChipComponentTokenProvider.mockThemeChipSpace)
    }

    @Test func inheritedThemeCanOverrideChipSpacePaddingInlineBadgeStart() throws {
        #expect(inheritedTheme.chip.spacePaddingInlineBadgeStart != abstractTheme.chip.spacePaddingInlineBadgeStart)
        #expect(inheritedTheme.chip.spacePaddingInlineBadgeStart == MockThemeChipComponentTokenProvider.mockThemeChipSpace)
    }

    @Test func inheritedThemeCanOverrideChipSpaceColumnGapIcon() throws {
        #expect(inheritedTheme.chip.spaceColumnGapIcon != abstractTheme.chip.spaceColumnGapIcon)
        #expect(inheritedTheme.chip.spaceColumnGapIcon == MockThemeChipComponentTokenProvider.mockThemeChipSpace)
    }
}
