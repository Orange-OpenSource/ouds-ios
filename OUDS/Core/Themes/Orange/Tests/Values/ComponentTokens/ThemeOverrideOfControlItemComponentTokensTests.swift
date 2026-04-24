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
// swiftlint:disable line_length

struct ThemeOverrideOfControlItemComponentTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Colors

    @Test func inheritedThemeCanOverrideControlItemComponentTokenColorBgCurrentEnabled() throws {
        #expect(inheritedTheme.controlItem.colorBgCurrentEnabled != abstractTheme.controlItem.colorBgCurrentEnabled)
        #expect(inheritedTheme.controlItem.colorBgCurrentEnabled == MockThemeControlItemComponentTokenProvider.mockThemeControlItemColor)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenColorBgCurrentHover() throws {
        #expect(inheritedTheme.controlItem.colorBgCurrentHover != abstractTheme.controlItem.colorBgCurrentHover)
        #expect(inheritedTheme.controlItem.colorBgCurrentHover == MockThemeControlItemComponentTokenProvider.mockThemeControlItemColor)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenColorBgCurrentPressed() throws {
        #expect(inheritedTheme.controlItem.colorBgCurrentPressed != abstractTheme.controlItem.colorBgCurrentPressed)
        #expect(inheritedTheme.controlItem.colorBgCurrentPressed == MockThemeControlItemComponentTokenProvider.mockThemeControlItemColor)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenColorBgCurrentDisabled() throws {
        #expect(inheritedTheme.controlItem.colorBgCurrentDisabled != abstractTheme.controlItem.colorBgCurrentDisabled)
        #expect(inheritedTheme.controlItem.colorBgCurrentDisabled == MockThemeControlItemComponentTokenProvider.mockThemeControlItemColor)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenColorBgCurrentFocus() throws {
        #expect(inheritedTheme.controlItem.colorBgCurrentFocus != abstractTheme.controlItem.colorBgCurrentFocus)
        #expect(inheritedTheme.controlItem.colorBgCurrentFocus == MockThemeControlItemComponentTokenProvider.mockThemeControlItemColor)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenColorContentCurrentEnabled() throws {
        #expect(inheritedTheme.controlItem.colorContentCurrentEnabled != abstractTheme.controlItem.colorContentCurrentEnabled)
        #expect(inheritedTheme.controlItem.colorContentCurrentEnabled == MockThemeControlItemComponentTokenProvider.mockThemeControlItemColor)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenColorContentCurrentHover() throws {
        #expect(inheritedTheme.controlItem.colorContentCurrentHover != abstractTheme.controlItem.colorContentCurrentHover)
        #expect(inheritedTheme.controlItem.colorContentCurrentHover == MockThemeControlItemComponentTokenProvider.mockThemeControlItemColor)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenColorContentCurrentPressed() throws {
        #expect(inheritedTheme.controlItem.colorContentCurrentPressed != abstractTheme.controlItem.colorContentCurrentPressed)
        #expect(inheritedTheme.controlItem.colorContentCurrentPressed == MockThemeControlItemComponentTokenProvider.mockThemeControlItemColor)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenColorContentCurrentDisabled() throws {
        #expect(inheritedTheme.controlItem.colorContentCurrentDisabled != abstractTheme.controlItem.colorContentCurrentDisabled)
        #expect(inheritedTheme.controlItem.colorContentCurrentDisabled == MockThemeControlItemComponentTokenProvider.mockThemeControlItemColor)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenColorContentCurrentFocus() throws {
        #expect(inheritedTheme.controlItem.colorContentCurrentFocus != abstractTheme.controlItem.colorContentCurrentFocus)
        #expect(inheritedTheme.controlItem.colorContentCurrentFocus == MockThemeControlItemComponentTokenProvider.mockThemeControlItemColor)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenColorBadgeSafetyArea() throws {
        #expect(inheritedTheme.controlItem.colorBadgeSafetyArea != abstractTheme.controlItem.colorBadgeSafetyArea)
        #expect(inheritedTheme.controlItem.colorBadgeSafetyArea == MockThemeControlItemComponentTokenProvider.mockThemeControlItemColor)
    }

    // MARK: - Fonts

    @Test func inheritedThemeCanOverrideControlItemComponentTokenFontSizeAvatarInitialXlarge() throws {
        #expect(inheritedTheme.controlItem.controlItemFontSizeAvatarInitialXlarge != abstractTheme.controlItem.controlItemFontSizeAvatarInitialXlarge)
        #expect(inheritedTheme.controlItem.controlItemFontSizeAvatarInitialXlarge == MockThemeControlItemComponentTokenProvider.mockThemeControlItemFontSize)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenFontLineHeightAvatarInitialXlarge() throws {
        #expect(inheritedTheme.controlItem.controlItemFontLineHeightAvatarInitialXlarge != abstractTheme.controlItem.controlItemFontLineHeightAvatarInitialXlarge)
        #expect(inheritedTheme.controlItem.controlItemFontLineHeightAvatarInitialXlarge == MockThemeControlItemComponentTokenProvider.mockThemeControlItemFontLineHeight)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenFontLetterSpacingAvatarInitialXlarge() throws {
        #expect(inheritedTheme.controlItem.controlItemFontLetterSpacingAvatarInitialXlarge != abstractTheme.controlItem.controlItemFontLetterSpacingAvatarInitialXlarge)
        #expect(inheritedTheme.controlItem.controlItemFontLetterSpacingAvatarInitialXlarge == MockThemeControlItemComponentTokenProvider.mockThemeControlItemFontLetterSpacing)
    }

    // MARK: - Opacities

    @Test func inheritedThemeCanOverrideControlItemComponentTokenOpacityCurrentIndicator() throws {
        #expect(inheritedTheme.controlItem.controlItemOpacityCurrentIndicator != abstractTheme.controlItem.controlItemOpacityCurrentIndicator)
        #expect(inheritedTheme.controlItem.controlItemOpacityCurrentIndicator == MockThemeControlItemComponentTokenProvider.mockThemeControlItemOpacity)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenOpacityCurrentDivider() throws {
        #expect(inheritedTheme.controlItem.controlItemOpacityCurrentDivider != abstractTheme.controlItem.controlItemOpacityCurrentDivider)
        #expect(inheritedTheme.controlItem.controlItemOpacityCurrentDivider == MockThemeControlItemComponentTokenProvider.mockThemeControlItemOpacity)
    }

    // MARK: - Borders

    @Test func inheritedThemeCanOverrideControlItemComponentTokenBorderWidthDefault() throws {
        #expect(inheritedTheme.controlItem.borderWidthDefault != abstractTheme.controlItem.borderWidthDefault)
        #expect(inheritedTheme.controlItem.borderWidthDefault == MockThemeControlItemComponentTokenProvider.mockThemeControlItemBorderWidth)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenBorderWidthCurrentPage() throws {
        #expect(inheritedTheme.controlItem.borderWidthCurrentPage != abstractTheme.controlItem.borderWidthCurrentPage)
        #expect(inheritedTheme.controlItem.borderWidthCurrentPage == MockThemeControlItemComponentTokenProvider.mockThemeControlItemBorderWidth)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenBorderRadiusDefault() throws {
        #expect(inheritedTheme.controlItem.borderRadiusDefault != abstractTheme.controlItem.borderRadiusDefault)
        #expect(inheritedTheme.controlItem.borderRadiusDefault == MockThemeControlItemComponentTokenProvider.mockThemeControlItemBorderRadius)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenBorderRadiusRounded() throws {
        #expect(inheritedTheme.controlItem.borderRadiusRounded != abstractTheme.controlItem.borderRadiusRounded)
        #expect(inheritedTheme.controlItem.borderRadiusRounded == MockThemeControlItemComponentTokenProvider.mockThemeControlItemBorderRadius)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenBorderRadiusMedia() throws {
        #expect(inheritedTheme.controlItem.borderRadiusMedia != abstractTheme.controlItem.borderRadiusMedia)
        #expect(inheritedTheme.controlItem.borderRadiusMedia == MockThemeControlItemComponentTokenProvider.mockThemeControlItemBorderRadius)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenBorderRadiusMediaRoundedCorner() throws {
        #expect(inheritedTheme.controlItem.borderRadiusMediaRoundedCorner != abstractTheme.controlItem.borderRadiusMediaRoundedCorner)
        #expect(inheritedTheme.controlItem.borderRadiusMediaRoundedCorner == MockThemeControlItemComponentTokenProvider.mockThemeControlItemBorderRadius)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenBorderRadiusCurrentIndicator() throws {
        #expect(inheritedTheme.controlItem.borderRadiusCurrentIndicator != abstractTheme.controlItem.borderRadiusCurrentIndicator)
        #expect(inheritedTheme.controlItem.borderRadiusCurrentIndicator == MockThemeControlItemComponentTokenProvider.mockThemeControlItemBorderRadius)
    }

    // MARK: - Spaces

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSpacePaddingInline() throws {
        #expect(inheritedTheme.controlItem.spacePaddingInline != abstractTheme.controlItem.spacePaddingInline)
        #expect(inheritedTheme.controlItem.spacePaddingInline == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSpace)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSpaceColumnGap() throws {
        #expect(inheritedTheme.controlItem.spaceColumnGap != abstractTheme.controlItem.spaceColumnGap)
        #expect(inheritedTheme.controlItem.spaceColumnGap == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSpace)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSpaceRowGap() throws {
        #expect(inheritedTheme.controlItem.spaceRowGap != abstractTheme.controlItem.spaceRowGap)
        #expect(inheritedTheme.controlItem.spaceRowGap == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSpace)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSpacePaddingBlockTopHelperText() throws {
        #expect(inheritedTheme.controlItem.spacePaddingBlockTopHelperText != abstractTheme.controlItem.spacePaddingBlockTopHelperText)
        #expect(inheritedTheme.controlItem.spacePaddingBlockTopHelperText == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSpace)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSpacePaddingBlockBottomSlot() throws {
        #expect(inheritedTheme.controlItem.spacePaddingBlockBottomSlot != abstractTheme.controlItem.spacePaddingBlockBottomSlot)
        #expect(inheritedTheme.controlItem.spacePaddingBlockBottomSlot == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSpace)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSpacePaddingBlockDensityCompact() throws {
        #expect(inheritedTheme.controlItem.spacePaddingBlockDensityCompact != abstractTheme.controlItem.spacePaddingBlockDensityCompact)
        #expect(inheritedTheme.controlItem.spacePaddingBlockDensityCompact == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSpace)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSpacePaddingBlockDensityCompactTopAlignmentTopText_container() throws {
        #expect(inheritedTheme.controlItem.spacePaddingBlockDensityCompactTopAlignmentTopText_container != abstractTheme.controlItem.spacePaddingBlockDensityCompactTopAlignmentTopText_container)
        #expect(inheritedTheme.controlItem.spacePaddingBlockDensityCompactTopAlignmentTopText_container == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSpace)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSpacePaddingBlockDensityCompactTopAlignmentTopCounterweight() throws {
        #expect(inheritedTheme.controlItem.spacePaddingBlockDensityCompactTopAlignmentTopCounterweight != abstractTheme.controlItem.spacePaddingBlockDensityCompactTopAlignmentTopCounterweight)
        #expect(inheritedTheme.controlItem.spacePaddingBlockDensityCompactTopAlignmentTopCounterweight == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSpace)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSpacePaddingBlockDensityCompactBottomExpandContainer() throws {
        #expect(inheritedTheme.controlItem.spacePaddingBlockDensityCompactBottomExpandContainer != abstractTheme.controlItem.spacePaddingBlockDensityCompactBottomExpandContainer)
        #expect(inheritedTheme.controlItem.spacePaddingBlockDensityCompactBottomExpandContainer == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSpace)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSpacePaddingBlockDensityDefault() throws {
        #expect(inheritedTheme.controlItem.spacePaddingBlockDensityDefault != abstractTheme.controlItem.spacePaddingBlockDensityDefault)
        #expect(inheritedTheme.controlItem.spacePaddingBlockDensityDefault == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSpace)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSpacePaddingBlockDensityDefaultTopAlignmentTopTextContainer() throws {
        #expect(inheritedTheme.controlItem.spacePaddingBlockDensityDefaultTopAlignmentTopTextContainer != abstractTheme.controlItem.spacePaddingBlockDensityDefaultTopAlignmentTopTextContainer)
        #expect(inheritedTheme.controlItem.spacePaddingBlockDensityDefaultTopAlignmentTopTextContainer == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSpace)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSpacePaddingBlockDensityDefaultTopAlignmentTopCounterweight() throws {
        #expect(inheritedTheme.controlItem.spacePaddingBlockDensityDefaultTopAlignmentTopCounterweight != abstractTheme.controlItem.spacePaddingBlockDensityDefaultTopAlignmentTopCounterweight)
        #expect(inheritedTheme.controlItem.spacePaddingBlockDensityDefaultTopAlignmentTopCounterweight == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSpace)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSpacePaddingBlockDensityDefaultBottomExpandContainer() throws {
        #expect(inheritedTheme.controlItem.spacePaddingBlockDensityDefaultBottomExpandContainer != abstractTheme.controlItem.spacePaddingBlockDensityDefaultBottomExpandContainer)
        #expect(inheritedTheme.controlItem.spacePaddingBlockDensityDefaultBottomExpandContainer == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSpace)
    }

    // MARK: - Sizes

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSizeControlIndicator() throws {
        #expect(inheritedTheme.controlItem.sizeControlIndicator != abstractTheme.controlItem.sizeControlIndicator)
        #expect(inheritedTheme.controlItem.sizeControlIndicator == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSize)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSizeMinHeightCompact() throws {
        #expect(inheritedTheme.controlItem.sizeMinHeightCompact != abstractTheme.controlItem.sizeMinHeightCompact)
        #expect(inheritedTheme.controlItem.sizeMinHeightCompact == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSize)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSizeMinHeightDefault() throws {
        #expect(inheritedTheme.controlItem.sizeMinHeightDefault != abstractTheme.controlItem.sizeMinHeightDefault)
        #expect(inheritedTheme.controlItem.sizeMinHeightDefault == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSize)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSizeMinWidth() throws {
        #expect(inheritedTheme.controlItem.sizeMinWidth != abstractTheme.controlItem.sizeMinWidth)
        #expect(inheritedTheme.controlItem.sizeMinWidth == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSize)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSizeMaxWidth() throws {
        #expect(inheritedTheme.controlItem.sizeMaxWidth != abstractTheme.controlItem.sizeMaxWidth)
        #expect(inheritedTheme.controlItem.sizeMaxWidth == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSize)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSizeAssetSmall() throws {
        #expect(inheritedTheme.controlItem.sizeAssetSmall != abstractTheme.controlItem.sizeAssetSmall)
        #expect(inheritedTheme.controlItem.sizeAssetSmall == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSize)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSizeAssetMedium() throws {
        #expect(inheritedTheme.controlItem.sizeAssetMedium != abstractTheme.controlItem.sizeAssetMedium)
        #expect(inheritedTheme.controlItem.sizeAssetMedium == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSize)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSizeAssetLarge() throws {
        #expect(inheritedTheme.controlItem.sizeAssetLarge != abstractTheme.controlItem.sizeAssetLarge)
        #expect(inheritedTheme.controlItem.sizeAssetLarge == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSize)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSizeAssetXlarge() throws {
        #expect(inheritedTheme.controlItem.sizeAssetXlarge != abstractTheme.controlItem.sizeAssetXlarge)
        #expect(inheritedTheme.controlItem.sizeAssetXlarge == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSize)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSizeFlagHeight() throws {
        #expect(inheritedTheme.controlItem.sizeFlagHeight != abstractTheme.controlItem.sizeFlagHeight)
        #expect(inheritedTheme.controlItem.sizeFlagHeight == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSize)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSizeCurrentIndicatorWidth() throws {
        #expect(inheritedTheme.controlItem.sizeCurrentIndicatorWidth != abstractTheme.controlItem.sizeCurrentIndicatorWidth)
        #expect(inheritedTheme.controlItem.sizeCurrentIndicatorWidth == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSize)
    }
}

// swiftlint:enable type_name
// swiftlint:enable line_length
