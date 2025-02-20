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

struct ThemeOverrideOfListItemComponentTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Colors

    @Test func inheritedThemeCanOverrideListItemComponentTokenSizeMinHeight() throws {
        #expect(inheritedTheme.listItem.listItemSizeMinHeight != abstractTheme.listItem.listItemSizeMinHeight)
        #expect(inheritedTheme.listItem.listItemSizeMinHeight == MockThemeListItemComponentTokenProvider.mockThemeListItemSize)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenSizeMinWidth() throws {
        #expect(inheritedTheme.listItem.listItemSizeMinWidth != abstractTheme.listItem.listItemSizeMinWidth)
        #expect(inheritedTheme.listItem.listItemSizeMinWidth == MockThemeListItemComponentTokenProvider.mockThemeListItemSize)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenColorBgFocus() throws {
        #expect(inheritedTheme.listItem.listItemColorBgFocus != abstractTheme.listItem.listItemColorBgFocus)
        #expect(inheritedTheme.listItem.listItemColorBgFocus == MockThemeListItemComponentTokenProvider.mockThemeListItemColor)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenColorBgHover() throws {
        #expect(inheritedTheme.listItem.listItemColorBgHover != abstractTheme.listItem.listItemColorBgHover)
        #expect(inheritedTheme.listItem.listItemColorBgHover == MockThemeListItemComponentTokenProvider.mockThemeListItemColor)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenColorBgLoading() throws {
        #expect(inheritedTheme.listItem.listItemColorBgLoading != abstractTheme.listItem.listItemColorBgLoading)
        #expect(inheritedTheme.listItem.listItemColorBgLoading == MockThemeListItemComponentTokenProvider.mockThemeListItemColor)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenColorBgPressed() throws {
        #expect(inheritedTheme.listItem.listItemColorBgPressed != abstractTheme.listItem.listItemColorBgPressed)
        #expect(inheritedTheme.listItem.listItemColorBgPressed == MockThemeListItemComponentTokenProvider.mockThemeListItemColor)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenColorContentLoader() throws {
        #expect(inheritedTheme.listItem.listItemColorContentLoader != abstractTheme.listItem.listItemColorContentLoader)
        #expect(inheritedTheme.listItem.listItemColorContentLoader == MockThemeListItemComponentTokenProvider.mockThemeListItemColor)
    }

    // MARK: - Sizes

    @Test func inheritedThemeCanOverrideListItemComponentTokenSizeIcon() throws {
        #expect(inheritedTheme.listItem.listItemSizeIcon != abstractTheme.listItem.listItemSizeIcon)
        #expect(inheritedTheme.listItem.listItemSizeIcon == MockThemeListItemComponentTokenProvider.mockThemeListItemSize)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenSizeLoader() throws {
        #expect(inheritedTheme.listItem.listItemSizeLoader != abstractTheme.listItem.listItemSizeLoader)
        #expect(inheritedTheme.listItem.listItemSizeLoader == MockThemeListItemComponentTokenProvider.mockThemeListItemSize)
    }

    // MARK: - Spaces

    @Test func inheritedThemeCanOverrideListItemComponentTokenSpaceColumnGap() throws {
        #expect(inheritedTheme.listItem.listItemSpaceColumnGap != abstractTheme.listItem.listItemSpaceColumnGap)
        #expect(inheritedTheme.listItem.listItemSpaceColumnGap == MockThemeListItemComponentTokenProvider.mockThemeListItemSpace)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenSpaceInset() throws {
        #expect(inheritedTheme.listItem.listItemSpaceInset != abstractTheme.listItem.listItemSpaceInset)
        #expect(inheritedTheme.listItem.listItemSpaceInset == MockThemeListItemComponentTokenProvider.mockThemeListItemSpace)
    }

    @Test func inheritedThemeCanOverrideListItemComponentTokenSpaceRowGap() throws {
        #expect(inheritedTheme.listItem.listItemSpaceRowGap != abstractTheme.listItem.listItemSpaceRowGap)
        #expect(inheritedTheme.listItem.listItemSpaceRowGap == MockThemeListItemComponentTokenProvider.mockThemeListItemSpace)
    }

}

// swiftlint:enable type_name
