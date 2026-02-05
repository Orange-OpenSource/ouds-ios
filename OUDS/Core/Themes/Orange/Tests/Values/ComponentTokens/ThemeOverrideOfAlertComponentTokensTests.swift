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

struct ThemeOverrideOfAlertComponentTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Borders

    @Test func inheritedThemeCanOverrideAlertComponentTokenBorderRadiusDefault() throws {
        #expect(inheritedTheme.alert.borderRadiusDefault != abstractTheme.alert.borderRadiusDefault)
        #expect(inheritedTheme.alert.borderRadiusDefault == MockThemeAlertComponentTokenProvider.mockThemeAlertBorderRadius)
    }

    @Test func inheritedThemeCanOverrideAlertComponentTokenBorderRadiusRounded() throws {
        #expect(inheritedTheme.alert.borderRadiusRounded != abstractTheme.alert.borderRadiusRounded)
        #expect(inheritedTheme.alert.borderRadiusRounded == MockThemeAlertComponentTokenProvider.mockThemeAlertBorderRadius)
    }

    @Test func inheritedThemeCanOverrideAlertComponentTokenBorderWidth() throws {
        #expect(inheritedTheme.alert.borderWidth != abstractTheme.alert.borderWidth)
        #expect(inheritedTheme.alert.borderWidth == MockThemeAlertComponentTokenProvider.mockThemeAlertBorderWidth)
    }

    // MARK: - Spaces

    @Test func inheritedThemeCanOverrideAlertComponentTokenSpacePaddingBlock() throws {
        #expect(inheritedTheme.alert.spacePaddingBlock != abstractTheme.alert.spacePaddingBlock)
        #expect(inheritedTheme.alert.spacePaddingBlock == MockThemeAlertComponentTokenProvider.mockThemeAlertSpace)
    }

    @Test func inheritedThemeCanOverrideAlertComponentTokenSpacePaddingInlineMedium() throws {
        #expect(inheritedTheme.alert.spacePaddingInline != abstractTheme.alert.spacePaddingInline)
        #expect(inheritedTheme.alert.spacePaddingInline == MockThemeAlertComponentTokenProvider.mockThemeAlertSpace)
    }

    @Test func inheritedThemeCanOverrideAlertComponentTokenSpaceColumnGap() throws {
        #expect(inheritedTheme.alert.spaceColumnGap != abstractTheme.alert.spaceColumnGap)
        #expect(inheritedTheme.alert.spaceColumnGap == MockThemeAlertComponentTokenProvider.mockThemeAlertSpace)
    }

    @Test func inheritedThemeCanOverrideAlertComponentTokenSpaceColumnGapAction() throws {
        #expect(inheritedTheme.alert.spaceColumnGapAction != abstractTheme.alert.spaceColumnGapAction)
        #expect(inheritedTheme.alert.spaceColumnGapAction == MockThemeAlertComponentTokenProvider.mockThemeAlertSpace)
    }

    @Test func inheritedThemeCanOverrideAlertComponentTokenSpaceRowGap() throws {
        #expect(inheritedTheme.alert.spaceRowGap != abstractTheme.alert.spaceRowGap)
        #expect(inheritedTheme.alert.spaceRowGap == MockThemeAlertComponentTokenProvider.mockThemeAlertSpace)
    }

    @Test func inheritedThemeCanOverrideAlertComponentTokenSpaceRowGapAction() throws {
        #expect(inheritedTheme.alert.spaceRowGapAction != abstractTheme.alert.spaceRowGapAction)
        #expect(inheritedTheme.alert.spaceRowGapAction == MockThemeAlertComponentTokenProvider.mockThemeAlertSpace)
    }

    @Test func inheritedThemeCanOverrideAlertComponentTokenSpaceRowGapBullet() throws {
        #expect(inheritedTheme.alert.spaceRowGapBullet != abstractTheme.alert.spaceRowGapBullet)
        #expect(inheritedTheme.alert.spaceRowGapBullet == MockThemeAlertComponentTokenProvider.mockThemeAlertSpace)
    }

    // MARK: - Sizes

    @Test func inheritedThemeCanOverrideAlertComponentTokenSizeIcon() throws {
        #expect(inheritedTheme.alert.sizeIcon != abstractTheme.alert.sizeIcon)
        #expect(inheritedTheme.alert.sizeIcon == MockThemeAlertComponentTokenProvider.mockThemeAlertSize)
    }

    @Test func inheritedThemeCanOverrideAlertComponentTokenSizeMinHeight() throws {
        #expect(inheritedTheme.alert.sizeMinHeight != abstractTheme.alert.sizeMinHeight)
        #expect(inheritedTheme.alert.sizeMinHeight == MockThemeAlertComponentTokenProvider.mockThemeAlertSize)
    }

    @Test func inheritedThemeCanOverrideAlertComponentTokenSizeMinHeightBottomActionPlacement() throws {
        #expect(inheritedTheme.alert.sizeMinHeightBottomActionPlacement != abstractTheme.alert.sizeMinHeightBottomActionPlacement)
        #expect(inheritedTheme.alert.sizeMinHeightBottomActionPlacement == MockThemeAlertComponentTokenProvider.mockThemeAlertSize)
    }

    @Test func inheritedThemeCanOverrideAlertComponentTokenSizeMinWidth() throws {
        #expect(inheritedTheme.alert.sizeMinWidth != abstractTheme.alert.sizeMinWidth)
        #expect(inheritedTheme.alert.sizeMinWidth == MockThemeAlertComponentTokenProvider.mockThemeAlertSize)
    }
}
