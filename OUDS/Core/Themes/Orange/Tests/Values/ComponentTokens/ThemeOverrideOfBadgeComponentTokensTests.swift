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

struct ThemeOverrideOfBadgeComponentTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Spaces

    @Test func inheritedThemeCanOverrideBadgeComponentTokenBadgeSpaceInset() throws {
        #expect(inheritedTheme.badge.badgeSpaceInset != abstractTheme.badge.badgeSpaceInset)
        #expect(inheritedTheme.badge.badgeSpaceInset == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSpace)
    }

    @Test func inheritedThemeCanOverrideBadgeComponentTokenBadgeSpacePaddingInlineMedium() throws {
        #expect(inheritedTheme.badge.badgeSpacePaddingInlineMedium != abstractTheme.badge.badgeSpacePaddingInlineMedium)
        #expect(inheritedTheme.badge.badgeSpacePaddingInlineMedium == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSpace)
    }

    @Test func inheritedThemeCanOverrideBadgeComponentTokenBadgeSpacePaddingInlineLarge() throws {
        #expect(inheritedTheme.badge.badgeSpacePaddingInlineLarge != abstractTheme.badge.badgeSpacePaddingInlineLarge)
        #expect(inheritedTheme.badge.badgeSpacePaddingInlineLarge == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSpace)
    }

    // MARK: - Sizes

    @Test func inheritedThemeCanOverrideBadgeComponentTokenBadgeSizeXsmall() throws {
        #expect(inheritedTheme.badge.badgeSizeXsmall != abstractTheme.badge.badgeSizeXsmall)
        #expect(inheritedTheme.badge.badgeSizeXsmall == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSize)
    }

    @Test func inheritedThemeCanOverrideBadgeComponentTokenBadgeSizeSmall() throws {
        #expect(inheritedTheme.badge.badgeSizeSmall != abstractTheme.badge.badgeSizeSmall)
        #expect(inheritedTheme.badge.badgeSizeSmall == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSize)
    }

    @Test func inheritedThemeCanOverrideBadgeComponentTokenBadgeSizeMedium() throws {
        #expect(inheritedTheme.badge.badgeSizeMedium != abstractTheme.badge.badgeSizeMedium)
        #expect(inheritedTheme.badge.badgeSizeMedium == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSize)
    }

    @Test func inheritedThemeCanOverrideBadgeComponentTokenBadgeSizeLarge() throws {
        #expect(inheritedTheme.badge.badgeSizeLarge != abstractTheme.badge.badgeSizeLarge)
        #expect(inheritedTheme.badge.badgeSizeLarge == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSize)
    }
}
