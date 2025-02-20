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

// swiftlint:disable implicitly_unwrapped_optional

struct ThemeOverrideOfBadgeComponentTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Dimensions

    @Test func inheritedThemeCanOverrideBadgeComponentTokenNotificationMinWidthL() throws {
        #expect(inheritedTheme.badge.badgeNotificationMinWidthL != abstractTheme.badge.badgeNotificationMinWidthL)
        #expect(inheritedTheme.badge.badgeNotificationMinWidthL == MockThemeBadgeComponentTokenProvider.mockThemeBadgeMinWidth)
    }

    @Test func inheritedThemeCanOverrideBadgeComponentTokenNotificationMinWidthM() throws {
        #expect(inheritedTheme.badge.badgeNotificationMinWidthM != abstractTheme.badge.badgeNotificationMinWidthM)
        #expect(inheritedTheme.badge.badgeNotificationMinWidthM == MockThemeBadgeComponentTokenProvider.mockThemeBadgeMinWidth)
    }

    @Test func inheritedThemeCanOverrideBadgeComponentTokenNotificationMinWidthS() throws {
        #expect(inheritedTheme.badge.badgeNotificationMinWidthS != abstractTheme.badge.badgeNotificationMinWidthS)
        #expect(inheritedTheme.badge.badgeNotificationMinWidthS == MockThemeBadgeComponentTokenProvider.mockThemeBadgeMinWidth)
    }

    // MARK: - Sizes

    @Test func inheritedThemeCanOverrideBadgeComponentTokenSizeL() throws {
        #expect(inheritedTheme.badge.badgeSizeL != abstractTheme.badge.badgeSizeL)
        #expect(inheritedTheme.badge.badgeSizeL == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSize)
    }

    @Test func inheritedThemeCanOverrideBadgeComponentTokenSizeM() throws {
        #expect(inheritedTheme.badge.badgeSizeM != abstractTheme.badge.badgeSizeM)
        #expect(inheritedTheme.badge.badgeSizeM == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSize)
    }

    @Test func inheritedThemeCanOverrideBadgeComponentTokenSizeS() throws {
        #expect(inheritedTheme.badge.badgeSizeS != abstractTheme.badge.badgeSizeS)
        #expect(inheritedTheme.badge.badgeSizeS == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSize)
    }

    @Test func inheritedThemeCanOverrideBadgeComponentTokenSizeXs() throws {
        #expect(inheritedTheme.badge.badgeSizeXs != abstractTheme.badge.badgeSizeXs)
        #expect(inheritedTheme.badge.badgeSizeXs == MockThemeBadgeComponentTokenProvider.mockThemeBadgeSize)
    }
}

// swiftlint:enable implicitly_unwrapped_optional
