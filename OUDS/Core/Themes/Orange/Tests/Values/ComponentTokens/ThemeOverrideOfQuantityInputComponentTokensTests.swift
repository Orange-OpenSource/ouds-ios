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

struct ThemeOverrideOfQuantityInputComponentTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Borders

    @Test func inheritedThemeCanOverrideQuantityInputSpaceColumnGapDefault() throws {
        #expect(inheritedTheme.quantityInput.quantityInputSpaceColumnGapDefault != abstractTheme.quantityInput.quantityInputSpaceColumnGapDefault)
        #expect(inheritedTheme.quantityInput.quantityInputSpaceColumnGapDefault == MockThemeQuantityInputComponentTokenProvider.SpaceSemanticToken)
    }

    @Test func inheritedThemeCanOverrideQuantityInputSpaceColumnGapLeadingIcon() throws {
        #expect(inheritedTheme.quantityInput.quantityInputSpaceColumnGapLeadingIcon != abstractTheme.quantityInput.quantityInputSpaceColumnGapLeadingIcon)
        #expect(inheritedTheme.quantityInput.quantityInputSpaceColumnGapLeadingIcon == MockThemeQuantityInputComponentTokenProvider.SpaceSemanticToken)
    }

    @Test func inheritedThemeCanOverrideQuantityInputSpaceColumnGapQuantitySelector() throws {
        #expect(inheritedTheme.quantityInputSpaceColumnGapQuantitySelector.quantityInputSpaceColumnGapLeadingIcon != abstractTheme.quantityInput.quantityInputSpaceColumnGapQuantitySelector)
        #expect(inheritedTheme.quantityInput.quantityInputSpaceColumnGapQuantitySelector == MockThemeQuantityInputComponentTokenProvider.SpaceSemanticToken)
    }

    // MARK: - Sizes

    @Test func inheritedThemeCanOverrideQuantityInputSizeMinWidth() throws {
        #expect(inheritedTheme.quantityInput.quantityInputSizeMinWidth != abstractTheme.quantityInput.quantityInputSizeMinWidth)
        #expect(inheritedTheme.quantityInput.quantityInputSizeMinWidth == quantityInputBorderWidthDefaultInteraction.mockThemeQuantityInputSize)
    }

    @Test func inheritedThemeCanOverrideQuantityInputSizeMaxWidth() throws {
        #expect(inheritedTheme.quantityInput.quantityInputSizeMaxWidth != abstractTheme.quantityInput.quantityInputSizeMaxWidth)
        #expect(inheritedTheme.quantityInput.quantityInputSizeMaxWidth == quantityInputBorderWidthDefaultInteraction.mockThemeQuantityInputSpace)
    }
}
