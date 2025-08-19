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

// swiftlint:disable type_body_length
// swiftlint:disable file_length
// swiftlint:disable type_name

struct ThemeOverrideOfButtonComponentTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonSizeMaxHeightIconOnly() throws {
        #expect(inheritedTheme.button.buttonSizeMaxHeightIconOnly != abstractTheme.button.buttonSizeMaxHeightIconOnly)
        #expect(inheritedTheme.button.buttonSizeMaxHeightIconOnly == MockThemeButtonComponentTokenProvider.mockThemeButtonSize)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonSizeMinHeight() throws {
        #expect(inheritedTheme.button.buttonSizeMinHeight != abstractTheme.button.buttonSizeMinHeight)
        #expect(inheritedTheme.button.buttonSizeMinHeight == MockThemeButtonComponentTokenProvider.mockThemeButtonSize)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonSizeMinWidth() throws {
        #expect(inheritedTheme.button.buttonSizeMinWidth != abstractTheme.button.buttonSizeMinWidth)
        #expect(inheritedTheme.button.buttonSizeMinWidth == MockThemeButtonComponentTokenProvider.mockThemeButtonSize)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonBorderRadiusDefault() throws {
        #expect(inheritedTheme.button.buttonBorderRadiusDefault != abstractTheme.button.buttonBorderRadiusDefault)
        #expect(inheritedTheme.button.buttonBorderRadiusDefault == MockThemeButtonComponentTokenProvider.mockThemeButtonRadius)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonBorderRadiusRounded() throws {
        #expect(inheritedTheme.button.buttonBorderRadiusRounded != abstractTheme.button.buttonBorderRadiusRounded)
        #expect(inheritedTheme.button.buttonBorderRadiusRounded == MockThemeButtonComponentTokenProvider.mockThemeButtonRadius)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonBorderWidthDefault() throws {
        #expect(inheritedTheme.button.buttonBorderWidthDefault != abstractTheme.button.buttonBorderWidthDefault)
        #expect(inheritedTheme.button.buttonBorderWidthDefault == MockThemeButtonComponentTokenProvider.mockThemeButtonWidth)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonBorderWidthDefaultInteraction() throws {
        #expect(inheritedTheme.button.buttonBorderWidthDefaultInteraction != abstractTheme.button.buttonBorderWidthDefaultInteraction)
        #expect(inheritedTheme.button.buttonBorderWidthDefaultInteraction == MockThemeButtonComponentTokenProvider.mockThemeButtonWidth)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonBorderWidthDefaultInteractionMono() throws {
        #expect(inheritedTheme.button.buttonBorderWidthDefaultInteraction != abstractTheme.button.buttonBorderWidthDefaultInteraction)
        #expect(inheritedTheme.button.buttonBorderWidthDefaultInteraction == MockThemeButtonComponentTokenProvider.mockThemeButtonWidth)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBgDefaultFocus() throws {
        #expect(inheritedTheme.button.buttonMonoColorBgDefaultFocus != abstractTheme.button.buttonMonoColorBgDefaultFocus)
        #expect(inheritedTheme.button.buttonMonoColorBgDefaultFocus == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBgDefaultHover() throws {
        #expect(inheritedTheme.button.buttonMonoColorBgDefaultHover != abstractTheme.button.buttonMonoColorBgDefaultHover)
        #expect(inheritedTheme.button.buttonMonoColorBgDefaultHover == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBgDefaultLoading() throws {
        #expect(inheritedTheme.button.buttonMonoColorBgDefaultLoading != abstractTheme.button.buttonMonoColorBgDefaultLoading)
        #expect(inheritedTheme.button.buttonMonoColorBgDefaultLoading == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBgDefaultPressed() throws {
        #expect(inheritedTheme.button.buttonMonoColorBgDefaultPressed != abstractTheme.button.buttonMonoColorBgDefaultPressed)
        #expect(inheritedTheme.button.buttonMonoColorBgDefaultPressed == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBgMinimalFocus() throws {
        #expect(inheritedTheme.button.buttonMonoColorBgMinimalFocus != abstractTheme.button.buttonMonoColorBgMinimalFocus)
        #expect(inheritedTheme.button.buttonMonoColorBgMinimalFocus == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBgMinimalHover() throws {
        #expect(inheritedTheme.button.buttonMonoColorBgMinimalHover != abstractTheme.button.buttonMonoColorBgMinimalHover)
        #expect(inheritedTheme.button.buttonMonoColorBgMinimalHover == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBgMinimalPressed() throws {
        #expect(inheritedTheme.button.buttonMonoColorBgMinimalPressed != abstractTheme.button.buttonMonoColorBgMinimalPressed)
        #expect(inheritedTheme.button.buttonMonoColorBgMinimalPressed == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBgStrongDisabled() throws {
        #expect(inheritedTheme.button.buttonMonoColorBgStrongDisabled != abstractTheme.button.buttonMonoColorBgStrongDisabled)
        #expect(inheritedTheme.button.buttonMonoColorBgStrongDisabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBgStrongEnabled() throws {
        #expect(inheritedTheme.button.buttonMonoColorBgStrongEnabled != abstractTheme.button.buttonMonoColorBgStrongEnabled)
        #expect(inheritedTheme.button.buttonMonoColorBgStrongEnabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBgStrongFocus() throws {
        #expect(inheritedTheme.button.buttonMonoColorBgStrongFocus != abstractTheme.button.buttonMonoColorBgStrongFocus)
        #expect(inheritedTheme.button.buttonMonoColorBgStrongFocus == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBgStrongHover() throws {
        #expect(inheritedTheme.button.buttonMonoColorBgStrongHover != abstractTheme.button.buttonMonoColorBgStrongHover)
        #expect(inheritedTheme.button.buttonMonoColorBgStrongHover == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBgStrongLoading() throws {
        #expect(inheritedTheme.button.buttonMonoColorBgStrongLoading != abstractTheme.button.buttonMonoColorBgStrongLoading)
        #expect(inheritedTheme.button.buttonMonoColorBgStrongLoading == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBgStrongPressed() throws {
        #expect(inheritedTheme.button.buttonMonoColorBgStrongPressed != abstractTheme.button.buttonMonoColorBgStrongPressed)
        #expect(inheritedTheme.button.buttonMonoColorBgStrongPressed == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBorderDefaultDisabled() throws {
        #expect(inheritedTheme.button.buttonMonoColorBorderDefaultDisabled != abstractTheme.button.buttonMonoColorBorderDefaultDisabled)
        #expect(inheritedTheme.button.buttonMonoColorBorderDefaultDisabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBorderDefaultEnabled() throws {
        #expect(inheritedTheme.button.buttonMonoColorBorderDefaultEnabled != abstractTheme.button.buttonMonoColorBorderDefaultEnabled)
        #expect(inheritedTheme.button.buttonMonoColorBorderDefaultEnabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorContentDefaultDisabled() throws {
        #expect(inheritedTheme.button.buttonMonoColorContentDefaultDisabled != abstractTheme.button.buttonMonoColorContentDefaultDisabled)
        #expect(inheritedTheme.button.buttonMonoColorContentDefaultDisabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorContentDefaultEnabled() throws {
        #expect(inheritedTheme.button.buttonMonoColorContentDefaultEnabled != abstractTheme.button.buttonMonoColorContentDefaultEnabled)
        #expect(inheritedTheme.button.buttonMonoColorContentDefaultEnabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorContentDefaultFocus() throws {
        #expect(inheritedTheme.button.buttonMonoColorContentDefaultFocus != abstractTheme.button.buttonMonoColorContentDefaultFocus)
        #expect(inheritedTheme.button.buttonMonoColorContentDefaultFocus == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorContentDefaultHover() throws {
        #expect(inheritedTheme.button.buttonMonoColorContentDefaultHover != abstractTheme.button.buttonMonoColorContentDefaultHover)
        #expect(inheritedTheme.button.buttonMonoColorContentDefaultHover == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorContentDefaultLoading() throws {
        #expect(inheritedTheme.button.buttonMonoColorContentDefaultLoading != abstractTheme.button.buttonMonoColorContentDefaultLoading)
        #expect(inheritedTheme.button.buttonMonoColorContentDefaultLoading == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorContentDefaultPressed() throws {
        #expect(inheritedTheme.button.buttonMonoColorContentDefaultPressed != abstractTheme.button.buttonMonoColorContentDefaultPressed)
        #expect(inheritedTheme.button.buttonMonoColorContentDefaultPressed == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorContentMinimalDisabled() throws {
        #expect(inheritedTheme.button.buttonMonoColorContentMinimalDisabled != abstractTheme.button.buttonMonoColorContentMinimalDisabled)
        #expect(inheritedTheme.button.buttonMonoColorContentMinimalDisabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorContentMinimalEnabled() throws {
        #expect(inheritedTheme.button.buttonMonoColorContentMinimalEnabled != abstractTheme.button.buttonMonoColorContentMinimalEnabled)
        #expect(inheritedTheme.button.buttonMonoColorContentMinimalEnabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorContentMinimalFocus() throws {
        #expect(inheritedTheme.button.buttonMonoColorContentMinimalFocus != abstractTheme.button.buttonMonoColorContentMinimalFocus)
        #expect(inheritedTheme.button.buttonMonoColorContentMinimalFocus == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorContentMinimalHover() throws {
        #expect(inheritedTheme.button.buttonMonoColorContentMinimalHover != abstractTheme.button.buttonMonoColorContentMinimalHover)
        #expect(inheritedTheme.button.buttonMonoColorContentMinimalHover == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorContentMinimalLoading() throws {
        #expect(inheritedTheme.button.buttonMonoColorContentMinimalLoading != abstractTheme.button.buttonMonoColorContentMinimalLoading)
        #expect(inheritedTheme.button.buttonMonoColorContentMinimalLoading == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorContentMinimalPressed() throws {
        #expect(inheritedTheme.button.buttonMonoColorContentMinimalPressed != abstractTheme.button.buttonMonoColorContentMinimalPressed)
        #expect(inheritedTheme.button.buttonMonoColorContentMinimalPressed == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorContentStrongDisabled() throws {
        #expect(inheritedTheme.button.buttonMonoColorContentStrongDisabled != abstractTheme.button.buttonMonoColorContentStrongDisabled)
        #expect(inheritedTheme.button.buttonMonoColorContentStrongDisabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorContentStrongEnabled() throws {
        #expect(inheritedTheme.button.buttonMonoColorContentStrongEnabled != abstractTheme.button.buttonMonoColorContentStrongEnabled)
        #expect(inheritedTheme.button.buttonMonoColorContentStrongEnabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorContentStrongFocus() throws {
        #expect(inheritedTheme.button.buttonMonoColorContentStrongFocus != abstractTheme.button.buttonMonoColorContentStrongFocus)
        #expect(inheritedTheme.button.buttonMonoColorContentStrongFocus == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorContentStrongHover() throws {
        #expect(inheritedTheme.button.buttonMonoColorContentStrongHover != abstractTheme.button.buttonMonoColorContentStrongHover)
        #expect(inheritedTheme.button.buttonMonoColorContentStrongHover == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorContentStrongLoading() throws {
        #expect(inheritedTheme.button.buttonMonoColorContentStrongLoading != abstractTheme.button.buttonMonoColorContentStrongLoading)
        #expect(inheritedTheme.button.buttonMonoColorContentStrongLoading == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorContentStrongPressed() throws {
        #expect(inheritedTheme.button.buttonMonoColorContentStrongPressed != abstractTheme.button.buttonMonoColorContentStrongPressed)
        #expect(inheritedTheme.button.buttonMonoColorContentStrongPressed == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgDefaultDisabled() throws {
        #expect(inheritedTheme.button.buttonColorBgDefaultDisabled != abstractTheme.button.buttonColorBgDefaultDisabled)
        #expect(inheritedTheme.button.buttonColorBgDefaultDisabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBgDefaultDisabled() throws {
        #expect(inheritedTheme.button.buttonMonoColorBgDefaultDisabled != abstractTheme.button.buttonMonoColorBgDefaultDisabled)
        #expect(inheritedTheme.button.buttonMonoColorBgDefaultDisabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgDefaultEnabled() throws {
        #expect(inheritedTheme.button.buttonColorBgDefaultEnabled != abstractTheme.button.buttonColorBgDefaultEnabled)
        #expect(inheritedTheme.button.buttonColorBgDefaultEnabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBgDefaultEnabled() throws {
        #expect(inheritedTheme.button.buttonMonoColorBgDefaultEnabled != abstractTheme.button.buttonMonoColorBgDefaultEnabled)
        #expect(inheritedTheme.button.buttonMonoColorBgDefaultEnabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgDefaultFocus() throws {
        #expect(inheritedTheme.button.buttonColorBgDefaultFocus != abstractTheme.button.buttonColorBgDefaultFocus)
        #expect(inheritedTheme.button.buttonColorBgDefaultFocus == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgDefaultHover() throws {
        #expect(inheritedTheme.button.buttonColorBgDefaultHover != abstractTheme.button.buttonColorBgDefaultHover)
        #expect(inheritedTheme.button.buttonColorBgDefaultHover == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgDefaultLoading() throws {
        #expect(inheritedTheme.button.buttonColorBgDefaultLoading != abstractTheme.button.buttonColorBgDefaultLoading)
        #expect(inheritedTheme.button.buttonColorBgDefaultLoading == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgDefaultPressed() throws {
        #expect(inheritedTheme.button.buttonColorBgDefaultPressed != abstractTheme.button.buttonColorBgDefaultPressed)
        #expect(inheritedTheme.button.buttonColorBgDefaultPressed == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgMinimalFocus() throws {
        #expect(inheritedTheme.button.buttonColorBgMinimalFocus != abstractTheme.button.buttonColorBgMinimalFocus)
        #expect(inheritedTheme.button.buttonColorBgMinimalFocus == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgMinimalHover() throws {
        #expect(inheritedTheme.button.buttonColorBgMinimalHover != abstractTheme.button.buttonColorBgMinimalHover)
        #expect(inheritedTheme.button.buttonColorBgMinimalHover == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgMinimalPressed() throws {
        #expect(inheritedTheme.button.buttonColorBgMinimalPressed != abstractTheme.button.buttonColorBgMinimalPressed)
        #expect(inheritedTheme.button.buttonColorBgMinimalPressed == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgBrandEnabled() throws {
        #expect(inheritedTheme.button.buttonColorBgBrandEnabled != abstractTheme.button.buttonColorBgBrandEnabled)
        #expect(inheritedTheme.button.buttonColorBgBrandEnabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentBrandEnabled() throws {
        #expect(inheritedTheme.button.buttonColorContentBrandEnabled != abstractTheme.button.buttonColorContentBrandEnabled)
        #expect(inheritedTheme.button.buttonColorContentBrandEnabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBorderDefaultDisabled() throws {
        #expect(inheritedTheme.button.buttonColorBorderDefaultDisabled != abstractTheme.button.buttonColorBorderDefaultDisabled)
        #expect(inheritedTheme.button.buttonColorBorderDefaultDisabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBorderDefaultEnabled() throws {
        #expect(inheritedTheme.button.buttonColorBorderDefaultEnabled != abstractTheme.button.buttonColorBorderDefaultEnabled)
        #expect(inheritedTheme.button.buttonColorBorderDefaultEnabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBorderDefaultFocus() throws {
        #expect(inheritedTheme.button.buttonColorBorderDefaultFocus != abstractTheme.button.buttonColorBorderDefaultFocus)
        #expect(inheritedTheme.button.buttonColorBorderDefaultFocus == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBorderDefaultFocusMono() throws {
        #expect(inheritedTheme.button.buttonMonoColorBorderDefaultFocus != abstractTheme.button.buttonMonoColorBorderDefaultFocus)
        #expect(inheritedTheme.button.buttonMonoColorBorderDefaultFocus == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBorderDefaultHover() throws {
        #expect(inheritedTheme.button.buttonColorBorderDefaultHover != abstractTheme.button.buttonColorBorderDefaultHover)
        #expect(inheritedTheme.button.buttonColorBorderDefaultHover == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBorderDefaultHoverMono() throws {
        #expect(inheritedTheme.button.buttonMonoColorBorderDefaultHover != abstractTheme.button.buttonMonoColorBorderDefaultHover)
        #expect(inheritedTheme.button.buttonMonoColorBorderDefaultHover == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBorderDefaultLoading() throws {
        #expect(inheritedTheme.button.buttonColorBorderDefaultLoading != abstractTheme.button.buttonColorBorderDefaultLoading)
        #expect(inheritedTheme.button.buttonColorBorderDefaultLoading == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBorderDefaultLoadingMono() throws {
        #expect(inheritedTheme.button.buttonMonoColorBorderDefaultLoading != abstractTheme.button.buttonMonoColorBorderDefaultLoading)
        #expect(inheritedTheme.button.buttonMonoColorBorderDefaultLoading == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBorderDefaultPressed() throws {
        #expect(inheritedTheme.button.buttonColorBorderDefaultPressed != abstractTheme.button.buttonColorBorderDefaultPressed)
        #expect(inheritedTheme.button.buttonColorBorderDefaultPressed == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonCMonoolorBorderDefaultPressedMono() throws {
        #expect(inheritedTheme.button.buttonMonoColorBorderDefaultPressed != abstractTheme.button.buttonMonoColorBorderDefaultPressed)
        #expect(inheritedTheme.button.buttonMonoColorBorderDefaultPressed == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBorderStrongDisabledMono() throws {
        #expect(inheritedTheme.button.buttonMonoColorBorderStrongDisabled != abstractTheme.button.buttonMonoColorBorderStrongDisabled)
        #expect(inheritedTheme.button.buttonMonoColorBorderStrongDisabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBorderStrongEnabledMono() throws {
        #expect(inheritedTheme.button.buttonMonoColorBorderStrongEnabled != abstractTheme.button.buttonMonoColorBorderStrongEnabled)
        #expect(inheritedTheme.button.buttonMonoColorBorderStrongEnabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBorderStrongFocusMono() throws {
        #expect(inheritedTheme.button.buttonMonoColorBorderStrongFocus != abstractTheme.button.buttonMonoColorBorderStrongFocus)
        #expect(inheritedTheme.button.buttonMonoColorBorderStrongFocus == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBorderStrongHoverMono() throws {
        #expect(inheritedTheme.button.buttonMonoColorBorderStrongHover != abstractTheme.button.buttonMonoColorBorderStrongHover)
        #expect(inheritedTheme.button.buttonMonoColorBorderStrongHover == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBorderStrongLoadingMono() throws {
        #expect(inheritedTheme.button.buttonMonoColorBorderStrongLoading != abstractTheme.button.buttonMonoColorBorderStrongLoading)
        #expect(inheritedTheme.button.buttonMonoColorBorderStrongLoading == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBorderStrongPressedMono() throws {
        #expect(inheritedTheme.button.buttonMonoColorBorderStrongPressed != abstractTheme.button.buttonMonoColorBorderStrongPressed)
        #expect(inheritedTheme.button.buttonMonoColorBorderStrongPressed == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentDefaultDisabled() throws {
        #expect(inheritedTheme.button.buttonColorContentDefaultDisabled != abstractTheme.button.buttonColorContentDefaultDisabled)
        #expect(inheritedTheme.button.buttonColorContentDefaultDisabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentDefaultEnabled() throws {
        #expect(inheritedTheme.button.buttonColorContentDefaultEnabled != abstractTheme.button.buttonColorContentDefaultEnabled)
        #expect(inheritedTheme.button.buttonColorContentDefaultEnabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentDefaultFocus() throws {
        #expect(inheritedTheme.button.buttonColorContentDefaultFocus != abstractTheme.button.buttonColorContentDefaultFocus)
        #expect(inheritedTheme.button.buttonColorContentDefaultFocus == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentDefaultHover() throws {
        #expect(inheritedTheme.button.buttonColorContentDefaultHover != abstractTheme.button.buttonColorContentDefaultHover)
        #expect(inheritedTheme.button.buttonColorContentDefaultHover == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentDefaultLoading() throws {
        #expect(inheritedTheme.button.buttonColorContentDefaultLoading != abstractTheme.button.buttonColorContentDefaultLoading)
        #expect(inheritedTheme.button.buttonColorContentDefaultLoading == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentDefaultPressed() throws {
        #expect(inheritedTheme.button.buttonColorContentDefaultPressed != abstractTheme.button.buttonColorContentDefaultPressed)
        #expect(inheritedTheme.button.buttonColorContentDefaultPressed == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentMinimalDisabled() throws {
        #expect(inheritedTheme.button.buttonColorContentMinimalDisabled != abstractTheme.button.buttonColorContentMinimalDisabled)
        #expect(inheritedTheme.button.buttonColorContentMinimalDisabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentMinimalEnabled() throws {
        #expect(inheritedTheme.button.buttonColorContentMinimalEnabled != abstractTheme.button.buttonColorContentMinimalEnabled)
        #expect(inheritedTheme.button.buttonColorContentMinimalEnabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentMinimalFocus() throws {
        #expect(inheritedTheme.button.buttonColorContentMinimalFocus != abstractTheme.button.buttonColorContentMinimalFocus)
        #expect(inheritedTheme.button.buttonColorContentMinimalFocus == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentMinimalHover() throws {
        #expect(inheritedTheme.button.buttonColorContentMinimalHover != abstractTheme.button.buttonColorContentMinimalHover)
        #expect(inheritedTheme.button.buttonColorContentMinimalHover == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentMinimalLoading() throws {
        #expect(inheritedTheme.button.buttonColorContentMinimalLoading != abstractTheme.button.buttonColorContentMinimalLoading)
        #expect(inheritedTheme.button.buttonColorContentMinimalLoading == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentMinimalPressed() throws {
        #expect(inheritedTheme.button.buttonColorContentMinimalPressed != abstractTheme.button.buttonColorContentMinimalPressed)
        #expect(inheritedTheme.button.buttonColorContentMinimalPressed == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonSizeIcon() throws {
        #expect(inheritedTheme.button.buttonSizeIcon != abstractTheme.button.buttonSizeIcon)
        #expect(inheritedTheme.button.buttonSizeIcon == MockThemeButtonComponentTokenProvider.mockThemeButtonSize)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonSizeIconOnly() throws {
        #expect(inheritedTheme.button.buttonSizeIconOnly != abstractTheme.button.buttonSizeIconOnly)
        #expect(inheritedTheme.button.buttonSizeIconOnly == MockThemeButtonComponentTokenProvider.mockThemeButtonSize)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonSizeLoader() throws {
        #expect(inheritedTheme.button.buttonSizeLoader != abstractTheme.button.buttonSizeLoader)
        #expect(inheritedTheme.button.buttonSizeLoader == MockThemeButtonComponentTokenProvider.mockThemeButtonSize)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonSpaceColumnGapIcon() throws {
        #expect(inheritedTheme.button.buttonSpaceColumnGapIcon != abstractTheme.button.buttonSpaceColumnGapIcon)
        #expect(inheritedTheme.button.buttonSpaceColumnGapIcon == MockThemeButtonComponentTokenProvider.mockThemeButtonSpace)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonSpaceInsetIconOnly() throws {
        #expect(inheritedTheme.button.buttonSpaceInsetIconOnly != abstractTheme.button.buttonSpaceInsetIconOnly)
        #expect(inheritedTheme.button.buttonSpaceInsetIconOnly == MockThemeButtonComponentTokenProvider.mockThemeButtonSpace)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonSpacePaddingBlock() throws {
        #expect(inheritedTheme.button.buttonSpacePaddingBlock != abstractTheme.button.buttonSpacePaddingBlock)
        #expect(inheritedTheme.button.buttonSpacePaddingBlock == MockThemeButtonComponentTokenProvider.mockThemeButtonSpace)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenbuttonSpacePaddingInlineChevronEnd() throws {
        #expect(inheritedTheme.button.buttonSpacePaddingInlineChevronEnd != abstractTheme.button.buttonSpacePaddingInlineChevronEnd)
        #expect(inheritedTheme.button.buttonSpacePaddingInlineChevronEnd == MockThemeButtonComponentTokenProvider.mockThemeButtonSpace)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenbuttonSpacePaddingInlineChevronStart() throws {
        #expect(inheritedTheme.button.buttonSpacePaddingInlineChevronStart != abstractTheme.button.buttonSpacePaddingInlineChevronStart)
        #expect(inheritedTheme.button.buttonSpacePaddingInlineChevronStart == MockThemeButtonComponentTokenProvider.mockThemeButtonSpace)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonSpacePaddingInlineEndIconStart() throws {
        #expect(inheritedTheme.button.buttonSpacePaddingInlineEndIconStart != abstractTheme.button.buttonSpacePaddingInlineEndIconStart)
        #expect(inheritedTheme.button.buttonSpacePaddingInlineEndIconStart == MockThemeButtonComponentTokenProvider.mockThemeButtonSpace)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonSpacePaddingInlineIconNone() throws {
        #expect(inheritedTheme.button.buttonSpacePaddingInlineIconNone != abstractTheme.button.buttonSpacePaddingInlineIconNone)
        #expect(inheritedTheme.button.buttonSpacePaddingInlineIconNone == MockThemeButtonComponentTokenProvider.mockThemeButtonSpace)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonSpacePaddingInlineIconStart() throws {
        #expect(inheritedTheme.button.buttonSpacePaddingInlineIconStart != abstractTheme.button.buttonSpacePaddingInlineIconStart)
        #expect(inheritedTheme.button.buttonSpacePaddingInlineIconStart == MockThemeButtonComponentTokenProvider.mockThemeButtonSpace)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonSpacePaddingInlineStartIconEnd() throws {
        #expect(inheritedTheme.button.buttonSpacePaddingInlineStartIconEnd != abstractTheme.button.buttonSpacePaddingInlineStartIconEnd)
        #expect(inheritedTheme.button.buttonSpacePaddingInlineStartIconEnd == MockThemeButtonComponentTokenProvider.mockThemeButtonSpace)
    }
}

// swiftlint:enable type_body_length
// swiftlint:enable type_name
