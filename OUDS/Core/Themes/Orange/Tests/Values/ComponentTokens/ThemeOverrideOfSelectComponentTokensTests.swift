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

struct ThemeOverrideOfSelectComponentTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Sizes

    @Test func inheritedThemeCanOverrideSelectComponentTokenSizeMaxHeightContainerIcon() throws {
        #expect(inheritedTheme.select.selectSizeMaxHeightContainerIcon != abstractTheme.select.selectSizeMaxHeightContainerIcon)
        #expect(inheritedTheme.select.selectSizeMaxHeightContainerIcon == MockThemeSelectComponentTokenProvider.mockThemeSelectSize)
    }

    @Test func inheritedThemeCanOverrideSelectComponentTokenSizeMinHeight() throws {
        #expect(inheritedTheme.select.selectSizeMinHeight != abstractTheme.select.selectSizeMinHeight)
        #expect(inheritedTheme.select.selectSizeMinHeight == MockThemeSelectComponentTokenProvider.mockThemeSelectSize)
    }

    @Test func inheritedThemeCanOverrideSelectComponentTokenSizeMinHeightIconOnly() throws {
        #expect(inheritedTheme.select.selectSizeMinHeightIconOnly != abstractTheme.select.selectSizeMinHeightIconOnly)
        #expect(inheritedTheme.select.selectSizeMinHeightIconOnly == MockThemeSelectComponentTokenProvider.mockThemeSelectSize)
    }

    @Test func inheritedThemeCanOverrideSelectComponentTokenSizeMinWidth() throws {
        #expect(inheritedTheme.select.selectSizeMinWidth != abstractTheme.select.selectSizeMinWidth)
        #expect(inheritedTheme.select.selectSizeMinWidth == MockThemeSelectComponentTokenProvider.mockThemeSelectSize)
    }

    @Test func inheritedThemeCanOverrideSelectComponentTokenSizeMinWidthIconOnly() throws {
        #expect(inheritedTheme.select.selectSizeMinWidthIconOnly != abstractTheme.select.selectSizeMinWidthIconOnly)
        #expect(inheritedTheme.select.selectSizeMinWidthIconOnly == MockThemeSelectComponentTokenProvider.mockThemeSelectSize)
    }

    @Test func inheritedThemeCanOverrideSelectComponentTokenSizeCheckBox() throws {
        #expect(inheritedTheme.select.selectSizeCheckBox != abstractTheme.select.selectSizeCheckBox)
        #expect(inheritedTheme.select.selectSizeCheckBox == MockThemeSelectComponentTokenProvider.mockThemeSelectSize)
    }

    @Test func inheritedThemeCanOverrideSelectComponentTokenSizeIcon() throws {
        #expect(inheritedTheme.select.selectSizeIcon != abstractTheme.select.selectSizeIcon)
        #expect(inheritedTheme.select.selectSizeIcon == MockThemeSelectComponentTokenProvider.mockThemeSelectSize)
    }

    @Test func inheritedThemeCanOverrideSelectComponentTokenSizeLoader() throws {
        #expect(inheritedTheme.select.selectSizeLoader != abstractTheme.select.selectSizeLoader)
        #expect(inheritedTheme.select.selectSizeLoader == MockThemeSelectComponentTokenProvider.mockThemeSelectSize)
    }

    // MARK: - Colors

    @Test func inheritedThemeCanOverrideSelectComponentTokenColorBgDisabled() throws {
        #expect(inheritedTheme.select.selectColorBgDisabled != abstractTheme.select.selectColorBgDisabled)
        #expect(inheritedTheme.select.selectColorBgDisabled == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    @Test func inheritedThemeCanOverrideSelectComponentTokenColorBgEnabled() throws {
        #expect(inheritedTheme.select.selectColorBgEnabled != abstractTheme.select.selectColorBgEnabled)
        #expect(inheritedTheme.select.selectColorBgEnabled == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    @Test func inheritedThemeCanOverrideSelectComponentTokenColorBgFocus() throws {
        #expect(inheritedTheme.select.selectColorBgFocus != abstractTheme.select.selectColorBgFocus)
        #expect(inheritedTheme.select.selectColorBgFocus == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    @Test func inheritedThemeCanOverrideSelectComponentTokenColorBgHover() throws {
        #expect(inheritedTheme.select.selectColorBgHover != abstractTheme.select.selectColorBgHover)
        #expect(inheritedTheme.select.selectColorBgHover == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    @Test func inheritedThemeCanOverrideSelectComponentTokenColorBgLoading() throws {
        #expect(inheritedTheme.select.selectColorBgLoading != abstractTheme.select.selectColorBgLoading)
        #expect(inheritedTheme.select.selectColorBgLoading == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    @Test func inheritedThemeCanOverrideSelectComponentTokenColorBgPressed() throws {
        #expect(inheritedTheme.select.selectColorBgPressed != abstractTheme.select.selectColorBgPressed)
        #expect(inheritedTheme.select.selectColorBgPressed == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    @Test func inheritedThemeCanOverrideSelectComponentTokenColorBorderDisabled() throws {
        #expect(inheritedTheme.select.selectColorBorderDisabled != abstractTheme.select.selectColorBorderDisabled)
        #expect(inheritedTheme.select.selectColorBorderDisabled == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    @Test func inheritedThemeCanOverrideSelectComponentTokenColorBorderEnabled() throws {
        #expect(inheritedTheme.select.selectColorBorderEnabled != abstractTheme.select.selectColorBorderEnabled)
        #expect(inheritedTheme.select.selectColorBorderEnabled == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    @Test func inheritedThemeCanOverrideSelectComponentTokenColorBorderHover() throws {
        #expect(inheritedTheme.select.selectColorBorderHover != abstractTheme.select.selectColorBorderHover)
        #expect(inheritedTheme.select.selectColorBorderHover == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    @Test func inheritedThemeCanOverrideSelectComponentTokenColorBorderLoading() throws {
        #expect(inheritedTheme.select.selectColorBorderLoading != abstractTheme.select.selectColorBorderLoading)
        #expect(inheritedTheme.select.selectColorBorderLoading == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    @Test func inheritedThemeCanOverrideSelectComponentTokenColorBorderPressed() throws {
        #expect(inheritedTheme.select.selectColorBorderPressed != abstractTheme.select.selectColorBorderPressed)
        #expect(inheritedTheme.select.selectColorBorderPressed == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    @Test func inheritedThemeCanOverrideSelectComponentTokenColorContentDisabled() throws {
        #expect(inheritedTheme.select.selectColorContentDisabled != abstractTheme.select.selectColorContentDisabled)
        #expect(inheritedTheme.select.selectColorContentDisabled == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    @Test func inheritedThemeCanOverrideSelectComponentTokenColorContentEnabled() throws {
        #expect(inheritedTheme.select.selectColorContentEnabled != abstractTheme.select.selectColorContentEnabled)
        #expect(inheritedTheme.select.selectColorContentEnabled == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    @Test func inheritedThemeCanOverrideSelectComponentTokenColorContentFocus() throws {
        #expect(inheritedTheme.select.selectColorContentFocus != abstractTheme.select.selectColorContentFocus)
        #expect(inheritedTheme.select.selectColorContentFocus == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    @Test func inheritedThemeCanOverrideSelectComponentTokenColorContentHelperTextDisabled() throws {
        #expect(inheritedTheme.select.selectColorContentHelperTextDisabled != abstractTheme.select.selectColorContentHelperTextDisabled)
        #expect(inheritedTheme.select.selectColorContentHelperTextDisabled == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    @Test func inheritedThemeCanOverrideSelectComponentTokenColorContentHelperTextEnabled() throws {
        #expect(inheritedTheme.select.selectColorContentHelperTextEnabled != abstractTheme.select.selectColorContentHelperTextEnabled)
        #expect(inheritedTheme.select.selectColorContentHelperTextEnabled == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    @Test func inheritedThemeCanOverrideSelectComponentTokenColorContentHelperTextFocus() throws {
        #expect(inheritedTheme.select.selectColorContentHelperTextFocus != abstractTheme.select.selectColorContentHelperTextFocus)
        #expect(inheritedTheme.select.selectColorContentHelperTextFocus == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    @Test func inheritedThemeCanOverrideSelectComponentTokenColorContentHelperTextHover() throws {
        #expect(inheritedTheme.select.selectColorContentHelperTextHover != abstractTheme.select.selectColorContentHelperTextHover)
        #expect(inheritedTheme.select.selectColorContentHelperTextHover == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    @Test func inheritedThemeCanOverrideSelectComponentTokenColorContentHelperTextLoading() throws {
        #expect(inheritedTheme.select.selectColorContentHelperTextLoading != abstractTheme.select.selectColorContentHelperTextLoading)
        #expect(inheritedTheme.select.selectColorContentHelperTextLoading == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    @Test func inheritedThemeCanOverrideSelectComponentTokenColorContentHelperTextPressed() throws {
        #expect(inheritedTheme.select.selectColorContentHelperTextPressed != abstractTheme.select.selectColorContentHelperTextPressed)
        #expect(inheritedTheme.select.selectColorContentHelperTextPressed == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    @Test func inheritedThemeCanOverrideSelectComponentTokenColorContentHover() throws {
        #expect(inheritedTheme.select.selectColorContentHover != abstractTheme.select.selectColorContentHover)
        #expect(inheritedTheme.select.selectColorContentHover == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    @Test func inheritedThemeCanOverrideSelectComponentTokenColorContentLoading() throws {
        #expect(inheritedTheme.select.selectColorContentLoading != abstractTheme.select.selectColorContentLoading)
        #expect(inheritedTheme.select.selectColorContentLoading == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    @Test func inheritedThemeCanOverrideSelectComponentTokenColorContentPressed() throws {
        #expect(inheritedTheme.select.selectColorContentPressed != abstractTheme.select.selectColorContentPressed)
        #expect(inheritedTheme.select.selectColorContentPressed == MockThemeSelectComponentTokenProvider.mockThemeSelectColor)
    }

    @Test func inheritedThemeCanOverrideSelectComponentTokenSpaceColumnGap() throws {
        #expect(inheritedTheme.select.selectSpaceColumnGap != abstractTheme.select.selectSpaceColumnGap)
        #expect(inheritedTheme.select.selectSpaceColumnGap == MockThemeSelectComponentTokenProvider.mockThemeSelectSpace)
    }

    @Test func inheritedThemeCanOverrideSelectComponentTokenSpacePaddingInset() throws {
        #expect(inheritedTheme.select.selectSpacePaddingInset != abstractTheme.select.selectSpacePaddingInset)
        #expect(inheritedTheme.select.selectSpacePaddingInset == MockThemeSelectComponentTokenProvider.mockThemeSelectSpace)
    }

    @Test func inheritedThemeCanOverrideSelectComponentTokenSpaceRowGap() throws {
        #expect(inheritedTheme.select.selectSpaceRowGap != abstractTheme.select.selectSpaceRowGap)
        #expect(inheritedTheme.select.selectSpaceRowGap == MockThemeSelectComponentTokenProvider.mockThemeSelectSpace)
    }
}

// swiftlint:enable type_name
