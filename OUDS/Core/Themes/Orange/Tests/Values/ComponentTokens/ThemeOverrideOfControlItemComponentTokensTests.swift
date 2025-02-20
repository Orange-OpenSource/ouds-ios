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
        #expect(inheritedTheme.controlItem.controlItemSizeMinHeight != abstractTheme.controlItem.controlItemSizeMinHeight)
        #expect(inheritedTheme.controlItem.controlItemSizeMinHeight == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSize)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSizeMinWidth() throws {
        #expect(inheritedTheme.controlItem.controlItemSizeMinWidth != abstractTheme.controlItem.controlItemSizeMinWidth)
        #expect(inheritedTheme.controlItem.controlItemSizeMinWidth == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSize)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSizeMaxHeightAssetsContainer() throws {
        #expect(inheritedTheme.controlItem.controlItemSizeMaxHeightAssetsContainer != abstractTheme.controlItem.controlItemSizeMaxHeightAssetsContainer)
        #expect(inheritedTheme.controlItem.controlItemSizeMaxHeightAssetsContainer == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSize)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSizeIcon() throws {
        #expect(inheritedTheme.controlItem.controlItemSizeIcon != abstractTheme.controlItem.controlItemSizeIcon)
        #expect(inheritedTheme.controlItem.controlItemSizeIcon == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSize)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSizeLoader() throws {
        #expect(inheritedTheme.controlItem.controlItemSizeLoader != abstractTheme.controlItem.controlItemSizeLoader)
        #expect(inheritedTheme.controlItem.controlItemSizeLoader == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSize)
    }

    // MARK: - Colors

    @Test func inheritedThemeCanOverrideControlItemComponentTokenColorBgHover() throws {
        #expect(inheritedTheme.controlItem.controlItemColorBgHover != abstractTheme.controlItem.controlItemColorBgHover)
        #expect(inheritedTheme.controlItem.controlItemColorBgHover == MockThemeControlItemComponentTokenProvider.mockThemeControlItemColor)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenColorBgPressed() throws {
        #expect(inheritedTheme.controlItem.controlItemColorBgPressed != abstractTheme.controlItem.controlItemColorBgPressed)
        #expect(inheritedTheme.controlItem.controlItemColorBgPressed == MockThemeControlItemComponentTokenProvider.mockThemeControlItemColor)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenColorBgLoading() throws {
        #expect(inheritedTheme.controlItem.controlItemColorBgLoading != abstractTheme.controlItem.controlItemColorBgLoading)
        #expect(inheritedTheme.controlItem.controlItemColorBgLoading == MockThemeControlItemComponentTokenProvider.mockThemeControlItemColor)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenColorBgFocus() throws {
        #expect(inheritedTheme.controlItem.controlItemColorBgFocus != abstractTheme.controlItem.controlItemColorBgFocus)
        #expect(inheritedTheme.controlItem.controlItemColorBgFocus == MockThemeControlItemComponentTokenProvider.mockThemeControlItemColor)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenColorContentLoader() throws {
        #expect(inheritedTheme.controlItem.controlItemColorContentLoader != abstractTheme.controlItem.controlItemColorContentLoader)
        #expect(inheritedTheme.controlItem.controlItemColorContentLoader == MockThemeControlItemComponentTokenProvider.mockThemeControlItemColor)
    }

    // MARK: - Spaces

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSpaceColumnGap() throws {
        #expect(inheritedTheme.controlItem.controlItemSpaceColumnGap != abstractTheme.controlItem.controlItemSpaceColumnGap)
        #expect(inheritedTheme.controlItem.controlItemSpaceColumnGap == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSpace)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSpaceRowGap() throws {
        #expect(inheritedTheme.controlItem.controlItemSpaceRowGap != abstractTheme.controlItem.controlItemSpaceRowGap)
        #expect(inheritedTheme.controlItem.controlItemSpaceRowGap == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSpace)
    }

    @Test func inheritedThemeCanOverrideControlItemComponentTokenSpaceInset() throws {
        #expect(inheritedTheme.controlItem.controlItemSpaceInset != abstractTheme.controlItem.controlItemSpaceInset)
        #expect(inheritedTheme.controlItem.controlItemSpaceInset == MockThemeControlItemComponentTokenProvider.mockThemeControlItemSpace)
    }
}

// swiftlint:enable type_name
