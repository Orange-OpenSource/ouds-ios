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

struct ThemeOverrideOfTextAreaComponentTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Spaces

    @Test func inheritedThemeCanOverrideTextAreaSpacePaddingBlock() throws {
        #expect(inheritedTheme.textArea.spacePaddingBlock != abstractTheme.textArea.spacePaddingBlock)
        #expect(inheritedTheme.textArea.spacePaddingBlock == MockThemeTextAreaComponentTokenProvider.mockThemeTextAreaSpace)
    }

    // MARK: - Sizes

    @Test func inheritedThemeCanOverrideTextAreaSizeMinHeightInput() throws {
        #expect(inheritedTheme.textArea.sizeMinHeightInput != abstractTheme.textArea.sizeMinHeightInput)
        #expect(inheritedTheme.textArea.sizeMinHeightInput == MockThemeTextAreaComponentTokenProvider.mockThemeTextAreaSize)
    }

    @Test func inheritedThemeCanOverrideTextAreaSizeMaxHeightInput() throws {
        #expect(inheritedTheme.textArea.sizeMaxHeightInput != abstractTheme.textArea.sizeMaxHeightInput)
        #expect(inheritedTheme.textArea.sizeMaxHeightInput == MockThemeTextAreaComponentTokenProvider.mockThemeTextAreaSize)
    }

    @Test func inheritedThemeCanOverrideTextAreaSizeMaxHeightAssetsContainer() throws {
        #expect(inheritedTheme.textArea.sizeMaxHeightAssetsContainer != abstractTheme.textArea.sizeMaxHeightAssetsContainer)
        #expect(inheritedTheme.textArea.sizeMaxHeightAssetsContainer == MockThemeTextAreaComponentTokenProvider.mockThemeTextAreaSize)
    }

    @Test func inheritedThemeCanOverrideTextAreaSizeMaxWidth() throws {
        #expect(inheritedTheme.textArea.sizeMaxWidth != abstractTheme.textArea.sizeMaxWidth)
        #expect(inheritedTheme.textArea.sizeMaxWidth == MockThemeTextAreaComponentTokenProvider.mockThemeTextAreaSize)
    }
}

// swiftlint:enable type_name
