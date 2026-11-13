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

struct ThemeOverrideOfContainedTabsComponentTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Borders

    @Test func inheritedThemeCanOverrideContainedTabsBorderRadiusBottomTab() throws {
        #expect(inheritedTheme.containedTabs.borderRadiusBottomTab != abstractTheme.containedTabs.borderRadiusBottomTab)
        #expect(inheritedTheme.containedTabs.borderRadiusBottomTab == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsBorderRadius)
    }

    @Test func inheritedThemeCanOverrideContainedTabsBorderRadiusTopTab() throws {
        #expect(inheritedTheme.containedTabs.borderRadiusTopTab != abstractTheme.containedTabs.borderRadiusTopTab)
        #expect(inheritedTheme.containedTabs.borderRadiusTopTab == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsBorderRadius)
    }

    @Test func inheritedThemeCanOverrideContainedTabsBorderWidthDivider() throws {
        #expect(inheritedTheme.containedTabs.borderWidthDivider != abstractTheme.containedTabs.borderWidthDivider)
        #expect(inheritedTheme.containedTabs.borderWidthDivider == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsBorderWidth)
    }

    @Test func inheritedThemeCanOverrideContainedTabsBorderWidthSelectedBottomTab() throws {
        #expect(inheritedTheme.containedTabs.borderWidthSelectedBottomTab != abstractTheme.containedTabs.borderWidthSelectedBottomTab)
        #expect(inheritedTheme.containedTabs.borderWidthSelectedBottomTab == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsBorderWidth)
    }

    @Test func inheritedThemeCanOverrideContainedTabsBorderWidthSelectedStartEndTab() throws {
        #expect(inheritedTheme.containedTabs.borderWidthSelectedStartEndTab != abstractTheme.containedTabs.borderWidthSelectedStartEndTab)
        #expect(inheritedTheme.containedTabs.borderWidthSelectedStartEndTab == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsBorderWidth)
    }

    @Test func inheritedThemeCanOverrideContainedTabsBorderWidthSelectedTopTab() throws {
        #expect(inheritedTheme.containedTabs.borderWidthSelectedTopTab != abstractTheme.containedTabs.borderWidthSelectedTopTab)
        #expect(inheritedTheme.containedTabs.borderWidthSelectedTopTab == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsBorderWidth)
    }

    @Test func inheritedThemeCanOverrideContainedTabsBorderWidthUnselectedBottomTab() throws {
        #expect(inheritedTheme.containedTabs.borderWidthUnselectedBottomTab != abstractTheme.containedTabs.borderWidthUnselectedBottomTab)
        #expect(inheritedTheme.containedTabs.borderWidthUnselectedBottomTab == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsBorderWidth)
    }

    @Test func inheritedThemeCanOverrideContainedTabsBorderWidthUnselectedBottomTabInteraction() throws {
        #expect(inheritedTheme.containedTabs.borderWidthUnselectedBottomTabInteraction != abstractTheme.containedTabs.borderWidthUnselectedBottomTabInteraction)
        #expect(inheritedTheme.containedTabs.borderWidthUnselectedBottomTabInteraction == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsBorderWidth)
    }

    @Test func inheritedThemeCanOverrideContainedTabsBorderWidthUnselectedStartEndInteraction() throws {
        #expect(inheritedTheme.containedTabs.borderWidthUnselectedStartEndInteraction != abstractTheme.containedTabs.borderWidthUnselectedStartEndInteraction)
        #expect(inheritedTheme.containedTabs.borderWidthUnselectedStartEndInteraction == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsBorderWidth)
    }

    @Test func inheritedThemeCanOverrideContainedTabsBorderWidthUnselectedStartEndTab() throws {
        #expect(inheritedTheme.containedTabs.borderWidthUnselectedStartEndTab != abstractTheme.containedTabs.borderWidthUnselectedStartEndTab)
        #expect(inheritedTheme.containedTabs.borderWidthUnselectedStartEndTab == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsBorderWidth)
    }

    @Test func inheritedThemeCanOverrideContainedTabsBorderWidthUnselectedTopTab() throws {
        #expect(inheritedTheme.containedTabs.borderWidthUnselectedTopTab != abstractTheme.containedTabs.borderWidthUnselectedTopTab)
        #expect(inheritedTheme.containedTabs.borderWidthUnselectedTopTab == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsBorderWidth)
    }

    @Test func inheritedThemeCanOverrideContainedTabsBorderWidthUnselectedTopTabInteraction() throws {
        #expect(inheritedTheme.containedTabs.borderWidthUnselectedTopTabInteraction != abstractTheme.containedTabs.borderWidthUnselectedTopTabInteraction)
        #expect(inheritedTheme.containedTabs.borderWidthUnselectedTopTabInteraction == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsBorderWidth)
    }

    // MARK: - Colors

    @Test func inheritedThemeCanOverrideContainedTabsColorBgSelectedDisabled() throws {
        #expect(inheritedTheme.containedTabs.colorBgSelectedDisabled != abstractTheme.containedTabs.colorBgSelectedDisabled)
        #expect(inheritedTheme.containedTabs.colorBgSelectedDisabled == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsColor)
    }

    @Test func inheritedThemeCanOverrideContainedTabsColorBgSelectedEnabled() throws {
        #expect(inheritedTheme.containedTabs.colorBgSelectedEnabled != abstractTheme.containedTabs.colorBgSelectedEnabled)
        #expect(inheritedTheme.containedTabs.colorBgSelectedEnabled == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsColor)
    }

    @Test func inheritedThemeCanOverrideContainedTabsColorBgSelectedFocus() throws {
        #expect(inheritedTheme.containedTabs.colorBgSelectedFocus != abstractTheme.containedTabs.colorBgSelectedFocus)
        #expect(inheritedTheme.containedTabs.colorBgSelectedFocus == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsColor)
    }

    @Test func inheritedThemeCanOverrideContainedTabsColorBgSelectedHover() throws {
        #expect(inheritedTheme.containedTabs.colorBgSelectedHover != abstractTheme.containedTabs.colorBgSelectedHover)
        #expect(inheritedTheme.containedTabs.colorBgSelectedHover == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsColor)
    }

    @Test func inheritedThemeCanOverrideContainedTabsColorBgSelectedPressed() throws {
        #expect(inheritedTheme.containedTabs.colorBgSelectedPressed != abstractTheme.containedTabs.colorBgSelectedPressed)
        #expect(inheritedTheme.containedTabs.colorBgSelectedPressed == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsColor)
    }

    @Test func inheritedThemeCanOverrideContainedTabsColorBgUnselectedDisabled() throws {
        #expect(inheritedTheme.containedTabs.colorBgUnselectedDisabled != abstractTheme.containedTabs.colorBgUnselectedDisabled)
        #expect(inheritedTheme.containedTabs.colorBgUnselectedDisabled == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsColor)
    }

    @Test func inheritedThemeCanOverrideContainedTabsColorBgUnselectedEnabled() throws {
        #expect(inheritedTheme.containedTabs.colorBgUnselectedEnabled != abstractTheme.containedTabs.colorBgUnselectedEnabled)
        #expect(inheritedTheme.containedTabs.colorBgUnselectedEnabled == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsColor)
    }

    @Test func inheritedThemeCanOverrideContainedTabsColorBgUnselectedFocus() throws {
        #expect(inheritedTheme.containedTabs.colorBgUnselectedFocus != abstractTheme.containedTabs.colorBgUnselectedFocus)
        #expect(inheritedTheme.containedTabs.colorBgUnselectedFocus == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsColor)
    }

    @Test func inheritedThemeCanOverrideContainedTabsColorBgUnselectedHover() throws {
        #expect(inheritedTheme.containedTabs.colorBgUnselectedHover != abstractTheme.containedTabs.colorBgUnselectedHover)
        #expect(inheritedTheme.containedTabs.colorBgUnselectedHover == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsColor)
    }

    @Test func inheritedThemeCanOverrideContainedTabsColorBgUnselectedPressed() throws {
        #expect(inheritedTheme.containedTabs.colorBgUnselectedPressed != abstractTheme.containedTabs.colorBgUnselectedPressed)
        #expect(inheritedTheme.containedTabs.colorBgUnselectedPressed == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsColor)
    }

    @Test func inheritedThemeCanOverrideContainedTabsColorBorderDividerDisabled() throws {
        #expect(inheritedTheme.containedTabs.colorBorderDividerDisabled != abstractTheme.containedTabs.colorBorderDividerDisabled)
        #expect(inheritedTheme.containedTabs.colorBorderDividerDisabled == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsColor)
    }

    @Test func inheritedThemeCanOverrideContainedTabsColorBorderDividerEnabled() throws {
        #expect(inheritedTheme.containedTabs.colorBorderDividerEnabled != abstractTheme.containedTabs.colorBorderDividerEnabled)
        #expect(inheritedTheme.containedTabs.colorBorderDividerEnabled == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsColor)
    }

    @Test func inheritedThemeCanOverrideContainedTabsColorBorderSelectedDisabled() throws {
        #expect(inheritedTheme.containedTabs.colorBorderSelectedDisabled != abstractTheme.containedTabs.colorBorderSelectedDisabled)
        #expect(inheritedTheme.containedTabs.colorBorderSelectedDisabled == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsColor)
    }

    @Test func inheritedThemeCanOverrideContainedTabsColorBorderSelectedEnabled() throws {
        #expect(inheritedTheme.containedTabs.colorBorderSelectedEnabled != abstractTheme.containedTabs.colorBorderSelectedEnabled)
        #expect(inheritedTheme.containedTabs.colorBorderSelectedEnabled == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsColor)
    }

    @Test func inheritedThemeCanOverrideContainedTabsColorBorderSelectedFocus() throws {
        #expect(inheritedTheme.containedTabs.colorBorderSelectedFocus != abstractTheme.containedTabs.colorBorderSelectedFocus)
        #expect(inheritedTheme.containedTabs.colorBorderSelectedFocus == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsColor)
    }

    @Test func inheritedThemeCanOverrideContainedTabsColorBorderSelectedHover() throws {
        #expect(inheritedTheme.containedTabs.colorBorderSelectedHover != abstractTheme.containedTabs.colorBorderSelectedHover)
        #expect(inheritedTheme.containedTabs.colorBorderSelectedHover == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsColor)
    }

    @Test func inheritedThemeCanOverrideContainedTabsColorBorderSelectedPressed() throws {
        #expect(inheritedTheme.containedTabs.colorBorderSelectedPressed != abstractTheme.containedTabs.colorBorderSelectedPressed)
        #expect(inheritedTheme.containedTabs.colorBorderSelectedPressed == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsColor)
    }

    @Test func inheritedThemeCanOverrideContainedTabsColorBorderUnselectedDisabled() throws {
        #expect(inheritedTheme.containedTabs.colorBorderUnselectedDisabled != abstractTheme.containedTabs.colorBorderUnselectedDisabled)
        #expect(inheritedTheme.containedTabs.colorBorderUnselectedDisabled == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsColor)
    }

    @Test func inheritedThemeCanOverrideContainedTabsColorBorderUnselectedEnabled() throws {
        #expect(inheritedTheme.containedTabs.colorBorderUnselectedEnabled != abstractTheme.containedTabs.colorBorderUnselectedEnabled)
        #expect(inheritedTheme.containedTabs.colorBorderUnselectedEnabled == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsColor)
    }

    @Test func inheritedThemeCanOverrideContainedTabsColorBorderUnselectedFocus() throws {
        #expect(inheritedTheme.containedTabs.colorBorderUnselectedFocus != abstractTheme.containedTabs.colorBorderUnselectedFocus)
        #expect(inheritedTheme.containedTabs.colorBorderUnselectedFocus == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsColor)
    }

    @Test func inheritedThemeCanOverrideContainedTabsColorBorderUnselectedHover() throws {
        #expect(inheritedTheme.containedTabs.colorBorderUnselectedHover != abstractTheme.containedTabs.colorBorderUnselectedHover)
        #expect(inheritedTheme.containedTabs.colorBorderUnselectedHover == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsColor)
    }

    @Test func inheritedThemeCanOverrideContainedTabsColorBorderUnselectedPressed() throws {
        #expect(inheritedTheme.containedTabs.colorBorderUnselectedPressed != abstractTheme.containedTabs.colorBorderUnselectedPressed)
        #expect(inheritedTheme.containedTabs.colorBorderUnselectedPressed == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsColor)
    }

    @Test func inheritedThemeCanOverrideContainedTabsColorContentSelectedDisabled() throws {
        #expect(inheritedTheme.containedTabs.colorContentSelectedDisabled != abstractTheme.containedTabs.colorContentSelectedDisabled)
        #expect(inheritedTheme.containedTabs.colorContentSelectedDisabled == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsColor)
    }

    @Test func inheritedThemeCanOverrideContainedTabsColorContentSelectedEnabled() throws {
        #expect(inheritedTheme.containedTabs.colorContentSelectedEnabled != abstractTheme.containedTabs.colorContentSelectedEnabled)
        #expect(inheritedTheme.containedTabs.colorContentSelectedEnabled == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsColor)
    }

    @Test func inheritedThemeCanOverrideContainedTabsColorContentSelectedFocus() throws {
        #expect(inheritedTheme.containedTabs.colorContentSelectedFocus != abstractTheme.containedTabs.colorContentSelectedFocus)
        #expect(inheritedTheme.containedTabs.colorContentSelectedFocus == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsColor)
    }

    @Test func inheritedThemeCanOverrideContainedTabsColorContentSelectedHover() throws {
        #expect(inheritedTheme.containedTabs.colorContentSelectedHover != abstractTheme.containedTabs.colorContentSelectedHover)
        #expect(inheritedTheme.containedTabs.colorContentSelectedHover == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsColor)
    }

    @Test func inheritedThemeCanOverrideContainedTabsColorContentSelectedPressed() throws {
        #expect(inheritedTheme.containedTabs.colorContentSelectedPressed != abstractTheme.containedTabs.colorContentSelectedPressed)
        #expect(inheritedTheme.containedTabs.colorContentSelectedPressed == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsColor)
    }

    @Test func inheritedThemeCanOverrideContainedTabsColorContentUnselectedDisabled() throws {
        #expect(inheritedTheme.containedTabs.colorContentUnselectedDisabled != abstractTheme.containedTabs.colorContentUnselectedDisabled)
        #expect(inheritedTheme.containedTabs.colorContentUnselectedDisabled == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsColor)
    }

    @Test func inheritedThemeCanOverrideContainedTabsColorContentUnselectedEnabled() throws {
        #expect(inheritedTheme.containedTabs.colorContentUnselectedEnabled != abstractTheme.containedTabs.colorContentUnselectedEnabled)
        #expect(inheritedTheme.containedTabs.colorContentUnselectedEnabled == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsColor)
    }

    @Test func inheritedThemeCanOverrideContainedTabsColorContentUnselectedFocus() throws {
        #expect(inheritedTheme.containedTabs.colorContentUnselectedFocus != abstractTheme.containedTabs.colorContentUnselectedFocus)
        #expect(inheritedTheme.containedTabs.colorContentUnselectedFocus == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsColor)
    }

    @Test func inheritedThemeCanOverrideContainedTabsColorContentUnselectedHover() throws {
        #expect(inheritedTheme.containedTabs.colorContentUnselectedHover != abstractTheme.containedTabs.colorContentUnselectedHover)
        #expect(inheritedTheme.containedTabs.colorContentUnselectedHover == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsColor)
    }

    @Test func inheritedThemeCanOverrideContainedTabsColorContentUnselectedPressed() throws {
        #expect(inheritedTheme.containedTabs.colorContentUnselectedPressed != abstractTheme.containedTabs.colorContentUnselectedPressed)
        #expect(inheritedTheme.containedTabs.colorContentUnselectedPressed == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsColor)
    }

    // MARK: - Divider

    @Test func inheritedThemeCanOverrideContainedTabsDivider() throws {
        #expect(inheritedTheme.containedTabs.divider != abstractTheme.containedTabs.divider)
        #expect(inheritedTheme.containedTabs.divider == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsDivider)
    }

    // MARK: - Opacities

    @Test func inheritedThemeCanOverrideContainedTabsOpacityCurrentIndicatorSelected() throws {
        #expect(inheritedTheme.containedTabs.opacityCurrentIndicatorSelected != abstractTheme.containedTabs.opacityCurrentIndicatorSelected)
        #expect(inheritedTheme.containedTabs.opacityCurrentIndicatorSelected == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsOpacity)
    }

    @Test func inheritedThemeCanOverrideContainedTabsOpacityCurrentIndicatorUnselected() throws {
        #expect(inheritedTheme.containedTabs.opacityCurrentIndicatorUnselected != abstractTheme.containedTabs.opacityCurrentIndicatorUnselected)
        #expect(inheritedTheme.containedTabs.opacityCurrentIndicatorUnselected == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsOpacity)
    }

    // MARK: - Sizes

    @Test func inheritedThemeCanOverrideContainedTabsSizeHeightCurrentIndicator() throws {
        #expect(inheritedTheme.containedTabs.sizeHeightCurrentIndicator != abstractTheme.containedTabs.sizeHeightCurrentIndicator)
        #expect(inheritedTheme.containedTabs.sizeHeightCurrentIndicator == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsSize)
    }

    // MARK: - Spaces

    @Test func inheritedThemeCanOverrideContainedTabsSpaceColumnGapTabsContainerMobile() throws {
        #expect(inheritedTheme.containedTabs.spaceColumnGapTabsContainerMobile != abstractTheme.containedTabs.spaceColumnGapTabsContainerMobile)
        #expect(inheritedTheme.containedTabs.spaceColumnGapTabsContainerMobile == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsSpace)
    }

    @Test func inheritedThemeCanOverrideContainedTabsSpaceColumnGapTabsContainerTablet() throws {
        #expect(inheritedTheme.containedTabs.spaceColumnGapTabsContainerTablet != abstractTheme.containedTabs.spaceColumnGapTabsContainerTablet)
        #expect(inheritedTheme.containedTabs.spaceColumnGapTabsContainerTablet == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsSpace)
    }

    @Test func inheritedThemeCanOverrideContainedTabsSpacePaddingBlockBottomStickyContainer() throws {
        #expect(inheritedTheme.containedTabs.spacePaddingBlockBottomStickyContainer != abstractTheme.containedTabs.spacePaddingBlockBottomStickyContainer)
        #expect(inheritedTheme.containedTabs.spacePaddingBlockBottomStickyContainer == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsSpace)
    }

    @Test func inheritedThemeCanOverrideContainedTabsSpacePaddingBlockTab() throws {
        #expect(inheritedTheme.containedTabs.spacePaddingBlockTab != abstractTheme.containedTabs.spacePaddingBlockTab)
        #expect(inheritedTheme.containedTabs.spacePaddingBlockTab == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsSpace)
    }

    @Test func inheritedThemeCanOverrideContainedTabsSpacePaddingBlockTopStickyContainer() throws {
        #expect(inheritedTheme.containedTabs.spacePaddingBlockTopStickyContainer != abstractTheme.containedTabs.spacePaddingBlockTopStickyContainer)
        #expect(inheritedTheme.containedTabs.spacePaddingBlockTopStickyContainer == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsSpace)
    }

    @Test func inheritedThemeCanOverrideContainedTabsSpacePaddingInlineTabIconStartMobile() throws {
        #expect(inheritedTheme.containedTabs.spacePaddingInlineTabIconStartMobile != abstractTheme.containedTabs.spacePaddingInlineTabIconStartMobile)
        #expect(inheritedTheme.containedTabs.spacePaddingInlineTabIconStartMobile == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsSpace)
    }

    @Test func inheritedThemeCanOverrideContainedTabsSpacePaddingInlineTabIconStartTablet() throws {
        #expect(inheritedTheme.containedTabs.spacePaddingInlineTabIconStartTablet != abstractTheme.containedTabs.spacePaddingInlineTabIconStartTablet)
        #expect(inheritedTheme.containedTabs.spacePaddingInlineTabIconStartTablet == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsSpace)
    }

    @Test func inheritedThemeCanOverrideContainedTabsSpacePaddingInlineTabIndicatorEndMobile() throws {
        #expect(inheritedTheme.containedTabs.spacePaddingInlineTabIndicatorEndMobile != abstractTheme.containedTabs.spacePaddingInlineTabIndicatorEndMobile)
        #expect(inheritedTheme.containedTabs.spacePaddingInlineTabIndicatorEndMobile == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsSpace)
    }

    @Test func inheritedThemeCanOverrideContainedTabsSpacePaddingInlineTabIndicatorEndTablet() throws {
        #expect(inheritedTheme.containedTabs.spacePaddingInlineTabIndicatorEndTablet != abstractTheme.containedTabs.spacePaddingInlineTabIndicatorEndTablet)
        #expect(inheritedTheme.containedTabs.spacePaddingInlineTabIndicatorEndTablet == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsSpace)
    }

    @Test func inheritedThemeCanOverrideContainedTabsSpacePaddingInlineTabMobile() throws {
        #expect(inheritedTheme.containedTabs.spacePaddingInlineTabMobile != abstractTheme.containedTabs.spacePaddingInlineTabMobile)
        #expect(inheritedTheme.containedTabs.spacePaddingInlineTabMobile == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsSpace)
    }

    @Test func inheritedThemeCanOverrideContainedTabsSpacePaddingInlineTabTablet() throws {
        #expect(inheritedTheme.containedTabs.spacePaddingInlineTabTablet != abstractTheme.containedTabs.spacePaddingInlineTabTablet)
        #expect(inheritedTheme.containedTabs.spacePaddingInlineTabTablet == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsSpace)
    }

    @Test func inheritedThemeCanOverrideContainedTabsSpaceRowGapCurrentIndicator() throws {
        #expect(inheritedTheme.containedTabs.spaceRowGapCurrentIndicator != abstractTheme.containedTabs.spaceRowGapCurrentIndicator)
        #expect(inheritedTheme.containedTabs.spaceRowGapCurrentIndicator == MockThemeContainedTabsComponentTokenProvider.mockThemeContainedTabsSpace)
    }
}

// swiftlint:enable type_name
