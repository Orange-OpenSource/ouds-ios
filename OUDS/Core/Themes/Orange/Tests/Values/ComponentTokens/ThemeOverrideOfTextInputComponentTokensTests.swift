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

struct ThemeOverrideOfTextInputComponentTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Sizes

    @Test func inheritedThemeCanOverrideTextInputSizeLeadingIcon() throws {
        #expect(inheritedTheme.textInput.sizeLeadingIcon != abstractTheme.textInput.sizeLeadingIcon)
        #expect(inheritedTheme.textInput.sizeLeadingIcon == MockThemeTextInputComponentTokenProvider.mockThemeTextInputSize)
    }

    @Test func inheritedThemeCanOverrideTextInputSizeCountrySelectorFlagHeight() throws {
        #expect(inheritedTheme.textInput.sizeCountrySelectorFlagHeight != abstractTheme.textInput.sizeCountrySelectorFlagHeight)
        #expect(inheritedTheme.textInput.sizeCountrySelectorFlagHeight == MockThemeTextInputComponentTokenProvider.mockThemeTextInputSize)
    }

    @Test func inheritedThemeCanOverrideTextInputSizeVerticalDividerHeight() throws {
        #expect(inheritedTheme.textInput.sizeVerticalDividerHeight != abstractTheme.textInput.sizeVerticalDividerHeight)
        #expect(inheritedTheme.textInput.sizeVerticalDividerHeight == MockThemeTextInputComponentTokenProvider.mockThemeTextInputSize)
    }

    @Test func inheritedThemeCanOverrideTextInputSizeLabelMaxHeight() throws {
        #expect(inheritedTheme.textInput.sizeLabelMaxHeight != abstractTheme.textInput.sizeLabelMaxHeight)
        #expect(inheritedTheme.textInput.sizeLabelMaxHeight == MockThemeTextInputComponentTokenProvider.mockThemeTextInputSize)
    }

    @Test func inheritedThemeCanOverrideTextInputSizeMinHeight() throws {
        #expect(inheritedTheme.textInput.sizeMinHeight != abstractTheme.textInput.sizeMinHeight)
        #expect(inheritedTheme.textInput.sizeMinHeight == MockThemeTextInputComponentTokenProvider.mockThemeTextInputSize)
    }

    @Test func inheritedThemeCanOverrideTextInputSizeMinWidth() throws {
        #expect(inheritedTheme.textInput.sizeMinWidth != abstractTheme.textInput.sizeMinWidth)
        #expect(inheritedTheme.textInput.sizeMinWidth == MockThemeTextInputComponentTokenProvider.mockThemeTextInputSize)
    }

    @Test func inheritedThemeCanOverrideTextInputSizeMaxWidth() throws {
        #expect(inheritedTheme.textInput.sizeMaxWidth != abstractTheme.textInput.sizeMaxWidth)
        #expect(inheritedTheme.textInput.sizeMaxWidth == MockThemeTextInputComponentTokenProvider.mockThemeTextInputSize)
    }

    // MARK: - Colors

    @Test func inheritedThemeCanOverrideTextInputColorBorderEnabled() throws {
        #expect(inheritedTheme.textInput.colorBorderEnabled != abstractTheme.textInput.colorBorderEnabled)
        #expect(inheritedTheme.textInput.colorBorderEnabled == MockThemeTextInputComponentTokenProvider.mockThemeTextInputColor)
    }

    @Test func inheritedThemeCanOverrideTextInputColorBorderHover() throws {
        #expect(inheritedTheme.textInput.colorBorderHover != abstractTheme.textInput.colorBorderHover)
        #expect(inheritedTheme.textInput.colorBorderHover == MockThemeTextInputComponentTokenProvider.mockThemeTextInputColor)
    }

    @Test func inheritedThemeCanOverrideTextInputColorBorderFocus() throws {
        #expect(inheritedTheme.textInput.colorBorderFocus != abstractTheme.textInput.colorBorderFocus)
        #expect(inheritedTheme.textInput.colorBorderFocus == MockThemeTextInputComponentTokenProvider.mockThemeTextInputColor)
    }

    @Test func inheritedThemeCanOverrideTextInputColorBorderLoading() throws {
        #expect(inheritedTheme.textInput.colorBorderLoading != abstractTheme.textInput.colorBorderLoading)
        #expect(inheritedTheme.textInput.colorBorderLoading == MockThemeTextInputComponentTokenProvider.mockThemeTextInputColor)
    }

    // MARK: - Borders

    @Test func inheritedThemeCanOverrideTextInputBorderRadiusDefault() throws {
        #expect(inheritedTheme.textInput.borderRadiusDefault != abstractTheme.textInput.borderRadiusDefault)
        #expect(inheritedTheme.textInput.borderRadiusDefault == MockThemeTextInputComponentTokenProvider.mockThemeTextInputBorderRadius)
    }

    @Test func inheritedThemeCanOverrideTextInputBorderRadiusRounded() throws {
        #expect(inheritedTheme.textInput.borderRadiusRounded != abstractTheme.textInput.borderRadiusRounded)
        #expect(inheritedTheme.textInput.borderRadiusRounded == MockThemeTextInputComponentTokenProvider.mockThemeTextInputBorderRadius)
    }

    @Test func inheritedThemeCanOverrideTextInputBorderRadiusWidthFocus() throws {
        #expect(inheritedTheme.textInput.borderWidthFocus != abstractTheme.textInput.borderWidthFocus)
        #expect(inheritedTheme.textInput.borderWidthFocus == MockThemeTextInputComponentTokenProvider.mockThemeTextInputBorderWidth)
    }

    // MARK: - Spaces

    @Test func inheritedThemeCanOverrideTextInputSpacePaddingInlineDefault() throws {
        #expect(inheritedTheme.textInput.spacePaddingInlineDefault != abstractTheme.textInput.spacePaddingInlineDefault)
        #expect(inheritedTheme.textInput.spacePaddingInlineDefault == MockThemeTextInputComponentTokenProvider.mockThemeTextInputSpace)
    }

    @Test func inheritedThemeCanOverrideTextInputSpacePaddingInlineTrailingAction() throws {
        #expect(inheritedTheme.textInput.spacePaddingInlineTrailingAction != abstractTheme.textInput.spacePaddingInlineTrailingAction)
        #expect(inheritedTheme.textInput.spacePaddingInlineTrailingAction == MockThemeTextInputComponentTokenProvider.mockThemeTextInputSpace)
    }

    @Test func inheritedThemeCanOverrideTextInputSpacePaddingInlineCountrySelectorStart() throws {
        #expect(inheritedTheme.textInput.spacePaddingInlineCountrySelectorStart != abstractTheme.textInput.spacePaddingInlineCountrySelectorStart)
        #expect(inheritedTheme.textInput.spacePaddingInlineCountrySelectorStart == MockThemeTextInputComponentTokenProvider.mockThemeTextInputSpace)
    }

    @Test func inheritedThemeCanOverrideTextInputSpacePaddingInlineCountrySelectorEnd() throws {
        #expect(inheritedTheme.textInput.spacePaddingInlineCountrySelectorEnd != abstractTheme.textInput.spacePaddingInlineCountrySelectorEnd)
        #expect(inheritedTheme.textInput.spacePaddingInlineCountrySelectorEnd == MockThemeTextInputComponentTokenProvider.mockThemeTextInputSpace)
    }

    @Test func inheritedThemeCanOverrideTextInputSpacePaddingInlineBlockDefault() throws {
        #expect(inheritedTheme.textInput.spacePaddingBlockDefault != abstractTheme.textInput.spacePaddingBlockDefault)
        #expect(inheritedTheme.textInput.spacePaddingBlockDefault == MockThemeTextInputComponentTokenProvider.mockThemeTextInputSpace)
    }

    @Test func inheritedThemeCanOverrideTextInputSpacePaddingBlockTopHelperText() throws {
        #expect(inheritedTheme.textInput.spacePaddingBlockTopHelperText != abstractTheme.textInput.spacePaddingBlockTopHelperText)
        #expect(inheritedTheme.textInput.spacePaddingBlockTopHelperText == MockThemeTextInputComponentTokenProvider.mockThemeTextInputSpace)
    }

    @Test func inheritedThemeCanOverrideTextInputSpaceColumnGapDefault() throws {
        #expect(inheritedTheme.textInput.spaceColumnGapDefault != abstractTheme.textInput.spaceColumnGapDefault)
        #expect(inheritedTheme.textInput.spaceColumnGapDefault == MockThemeTextInputComponentTokenProvider.mockThemeTextInputSpace)
    }

    @Test func inheritedThemeCanOverrideTextInputSpaceColumnGapInlineText() throws {
        #expect(inheritedTheme.textInput.spaceColumnGapInlineText != abstractTheme.textInput.spaceColumnGapInlineText)
        #expect(inheritedTheme.textInput.spaceColumnGapInlineText == MockThemeTextInputComponentTokenProvider.mockThemeTextInputSpace)
    }

    @Test func inheritedThemeCanOverrideTextInputSpaceColumnGapTrailingErrorAction() throws {
        #expect(inheritedTheme.textInput.spaceColumnGapTrailingErrorAction != abstractTheme.textInput.spaceColumnGapTrailingErrorAction)
        #expect(inheritedTheme.textInput.spaceColumnGapTrailingErrorAction == MockThemeTextInputComponentTokenProvider.mockThemeTextInputSpace)
    }

    @Test func inheritedThemeCanOverrideTextInputSpaceColumnGapLabelInput() throws {
        #expect(inheritedTheme.textInput.spaceRowGapLabelInput != abstractTheme.textInput.spaceRowGapLabelInput)
        #expect(inheritedTheme.textInput.spaceRowGapLabelInput == MockThemeTextInputComponentTokenProvider.mockThemeTextInputSpace)
    }
}

// swiftlint:enable type_name
