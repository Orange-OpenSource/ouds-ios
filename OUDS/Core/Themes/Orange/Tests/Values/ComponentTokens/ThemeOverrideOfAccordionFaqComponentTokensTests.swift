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

// swiftlint:disable type_name

struct ThemeOverrideOfAccordionFaqComponentTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Spaces

    @Test func inheritedThemeCanOverrideAccordionFaqComponentTokenSpaceColumnGapMobile() throws {
        #expect(inheritedTheme.accordion.spaceColumnGapMobile != abstractTheme.accordion.spaceColumnGapMobile)
        #expect(inheritedTheme.accordion.spaceColumnGapMobile == MockThemeAccordionComponentTokenProvider.mockThemeAccordionSpace)
    }

    @Test func inheritedThemeCanOverrideAccordionFaqComponentTokenSpaceColumnGapTablet() throws {
        #expect(inheritedTheme.accordion.spaceColumnGapTablet != abstractTheme.accordion.spaceColumnGapTablet)
        #expect(inheritedTheme.accordion.spaceColumnGapTablet == MockThemeAccordionComponentTokenProvider.mockThemeAccordionSpace)
    }

    @Test func inheritedThemeCanOverrideAccordionFaqComponentTokenSpacePaddingBlockMobile() throws {
        #expect(inheritedTheme.accordion.spacePaddingBlockMobile != abstractTheme.accordion.spacePaddingBlockMobile)
        #expect(inheritedTheme.accordion.spacePaddingBlockMobile == MockThemeAccordionComponentTokenProvider.mockThemeAccordionSpace)
    }

    @Test func inheritedThemeCanOverrideAccordionFaqComponentTokenSpacePaddingBlockTablet() throws {
        #expect(inheritedTheme.accordion.spacePaddingBlockTablet != abstractTheme.accordion.spacePaddingBlockTablet)
        #expect(inheritedTheme.accordion.spacePaddingBlockTablet == MockThemeAccordionComponentTokenProvider.mockThemeAccordionSpace)
    }

    @Test func inheritedThemeCanOverrideAccordionFaqComponentTokenSpacePaddingBlockBottomExpandContainerMobile() throws {
        #expect(inheritedTheme.accordion.spacePaddingBlockBottomExpandContainerMobile != abstractTheme.accordion.spacePaddingBlockBottomExpandContainerMobile)
        #expect(inheritedTheme.accordion.spacePaddingBlockBottomExpandContainerMobile == MockThemeAccordionComponentTokenProvider.mockThemeAccordionSpace)
    }

    @Test func inheritedThemeCanOverrideAccordionFaqComponentTokenSpacePaddingBlockBottomExpandContainerTablet() throws {
        #expect(inheritedTheme.accordion.spacePaddingBlockBottomExpandContainerTablet != abstractTheme.accordion.spacePaddingBlockBottomExpandContainerTablet)
        #expect(inheritedTheme.accordion.spacePaddingBlockBottomExpandContainerTablet == MockThemeAccordionComponentTokenProvider.mockThemeAccordionSpace)
    }

    @Test func inheritedThemeCanOverrideAccordionFaqComponentTokenSpacePaddingBlockBottomSlotListItemContainerMobile() throws {
        #expect(inheritedTheme.accordion.spacePaddingBlockBottomSlotListItemContainerMobile != abstractTheme.accordion.spacePaddingBlockBottomSlotListItemContainerMobile)
        #expect(inheritedTheme.accordion.spacePaddingBlockBottomSlotListItemContainerMobile == MockThemeAccordionComponentTokenProvider.mockThemeAccordionSpace)
    }

    @Test func inheritedThemeCanOverrideAccordionFaqComponentTokenSpacePaddingBlockBottomSlotListItemContainerTablet() throws {
        #expect(inheritedTheme.accordion.spacePaddingBlockBottomSlotListItemContainerTablet != abstractTheme.accordion.spacePaddingBlockBottomSlotListItemContainerTablet)
        #expect(inheritedTheme.accordion.spacePaddingBlockBottomSlotListItemContainerTablet == MockThemeAccordionComponentTokenProvider.mockThemeAccordionSpace)
    }

    // MARK: - Sizes

    @Test func inheritedThemeCanOverrideAccordionFaqComponentTokenSizeIconMobile() throws {
        #expect(inheritedTheme.accordion.sizeIconMobile != abstractTheme.accordion.sizeIconMobile)
        #expect(inheritedTheme.accordion.sizeIconMobile == MockThemeAccordionComponentTokenProvider.mockThemeAccordionSize)
    }

    @Test func inheritedThemeCanOverrideAccordionFaqComponentTokenSizeIconTablet() throws {
        #expect(inheritedTheme.accordion.sizeIconTablet != abstractTheme.accordion.sizeIconTablet)
        #expect(inheritedTheme.accordion.sizeIconTablet == MockThemeAccordionComponentTokenProvider.mockThemeAccordionSize)
    }

    @Test func inheritedThemeCanOverrideAccordionFaqComponentTokenSizeExpandingIndicatorMobile() throws {
        #expect(inheritedTheme.accordion.sizeExpandingIndicatorMobile != abstractTheme.accordion.sizeExpandingIndicatorMobile)
        #expect(inheritedTheme.accordion.sizeExpandingIndicatorMobile == MockThemeAccordionComponentTokenProvider.mockThemeAccordionSize)
    }

    @Test func inheritedThemeCanOverrideAccordionFaqComponentTokenSizeExpandingIndicatorTablet() throws {
        #expect(inheritedTheme.accordion.sizeExpandingIndicatorTablet != abstractTheme.accordion.sizeExpandingIndicatorTablet)
        #expect(inheritedTheme.accordion.sizeExpandingIndicatorTablet == MockThemeAccordionComponentTokenProvider.mockThemeAccordionSize)
    }

    @Test func inheritedThemeCanOverrideAccordionFaqComponentTokenSizeMinHeightMobile() throws {
        #expect(inheritedTheme.accordion.sizeMinHeightMobile != abstractTheme.accordion.sizeMinHeightMobile)
        #expect(inheritedTheme.accordion.sizeMinHeightMobile == MockThemeAccordionComponentTokenProvider.mockThemeAccordionSize)
    }

    @Test func inheritedThemeCanOverrideAccordionFaqComponentTokenSizeMinHeightTablet() throws {
        #expect(inheritedTheme.accordion.sizeMinHeightTablet != abstractTheme.accordion.sizeMinHeightTablet)
        #expect(inheritedTheme.accordion.sizeMinHeightTablet == MockThemeAccordionComponentTokenProvider.mockThemeAccordionSize)
    }
}

// swiftlint:enable type_name
