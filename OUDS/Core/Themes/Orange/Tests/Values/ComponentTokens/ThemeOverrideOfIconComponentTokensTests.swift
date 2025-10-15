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

struct ThemeOverrideOfIconComponentTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Icons

    @Test func inheritedThemeCanOverrideIconComponentTokenIconColorContentStatusWarningExternalShape() throws {
        #expect(inheritedTheme.icon.iconColorContentStatusWarningExternalShape != abstractTheme.icon.iconColorContentStatusWarningExternalShape)
        #expect(inheritedTheme.icon.iconColorContentStatusWarningExternalShape == MockThemeIconComponentTokenProvider.mockThemeIconColor)
    }

    @Test func inheritedThemeCanOverrideIconComponentTokenIconColorContentStatusWarningInternalShape() throws {
        #expect(inheritedTheme.icon.iconColorContentStatusWarningInternalShape != abstractTheme.icon.iconColorContentStatusWarningInternalShape)
        #expect(inheritedTheme.icon.iconColorContentStatusWarningInternalShape == MockThemeIconComponentTokenProvider.mockThemeIconColor)
    }
}
