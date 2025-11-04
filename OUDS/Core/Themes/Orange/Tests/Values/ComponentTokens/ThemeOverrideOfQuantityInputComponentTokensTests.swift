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

struct ThemeOverrideOfQuantityInputComponentTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Borders

    @Test func inheritedThemeCanOverrideQuantityInputSpaceColumnGapDefault() throws {
        #expect(inheritedTheme.quantityInput.spaceColumnGapDefault != abstractTheme.quantityInput.spaceColumnGapDefault)
        #expect(inheritedTheme.quantityInput.spaceColumnGapDefault == MockThemeQuantityInputComponentTokenProvider.mockThemeQuantityInputSpace)
    }

    @Test func inheritedThemeCanOverrideQuantityInputSpaceColumnGapLeadingIcon() throws {
        #expect(inheritedTheme.quantityInput.spaceColumnGapLeadingIcon != abstractTheme.quantityInput.spaceColumnGapLeadingIcon)
        #expect(inheritedTheme.quantityInput.spaceColumnGapLeadingIcon == MockThemeQuantityInputComponentTokenProvider.mockThemeQuantityInputSpace)
    }

    @Test func inheritedThemeCanOverrideQuantityInputSpaceColumnGapQuantitySelector() throws {
        #expect(inheritedTheme.quantityInput.spaceColumnGapLeadingIcon != abstractTheme.quantityInput.spaceColumnGapQuantitySelector)
        #expect(inheritedTheme.quantityInput.spaceColumnGapQuantitySelector == MockThemeQuantityInputComponentTokenProvider.mockThemeQuantityInputSpace)
    }

    // MARK: - Sizes

    @Test func inheritedThemeCanOverrideQuantityInputSizeMinWidth() throws {
        #expect(inheritedTheme.quantityInput.sizeMinWidth != abstractTheme.quantityInput.sizeMinWidth)
        #expect(inheritedTheme.quantityInput.sizeMinWidth == MockThemeQuantityInputComponentTokenProvider.mockThemeQuantityInputSize)
    }

    @Test func inheritedThemeCanOverrideQuantityInputSizeMaxWidth() throws {
        #expect(inheritedTheme.quantityInput.sizeMaxWidth != abstractTheme.quantityInput.sizeMaxWidth)
        #expect(inheritedTheme.quantityInput.sizeMaxWidth == MockThemeQuantityInputComponentTokenProvider.mockThemeQuantityInputSize)
    }
}

// swiftlint:enable type_name
