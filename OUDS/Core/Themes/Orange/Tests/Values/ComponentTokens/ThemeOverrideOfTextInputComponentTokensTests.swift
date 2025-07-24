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

struct ThemeOverrideOfTextInputComponentTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Sizes

    @Test func inheritedThemeCanOverrideTextInputSizeVerticalDividerHeight() throws {
        #expect(inheritedTheme.textInput.textInputSizeVerticalDividerHeight != abstractTheme.textInput.textInputSizeVerticalDividerHeight)
        #expect(inheritedTheme.textInput.textInputSizeVerticalDividerHeight == MockThemeTextInputComponentTokenProvider.mockThemeTextInputSize)
    }

    @Test func inheritedThemeCanOverrideTextInputSizeLabelMaxHeight() throws {
        #expect(inheritedTheme.textInput.textInputSizeLabelMaxHeight != abstractTheme.textInput.textInputSizeLabelMaxHeight)
        #expect(inheritedTheme.textInput.textInputSizeLabelMaxHeight == MockThemeTextInputComponentTokenProvider.mockThemeTextInputSize)
    }

    @Test func inheritedThemeCanOverrideTextInputSizeMinHeight() throws {
        #expect(inheritedTheme.textInput.textInputSizeMinHeight != abstractTheme.textInput.textInputSizeMinHeight)
        #expect(inheritedTheme.textInput.textInputSizeMinHeight == MockThemeTextInputComponentTokenProvider.mockThemeTextInputSize)
    }

    @Test func inheritedThemeCanOverrideTextInputSizeMinWidth() throws {
        #expect(inheritedTheme.textInput.textInputSizeMinWidth != abstractTheme.textInput.textInputSizeMinWidth)
        #expect(inheritedTheme.textInput.textInputSizeMinWidth == MockThemeTextInputComponentTokenProvider.mockThemeTextInputSize)
    }

    @Test func inheritedThemeCanOverrideTextInputSizeMaxWidth() throws {
        #expect(inheritedTheme.textInput.textInputSizeMaxWidth != abstractTheme.textInput.textInputSizeMaxWidth)
        #expect(inheritedTheme.textInput.textInputSizeMaxWidth == MockThemeTextInputComponentTokenProvider.mockThemeTextInputSize)
    }

    // MARK: - Colors

    @Test func inheritedThemeCanOverrideTextInputColorBorderEnabled() throws {
        #expect(inheritedTheme.textInput.textInputColorBorderEnabled != abstractTheme.textInput.textInputColorBorderEnabled)
        #expect(inheritedTheme.textInput.textInputColorBorderEnabled == MockThemeTextInputComponentTokenProvider.mockThemeTextInputColor)
    }

    @Test func inheritedThemeCanOverrideTextInputColorBorderHover() throws {
        #expect(inheritedTheme.textInput.textInputColorBorderHover != abstractTheme.textInput.textInputColorBorderHover)
        #expect(inheritedTheme.textInput.textInputColorBorderHover == MockThemeTextInputComponentTokenProvider.mockThemeTextInputColor)
    }

    @Test func inheritedThemeCanOverrideTextInputColorBorderFocus() throws {
        #expect(inheritedTheme.textInput.textInputColorBorderFocus != abstractTheme.textInput.textInputColorBorderFocus)
        #expect(inheritedTheme.textInput.textInputColorBorderFocus == MockThemeTextInputComponentTokenProvider.mockThemeTextInputColor)
    }

    @Test func inheritedThemeCanOverrideTextInputColorBorderLoading() throws {
        #expect(inheritedTheme.textInput.textInputColorBorderLoading != abstractTheme.textInput.textInputColorBorderLoading)
        #expect(inheritedTheme.textInput.textInputColorBorderLoading == MockThemeTextInputComponentTokenProvider.mockThemeTextInputColor)
    }

    // MARK: - Borders

    @Test func inheritedThemeCanOverrideTextInputBorderRadiusDefault() throws {
        #expect(inheritedTheme.textInput.textInputBorderRadiusDefault != abstractTheme.textInput.textInputBorderRadiusDefault)
        #expect(inheritedTheme.textInput.textInputBorderRadiusDefault == MockThemeTextInputComponentTokenProvider.mockThemeTextInputBorderRadius)
    }

    @Test func inheritedThemeCanOverrideTextInputBorderRadiusRounded() throws {
        #expect(inheritedTheme.textInput.textInputBorderRadiusRounded != abstractTheme.textInput.textInputBorderRadiusRounded)
        #expect(inheritedTheme.textInput.textInputBorderRadiusRounded == MockThemeTextInputComponentTokenProvider.mockThemeTextInputBorderRadius)
    }

    @Test func inheritedThemeCanOverrideTextInputBorderRadiusDefault() throws {
        #expect(inheritedTheme.textInput.textInputBorderWidthDefault != abstractTheme.textInput.textInputBorderWidthDefault)
        #expect(inheritedTheme.textInput.textInputBorderWidthDefault == MockThemeTextInputComponentTokenProvider.mockThemeTextInputBorderWidth)
    }

    @Test func inheritedThemeCanOverrideTextInputBorderRadiusWidthFocus() throws {
        #expect(inheritedTheme.textInput.textInputBorderWidthFocus != abstractTheme.textInput.textInputBorderWidthFocus)
        #expect(inheritedTheme.textInput.textInputBorderWidthFocus == MockThemeTextInputComponentTokenProvider.mockThemeTextInputBorderWidth)
    }

    // MARK: - Spaces

    @Test func inheritedThemeCanOverrideTextInputSpacePaddingInlineDefault() throws {
        #expect(inheritedTheme.textInput.textInputSpacePaddingInlineDefault != abstractTheme.textInput.textInputSpacePaddingInlineDefault)
        #expect(inheritedTheme.textInput.textInputSpacePaddingInlineDefault == MockThemeTextInputComponentTokenProvider.mockThemeTextInputSpace)
    }

    @Test func inheritedThemeCanOverrideTextInputSpacePaddingInlineButton() throws {
        #expect(inheritedTheme.textInput.textInputSpacePaddingInlineButton != abstractTheme.textInput.textInputSpacePaddingInlineButton)
        #expect(inheritedTheme.textInput.textInputSpacePaddingInlineButton == MockThemeTextInputComponentTokenProvider.mockThemeTextInputSpace)
    }

    @Test func inheritedThemeCanOverrideTextInputSpacePaddingInlineCountrySelectorStart() throws {
        #expect(inheritedTheme.textInput.textInputSpacePaddingInlineCountrySelectorStart != abstractTheme.textInput.textInputSpacePaddingInlineCountrySelectorStart)
        #expect(inheritedTheme.textInput.textInputSpacePaddingInlineCountrySelectorStart == MockThemeTextInputComponentTokenProvider.mockThemeTextInputSpace)
    }

    @Test func inheritedThemeCanOverrideTextInputSpacePaddingInlineCountrySelectorEnd() throws {
        #expect(inheritedTheme.textInput.textInputSpacePaddingInlineCountrySelectorEnd != abstractTheme.textInput.textInputSpacePaddingInlineCountrySelectorEnd)
        #expect(inheritedTheme.textInput.textInputSpacePaddingInlineCountrySelectorEnd == MockThemeTextInputComponentTokenProvider.mockThemeTextInputSpace)
    }

    @Test func inheritedThemeCanOverrideTextInputSpacePaddingInlineBlockDefault() throws {
        #expect(inheritedTheme.textInput.textInputSpacePaddingBlockDefault != abstractTheme.textInput.textInputSpacePaddingBlockDefault)
        #expect(inheritedTheme.textInput.textInputSpacePaddingBlockDefault == MockThemeTextInputComponentTokenProvider.mockThemeTextInputSpace)
    }

    @Test func inheritedThemeCanOverrideTextInputSpacePaddingBlockTopHelperText() throws {
        #expect(inheritedTheme.textInput.textInputSpacePaddingBlockTopHelperText != abstractTheme.textInput.textInputSpacePaddingBlockTopHelperText)
        #expect(inheritedTheme.textInput.textInputSpacePaddingBlockTopHelperText == MockThemeTextInputComponentTokenProvider.mockThemeTextInputSpace)
    }

    @Test func inheritedThemeCanOverrideTextInputSpaceColumnGapDefault() throws {
        #expect(inheritedTheme.textInput.textInputSpaceColumnGapDefault != abstractTheme.textInput.textInputSpaceColumnGapDefault)
        #expect(inheritedTheme.textInput.textInputSpaceColumnGapDefault == MockThemeTextInputComponentTokenProvider.mockThemeTextInputSpace)
    }

    @Test func inheritedThemeCanOverrideTextInputSpaceColumnGapInlineText() throws {
        #expect(inheritedTheme.textInput.textInputSpaceColumnGapInlineText != abstractTheme.textInput.textInputSpaceColumnGapInlineText)
        #expect(inheritedTheme.textInput.textInputSpaceColumnGapInlineText == MockThemeTextInputComponentTokenProvider.mockThemeTextInputSpace)
    }

    @Test func inheritedThemeCanOverrideTextInputSpaceColumnGapTrailingErrorIcon() throws {
        #expect(inheritedTheme.textInput.textInputSpaceColumnGapTrailingErrorIcon != abstractTheme.textInput.textInputSpaceColumnGapTrailingErrorIcon)
        #expect(inheritedTheme.textInput.textInputSpaceColumnGapTrailingErrorIcon == MockThemeTextInputComponentTokenProvider.mockThemeTextInputSpace)
    }

    @Test func inheritedThemeCanOverrideTextInputSpaceColumnGapLabelInput() throws {
        #expect(inheritedTheme.textInput.textInputSpaceRowGapLabelInput != abstractTheme.textInput.textInputSpaceRowGapLabelInput)
        #expect(inheritedTheme.textInput.textInputSpaceRowGapLabelInput == MockThemeTextInputComponentTokenProvider.mockThemeTextInputSpace)
    }
}

// swiftlint:enable type_name
