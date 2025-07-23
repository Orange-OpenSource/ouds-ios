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

struct ThemeOverrideOfTextAreaComponentTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Spaces

    @Test func inheritedThemeCanOverrideTextAreaSpacePaddingBlock() throws {
        #expect(inheritedTheme.textArea.textAreaSpacePaddingBlock != abstractTheme.textArea.textAreaSpacePaddingBlock)
        #expect(inheritedTheme.textArea.textAreaSpacePaddingBlock == MockThemeTextAreaComponentTokenProvider.mockThemeTextAreaSpace)
    }

    // MARK: - Sizes

    @Test func inheritedThemeCanOverrideTextAreaSizeMinHeightInput() throws {
        #expect(inheritedTheme.textArea.textAreaSizeMinHeightInput != abstractTheme.textArea.textAreaSizeMinHeightInput)
        #expect(inheritedTheme.textArea.textAreaSizeMinHeightInput == MockThemeTextAreaComponentTokenProvider.mockThemeTextAreaSize)
    }

    @Test func inheritedThemeCanOverrideTextAreaSizeMaxHeightInput() throws {
        #expect(inheritedTheme.textArea.textAreaSizeMaxHeightInput != abstractTheme.textArea.textAreaSizeMaxHeightInput)
        #expect(inheritedTheme.textArea.textAreaSizeMaxHeightInput == MockThemeTextAreaComponentTokenProvider.mockThemeTextAreaSize)
    }

    @Test func inheritedThemeCanOverrideTextAreaSizeMaxHeightAssetsContainer() throws {
        #expect(inheritedTheme.textArea.textAreaSizeMaxHeightAssetsContainer != abstractTheme.textArea.textAreaSizeMaxHeightAssetsContainer)
        #expect(inheritedTheme.textArea.textAreaSizeMaxHeightAssetsContainer == MockThemeTextAreaComponentTokenProvider.mockThemeTextAreaSize)
    }

    @Test func inheritedThemeCanOverrideTextAreaSizeMaxWidth() throws {
        #expect(inheritedTheme.textArea.textAreaSizeMaxWidth != abstractTheme.textArea.textAreaSizeMaxWidth)
        #expect(inheritedTheme.textArea.textAreaSizeMaxWidth == MockThemeTextAreaComponentTokenProvider.mockThemeTextAreaSize)
    }
}
