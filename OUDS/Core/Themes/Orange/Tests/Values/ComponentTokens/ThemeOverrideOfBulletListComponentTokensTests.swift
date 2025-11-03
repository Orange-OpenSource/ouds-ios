//
// Software Name: OUDSThemesContract iOS
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

// swiftlint:disable type_name

struct ThemeOverrideOfBulletListComponentTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Spaces

    @Test func inheritedThemeCanOverrideBulletListComponentTokenColumnGapBodyLarge() throws {
        #expect(inheritedTheme.bulletList.spaceColumnGapBodyLarge != abstractTheme.bulletList.spaceColumnGapBodyLarge)
        #expect(inheritedTheme.bulletList.spaceColumnGapBodyLarge == MockThemeBulletListComponentTokenProvider.mockThemeBulletListSpace)
    }

    @Test func inheritedThemeCanOverrideBulletListComponentTokenColumnGapBodyMedium() throws {
        #expect(inheritedTheme.bulletList.spaceColumnGapBodyMedium != abstractTheme.bulletList.spaceColumnGapBodyMedium)
        #expect(inheritedTheme.bulletList.spaceColumnGapBodyMedium == MockThemeBulletListComponentTokenProvider.mockThemeBulletListSpace)
    }

    @Test func inheritedThemeCanOverrideBulletListComponentTokenPaddingBlockBodyLarge() throws {
        #expect(inheritedTheme.bulletList.spacePaddingBlockBodyLarge != abstractTheme.bulletList.spacePaddingBlockBodyLarge)
        #expect(inheritedTheme.bulletList.spacePaddingBlockBodyLarge == MockThemeBulletListComponentTokenProvider.mockThemeBulletListSpace)
    }

    @Test func inheritedThemeCanOverrideBulletListComponentTokenSpacePaddingBlockBodyMedium() throws {
        #expect(inheritedTheme.bulletList.spacePaddingBlockBodyMedium != abstractTheme.bulletList.spacePaddingBlockBodyMedium)
        #expect(inheritedTheme.bulletList.spacePaddingBlockBodyMedium == MockThemeBulletListComponentTokenProvider.mockThemeBulletListSpace)
    }

    @Test func inheritedThemeCanOverrideBulletListComponentTokenSpacePaddingInlineLevel0() throws {
        #expect(inheritedTheme.bulletList.spacePaddingInlineLevel0 != abstractTheme.bulletList.spacePaddingInlineLevel0)
        #expect(inheritedTheme.bulletList.spacePaddingInlineLevel0 == MockThemeBulletListComponentTokenProvider.mockThemeBulletListSpace)
    }

    @Test func inheritedThemeCanOverrideBulletListComponentTokenSpacePaddingInlineLevel1() throws {
        #expect(inheritedTheme.bulletList.spacePaddingInlineLevel1 != abstractTheme.bulletList.spacePaddingInlineLevel1)
        #expect(inheritedTheme.bulletList.spacePaddingInlineLevel1 == MockThemeBulletListComponentTokenProvider.mockThemeBulletListSpace)
    }

    @Test func inheritedThemeCanOverrideBulletListComponentTokenSpacePaddingInlineLevel2() throws {
        #expect(inheritedTheme.bulletList.spacePaddingInlineLevel2 != abstractTheme.bulletList.spacePaddingInlineLevel2)
        #expect(inheritedTheme.bulletList.spacePaddingInlineLevel2 == MockThemeBulletListComponentTokenProvider.mockThemeBulletListSpace)
    }
}

// swiftlint:enable type_name
