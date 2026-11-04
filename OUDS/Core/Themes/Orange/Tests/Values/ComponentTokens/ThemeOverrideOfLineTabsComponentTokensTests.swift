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

import OUDSThemesContract
import OUDSThemesOrange
import Testing

// swiftlint:disable type_name

struct ThemeOverrideOfLineTabsComponentTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Borders

    @Test func inheritedThemeCanOverrideLineTabsBorderRadiusBottomCurrentIndicator() throws {
        #expect(inheritedTheme.lineTabs.borderRadiusBottomCurrentIndicator != abstractTheme.lineTabs.borderRadiusBottomCurrentIndicator)
        #expect(inheritedTheme.lineTabs.borderRadiusBottomCurrentIndicator == MockThemeLineTabsComponentTokenProvider.mockThemeLineTabsBorderRadius)
    }

    @Test func inheritedThemeCanOverrideLineTabsBorderRadiusBottomTab() throws {
        #expect(inheritedTheme.lineTabs.borderRadiusBottomTab != abstractTheme.lineTabs.borderRadiusBottomTab)
        #expect(inheritedTheme.lineTabs.borderRadiusBottomTab == MockThemeLineTabsComponentTokenProvider.mockThemeLineTabsBorderRadius)
    }

    @Test func inheritedThemeCanOverrideLineTabsBorderRadiusTopCurrentIndicator() throws {
        #expect(inheritedTheme.lineTabs.borderRadiusTopCurrentIndicator != abstractTheme.lineTabs.borderRadiusTopCurrentIndicator)
        #expect(inheritedTheme.lineTabs.borderRadiusTopCurrentIndicator == MockThemeLineTabsComponentTokenProvider.mockThemeLineTabsBorderRadius)
    }

    @Test func inheritedThemeCanOverrideLineTabsBorderRadiusTopTab() throws {
        #expect(inheritedTheme.lineTabs.borderRadiusTopTab != abstractTheme.lineTabs.borderRadiusTopTab)
        #expect(inheritedTheme.lineTabs.borderRadiusTopTab == MockThemeLineTabsComponentTokenProvider.mockThemeLineTabsBorderRadius)
    }

    // MARK: - Colors

    @Test func inheritedThemeCanOverrideLineTabsColorBgSelectedDisabled() throws {
        #expect(inheritedTheme.lineTabs.colorBgSelectedDisabled != abstractTheme.lineTabs.colorBgSelectedDisabled)
        #expect(inheritedTheme.lineTabs.colorBgSelectedDisabled == MockThemeLineTabsComponentTokenProvider.mockThemeLineTabsColor)
    }

    @Test func inheritedThemeCanOverrideLineTabsColorBgSelectedEnabled() throws {
        #expect(inheritedTheme.lineTabs.colorBgSelectedEnabled != abstractTheme.lineTabs.colorBgSelectedEnabled)
        #expect(inheritedTheme.lineTabs.colorBgSelectedEnabled == MockThemeLineTabsComponentTokenProvider.mockThemeLineTabsColor)
    }

    @Test func inheritedThemeCanOverrideLineTabsColorBgSelectedFocus() throws {
        #expect(inheritedTheme.lineTabs.colorBgSelectedFocus != abstractTheme.lineTabs.colorBgSelectedFocus)
        #expect(inheritedTheme.lineTabs.colorBgSelectedFocus == MockThemeLineTabsComponentTokenProvider.mockThemeLineTabsColor)
    }

    @Test func inheritedThemeCanOverrideLineTabsColorBgSelectedHover() throws {
        #expect(inheritedTheme.lineTabs.colorBgSelectedHover != abstractTheme.lineTabs.colorBgSelectedHover)
        #expect(inheritedTheme.lineTabs.colorBgSelectedHover == MockThemeLineTabsComponentTokenProvider.mockThemeLineTabsColor)
    }

    @Test func inheritedThemeCanOverrideLineTabsColorBgSelectedPressed() throws {
        #expect(inheritedTheme.lineTabs.colorBgSelectedPressed != abstractTheme.lineTabs.colorBgSelectedPressed)
        #expect(inheritedTheme.lineTabs.colorBgSelectedPressed == MockThemeLineTabsComponentTokenProvider.mockThemeLineTabsColor)
    }

    @Test func inheritedThemeCanOverrideLineTabsColorBgUnselectedFocus() throws {
        #expect(inheritedTheme.lineTabs.colorBgUnselectedFocus != abstractTheme.lineTabs.colorBgUnselectedFocus)
        #expect(inheritedTheme.lineTabs.colorBgUnselectedFocus == MockThemeLineTabsComponentTokenProvider.mockThemeLineTabsColor)
    }

    @Test func inheritedThemeCanOverrideLineTabsColorBgUnselectedHover() throws {
        #expect(inheritedTheme.lineTabs.colorBgUnselectedHover != abstractTheme.lineTabs.colorBgUnselectedHover)
        #expect(inheritedTheme.lineTabs.colorBgUnselectedHover == MockThemeLineTabsComponentTokenProvider.mockThemeLineTabsColor)
    }

    @Test func inheritedThemeCanOverrideLineTabsColorBgUnselectedPressed() throws {
        #expect(inheritedTheme.lineTabs.colorBgUnselectedPressed != abstractTheme.lineTabs.colorBgUnselectedPressed)
        #expect(inheritedTheme.lineTabs.colorBgUnselectedPressed == MockThemeLineTabsComponentTokenProvider.mockThemeLineTabsColor)
    }

    @Test func inheritedThemeCanOverrideLineTabsColorContentSelectedEnabled() throws {
        #expect(inheritedTheme.lineTabs.colorContentSelectedEnabled != abstractTheme.lineTabs.colorContentSelectedEnabled)
        #expect(inheritedTheme.lineTabs.colorContentSelectedEnabled == MockThemeLineTabsComponentTokenProvider.mockThemeLineTabsColor)
    }

    @Test func inheritedThemeCanOverrideLineTabsColorContentSelectedFocus() throws {
        #expect(inheritedTheme.lineTabs.colorContentSelectedFocus != abstractTheme.lineTabs.colorContentSelectedFocus)
        #expect(inheritedTheme.lineTabs.colorContentSelectedFocus == MockThemeLineTabsComponentTokenProvider.mockThemeLineTabsColor)
    }

    @Test func inheritedThemeCanOverrideLineTabsColorContentSelectedHover() throws {
        #expect(inheritedTheme.lineTabs.colorContentSelectedHover != abstractTheme.lineTabs.colorContentSelectedHover)
        #expect(inheritedTheme.lineTabs.colorContentSelectedHover == MockThemeLineTabsComponentTokenProvider.mockThemeLineTabsColor)
    }

    @Test func inheritedThemeCanOverrideLineTabsColorContentSelectedPressed() throws {
        #expect(inheritedTheme.lineTabs.colorContentSelectedPressed != abstractTheme.lineTabs.colorContentSelectedPressed)
        #expect(inheritedTheme.lineTabs.colorContentSelectedPressed == MockThemeLineTabsComponentTokenProvider.mockThemeLineTabsColor)
    }

    @Test func inheritedThemeCanOverrideLineTabsColorContentUnselectedEnabled() throws {
        #expect(inheritedTheme.lineTabs.colorContentUnselectedEnabled != abstractTheme.lineTabs.colorContentUnselectedEnabled)
        #expect(inheritedTheme.lineTabs.colorContentUnselectedEnabled == MockThemeLineTabsComponentTokenProvider.mockThemeLineTabsColor)
    }

    @Test func inheritedThemeCanOverrideLineTabsColorContentUnselectedFocus() throws {
        #expect(inheritedTheme.lineTabs.colorContentUnselectedFocus != abstractTheme.lineTabs.colorContentUnselectedFocus)
        #expect(inheritedTheme.lineTabs.colorContentUnselectedFocus == MockThemeLineTabsComponentTokenProvider.mockThemeLineTabsColor)
    }

    @Test func inheritedThemeCanOverrideLineTabsColorContentUnselectedHover() throws {
        #expect(inheritedTheme.lineTabs.colorContentUnselectedHover != abstractTheme.lineTabs.colorContentUnselectedHover)
        #expect(inheritedTheme.lineTabs.colorContentUnselectedHover == MockThemeLineTabsComponentTokenProvider.mockThemeLineTabsColor)
    }

    @Test func inheritedThemeCanOverrideLineTabsColorContentUnselectedPressed() throws {
        #expect(inheritedTheme.lineTabs.colorContentUnselectedPressed != abstractTheme.lineTabs.colorContentUnselectedPressed)
        #expect(inheritedTheme.lineTabs.colorContentUnselectedPressed == MockThemeLineTabsComponentTokenProvider.mockThemeLineTabsColor)
    }

    // MARK: - Opacities

    @Test func inheritedThemeCanOverrideLineTabsOpacityCurrentIndicatorUnselected() throws {
        #expect(inheritedTheme.lineTabs.opacityCurrentIndicatorUnselected != abstractTheme.lineTabs.opacityCurrentIndicatorUnselected)
        #expect(inheritedTheme.lineTabs.opacityCurrentIndicatorUnselected == MockThemeLineTabsComponentTokenProvider.mockThemeLineTabsOpacity)
    }

    // MARK: - Sizes

    @Test func inheritedThemeCanOverrideLineTabsSizeHeightCurrentIndicator() throws {
        #expect(inheritedTheme.lineTabs.sizeHeightCurrentIndicator != abstractTheme.lineTabs.sizeHeightCurrentIndicator)
        #expect(inheritedTheme.lineTabs.sizeHeightCurrentIndicator == MockThemeLineTabsComponentTokenProvider.mockThemeLineTabsSize)
    }

    // MARK: - Spaces

    @Test func inheritedThemeCanOverrideLineTabsSpaceColumnGapTabsContainerJustified() throws {
        #expect(inheritedTheme.lineTabs.spaceColumnGapTabsContainerJustified != abstractTheme.lineTabs.spaceColumnGapTabsContainerJustified)
        #expect(inheritedTheme.lineTabs.spaceColumnGapTabsContainerJustified == MockThemeLineTabsComponentTokenProvider.mockThemeLineTabsSpace)
    }

    @Test func inheritedThemeCanOverrideLineTabsSpaceColumnGapTabsContainerLeftAlignedMobile() throws {
        #expect(inheritedTheme.lineTabs.spaceColumnGapTabsContainerLeftAlignedMobile != abstractTheme.lineTabs.spaceColumnGapTabsContainerLeftAlignedMobile)
        #expect(inheritedTheme.lineTabs.spaceColumnGapTabsContainerLeftAlignedMobile == MockThemeLineTabsComponentTokenProvider.mockThemeLineTabsSpace)
    }

    @Test func inheritedThemeCanOverrideLineTabsSpaceColumnGapTabsContainerLeftAlignedTablet() throws {
        #expect(inheritedTheme.lineTabs.spaceColumnGapTabsContainerLeftAlignedTablet != abstractTheme.lineTabs.spaceColumnGapTabsContainerLeftAlignedTablet)
        #expect(inheritedTheme.lineTabs.spaceColumnGapTabsContainerLeftAlignedTablet == MockThemeLineTabsComponentTokenProvider.mockThemeLineTabsSpace)
    }

    @Test func inheritedThemeCanOverrideLineTabsSpacePaddingBlockTab() throws {
        #expect(inheritedTheme.lineTabs.spacePaddingBlockTab != abstractTheme.lineTabs.spacePaddingBlockTab)
        #expect(inheritedTheme.lineTabs.spacePaddingBlockTab == MockThemeLineTabsComponentTokenProvider.mockThemeLineTabsSpace)
    }

    @Test func inheritedThemeCanOverrideLineTabsSpacePaddingBlockTopStickyContainer() throws {
        #expect(inheritedTheme.lineTabs.spacePaddingBlockTopStickyContainer != abstractTheme.lineTabs.spacePaddingBlockTopStickyContainer)
        #expect(inheritedTheme.lineTabs.spacePaddingBlockTopStickyContainer == MockThemeLineTabsComponentTokenProvider.mockThemeLineTabsSpace)
    }

    @Test func inheritedThemeCanOverrideLineTabsSpacePaddingInlineTabHorizontalIconStartMobile() throws {
        #expect(inheritedTheme.lineTabs.spacePaddingInlineTabHorizontalIconStartMobile != abstractTheme.lineTabs.spacePaddingInlineTabHorizontalIconStartMobile)
        #expect(inheritedTheme.lineTabs.spacePaddingInlineTabHorizontalIconStartMobile == MockThemeLineTabsComponentTokenProvider.mockThemeLineTabsSpace)
    }

    @Test func inheritedThemeCanOverrideLineTabsSpacePaddingInlineTabHorizontalIconStartTablet() throws {
        #expect(inheritedTheme.lineTabs.spacePaddingInlineTabHorizontalIconStartTablet != abstractTheme.lineTabs.spacePaddingInlineTabHorizontalIconStartTablet)
        #expect(inheritedTheme.lineTabs.spacePaddingInlineTabHorizontalIconStartTablet == MockThemeLineTabsComponentTokenProvider.mockThemeLineTabsSpace)
    }

    @Test func inheritedThemeCanOverrideLineTabsSpacePaddingInlineTabHorizontalIndicatorEndMobile() throws {
        #expect(inheritedTheme.lineTabs.spacePaddingInlineTabHorizontalIndicatorEndMobile != abstractTheme.lineTabs.spacePaddingInlineTabHorizontalIndicatorEndMobile)
        #expect(inheritedTheme.lineTabs.spacePaddingInlineTabHorizontalIndicatorEndMobile == MockThemeLineTabsComponentTokenProvider.mockThemeLineTabsSpace)
    }

    @Test func inheritedThemeCanOverrideLineTabsSpacePaddingInlineTabHorizontalIndicatorEndTablet() throws {
        #expect(inheritedTheme.lineTabs.spacePaddingInlineTabHorizontalIndicatorEndTablet != abstractTheme.lineTabs.spacePaddingInlineTabHorizontalIndicatorEndTablet)
        #expect(inheritedTheme.lineTabs.spacePaddingInlineTabHorizontalIndicatorEndTablet == MockThemeLineTabsComponentTokenProvider.mockThemeLineTabsSpace)
    }

    @Test func inheritedThemeCanOverrideLineTabsSpacePaddingInlineTabHorizontalMobile() throws {
        #expect(inheritedTheme.lineTabs.spacePaddingInlineTabHorizontalMobile != abstractTheme.lineTabs.spacePaddingInlineTabHorizontalMobile)
        #expect(inheritedTheme.lineTabs.spacePaddingInlineTabHorizontalMobile == MockThemeLineTabsComponentTokenProvider.mockThemeLineTabsSpace)
    }

    @Test func inheritedThemeCanOverrideLineTabsSpacePaddingInlineTabHorizontalTablet() throws {
        #expect(inheritedTheme.lineTabs.spacePaddingInlineTabHorizontalTablet != abstractTheme.lineTabs.spacePaddingInlineTabHorizontalTablet)
        #expect(inheritedTheme.lineTabs.spacePaddingInlineTabHorizontalTablet == MockThemeLineTabsComponentTokenProvider.mockThemeLineTabsSpace)
    }

    @Test func inheritedThemeCanOverrideLineTabsSpacePaddingInlineTabVerticalMobile() throws {
        #expect(inheritedTheme.lineTabs.spacePaddingInlineTabVerticalMobile != abstractTheme.lineTabs.spacePaddingInlineTabVerticalMobile)
        #expect(inheritedTheme.lineTabs.spacePaddingInlineTabVerticalMobile == MockThemeLineTabsComponentTokenProvider.mockThemeLineTabsSpace)
    }

    @Test func inheritedThemeCanOverrideLineTabsSpacePaddingInlineTabVerticalTablet() throws {
        #expect(inheritedTheme.lineTabs.spacePaddingInlineTabVerticalTablet != abstractTheme.lineTabs.spacePaddingInlineTabVerticalTablet)
        #expect(inheritedTheme.lineTabs.spacePaddingInlineTabVerticalTablet == MockThemeLineTabsComponentTokenProvider.mockThemeLineTabsSpace)
    }

    @Test func inheritedThemeCanOverrideLineTabsSpaceRowGapCurrentIndicator() throws {
        #expect(inheritedTheme.lineTabs.spaceRowGapCurrentIndicator != abstractTheme.lineTabs.spaceRowGapCurrentIndicator)
        #expect(inheritedTheme.lineTabs.spaceRowGapCurrentIndicator == MockThemeLineTabsComponentTokenProvider.mockThemeLineTabsSpace)
    }
}

// swiftlint:enable type_name
