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

    // MARK: - Sizes

    @Test func inheritedThemeCanOverrideBadgeComponentTokenBadgeSizeMaxHeightExtraSmall() throws {
        #expect(inheritedTheme.badge.badgeSizeMaxHeightExtraSmall != abstractTheme.badge.badgeSizeMaxHeightExtraSmall)
        #expect(inheritedTheme.badge.badgeSizeMaxHeightExtraSmall == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSize)
    }

    @Test func inheritedThemeCanOverrideBadgeComponentTokenBadgeSizeMaxHeightLarge() throws {
        #expect(inheritedTheme.badge.badgeSizeMaxHeightLarge != abstractTheme.badge.badgeSizeMaxHeightLarge)
        #expect(inheritedTheme.badge.badgeSizeMaxHeightLarge == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSize)
    }

    @Test func inheritedThemeCanOverrideBadgeComponentTokenBadgeSizeMaxHeightMedium() throws {
        #expect(inheritedTheme.badge.badgeSizeMaxHeightMedium != abstractTheme.badge.badgeSizeMaxHeightMedium)
        #expect(inheritedTheme.badge.badgeSizeMaxHeightMedium == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSize)
    }

    @Test func inheritedThemeCanOverrideBadgeComponentTokenBadgeSizeMaxHeightSmall() throws {
        #expect(inheritedTheme.badge.badgeSizeMaxHeightSmall != abstractTheme.badge.badgeSizeMaxHeightSmall)
        #expect(inheritedTheme.badge.badgeSizeMaxHeightSmall == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSize)
    }

    @Test func inheritedThemeCanOverrideBadgeComponentTokenBadgeSizeMaxWidthExtraSmall() throws {
        #expect(inheritedTheme.badge.badgeSizeMaxWidthExtraSmall != abstractTheme.badge.badgeSizeMaxWidthExtraSmall)
        #expect(inheritedTheme.badge.badgeSizeMaxWidthExtraSmall == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSize)
    }

    @Test func inheritedThemeCanOverrideBadgeComponentTokenBadgeSizeMaxWidthLargeCount() throws {
        #expect(inheritedTheme.badge.badgeSizeMaxWidthLargeCount != abstractTheme.badge.badgeSizeMaxWidthLargeCount)
        #expect(inheritedTheme.badge.badgeSizeMaxWidthLargeCount == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSize)
    }

    @Test func inheritedThemeCanOverrideBadgeComponentTokenBadgeSizeMaxWidthLargeDot() throws {
        #expect(inheritedTheme.badge.badgeSizeMaxWidthLargeDot != abstractTheme.badge.badgeSizeMaxWidthLargeDot)
        #expect(inheritedTheme.badge.badgeSizeMaxWidthLargeDot == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSize)
    }

    @Test func inheritedThemeCanOverrideBadgeComponentTokenBadgeSizeMaxWidthMediumCount() throws {
        #expect(inheritedTheme.badge.badgeSizeMaxWidthMediumCount != abstractTheme.badge.badgeSizeMaxWidthMediumCount)
        #expect(inheritedTheme.badge.badgeSizeMaxWidthMediumCount == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSize)
    }

    @Test func inheritedThemeCanOverrideBadgeComponentTokenBadgeSizeMaxWidthMediumDot() throws {
        #expect(inheritedTheme.badge.badgeSizeMaxWidthMediumDot != abstractTheme.badge.badgeSizeMaxWidthMediumDot)
        #expect(inheritedTheme.badge.badgeSizeMaxWidthMediumDot == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSize)
    }

    @Test func inheritedThemeCanOverrideBadgeComponentTokenBadgeSizeMaxWidthSmall() throws {
        #expect(inheritedTheme.badge.badgeSizeMaxWidthSmall != abstractTheme.badge.badgeSizeMaxWidthSmall)
        #expect(inheritedTheme.badge.badgeSizeMaxWidthSmall == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSize)
    }

    @Test func inheritedThemeCanOverrideBadgeComponentTokenBadgeSizeMinHeightExtraSmall() throws {
        #expect(inheritedTheme.badge.badgeSizeMinHeightExtraSmall != abstractTheme.badge.badgeSizeMinHeightExtraSmall)
        #expect(inheritedTheme.badge.badgeSizeMinHeightExtraSmall == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSize)
    }

    @Test func inheritedThemeCanOverrideBadgeComponentTokenBadgeSizeMinHeightLarge() throws {
        #expect(inheritedTheme.badge.badgeSizeMinHeightLarge != abstractTheme.badge.badgeSizeMinHeightLarge)
        #expect(inheritedTheme.badge.badgeSizeMinHeightLarge == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSize)
    }

    @Test func inheritedThemeCanOverrideBadgeComponentTokenBadgeSizeMinHeightMedium() throws {
        #expect(inheritedTheme.badge.badgeSizeMinHeightMedium != abstractTheme.badge.badgeSizeMinHeightMedium)
        #expect(inheritedTheme.badge.badgeSizeMinHeightMedium == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSize)
    }

    @Test func inheritedThemeCanOverrideBadgeComponentTokenBadgeSizeMinHeightSmall() throws {
        #expect(inheritedTheme.badge.badgeSizeMinHeightSmall != abstractTheme.badge.badgeSizeMinHeightSmall)
        #expect(inheritedTheme.badge.badgeSizeMinHeightSmall == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSize)
    }

    @Test func inheritedThemeCanOverrideBadgeComponentTokenBadgeSizeMinWidthExtraSmall() throws {
        #expect(inheritedTheme.badge.badgeSizeMinWidthExtraSmall != abstractTheme.badge.badgeSizeMinWidthExtraSmall)
        #expect(inheritedTheme.badge.badgeSizeMinWidthExtraSmall == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSize)
    }

    @Test func inheritedThemeCanOverrideBadgeComponentTokenBadgeSizeMinWidthLarge() throws {
        #expect(inheritedTheme.badge.badgeSizeMinWidthLarge != abstractTheme.badge.badgeSizeMinWidthLarge)
        #expect(inheritedTheme.badge.badgeSizeMinWidthLarge == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSize)
    }

    @Test func inheritedThemeCanOverrideBadgeComponentTokenBadgeSizeMinWidthMedium() throws {
        #expect(inheritedTheme.badge.badgeSizeMinWidthMedium != abstractTheme.badge.badgeSizeMinWidthMedium)
        #expect(inheritedTheme.badge.badgeSizeMinWidthMedium == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSize)
    }

    @Test func inheritedThemeCanOverrideBadgeComponentTokenBadgeSizeMinWidthSmall() throws {
        #expect(inheritedTheme.badge.badgeSizeMinWidthSmall != abstractTheme.badge.badgeSizeMinWidthSmall)
        #expect(inheritedTheme.badge.badgeSizeMinWidthSmall == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSize)
    }

    // MARK: - Borders

    @Test func inheritedThemeCanOverrideBadgeComponentTokenBadgeBorderRadiusPill() throws {
        #expect(inheritedTheme.badge.badgeBorderRadiusPill != abstractTheme.badge.badgeBorderRadiusPill)
        #expect(inheritedTheme.badge.badgeBorderRadiusPill == MockThemeBadgeComponentTokenProvider.mockThemeBadgeBorderRadius)
    }

    // MARK: - Spaces

    @Test func inheritedThemeCanOverrideBadgeComponentTokenBadgeSpacePaddingInlineLarge() throws {
        #expect(inheritedTheme.badge.badgeSpacePaddingInlineLarge != abstractTheme.badge.badgeSpacePaddingInlineLarge)
        #expect(inheritedTheme.badge.badgeSpacePaddingInlineLarge == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSpace)
    }

    @Test func inheritedThemeCanOverrideBadgeComponentTokenBadgeSpacePaddingInlineMedium() throws {
        #expect(inheritedTheme.badge.badgeSpacePaddingInlineMedium != abstractTheme.badge.badgeSpacePaddingInlineMedium)
        #expect(inheritedTheme.badge.badgeSpacePaddingInlineMedium == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSpace)
    }
}
