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

struct ThemeOverrideOfSkeletonComponentTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    @Test func inheritedThemeCanOverrideSkeletonComponentTokenColorBg() throws {
        #expect(inheritedTheme.skeleton.colorBg != abstractTheme.skeleton.colorBg)
        #expect(inheritedTheme.skeleton.colorBg == MockThemeSkeletonComponentTokenProvider.mockThemeSkeletonColor)
    }

    @Test func inheritedThemeCanOverrideSkeletonComponentTokenColorGradientMiddle() throws {
        #expect(inheritedTheme.skeleton.colorGradientMiddle != abstractTheme.skeleton.colorGradientMiddle)
        #expect(inheritedTheme.skeleton.colorGradientMiddle == MockThemeSkeletonComponentTokenProvider.mockThemeSkeletonColor)
    }

    @Test func inheritedThemeCanOverrideSkeletonComponentTokenColorGradientStartEnd() throws {
        #expect(inheritedTheme.skeleton.colorGradientStartEnd != abstractTheme.skeleton.colorGradientStartEnd)
        #expect(inheritedTheme.skeleton.colorGradientStartEnd == MockThemeSkeletonComponentTokenProvider.mockThemeSkeletonColor)
    }
}

// swiftlint:enable type_name
