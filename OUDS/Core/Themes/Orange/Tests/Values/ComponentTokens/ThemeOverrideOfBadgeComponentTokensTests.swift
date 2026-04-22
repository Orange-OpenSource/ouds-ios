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

struct ThemeOverrideOfBadgeComponentTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Spaces

    @Test func inheritedThemeCanOverrideBadgeComponentTokenBadgeSpaceInsetXsmall() throws {
        #expect(inheritedTheme.badge.spaceInsetXsmall != abstractTheme.badge.spaceInsetXsmall)
        #expect(inheritedTheme.badge.spaceInsetXsmall == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSpace)
    }

    @Test func inheritedThemeCanOverrideBadgeComponentTokenBadgeSpaceInsetSmall() throws {
        #expect(inheritedTheme.badge.spaceInsetSmall != abstractTheme.badge.spaceInsetSmall)
        #expect(inheritedTheme.badge.spaceInsetSmall == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSpace)
    }

    @Test func inheritedThemeCanOverrideBadgeComponentTokenBadgeSpaceInsetMediumLarge() throws {
        #expect(inheritedTheme.badge.spaceInsetMediumLarge != abstractTheme.badge.spaceInsetMediumLarge)
        #expect(inheritedTheme.badge.spaceInsetMediumLarge == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSpace)
    }

    @Test func inheritedThemeCanOverrideBadgeComponentTokenBadgeSpacePaddingInlineMedium() throws {
        #expect(inheritedTheme.badge.spacePaddingInlineMedium != abstractTheme.badge.spacePaddingInlineMedium)
        #expect(inheritedTheme.badge.spacePaddingInlineMedium == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSpace)
    }

    @Test func inheritedThemeCanOverrideBadgeComponentTokenBadgeSpacePaddingInlineLarge() throws {
        #expect(inheritedTheme.badge.spacePaddingInlineLarge != abstractTheme.badge.spacePaddingInlineLarge)
        #expect(inheritedTheme.badge.spacePaddingInlineLarge == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSpace)
    }

    // MARK: - Sizes

    @Test func inheritedThemeCanOverrideBadgeComponentTokenBadgeSizeXsmall() throws {
        #expect(inheritedTheme.badge.sizeXsmall != abstractTheme.badge.sizeXsmall)
        #expect(inheritedTheme.badge.sizeXsmall == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSize)
    }

    @Test func inheritedThemeCanOverrideBadgeComponentTokenBadgeSizeSmall() throws {
        #expect(inheritedTheme.badge.sizeSmall != abstractTheme.badge.sizeSmall)
        #expect(inheritedTheme.badge.sizeSmall == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSize)
    }

    @Test func inheritedThemeCanOverrideBadgeComponentTokenBadgeSizeMedium() throws {
        #expect(inheritedTheme.badge.sizeMedium != abstractTheme.badge.sizeMedium)
        #expect(inheritedTheme.badge.sizeMedium == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSize)
    }

    @Test func inheritedThemeCanOverrideBadgeComponentTokenBadgeSizeLarge() throws {
        #expect(inheritedTheme.badge.sizeLarge != abstractTheme.badge.sizeLarge)
        #expect(inheritedTheme.badge.sizeLarge == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSize)
    }
}
