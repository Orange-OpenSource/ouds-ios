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

struct ThemeOverrideOfTextAreaComponentTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Colors

    @Test func inheritedThemeCanOverrideTextAreaColorBorderEnabled() throws {
        #expect(inheritedTheme.textArea.colorBorderEnabled != abstractTheme.textArea.colorBorderEnabled)
        #expect(inheritedTheme.textArea.colorBorderEnabled == MockThemeTextAreaComponentTokenProvider.mockThemeTextAreaColor)
    }

    @Test func inheritedThemeCanOverrideTextAreaColorBorderHover() throws {
        #expect(inheritedTheme.textArea.colorBorderHover != abstractTheme.textArea.colorBorderHover)
        #expect(inheritedTheme.textArea.colorBorderHover == MockThemeTextAreaComponentTokenProvider.mockThemeTextAreaColor)
    }

    @Test func inheritedThemeCanOverrideTextAreaColorBorderFocus() throws {
        #expect(inheritedTheme.textArea.colorBorderFocus != abstractTheme.textArea.colorBorderFocus)
        #expect(inheritedTheme.textArea.colorBorderFocus == MockThemeTextAreaComponentTokenProvider.mockThemeTextAreaColor)
    }

    // MARK: - Borders

    @Test func inheritedThemeCanOverrideTextAreaBorderRadiusDefault() throws {
        #expect(inheritedTheme.textArea.borderRadiusDefault != abstractTheme.textArea.borderRadiusDefault)
        #expect(inheritedTheme.textArea.borderRadiusDefault == MockThemeTextAreaComponentTokenProvider.mockThemeTextAreaBorderRadius)
    }

    @Test func inheritedThemeCanOverrideTextAreaBorderWidthDefault() throws {
        #expect(inheritedTheme.textArea.borderWidthDefault != abstractTheme.textArea.borderWidthDefault)
        #expect(inheritedTheme.textArea.borderWidthDefault == MockThemeTextAreaComponentTokenProvider.mockThemeTextAreaBorderWidth)
    }

    @Test func inheritedThemeCanOverrideTextAreaBorderWidthFocus() throws {
        #expect(inheritedTheme.textArea.borderWidthFocus != abstractTheme.textArea.borderWidthFocus)
        #expect(inheritedTheme.textArea.borderWidthFocus == MockThemeTextAreaComponentTokenProvider.mockThemeTextAreaBorderWidth)
    }

    // MARK: - Spaces

    @Test func inheritedThemeCanOverrideTextAreaSpacePaddingInlineDefault() throws {
        #expect(inheritedTheme.textArea.spacePaddingInlineDefault != abstractTheme.textArea.spacePaddingInlineDefault)
        #expect(inheritedTheme.textArea.spacePaddingInlineDefault == MockThemeTextAreaComponentTokenProvider.mockThemeTextAreaSpace)
    }

    @Test func inheritedThemeCanOverrideTextAreaSpacePaddingBlock() throws {
        #expect(inheritedTheme.textArea.spacePaddingBlock != abstractTheme.textArea.spacePaddingBlock)
        #expect(inheritedTheme.textArea.spacePaddingBlock == MockThemeTextAreaComponentTokenProvider.mockThemeTextAreaSpace)
    }

    @Test func inheritedThemeCanOverrideTextAreaSpacePaddingBlockTopHelperText() throws {
        #expect(inheritedTheme.textArea.spacePaddingBlockTopHelperText != abstractTheme.textArea.spacePaddingBlockTopHelperText)
        #expect(inheritedTheme.textArea.spacePaddingBlockTopHelperText == MockThemeTextAreaComponentTokenProvider.mockThemeTextAreaSpace)
    }

    @Test func inheritedThemeCanOverrideTextAreaSpaceRowGapLabelInput() throws {
        #expect(inheritedTheme.textArea.spaceRowGapLabelInput != abstractTheme.textArea.spaceRowGapLabelInput)
        #expect(inheritedTheme.textArea.spaceRowGapLabelInput == MockThemeTextAreaComponentTokenProvider.mockThemeTextAreaSpace)
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

    @Test func inheritedThemeCanOverrideTextAreaSizeMinWidth() throws {
        #expect(inheritedTheme.textArea.sizeMinWidth != abstractTheme.textArea.sizeMinWidth)
        #expect(inheritedTheme.textArea.sizeMinWidth == MockThemeTextAreaComponentTokenProvider.mockThemeTextAreaSize)
    }

    @Test func inheritedThemeCanOverrideTextAreaSizeMaxWidth() throws {
        #expect(inheritedTheme.textArea.sizeMaxWidth != abstractTheme.textArea.sizeMaxWidth)
        #expect(inheritedTheme.textArea.sizeMaxWidth == MockThemeTextAreaComponentTokenProvider.mockThemeTextAreaSize)
    }
}

// swiftlint:enable type_name
