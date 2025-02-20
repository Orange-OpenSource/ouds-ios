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

struct ThemeOverrideOfInputTextComponentTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Sizes

    @Test func inheritedThemeCanOverrideInputTextComponentTokenSizeMinWidth() throws {
        #expect(inheritedTheme.inputText.inputTextSizeMinWidth != abstractTheme.inputText.inputTextSizeMinWidth)
        #expect(inheritedTheme.inputText.inputTextSizeMinWidth == MockThemeInputTextComponentTokenProvider.mockThemeInputTextSize)
    }

    @Test func inheritedThemeCanOverrideInputTextComponentTokenSizeMaxWidth() throws {
        #expect(inheritedTheme.inputText.inputTextSizeMaxWidth != abstractTheme.inputText.inputTextSizeMaxWidth)
        #expect(inheritedTheme.inputText.inputTextSizeMaxWidth == MockThemeInputTextComponentTokenProvider.mockThemeInputTextSize)
    }

    // MARK: - Colors

    @Test func inheritedThemeCanOverrideInputTextComponentTokenColorBgDefaultEnabled() throws {
        #expect(inheritedTheme.inputText.inputTextColorBgDefaultEnabled != abstractTheme.inputText.inputTextColorBgDefaultEnabled)
        #expect(inheritedTheme.inputText.inputTextColorBgDefaultEnabled == MockThemeInputTextComponentTokenProvider.mockThemeInputTextColor)
    }

    @Test func inheritedThemeCanOverrideInputTextComponentTokenColorBgDefaultHover() throws {
        #expect(inheritedTheme.inputText.inputTextColorBgDefaultHover != abstractTheme.inputText.inputTextColorBgDefaultHover)
        #expect(inheritedTheme.inputText.inputTextColorBgDefaultHover == MockThemeInputTextComponentTokenProvider.mockThemeInputTextColor)
    }

    @Test func inheritedThemeCanOverrideInputTextComponentTokenColorBgDefaultPressed() throws {
        #expect(inheritedTheme.inputText.inputTextColorBgDefaultPressed != abstractTheme.inputText.inputTextColorBgDefaultPressed)
        #expect(inheritedTheme.inputText.inputTextColorBgDefaultPressed == MockThemeInputTextComponentTokenProvider.mockThemeInputTextColor)
    }

    @Test func inheritedThemeCanOverrideInputTextComponentTokenColorBgDefaultLoading() throws {
        #expect(inheritedTheme.inputText.inputTextColorBgDefaultLoading != abstractTheme.inputText.inputTextColorBgDefaultLoading)
        #expect(inheritedTheme.inputText.inputTextColorBgDefaultLoading == MockThemeInputTextComponentTokenProvider.mockThemeInputTextColor)
    }

    @Test func inheritedThemeCanOverrideInputTextComponentTokenColorBgDefaultDisabled() throws {
        #expect(inheritedTheme.inputText.inputTextColorBgDefaultDisabled != abstractTheme.inputText.inputTextColorBgDefaultDisabled)
        #expect(inheritedTheme.inputText.inputTextColorBgDefaultDisabled == MockThemeInputTextComponentTokenProvider.mockThemeInputTextColor)
    }

    @Test func inheritedThemeCanOverrideInputTextComponentTokenColorBgDefaultFocus() throws {
        #expect(inheritedTheme.inputText.inputTextColorBgDefaultFocus != abstractTheme.inputText.inputTextColorBgDefaultFocus)
        #expect(inheritedTheme.inputText.inputTextColorBgDefaultFocus == MockThemeInputTextComponentTokenProvider.mockThemeInputTextColor)
    }

    @Test func inheritedThemeCanOverrideInputTextComponentTokenColorContentDefaultEnabled() throws {
        #expect(inheritedTheme.inputText.inputTextColorContentDefaultEnabled != abstractTheme.inputText.inputTextColorContentDefaultEnabled)
        #expect(inheritedTheme.inputText.inputTextColorContentDefaultEnabled == MockThemeInputTextComponentTokenProvider.mockThemeInputTextColor)
    }

    @Test func inheritedThemeCanOverrideInputTextComponentTokenColorContentDefaultHover() throws {
        #expect(inheritedTheme.inputText.inputTextColorContentDefaultHover != abstractTheme.inputText.inputTextColorContentDefaultHover)
        #expect(inheritedTheme.inputText.inputTextColorContentDefaultHover == MockThemeInputTextComponentTokenProvider.mockThemeInputTextColor)
    }

    @Test func inheritedThemeCanOverrideInputTextComponentTokenColorContentDefaultPressed() throws {
        #expect(inheritedTheme.inputText.inputTextColorContentDefaultPressed != abstractTheme.inputText.inputTextColorContentDefaultPressed)
        #expect(inheritedTheme.inputText.inputTextColorContentDefaultPressed == MockThemeInputTextComponentTokenProvider.mockThemeInputTextColor)
    }

    @Test func inheritedThemeCanOverrideInputTextComponentTokenColorContentDefaultLoading() throws {
        #expect(inheritedTheme.inputText.inputTextColorContentDefaultLoading != abstractTheme.inputText.inputTextColorContentDefaultLoading)
        #expect(inheritedTheme.inputText.inputTextColorContentDefaultLoading == MockThemeInputTextComponentTokenProvider.mockThemeInputTextColor)
    }

    @Test func inheritedThemeCanOverrideInputTextComponentTokenColorContentDefaultDisabled() throws {
        #expect(inheritedTheme.inputText.inputTextColorContentDefaultDisabled != abstractTheme.inputText.inputTextColorContentDefaultDisabled)
        #expect(inheritedTheme.inputText.inputTextColorContentDefaultDisabled == MockThemeInputTextComponentTokenProvider.mockThemeInputTextColor)
    }

    @Test func inheritedThemeCanOverrideInputTextComponentTokenColorContentDefaultFocus() throws {
        #expect(inheritedTheme.inputText.inputTextColorContentDefaultFocus != abstractTheme.inputText.inputTextColorContentDefaultFocus)
        #expect(inheritedTheme.inputText.inputTextColorContentDefaultFocus == MockThemeInputTextComponentTokenProvider.mockThemeInputTextColor)
    }

    // MARK: - Spaces

    @Test func inheritedThemeCanOverrideInputTextComponentTokenSpaceInsetIconAlone() throws {
        #expect(inheritedTheme.inputText.inputTextSpaceInsetIconAlone != abstractTheme.inputText.inputTextSpaceInsetIconAlone)
        #expect(inheritedTheme.inputText.inputTextSpaceInsetIconAlone == MockThemeInputTextComponentTokenProvider.mockThemeInputTextSpace)
    }

    @Test func inheritedThemeCanOverrideInputTextComponentTokenSpacePaddingBlock() throws {
        #expect(inheritedTheme.inputText.inputTextSpacePaddingBlock != abstractTheme.inputText.inputTextSpacePaddingBlock)
        #expect(inheritedTheme.inputText.inputTextSpacePaddingBlock == MockThemeInputTextComponentTokenProvider.mockThemeInputTextSpace)
    }

    @Test func inheritedThemeCanOverrideInputTextComponentTokenSpacePaddingInlineContainerStart() throws {
        #expect(inheritedTheme.inputText.inputTextSpacePaddingInlineContainerStart != abstractTheme.inputText.inputTextSpacePaddingInlineContainerStart)
        #expect(inheritedTheme.inputText.inputTextSpacePaddingInlineContainerStart == MockThemeInputTextComponentTokenProvider.mockThemeInputTextSpace)
    }

    @Test func inheritedThemeCanOverrideInputTextComponentTokenSpacePaddingInlineContainerEnd() throws {
        #expect(inheritedTheme.inputText.inputTextSpacePaddingInlineContainerEnd != abstractTheme.inputText.inputTextSpacePaddingInlineContainerEnd)
        #expect(inheritedTheme.inputText.inputTextSpacePaddingInlineContainerEnd == MockThemeInputTextComponentTokenProvider.mockThemeInputTextSpace)
    }

    @Test func inheritedThemeCanOverrideInputTextComponentTokenSpacePaddingInlineTextEnd() throws {
        #expect(inheritedTheme.inputText.inputTextSpacePaddingInlineTextEnd != abstractTheme.inputText.inputTextSpacePaddingInlineTextEnd)
        #expect(inheritedTheme.inputText.inputTextSpacePaddingInlineTextEnd == MockThemeInputTextComponentTokenProvider.mockThemeInputTextSpace)
    }

    @Test func inheritedThemeCanOverrideInputTextComponentTokenSpacePaddingInlinePrefixTextEnd() throws {
        #expect(inheritedTheme.inputText.inputTextSpacePaddingInlinePrefixTextEnd != abstractTheme.inputText.inputTextSpacePaddingInlinePrefixTextEnd)
        #expect(inheritedTheme.inputText.inputTextSpacePaddingInlinePrefixTextEnd == MockThemeInputTextComponentTokenProvider.mockThemeInputTextSpace)
    }

    @Test func inheritedThemeCanOverrideInputTextComponentTokenSpacePaddingInlineSuffixTextEnd() throws {
        #expect(inheritedTheme.inputText.inputTextSpacePaddingInlineSuffixTextEnd != abstractTheme.inputText.inputTextSpacePaddingInlineSuffixTextEnd)
        #expect(inheritedTheme.inputText.inputTextSpacePaddingInlineSuffixTextEnd == MockThemeInputTextComponentTokenProvider.mockThemeInputTextSpace)
    }

    @Test func inheritedThemeCanOverrideInputTextComponentTokenSpacePaddingInlineIconEnd() throws {
        #expect(inheritedTheme.inputText.inputTextSpacePaddingInlineIconEnd != abstractTheme.inputText.inputTextSpacePaddingInlineIconEnd)
        #expect(inheritedTheme.inputText.inputTextSpacePaddingInlineIconEnd == MockThemeInputTextComponentTokenProvider.mockThemeInputTextSpace)
    }
}

// swiftlint:enable type_name
