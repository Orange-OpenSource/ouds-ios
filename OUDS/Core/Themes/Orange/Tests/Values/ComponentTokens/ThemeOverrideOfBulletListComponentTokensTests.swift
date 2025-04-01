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

    // MARK: - Spaces

    @Test func inheritedThemeCanOverrideBulletListComponentTokenColumnGapBodyLarge() throws {
        #expect(inheritedTheme.bulletList.bulletListSpaceColumnGapBodyLarge != abstractTheme.bulletList.bulletListSpaceColumnGapBodyLarge)
        #expect(inheritedTheme.bulletList.bulletListSpaceColumnGapBodyLarge == MockThemeBulletListComponentTokenProvider.mockThemeBulletListSpace)
    }

    @Test func inheritedThemeCanOverrideBulletListComponentTokenColumnGapBodyMedium() throws {
        #expect(inheritedTheme.bulletList.bulletListSpaceColumnGapBodyMedium != abstractTheme.bulletList.bulletListSpaceColumnGapBodyMedium)
        #expect(inheritedTheme.bulletList.bulletListSpaceColumnGapBodyMedium == MockThemeBulletListComponentTokenProvider.mockThemeBulletListSpace)
    }

    @Test func inheritedThemeCanOverrideBulletListComponentTokenPaddingBlockBodyLarge() throws {
        #expect(inheritedTheme.bulletList.bulletListSpacePaddingBlockBodyLarge != abstractTheme.bulletList.bulletListSpacePaddingBlockBodyLarge)
        #expect(inheritedTheme.bulletList.bulletListSpacePaddingBlockBodyLarge == MockThemeBulletListComponentTokenProvider.mockThemeBulletListSpace)
    }

    @Test func inheritedThemeCanOverrideBulletListComponentTokenSpacePaddingBlockBodyMedium() throws {
        #expect(inheritedTheme.bulletList.bulletListSpacePaddingBlockBodyMedium != abstractTheme.bulletList.bulletListSpacePaddingBlockBodyMedium)
        #expect(inheritedTheme.bulletList.bulletListSpacePaddingBlockBodyMedium == MockThemeBulletListComponentTokenProvider.mockThemeBulletListSpace)
    }

    @Test func inheritedThemeCanOverrideBulletListComponentTokenSpacePaddingInlineLevel0() throws {
        #expect(inheritedTheme.bulletList.bulletListSpacePaddingInlineLevel0 != abstractTheme.bulletList.bulletListSpacePaddingInlineLevel0)
        #expect(inheritedTheme.bulletList.bulletListSpacePaddingInlineLevel0 == MockThemeBulletListComponentTokenProvider.mockThemeBulletListSpace)
    }

    @Test func inheritedThemeCanOverrideBulletListComponentTokenSpacePaddingInlineLevel1() throws {
        #expect(inheritedTheme.bulletList.bulletListSpacePaddingInlineLevel1 != abstractTheme.bulletList.bulletListSpacePaddingInlineLevel1)
        #expect(inheritedTheme.bulletList.bulletListSpacePaddingInlineLevel1 == MockThemeBulletListComponentTokenProvider.mockThemeBulletListSpace)
    }

    @Test func inheritedThemeCanOverrideBulletListComponentTokenSpacePaddingInlineLevel2() throws {
        #expect(inheritedTheme.bulletList.bulletListSpacePaddingInlineLevel2 != abstractTheme.bulletList.bulletListSpacePaddingInlineLevel2)
        #expect(inheritedTheme.bulletList.bulletListSpacePaddingInlineLevel2 == MockThemeBulletListComponentTokenProvider.mockThemeBulletListSpace)
    }
}

// swiftlint:enable type_name
