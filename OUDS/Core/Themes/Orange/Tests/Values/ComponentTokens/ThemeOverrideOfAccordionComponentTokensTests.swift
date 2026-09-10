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

struct ThemeOverrideOfAccordionComponentTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Spaces

    @Test func inheritedThemeCanOverrideAccordionComponentTokenSpacePaddingBlockBottomExpandContainerSmall() throws {
        #expect(inheritedTheme.accordion.spacePaddingBlockBottomExpandContainerSmall != abstractTheme.accordion.spacePaddingBlockBottomExpandContainerSmall)
        #expect(inheritedTheme.accordion.spacePaddingBlockBottomExpandContainerSmall == MockThemeAccordionComponentTokenProvider.mockThemeAccordionSpace)
    }

    @Test func inheritedThemeCanOverrideAccordionComponentTokenSpacePaddingBlockBottomExpandContainerDefault() throws {
        #expect(inheritedTheme.accordion.spacePaddingBlockBottomExpandContainerDefault != abstractTheme.accordion.spacePaddingBlockBottomExpandContainerDefault)
        #expect(inheritedTheme.accordion.spacePaddingBlockBottomExpandContainerDefault == MockThemeAccordionComponentTokenProvider.mockThemeAccordionSpace)
    }

    @Test func inheritedThemeCanOverrideAccordionComponentTokenSpacePaddingBlockTopExpandContainer() throws {
        #expect(inheritedTheme.accordion.spacePaddingBlockTopExpandContainer != abstractTheme.accordion.spacePaddingBlockTopExpandContainer)
        #expect(inheritedTheme.accordion.spacePaddingBlockTopExpandContainer == MockThemeAccordionComponentTokenProvider.mockThemeAccordionSpace)
    }
}

// swiftlint:enable type_name
