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

struct ThemeOverrideOfBreadcrumbComponentTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Sizes

    @Test func inheritedThemeCanOverrideBreadcrumbComponentTokenSpaceColumnGapArrow() throws {
        #expect(inheritedTheme.breadcrumb.breadcrumbSpaceColumnGapArrow != abstractTheme.breadcrumb.breadcrumbSpaceColumnGapArrow)
        #expect(inheritedTheme.breadcrumb.breadcrumbSpaceColumnGapArrow == MockThemeBreadcrumbComponentTokenProvider.mockThemeBreadcrumbSpace)
    }

    @Test func inheritedThemeCanOverrideBreadcrumbComponentTokenSpaceColumnGapLevels() throws {
        #expect(inheritedTheme.breadcrumb.breadcrumbSpaceColumnGapLevels != abstractTheme.breadcrumb.breadcrumbSpaceColumnGapLevels)
        #expect(inheritedTheme.breadcrumb.breadcrumbSpaceColumnGapLevels == MockThemeBreadcrumbComponentTokenProvider.mockThemeBreadcrumbSpace)
    }

    @Test func inheritedThemeCanOverrideBreadcrumbComponentTokenSizeArrow() throws {
        #expect(inheritedTheme.breadcrumb.breadcrumbSizeArrow != abstractTheme.breadcrumb.breadcrumbSizeArrow)
        #expect(inheritedTheme.breadcrumb.breadcrumbSizeArrow == MockThemeBreadcrumbComponentTokenProvider.mockThemeBreadcrumbSize)
    }
}

// swiftlint:enable type_name
