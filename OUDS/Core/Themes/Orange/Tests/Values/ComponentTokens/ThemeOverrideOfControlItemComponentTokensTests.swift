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

    @Test func inheritedThemeCanOverrideControlItemComponentTokenColorBgCurrentEnabled() {
        #expect(inheritedTheme.controlItem.colorBgCurrentEnabled != abstractTheme.controlItem.colorBgCurrentEnabled)
        #expect(inheritedTheme.controlItem.colorBgCurrentEnabled == MockThemeControlItemComponentTokenProvider.mockThemeControlItemColor)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenColorBgCurrentHover() {
        #expect(inheritedTheme.controlItem.colorBgCurrentHover != abstractTheme.controlItem.colorBgCurrentHover)
        #expect(inheritedTheme.controlItem.colorBgCurrentHover == MockThemeControlItemComponentTokenProvider.mockThemeControlItemColor)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenColorBgCurrentPressed() {
        #expect(inheritedTheme.controlItem.colorBgCurrentPressed != abstractTheme.controlItem.colorBgCurrentPressed)
        #expect(inheritedTheme.controlItem.colorBgCurrentPressed == MockThemeControlItemComponentTokenProvider.mockThemeControlItemColor)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenColorBgCurrentDisabled() {
        #expect(inheritedTheme.controlItem.colorBgCurrentDisabled != abstractTheme.controlItem.colorBgCurrentDisabled)
        #expect(inheritedTheme.controlItem.colorBgCurrentDisabled == MockThemeControlItemComponentTokenProvider.mockThemeControlItemColor)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenColorBgCurrentFocus() {
        #expect(inheritedTheme.controlItem.colorBgCurrentFocus != abstractTheme.controlItem.colorBgCurrentFocus)
        #expect(inheritedTheme.controlItem.colorBgCurrentFocus == MockThemeControlItemComponentTokenProvider.mockThemeControlItemColor)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenColorContentCurrentEnabled() {
        #expect(inheritedTheme.controlItem.colorContentCurrentEnabled != abstractTheme.controlItem.colorContentCurrentEnabled)
        #expect(inheritedTheme.controlItem.colorContentCurrentEnabled == MockThemeControlItemComponentTokenProvider.mockThemeControlItemColor)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenColorContentCurrentHover() {
        #expect(inheritedTheme.controlItem.colorContentCurrentHover != abstractTheme.controlItem.colorContentCurrentHover)
        #expect(inheritedTheme.controlItem.colorContentCurrentHover == MockThemeControlItemComponentTokenProvider.mockThemeControlItemColor)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenColorContentCurrentPressed() {
        #expect(inheritedTheme.controlItem.colorContentCurrentPressed != abstractTheme.controlItem.colorContentCurrentPressed)
        #expect(inheritedTheme.controlItem.colorContentCurrentPressed == MockThemeControlItemComponentTokenProvider.mockThemeControlItemColor)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenColorContentCurrentDisabled() {
        #expect(inheritedTheme.controlItem.colorContentCurrentDisabled != abstractTheme.controlItem.colorContentCurrentDisabled)
        #expect(inheritedTheme.controlItem.colorContentCurrentDisabled == MockThemeControlItemComponentTokenProvider.mockThemeControlItemColor)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenColorContentCurrentFocus() {
        #expect(inheritedTheme.controlItem.colorContentCurrentFocus != abstractTheme.controlItem.colorContentCurrentFocus)
        #expect(inheritedTheme.controlItem.colorContentCurrentFocus == MockThemeControlItemComponentTokenProvider.mockThemeControlItemColor)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenColorBadgeSafetyArea() {
        #expect(inheritedTheme.controlItem.colorBadgeSafetyArea != abstractTheme.controlItem.colorBadgeSafetyArea)
        #expect(inheritedTheme.controlItem.colorBadgeSafetyArea == MockThemeControlItemComponentTokenProvider.mockThemeControlItemColor)
    }

    // MARK: - Fonts

    @Test func inheritedThemeCanOverrideControlItemComponentTokenFontSizeAvatarInitialXlarge() {
        #expect(inheritedTheme.controlItem.fontSizeAvatarInitialXlarge != abstractTheme.controlItem.fontSizeAvatarInitialXlarge)
        #expect(inheritedTheme.controlItem.fontSizeAvatarInitialXlarge == MockThemeControlItemComponentTokenProvider.mockThemeControlItemFontSize)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenFontLineHeightAvatarInitialXlarge() {
        #expect(inheritedTheme.controlItem.fontLineHeightAvatarInitialXlarge != abstractTheme.controlItem.fontLineHeightAvatarInitialXlarge)
        #expect(inheritedTheme.controlItem.fontLineHeightAvatarInitialXlarge == MockThemeControlItemComponentTokenProvider.mockThemeControlItemFontLineHeight)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenFontLetterSpacingAvatarInitialXlarge() {
        #expect(inheritedTheme.controlItem.fontLetterSpacingAvatarInitialXlarge != abstractTheme.controlItem.fontLetterSpacingAvatarInitialXlarge)
        #expect(inheritedTheme.controlItem.fontLetterSpacingAvatarInitialXlarge == MockThemeControlItemComponentTokenProvider.mockThemeControlItemFontLetterSpacing)
    }

    // MARK: - Opacities

    @Test func inheritedThemeCanOverrideControlItemComponentTokenOpacityCurrentIndicator() {
        #expect(inheritedTheme.controlItem.opacityCurrentIndicator != abstractTheme.controlItem.opacityCurrentIndicator)
        #expect(inheritedTheme.controlItem.opacityCurrentIndicator == MockThemeControlItemComponentTokenProvider.mockThemeControlItemOpacity)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenOpacityCurrentDivider() {
        #expect(inheritedTheme.controlItem.opacityCurrentDivider != abstractTheme.controlItem.opacityCurrentDivider)
        #expect(inheritedTheme.controlItem.opacityCurrentDivider == MockThemeControlItemComponentTokenProvider.mockThemeControlItemOpacity)
    }

    // MARK: - Borders

    @Test func inheritedThemeCanOverrideControlItemComponentTokenBorderWidthDefault() {
        #expect(inheritedTheme.controlItem.borderWidthDefault != abstractTheme.controlItem.borderWidthDefault)
        #expect(inheritedTheme.controlItem.borderWidthDefault == MockThemeControlItemComponentTokenProvider.mockThemeControlItemBorderWidth)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenBorderWidthCurrentPage() {
        #expect(inheritedTheme.controlItem.borderWidthCurrentPage != abstractTheme.controlItem.borderWidthCurrentPage)
        #expect(inheritedTheme.controlItem.borderWidthCurrentPage == MockThemeControlItemComponentTokenProvider.mockThemeControlItemBorderWidth)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenBorderRadiusDefault() {
        #expect(inheritedTheme.controlItem.borderRadiusDefault != abstractTheme.controlItem.borderRadiusDefault)
        #expect(inheritedTheme.controlItem.borderRadiusDefault == MockThemeControlItemComponentTokenProvider.mockThemeControlItemBorderRadius)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenBorderRadiusRounded() {
        #expect(inheritedTheme.controlItem.borderRadiusRounded != abstractTheme.controlItem.borderRadiusRounded)
        #expect(inheritedTheme.controlItem.borderRadiusRounded == MockThemeControlItemComponentTokenProvider.mockThemeControlItemBorderRadius)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenBorderRadiusMedia() {
        #expect(inheritedTheme.controlItem.borderRadiusMedia != abstractTheme.controlItem.borderRadiusMedia)
        #expect(inheritedTheme.controlItem.borderRadiusMedia == MockThemeControlItemComponentTokenProvider.mockThemeControlItemBorderRadius)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenBorderRadiusMediaRoundedCorner() {
        #expect(inheritedTheme.controlItem.borderRadiusMediaRoundedCorner != abstractTheme.controlItem.borderRadiusMediaRoundedCorner)
        #expect(inheritedTheme.controlItem.borderRadiusMediaRoundedCorner == MockThemeControlItemComponentTokenProvider.mockThemeControlItemBorderRadius)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenBorderRadiusCurrentIndicator() {
        #expect(inheritedTheme.controlItem.borderRadiusCurrentIndicator != abstractTheme.controlItem.borderRadiusCurrentIndicator)
        #expect(inheritedTheme.controlItem.borderRadiusCurrentIndicator == MockThemeControlItemComponentTokenProvider.mockThemeControlItemBorderRadius)
    }

    // MARK: - Spaces

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSpacePaddingInline() {
        #expect(inheritedTheme.controlItem.spacePaddingInline != abstractTheme.controlItem.spacePaddingInline)
        #expect(inheritedTheme.controlItem.spacePaddingInline == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSpace)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSpaceColumnGap() {
        #expect(inheritedTheme.controlItem.spaceColumnGap != abstractTheme.controlItem.spaceColumnGap)
        #expect(inheritedTheme.controlItem.spaceColumnGap == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSpace)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSpaceRowGap() {
        #expect(inheritedTheme.controlItem.spaceRowGap != abstractTheme.controlItem.spaceRowGap)
        #expect(inheritedTheme.controlItem.spaceRowGap == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSpace)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSpacePaddingBlockTopHelperText() {
        #expect(inheritedTheme.controlItem.spacePaddingBlockTopHelperText != abstractTheme.controlItem.spacePaddingBlockTopHelperText)
        #expect(inheritedTheme.controlItem.spacePaddingBlockTopHelperText == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSpace)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSpacePaddingBlockBottomSlot() {
        #expect(inheritedTheme.controlItem.spacePaddingBlockBottomSlot != abstractTheme.controlItem.spacePaddingBlockBottomSlot)
        #expect(inheritedTheme.controlItem.spacePaddingBlockBottomSlot == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSpace)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSpacePaddingBlockDensityCompact() {
        #expect(inheritedTheme.controlItem.spacePaddingBlockDensityCompact != abstractTheme.controlItem.spacePaddingBlockDensityCompact)
        #expect(inheritedTheme.controlItem.spacePaddingBlockDensityCompact == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSpace)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSpacePaddingBlockDensityCompactTopAlignmentTopTextContainer() throws {
        #expect(inheritedTheme.controlItem.spacePaddingBlockDensityCompactTopAlignmentTopTextContainer != abstractTheme.controlItem.spacePaddingBlockDensityCompactTopAlignmentTopTextContainer)
        #expect(inheritedTheme.controlItem.spacePaddingBlockDensityCompactTopAlignmentTopTextContainer == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSpace)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSpacePaddingBlockDensityCompactTopAlignmentTopCounterweight() {
        #expect(inheritedTheme.controlItem.spacePaddingBlockDensityCompactTopAlignmentTopCounterweight != abstractTheme.controlItem.spacePaddingBlockDensityCompactTopAlignmentTopCounterweight)
        #expect(inheritedTheme.controlItem.spacePaddingBlockDensityCompactTopAlignmentTopCounterweight == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSpace)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSpacePaddingBlockDensityCompactBottomExpandContainer() {
        #expect(inheritedTheme.controlItem.spacePaddingBlockDensityCompactBottomExpandContainer != abstractTheme.controlItem.spacePaddingBlockDensityCompactBottomExpandContainer)
        #expect(inheritedTheme.controlItem.spacePaddingBlockDensityCompactBottomExpandContainer == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSpace)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSpacePaddingBlockDensityDefault() {
        #expect(inheritedTheme.controlItem.spacePaddingBlockDensityDefault != abstractTheme.controlItem.spacePaddingBlockDensityDefault)
        #expect(inheritedTheme.controlItem.spacePaddingBlockDensityDefault == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSpace)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSpacePaddingBlockDensityDefaultTopAlignmentTopTextContainer() {
        #expect(inheritedTheme.controlItem.spacePaddingBlockDensityDefaultTopAlignmentTopTextContainer != abstractTheme.controlItem.spacePaddingBlockDensityDefaultTopAlignmentTopTextContainer)
        #expect(inheritedTheme.controlItem.spacePaddingBlockDensityDefaultTopAlignmentTopTextContainer == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSpace)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSpacePaddingBlockDensityDefaultTopAlignmentTopCounterweight() {
        #expect(inheritedTheme.controlItem.spacePaddingBlockDensityDefaultTopAlignmentTopCounterweight != abstractTheme.controlItem.spacePaddingBlockDensityDefaultTopAlignmentTopCounterweight)
        #expect(inheritedTheme.controlItem.spacePaddingBlockDensityDefaultTopAlignmentTopCounterweight == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSpace)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSpacePaddingBlockDensityDefaultBottomExpandContainer() {
        #expect(inheritedTheme.controlItem.spacePaddingBlockDensityDefaultBottomExpandContainer != abstractTheme.controlItem.spacePaddingBlockDensityDefaultBottomExpandContainer)
        #expect(inheritedTheme.controlItem.spacePaddingBlockDensityDefaultBottomExpandContainer == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSpace)
    }

    // MARK: - Sizes

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSizeControlIndicator() {
        #expect(inheritedTheme.controlItem.sizeControlIndicator != abstractTheme.controlItem.sizeControlIndicator)
        #expect(inheritedTheme.controlItem.sizeControlIndicator == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSize)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSizeMinHeightCompact() {
        #expect(inheritedTheme.controlItem.sizeMinHeightCompact != abstractTheme.controlItem.sizeMinHeightCompact)
        #expect(inheritedTheme.controlItem.sizeMinHeightCompact == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSize)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSizeMinHeightDefault() {
        #expect(inheritedTheme.controlItem.sizeMinHeightDefault != abstractTheme.controlItem.sizeMinHeightDefault)
        #expect(inheritedTheme.controlItem.sizeMinHeightDefault == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSize)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSizeMinWidth() {
        #expect(inheritedTheme.controlItem.sizeMinWidth != abstractTheme.controlItem.sizeMinWidth)
        #expect(inheritedTheme.controlItem.sizeMinWidth == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSize)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSizeMaxWidth() {
        #expect(inheritedTheme.controlItem.sizeMaxWidth != abstractTheme.controlItem.sizeMaxWidth)
        #expect(inheritedTheme.controlItem.sizeMaxWidth == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSize)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSizeAssetSmall() {
        #expect(inheritedTheme.controlItem.sizeAssetSmall != abstractTheme.controlItem.sizeAssetSmall)
        #expect(inheritedTheme.controlItem.sizeAssetSmall == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSize)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSizeAssetMedium() {
        #expect(inheritedTheme.controlItem.sizeAssetMedium != abstractTheme.controlItem.sizeAssetMedium)
        #expect(inheritedTheme.controlItem.sizeAssetMedium == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSize)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSizeAssetLarge() {
        #expect(inheritedTheme.controlItem.sizeAssetLarge != abstractTheme.controlItem.sizeAssetLarge)
        #expect(inheritedTheme.controlItem.sizeAssetLarge == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSize)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSizeAssetXlarge() {
        #expect(inheritedTheme.controlItem.sizeAssetXlarge != abstractTheme.controlItem.sizeAssetXlarge)
        #expect(inheritedTheme.controlItem.sizeAssetXlarge == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSize)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSizeFlagHeight() {
        #expect(inheritedTheme.controlItem.sizeFlagHeight != abstractTheme.controlItem.sizeFlagHeight)
        #expect(inheritedTheme.controlItem.sizeFlagHeight == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSize)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSizeCurrentIndicatorWidth() {
        #expect(inheritedTheme.controlItem.sizeCurrentIndicatorWidth != abstractTheme.controlItem.sizeCurrentIndicatorWidth)
        #expect(inheritedTheme.controlItem.sizeCurrentIndicatorWidth == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSize)
    }
}

// swiftlint:enable type_name
// swiftlint:enable line_length
