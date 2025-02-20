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

struct ThemeOverrideOfBulletListComponentTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Sizes

    @Test func inheritedThemeCanOverrideBulletListComponentTokenSizeMinHeightMedium() throws {
        #expect(inheritedTheme.bulletList.bulletListSizeMinHeightMedium != abstractTheme.bulletList.bulletListSizeMinHeightMedium)
        #expect(inheritedTheme.bulletList.bulletListSizeMinHeightMedium == MockThemeBulletListComponentTokenProvider.mockThemeBulletListSize)
    }

    @Test func inheritedThemeCanOverrideBulletListComponentTokenSizeMinHeightSmall() throws {
        #expect(inheritedTheme.bulletList.bulletListSizeMinHeightSmall != abstractTheme.bulletList.bulletListSizeMinHeightSmall)
        #expect(inheritedTheme.bulletList.bulletListSizeMinHeightSmall == MockThemeBulletListComponentTokenProvider.mockThemeBulletListSize)
    }

    @Test func inheritedThemeCanOverrideBulletListComponentTokenSizeMinWidthMedium() throws {
        #expect(inheritedTheme.bulletList.bulletListSizeMinWidthMedium != abstractTheme.bulletList.bulletListSizeMinWidthMedium)
        #expect(inheritedTheme.bulletList.bulletListSizeMinWidthMedium == MockThemeBulletListComponentTokenProvider.mockThemeBulletListSize)
    }

    @Test func inheritedThemeCanOverrideBulletListComponentTokenSizeMinWidthSmall() throws {
        #expect(inheritedTheme.bulletList.bulletListSizeMinWidthSmall != abstractTheme.bulletList.bulletListSizeMinWidthSmall)
        #expect(inheritedTheme.bulletList.bulletListSizeMinWidthSmall == MockThemeBulletListComponentTokenProvider.mockThemeBulletListSize)
    }

    @Test func inheritedThemeCanOverrideBulletListComponentTokenSizeIconMedium() throws {
        #expect(inheritedTheme.bulletList.bulletListSizeIconMedium != abstractTheme.bulletList.bulletListSizeIconMedium)
        #expect(inheritedTheme.bulletList.bulletListSizeIconMedium == MockThemeBulletListComponentTokenProvider.mockThemeBulletListSize)
    }

    @Test func inheritedThemeCanOverrideBulletListComponentTokenSizeIconSmall() throws {
        #expect(inheritedTheme.bulletList.bulletListSizeIconSmall != abstractTheme.bulletList.bulletListSizeIconSmall)
        #expect(inheritedTheme.bulletList.bulletListSizeIconSmall == MockThemeBulletListComponentTokenProvider.mockThemeBulletListSize)
    }

    // MARK: - Colors

    @Test func inheritedThemeCanOverrideBulletListComponentTokenColorContentEnabled() throws {
        #expect(inheritedTheme.bulletList.bulletListColorContentEnabled != abstractTheme.bulletList.bulletListColorContentEnabled)
        #expect(inheritedTheme.bulletList.bulletListColorContentEnabled == MockThemeBulletListComponentTokenProvider.mockThemeBulletListColor)
    }

    // MARK: - Spaces

    @Test func inheritedThemeCanOverrideBulletListComponentTokenSpaceColumnGapIconMedium() throws {
        #expect(inheritedTheme.bulletList.bulletListSpaceColumnGapIconMedium != abstractTheme.bulletList.bulletListSpaceColumnGapIconMedium)
        #expect(inheritedTheme.bulletList.bulletListSpaceColumnGapIconMedium == MockThemeBulletListComponentTokenProvider.mockThemeBulletListSpace)
    }

    @Test func inheritedThemeCanOverrideBulletListComponentTokenSpaceColumnGapIconSmall() throws {
        #expect(inheritedTheme.bulletList.bulletListSpaceColumnGapIconSmall != abstractTheme.bulletList.bulletListSpaceColumnGapIconSmall)
        #expect(inheritedTheme.bulletList.bulletListSpaceColumnGapIconSmall == MockThemeBulletListComponentTokenProvider.mockThemeBulletListSpace)
    }

    @Test func inheritedThemeCanOverrideBulletListComponentTokenSpacePaddingBlock() throws {
        #expect(inheritedTheme.bulletList.bulletListSpacePaddingBlock != abstractTheme.bulletList.bulletListSpacePaddingBlock)
        #expect(inheritedTheme.bulletList.bulletListSpacePaddingBlock == MockThemeBulletListComponentTokenProvider.mockThemeBulletListSpace)
    }

    @Test func inheritedThemeCanOverrideBulletListComponentTokenSpacePaddingInlineEndNone() throws {
        #expect(inheritedTheme.bulletList.bulletListSpacePaddingInlineEndNone != abstractTheme.bulletList.bulletListSpacePaddingInlineEndNone)
        #expect(inheritedTheme.bulletList.bulletListSpacePaddingInlineEndNone == MockThemeBulletListComponentTokenProvider.mockThemeBulletListSpace)
    }

    @Test func inheritedThemeCanOverrideBulletListComponentTokenSpacePaddingInlineStartIconMedium() throws {
        #expect(inheritedTheme.bulletList.bulletListSpacePaddingInlineStartIconMedium != abstractTheme.bulletList.bulletListSpacePaddingInlineStartIconMedium)
        #expect(inheritedTheme.bulletList.bulletListSpacePaddingInlineStartIconMedium == MockThemeBulletListComponentTokenProvider.mockThemeBulletListSpace)
    }

    @Test func inheritedThemeCanOverrideBulletListComponentTokenSpacePaddingInlineStartIconSmall() throws {
        #expect(inheritedTheme.bulletList.bulletListSpacePaddingInlineStartIconSmall != abstractTheme.bulletList.bulletListSpacePaddingInlineStartIconSmall)
        #expect(inheritedTheme.bulletList.bulletListSpacePaddingInlineStartIconSmall == MockThemeBulletListComponentTokenProvider.mockThemeBulletListSpace)
    }
}

// swiftlint:enable type_name
