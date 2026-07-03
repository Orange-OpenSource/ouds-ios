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

struct ThemeOverrideOfListItemComponentTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Colors

    @Test func inheritedThemeCanOverrideListItemComponentTokenColorBgBadgeSafetyArea() throws {
        #expect(inheritedTheme.listItem.colorBgBadgeSafetyArea != abstractTheme.listItem.colorBgBadgeSafetyArea)
        #expect(inheritedTheme.listItem.colorBgBadgeSafetyArea == MockThemeListItemComponentTokenProvider.mockThemeListItemColor)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenColorBgCurrentEnabled() throws {
        #expect(inheritedTheme.listItem.colorBgCurrentEnabled != abstractTheme.listItem.colorBgCurrentEnabled)
        #expect(inheritedTheme.listItem.colorBgCurrentEnabled == MockThemeListItemComponentTokenProvider.mockThemeListItemColor)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenColorBgCurrentHover() throws {
        #expect(inheritedTheme.listItem.colorBgCurrentHover != abstractTheme.listItem.colorBgCurrentHover)
        #expect(inheritedTheme.listItem.colorBgCurrentHover == MockThemeListItemComponentTokenProvider.mockThemeListItemColor)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenColorBgCurrentPressed() throws {
        #expect(inheritedTheme.listItem.colorBgCurrentPressed != abstractTheme.listItem.colorBgCurrentPressed)
        #expect(inheritedTheme.listItem.colorBgCurrentPressed == MockThemeListItemComponentTokenProvider.mockThemeListItemColor)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenColorBgCurrentDisabled() throws {
        #expect(inheritedTheme.listItem.colorBgCurrentDisabled != abstractTheme.listItem.colorBgCurrentDisabled)
        #expect(inheritedTheme.listItem.colorBgCurrentDisabled == MockThemeListItemComponentTokenProvider.mockThemeListItemColor)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenColorBgCurrentFocus() throws {
        #expect(inheritedTheme.listItem.colorBgCurrentFocus != abstractTheme.listItem.colorBgCurrentFocus)
        #expect(inheritedTheme.listItem.colorBgCurrentFocus == MockThemeListItemComponentTokenProvider.mockThemeListItemColor)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenColorBgHover() throws {
        #expect(inheritedTheme.listItem.colorBgHover != abstractTheme.listItem.colorBgHover)
        #expect(inheritedTheme.listItem.colorBgHover == MockThemeListItemComponentTokenProvider.mockThemeListItemColor)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenColorBgPressed() throws {
        #expect(inheritedTheme.listItem.colorBgPressed != abstractTheme.listItem.colorBgPressed)
        #expect(inheritedTheme.listItem.colorBgPressed == MockThemeListItemComponentTokenProvider.mockThemeListItemColor)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenColorBgLoading() throws {
        #expect(inheritedTheme.listItem.colorBgLoading != abstractTheme.listItem.colorBgLoading)
        #expect(inheritedTheme.listItem.colorBgLoading == MockThemeListItemComponentTokenProvider.mockThemeListItemColor)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenColorBgFocus() throws {
        #expect(inheritedTheme.listItem.colorBgFocus != abstractTheme.listItem.colorBgFocus)
        #expect(inheritedTheme.listItem.colorBgFocus == MockThemeListItemComponentTokenProvider.mockThemeListItemColor)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenColorContentLoader() throws {
        #expect(inheritedTheme.listItem.colorContentLoader != abstractTheme.listItem.colorContentLoader)
        #expect(inheritedTheme.listItem.colorContentLoader == MockThemeListItemComponentTokenProvider.mockThemeListItemColor)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenColorContentCurrentEnabled() throws {
        #expect(inheritedTheme.listItem.colorContentCurrentEnabled != abstractTheme.listItem.colorContentCurrentEnabled)
        #expect(inheritedTheme.listItem.colorContentCurrentEnabled == MockThemeListItemComponentTokenProvider.mockThemeListItemColor)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenColorContentCurrentHover() throws {
        #expect(inheritedTheme.listItem.colorContentCurrentHover != abstractTheme.listItem.colorContentCurrentHover)
        #expect(inheritedTheme.listItem.colorContentCurrentHover == MockThemeListItemComponentTokenProvider.mockThemeListItemColor)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenColorContentCurrentPressed() throws {
        #expect(inheritedTheme.listItem.colorContentCurrentPressed != abstractTheme.listItem.colorContentCurrentPressed)
        #expect(inheritedTheme.listItem.colorContentCurrentPressed == MockThemeListItemComponentTokenProvider.mockThemeListItemColor)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenColorContentCurrentDisabled() throws {
        #expect(inheritedTheme.listItem.colorContentCurrentDisabled != abstractTheme.listItem.colorContentCurrentDisabled)
        #expect(inheritedTheme.listItem.colorContentCurrentDisabled == MockThemeListItemComponentTokenProvider.mockThemeListItemColor)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenColorContentCurrentFocus() throws {
        #expect(inheritedTheme.listItem.colorContentCurrentFocus != abstractTheme.listItem.colorContentCurrentFocus)
        #expect(inheritedTheme.listItem.colorContentCurrentFocus == MockThemeListItemComponentTokenProvider.mockThemeListItemColor)
    }

    // MARK: - Fonts

    @Test func inheritedThemeCanOverrideListItemComponentTokenFontSizeAvatarInitialXlarge() throws {
        #expect(inheritedTheme.listItem.fontSizeAvatarInitialXlarge != abstractTheme.listItem.fontSizeAvatarInitialXlarge)
        #expect(inheritedTheme.listItem.fontSizeAvatarInitialXlarge == MockThemeListItemComponentTokenProvider.mockThemeListItemFontSize)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenFontLineHeightAvatarInitialXlarge() throws {
        #expect(inheritedTheme.listItem.fontLineHeightAvatarInitialXlarge != abstractTheme.listItem.fontLineHeightAvatarInitialXlarge)
        #expect(inheritedTheme.listItem.fontLineHeightAvatarInitialXlarge == MockThemeListItemComponentTokenProvider.mockThemeListItemFontLineHeight)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenFontLetterSpacingAvatarInitialXlarge() throws {
        #expect(inheritedTheme.listItem.fontLetterSpacingAvatarInitialXlarge != abstractTheme.listItem.fontLetterSpacingAvatarInitialXlarge)
        #expect(inheritedTheme.listItem.fontLetterSpacingAvatarInitialXlarge == MockThemeListItemComponentTokenProvider.mockThemeListItemFontLetterSpacing)
    }

    // MARK: - Opacities

    @Test func inheritedThemeCanOverrideListItemComponentTokenOpacityCurrentIndicator() throws {
        #expect(inheritedTheme.listItem.opacityCurrentIndicator != abstractTheme.listItem.opacityCurrentIndicator)
        #expect(inheritedTheme.listItem.opacityCurrentIndicator == MockThemeListItemComponentTokenProvider.mockThemeListItemOpacity)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenOpacityCurrentDivider() throws {
        #expect(inheritedTheme.listItem.opacityCurrentDivider != abstractTheme.listItem.opacityCurrentDivider)
        #expect(inheritedTheme.listItem.opacityCurrentDivider == MockThemeListItemComponentTokenProvider.mockThemeListItemOpacity)
    }

    // MARK: - Borders

    @Test func inheritedThemeCanOverrideListItemComponentTokenBorderWidthDefault() throws {
        #expect(inheritedTheme.listItem.borderWidthDefault != abstractTheme.listItem.borderWidthDefault)
        #expect(inheritedTheme.listItem.borderWidthDefault == MockThemeListItemComponentTokenProvider.mockThemeListItemBorderWidth)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenBorderWidthCurrentPage() throws {
        #expect(inheritedTheme.listItem.borderWidthCurrentPage != abstractTheme.listItem.borderWidthCurrentPage)
        #expect(inheritedTheme.listItem.borderWidthCurrentPage == MockThemeListItemComponentTokenProvider.mockThemeListItemBorderWidth)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenBorderRadiusDefault() throws {
        #expect(inheritedTheme.listItem.borderRadiusDefault != abstractTheme.listItem.borderRadiusDefault)
        #expect(inheritedTheme.listItem.borderRadiusDefault == MockThemeListItemComponentTokenProvider.mockThemeListItemBorderRadius)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenBorderRadiusRounded() throws {
        #expect(inheritedTheme.listItem.borderRadiusRounded != abstractTheme.listItem.borderRadiusRounded)
        #expect(inheritedTheme.listItem.borderRadiusRounded == MockThemeListItemComponentTokenProvider.mockThemeListItemBorderRadius)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenBorderRadiusMedia() throws {
        #expect(inheritedTheme.listItem.borderRadiusMedia != abstractTheme.listItem.borderRadiusMedia)
        #expect(inheritedTheme.listItem.borderRadiusMedia == MockThemeListItemComponentTokenProvider.mockThemeListItemBorderRadius)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenBorderRadiusMediaRounded() throws {
        #expect(inheritedTheme.listItem.borderRadiusMediaRounded != abstractTheme.listItem.borderRadiusMediaRounded)
        #expect(inheritedTheme.listItem.borderRadiusMediaRounded == MockThemeListItemComponentTokenProvider.mockThemeListItemBorderRadius)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenBorderRadiusCurrentIndicator() throws {
        #expect(inheritedTheme.listItem.borderRadiusCurrentIndicator != abstractTheme.listItem.borderRadiusCurrentIndicator)
        #expect(inheritedTheme.listItem.borderRadiusCurrentIndicator == MockThemeListItemComponentTokenProvider.mockThemeListItemBorderRadius)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenBorderRadiusItemOnly() throws {
        #expect(inheritedTheme.listItem.borderRadiusItemOnly != abstractTheme.listItem.borderRadiusItemOnly)
        #expect(inheritedTheme.listItem.borderRadiusItemOnly == MockThemeListItemComponentTokenProvider.mockThemeListItemBorderRadius)
    }

    // MARK: - Spaces

    @Test func inheritedThemeCanOverrideListItemComponentTokenSpacePaddingInline() throws {
        #expect(inheritedTheme.listItem.spacePaddingInline != abstractTheme.listItem.spacePaddingInline)
        #expect(inheritedTheme.listItem.spacePaddingInline == MockThemeListItemComponentTokenProvider.mockThemeListItemSpace)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenSpaceColumnGap() throws {
        #expect(inheritedTheme.listItem.spaceColumnGap != abstractTheme.listItem.spaceColumnGap)
        #expect(inheritedTheme.listItem.spaceColumnGap == MockThemeListItemComponentTokenProvider.mockThemeListItemSpace)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenSpaceRowGap() throws {
        #expect(inheritedTheme.listItem.spaceRowGap != abstractTheme.listItem.spaceRowGap)
        #expect(inheritedTheme.listItem.spaceRowGap == MockThemeListItemComponentTokenProvider.mockThemeListItemSpace)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenSpacePaddingInlineErrorIcon() throws {
        #expect(inheritedTheme.listItem.spacePaddingInlineErrorIcon != abstractTheme.listItem.spacePaddingInlineErrorIcon)
        #expect(inheritedTheme.listItem.spacePaddingInlineErrorIcon == MockThemeListItemComponentTokenProvider.mockThemeListItemSpace)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenSpacePaddingBlockSmall() throws {
        #expect(inheritedTheme.listItem.spacePaddingBlockSmall != abstractTheme.listItem.spacePaddingBlockSmall)
        #expect(inheritedTheme.listItem.spacePaddingBlockSmall == MockThemeListItemComponentTokenProvider.mockThemeListItemSpace)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenSpacePaddingBlockDefault() throws {
        #expect(inheritedTheme.listItem.spacePaddingBlockDefault != abstractTheme.listItem.spacePaddingBlockDefault)
        #expect(inheritedTheme.listItem.spacePaddingBlockDefault == MockThemeListItemComponentTokenProvider.mockThemeListItemSpace)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenSpacePaddingBlockTopHelperText() throws {
        #expect(inheritedTheme.listItem.spacePaddingBlockTopHelperText != abstractTheme.listItem.spacePaddingBlockTopHelperText)
        #expect(inheritedTheme.listItem.spacePaddingBlockTopHelperText == MockThemeListItemComponentTokenProvider.mockThemeListItemSpace)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenSpacePaddingBlockSlotTextContainer() throws {
        #expect(inheritedTheme.listItem.spacePaddingBlockSlotTextContainer != abstractTheme.listItem.spacePaddingBlockSlotTextContainer)
        #expect(inheritedTheme.listItem.spacePaddingBlockSlotTextContainer == MockThemeListItemComponentTokenProvider.mockThemeListItemSpace)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenSpacePaddingBlockBottomSlotListItemContainer() throws {
        #expect(inheritedTheme.listItem.spacePaddingBlockBottomSlotListItemContainer != abstractTheme.listItem.spacePaddingBlockBottomSlotListItemContainer)
        #expect(inheritedTheme.listItem.spacePaddingBlockBottomSlotListItemContainer == MockThemeListItemComponentTokenProvider.mockThemeListItemSpace)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenSpacePaddingBlockTopAlignmentTopTextContainerSmall() throws {
        #expect(inheritedTheme.listItem.spacePaddingBlockTopAlignmentTopTextContainerSmall != abstractTheme.listItem.spacePaddingBlockTopAlignmentTopTextContainerSmall)
        #expect(inheritedTheme.listItem.spacePaddingBlockTopAlignmentTopTextContainerSmall == MockThemeListItemComponentTokenProvider.mockThemeListItemSpace)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenSpacePaddingBlockTopAlignmentTopTextContainerDefault() throws {
        #expect(inheritedTheme.listItem.spacePaddingBlockTopAlignmentTopTextContainerDefault != abstractTheme.listItem.spacePaddingBlockTopAlignmentTopTextContainerDefault)
        #expect(inheritedTheme.listItem.spacePaddingBlockTopAlignmentTopTextContainerDefault == MockThemeListItemComponentTokenProvider.mockThemeListItemSpace)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenSpacePaddingBlockTopAlignmentTopCounterweightSmall() throws {
        #expect(inheritedTheme.listItem.spacePaddingBlockTopAlignmentTopCounterweightSmall != abstractTheme.listItem.spacePaddingBlockTopAlignmentTopCounterweightSmall)
        #expect(inheritedTheme.listItem.spacePaddingBlockTopAlignmentTopCounterweightSmall == MockThemeListItemComponentTokenProvider.mockThemeListItemSpace)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenSpacePaddingBlockTopAlignmentTopCounterweightDefault() throws {
        #expect(inheritedTheme.listItem.spacePaddingBlockTopAlignmentTopCounterweightDefault != abstractTheme.listItem.spacePaddingBlockTopAlignmentTopCounterweightDefault)
        #expect(inheritedTheme.listItem.spacePaddingBlockTopAlignmentTopCounterweightDefault == MockThemeListItemComponentTokenProvider.mockThemeListItemSpace)
    }

    // MARK: - Sizes

    @Test func inheritedThemeCanOverrideListItemComponentTokenSizeControlIndicator() throws {
        #expect(inheritedTheme.listItem.sizeControlIndicator != abstractTheme.listItem.sizeControlIndicator)
        #expect(inheritedTheme.listItem.sizeControlIndicator == MockThemeListItemComponentTokenProvider.mockThemeListItemSize)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenSizeMinHeightSmall() throws {
        #expect(inheritedTheme.listItem.sizeMinHeightSmall != abstractTheme.listItem.sizeMinHeightSmall)
        #expect(inheritedTheme.listItem.sizeMinHeightSmall == MockThemeListItemComponentTokenProvider.mockThemeListItemSize)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenSizeMinHeightDefault() throws {
        #expect(inheritedTheme.listItem.sizeMinHeightDefault != abstractTheme.listItem.sizeMinHeightDefault)
        #expect(inheritedTheme.listItem.sizeMinHeightDefault == MockThemeListItemComponentTokenProvider.mockThemeListItemSize)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenSizeMinWidth() throws {
        #expect(inheritedTheme.listItem.sizeMinWidth != abstractTheme.listItem.sizeMinWidth)
        #expect(inheritedTheme.listItem.sizeMinWidth == MockThemeListItemComponentTokenProvider.mockThemeListItemSize)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenSizeMaxSizeLeadingTrailingSlot() throws {
        #expect(inheritedTheme.listItem.sizeMaxSizeLeadingTrailingSlot != abstractTheme.listItem.sizeMaxSizeLeadingTrailingSlot)
        #expect(inheritedTheme.listItem.sizeMaxSizeLeadingTrailingSlot == MockThemeListItemComponentTokenProvider.mockThemeListItemSize)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenSizeMaxWidth() throws {
        #expect(inheritedTheme.listItem.sizeMaxWidth != abstractTheme.listItem.sizeMaxWidth)
        #expect(inheritedTheme.listItem.sizeMaxWidth == MockThemeListItemComponentTokenProvider.mockThemeListItemSize)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenSizeAssetSmall() throws {
        #expect(inheritedTheme.listItem.sizeAssetSmall != abstractTheme.listItem.sizeAssetSmall)
        #expect(inheritedTheme.listItem.sizeAssetSmall == MockThemeListItemComponentTokenProvider.mockThemeListItemSize)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenSizeAssetMedium() throws {
        #expect(inheritedTheme.listItem.sizeAssetMedium != abstractTheme.listItem.sizeAssetMedium)
        #expect(inheritedTheme.listItem.sizeAssetMedium == MockThemeListItemComponentTokenProvider.mockThemeListItemSize)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenSizeAssetLarge() throws {
        #expect(inheritedTheme.listItem.sizeAssetLarge != abstractTheme.listItem.sizeAssetLarge)
        #expect(inheritedTheme.listItem.sizeAssetLarge == MockThemeListItemComponentTokenProvider.mockThemeListItemSize)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenSizeAssetXlarge() throws {
        #expect(inheritedTheme.listItem.sizeAssetXlarge != abstractTheme.listItem.sizeAssetXlarge)
        #expect(inheritedTheme.listItem.sizeAssetXlarge == MockThemeListItemComponentTokenProvider.mockThemeListItemSize)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenSizeLoader() throws {
        #expect(inheritedTheme.listItem.sizeLoader != abstractTheme.listItem.sizeLoader)
        #expect(inheritedTheme.listItem.sizeLoader == MockThemeListItemComponentTokenProvider.mockThemeListItemSize)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenSizeFlagHeight() throws {
        #expect(inheritedTheme.listItem.sizeFlagHeight != abstractTheme.listItem.sizeFlagHeight)
        #expect(inheritedTheme.listItem.sizeFlagHeight == MockThemeListItemComponentTokenProvider.mockThemeListItemSize)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenSizeCurrentIndicatorWidth() throws {
        #expect(inheritedTheme.listItem.sizeCurrentIndicatorWidth != abstractTheme.listItem.sizeCurrentIndicatorWidth)
        #expect(inheritedTheme.listItem.sizeCurrentIndicatorWidth == MockThemeListItemComponentTokenProvider.mockThemeListItemSize)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenSizeErrorIcon() throws {
        #expect(inheritedTheme.listItem.sizeErrorIcon != abstractTheme.listItem.sizeErrorIcon)
        #expect(inheritedTheme.listItem.sizeErrorIcon == MockThemeListItemComponentTokenProvider.mockThemeListItemSize)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenSizeMaxHeightAssetsContainer() throws {
        #expect(inheritedTheme.listItem.sizeMaxHeightAssetsContainer != abstractTheme.listItem.sizeMaxHeightAssetsContainer)
        #expect(inheritedTheme.listItem.sizeMaxHeightAssetsContainer == MockThemeListItemComponentTokenProvider.mockThemeListItemSize)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenSizeIcon() throws {
        #expect(inheritedTheme.listItem.sizeIcon != abstractTheme.listItem.sizeIcon)
        #expect(inheritedTheme.listItem.sizeIcon == MockThemeListItemComponentTokenProvider.mockThemeListItemSize)
    }
}

// swiftlint:enable type_name
// swiftlint:enable line_length
