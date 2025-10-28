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

// swiftlint:disable type_name

struct ThemeOverrideOfControlItemComponentTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Sizes

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSizeMinHeight() throws {
        #expect(inheritedTheme.controlItem.sizeMinHeight != abstractTheme.controlItem.sizeMinHeight)
        #expect(inheritedTheme.controlItem.sizeMinHeight == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSize)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSizeMaxWidth() throws {
        #expect(inheritedTheme.controlItem.sizeMaxWidth != abstractTheme.controlItem.sizeMaxWidth)
        #expect(inheritedTheme.controlItem.sizeMaxWidth == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSize)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSizeMinWidth() throws {
        #expect(inheritedTheme.controlItem.sizeMinWidth != abstractTheme.controlItem.sizeMinWidth)
        #expect(inheritedTheme.controlItem.sizeMinWidth == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSize)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSizeMaxHeightAssetsContainer() throws {
        #expect(inheritedTheme.controlItem.sizeMaxHeightAssetsContainer != abstractTheme.controlItem.sizeMaxHeightAssetsContainer)
        #expect(inheritedTheme.controlItem.sizeMaxHeightAssetsContainer == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSize)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSizeIcon() throws {
        #expect(inheritedTheme.controlItem.sizeIcon != abstractTheme.controlItem.sizeIcon)
        #expect(inheritedTheme.controlItem.sizeIcon == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSize)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSizeErrorIcon() throws {
        #expect(inheritedTheme.controlItem.sizeErrorIcon != abstractTheme.controlItem.sizeErrorIcon)
        #expect(inheritedTheme.controlItem.sizeErrorIcon == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSize)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSizeLoader() throws {
        #expect(inheritedTheme.controlItem.sizeLoader != abstractTheme.controlItem.sizeLoader)
        #expect(inheritedTheme.controlItem.sizeLoader == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSize)
    }

    // MARK: - Borders

    @Test func inheritedThemeCanOverrideControlItemComponentBorderRadius() throws {
        #expect(inheritedTheme.controlItem.borderRadius != abstractTheme.controlItem.borderRadius)
        #expect(inheritedTheme.controlItem.borderRadius == MockThemeControlItemComponentTokenProvider.mockThemeControlItemBorderRadius)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentBorderRadiusItemOnly() throws {
        #expect(inheritedTheme.controlItem.borderRadiusItemOnly != abstractTheme.controlItem.borderRadiusItemOnly)
        #expect(inheritedTheme.controlItem.borderRadiusItemOnly == MockThemeControlItemComponentTokenProvider.mockThemeControlItemBorderRadius)
    }

    // MARK: - Colors

    @Test func inheritedThemeCanOverrideControlItemComponentTokenColorBgHover() throws {
        #expect(inheritedTheme.controlItem.colorBgHover != abstractTheme.controlItem.colorBgHover)
        #expect(inheritedTheme.controlItem.colorBgHover == MockThemeControlItemComponentTokenProvider.mockThemeControlItemColor)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenColorBgPressed() throws {
        #expect(inheritedTheme.controlItem.colorBgPressed != abstractTheme.controlItem.colorBgPressed)
        #expect(inheritedTheme.controlItem.colorBgPressed == MockThemeControlItemComponentTokenProvider.mockThemeControlItemColor)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenColorBgLoading() throws {
        #expect(inheritedTheme.controlItem.colorBgLoading != abstractTheme.controlItem.colorBgLoading)
        #expect(inheritedTheme.controlItem.colorBgLoading == MockThemeControlItemComponentTokenProvider.mockThemeControlItemColor)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenColorBgFocus() throws {
        #expect(inheritedTheme.controlItem.colorBgFocus != abstractTheme.controlItem.colorBgFocus)
        #expect(inheritedTheme.controlItem.colorBgFocus == MockThemeControlItemComponentTokenProvider.mockThemeControlItemColor)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenColorContentLoader() throws {
        #expect(inheritedTheme.controlItem.colorContentLoader != abstractTheme.controlItem.colorContentLoader)
        #expect(inheritedTheme.controlItem.colorContentLoader == MockThemeControlItemComponentTokenProvider.mockThemeControlItemColor)
    }

    // MARK: - Spaces

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSpaceColumnGap() throws {
        #expect(inheritedTheme.controlItem.spaceColumnGap != abstractTheme.controlItem.spaceColumnGap)
        #expect(inheritedTheme.controlItem.spaceColumnGap == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSpace)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSpaceRowGap() throws {
        #expect(inheritedTheme.controlItem.spaceRowGap != abstractTheme.controlItem.spaceRowGap)
        #expect(inheritedTheme.controlItem.spaceRowGap == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSpace)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSpaceInset() throws {
        #expect(inheritedTheme.controlItem.spacePaddingBlock != abstractTheme.controlItem.spacePaddingBlock)
        #expect(inheritedTheme.controlItem.spacePaddingBlock == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSpace)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSpacePaddingInline() throws {
        #expect(inheritedTheme.controlItem.spacePaddingInline != abstractTheme.controlItem.spacePaddingInline)
        #expect(inheritedTheme.controlItem.spacePaddingInline == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSpace)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSpacePaddingInlineErrorIcon() throws {
        #expect(inheritedTheme.controlItem.spacePaddingInlineErrorIcon != abstractTheme.controlItem.spacePaddingInlineErrorIcon)
        #expect(inheritedTheme.controlItem.spacePaddingInlineErrorIcon == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSpace)
    }
}

// swiftlint:enable type_name
