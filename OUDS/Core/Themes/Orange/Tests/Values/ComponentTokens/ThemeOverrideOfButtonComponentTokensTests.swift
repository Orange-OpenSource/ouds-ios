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
        #expect(inheritedTheme.button.sizeMaxHeightIconOnly != abstractTheme.button.sizeMaxHeightIconOnly)
        #expect(inheritedTheme.button.sizeMaxHeightIconOnly == MockThemeButtonComponentTokenProvider.mockThemeButtonSize)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonSizeMinHeight() throws {
        #expect(inheritedTheme.button.sizeMinHeight != abstractTheme.button.sizeMinHeight)
        #expect(inheritedTheme.button.sizeMinHeight == MockThemeButtonComponentTokenProvider.mockThemeButtonSize)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonSizeMinWidth() throws {
        #expect(inheritedTheme.button.sizeMinWidth != abstractTheme.button.sizeMinWidth)
        #expect(inheritedTheme.button.sizeMinWidth == MockThemeButtonComponentTokenProvider.mockThemeButtonSize)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonBorderRadiusDefault() throws {
        #expect(inheritedTheme.button.buttonBorderRadiusDefault != abstractTheme.button.buttonBorderRadiusDefault)
        #expect(inheritedTheme.button.buttonBorderRadiusDefault == MockThemeButtonComponentTokenProvider.mockThemeButtonRadius)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonBorderRadiusRounded() throws {
        #expect(inheritedTheme.button.buttonBorderRadiusRounded != abstractTheme.button.buttonBorderRadiusRounded)
        #expect(inheritedTheme.button.buttonBorderRadiusRounded == MockThemeButtonComponentTokenProvider.mockThemeButtonRadius)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonBorderRadiusSocial() throws {
        #expect(inheritedTheme.button.buttonBorderRadiusSocial != abstractTheme.button.buttonBorderRadiusSocial)
        #expect(inheritedTheme.button.buttonBorderRadiusSocial == MockThemeButtonComponentTokenProvider.mockThemeButtonRadius)
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
        #expect(inheritedTheme.button.monoColorBgDefaultFocus != abstractTheme.button.monoColorBgDefaultFocus)
        #expect(inheritedTheme.button.monoColorBgDefaultFocus == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBgDefaultHover() throws {
        #expect(inheritedTheme.button.monoColorBgDefaultHover != abstractTheme.button.monoColorBgDefaultHover)
        #expect(inheritedTheme.button.monoColorBgDefaultHover == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBgDefaultLoading() throws {
        #expect(inheritedTheme.button.monoColorBgDefaultLoading != abstractTheme.button.monoColorBgDefaultLoading)
        #expect(inheritedTheme.button.monoColorBgDefaultLoading == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBgDefaultPressed() throws {
        #expect(inheritedTheme.button.monoColorBgDefaultPressed != abstractTheme.button.monoColorBgDefaultPressed)
        #expect(inheritedTheme.button.monoColorBgDefaultPressed == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBgMinimalFocus() throws {
        #expect(inheritedTheme.button.monoColorBgMinimalFocus != abstractTheme.button.monoColorBgMinimalFocus)
        #expect(inheritedTheme.button.monoColorBgMinimalFocus == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBgMinimalHover() throws {
        #expect(inheritedTheme.button.monoColorBgMinimalHover != abstractTheme.button.monoColorBgMinimalHover)
        #expect(inheritedTheme.button.monoColorBgMinimalHover == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBgMinimalPressed() throws {
        #expect(inheritedTheme.button.monoColorBgMinimalPressed != abstractTheme.button.monoColorBgMinimalPressed)
        #expect(inheritedTheme.button.monoColorBgMinimalPressed == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBgStrongDisabled() throws {
        #expect(inheritedTheme.button.monoColorBgStrongDisabled != abstractTheme.button.monoColorBgStrongDisabled)
        #expect(inheritedTheme.button.monoColorBgStrongDisabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBgStrongEnabled() throws {
        #expect(inheritedTheme.button.monoColorBgStrongEnabled != abstractTheme.button.monoColorBgStrongEnabled)
        #expect(inheritedTheme.button.monoColorBgStrongEnabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBgStrongFocus() throws {
        #expect(inheritedTheme.button.monoColorBgStrongFocus != abstractTheme.button.monoColorBgStrongFocus)
        #expect(inheritedTheme.button.monoColorBgStrongFocus == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBgStrongHover() throws {
        #expect(inheritedTheme.button.monoColorBgStrongHover != abstractTheme.button.monoColorBgStrongHover)
        #expect(inheritedTheme.button.monoColorBgStrongHover == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBgStrongLoading() throws {
        #expect(inheritedTheme.button.monoColorBgStrongLoading != abstractTheme.button.monoColorBgStrongLoading)
        #expect(inheritedTheme.button.monoColorBgStrongLoading == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBgStrongPressed() throws {
        #expect(inheritedTheme.button.monoColorBgStrongPressed != abstractTheme.button.monoColorBgStrongPressed)
        #expect(inheritedTheme.button.monoColorBgStrongPressed == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBorderDefaultDisabled() throws {
        #expect(inheritedTheme.button.monoColorBorderDefaultDisabled != abstractTheme.button.monoColorBorderDefaultDisabled)
        #expect(inheritedTheme.button.monoColorBorderDefaultDisabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBorderDefaultEnabled() throws {
        #expect(inheritedTheme.button.monoColorBorderDefaultEnabled != abstractTheme.button.monoColorBorderDefaultEnabled)
        #expect(inheritedTheme.button.monoColorBorderDefaultEnabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorContentDefaultDisabled() throws {
        #expect(inheritedTheme.button.monoColorContentDefaultDisabled != abstractTheme.button.monoColorContentDefaultDisabled)
        #expect(inheritedTheme.button.monoColorContentDefaultDisabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorContentDefaultEnabled() throws {
        #expect(inheritedTheme.button.monoColorContentDefaultEnabled != abstractTheme.button.monoColorContentDefaultEnabled)
        #expect(inheritedTheme.button.monoColorContentDefaultEnabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorContentDefaultFocus() throws {
        #expect(inheritedTheme.button.monoColorContentDefaultFocus != abstractTheme.button.monoColorContentDefaultFocus)
        #expect(inheritedTheme.button.monoColorContentDefaultFocus == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorContentDefaultHover() throws {
        #expect(inheritedTheme.button.monoColorContentDefaultHover != abstractTheme.button.monoColorContentDefaultHover)
        #expect(inheritedTheme.button.monoColorContentDefaultHover == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorContentDefaultLoading() throws {
        #expect(inheritedTheme.button.monoColorContentDefaultLoading != abstractTheme.button.monoColorContentDefaultLoading)
        #expect(inheritedTheme.button.monoColorContentDefaultLoading == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorContentDefaultPressed() throws {
        #expect(inheritedTheme.button.monoColorContentDefaultPressed != abstractTheme.button.monoColorContentDefaultPressed)
        #expect(inheritedTheme.button.monoColorContentDefaultPressed == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorContentMinimalDisabled() throws {
        #expect(inheritedTheme.button.monoColorContentMinimalDisabled != abstractTheme.button.monoColorContentMinimalDisabled)
        #expect(inheritedTheme.button.monoColorContentMinimalDisabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorContentMinimalEnabled() throws {
        #expect(inheritedTheme.button.monoColorContentMinimalEnabled != abstractTheme.button.monoColorContentMinimalEnabled)
        #expect(inheritedTheme.button.monoColorContentMinimalEnabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorContentMinimalFocus() throws {
        #expect(inheritedTheme.button.monoColorContentMinimalFocus != abstractTheme.button.monoColorContentMinimalFocus)
        #expect(inheritedTheme.button.monoColorContentMinimalFocus == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorContentMinimalHover() throws {
        #expect(inheritedTheme.button.monoColorContentMinimalHover != abstractTheme.button.monoColorContentMinimalHover)
        #expect(inheritedTheme.button.monoColorContentMinimalHover == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorContentMinimalLoading() throws {
        #expect(inheritedTheme.button.monoColorContentMinimalLoading != abstractTheme.button.monoColorContentMinimalLoading)
        #expect(inheritedTheme.button.monoColorContentMinimalLoading == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorContentMinimalPressed() throws {
        #expect(inheritedTheme.button.monoColorContentMinimalPressed != abstractTheme.button.monoColorContentMinimalPressed)
        #expect(inheritedTheme.button.monoColorContentMinimalPressed == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorContentStrongDisabled() throws {
        #expect(inheritedTheme.button.monoColorContentStrongDisabled != abstractTheme.button.monoColorContentStrongDisabled)
        #expect(inheritedTheme.button.monoColorContentStrongDisabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorContentStrongEnabled() throws {
        #expect(inheritedTheme.button.monoColorContentStrongEnabled != abstractTheme.button.monoColorContentStrongEnabled)
        #expect(inheritedTheme.button.monoColorContentStrongEnabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorContentStrongFocus() throws {
        #expect(inheritedTheme.button.monoColorContentStrongFocus != abstractTheme.button.monoColorContentStrongFocus)
        #expect(inheritedTheme.button.monoColorContentStrongFocus == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorContentStrongHover() throws {
        #expect(inheritedTheme.button.monoColorContentStrongHover != abstractTheme.button.monoColorContentStrongHover)
        #expect(inheritedTheme.button.monoColorContentStrongHover == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorContentStrongLoading() throws {
        #expect(inheritedTheme.button.monoColorContentStrongLoading != abstractTheme.button.monoColorContentStrongLoading)
        #expect(inheritedTheme.button.monoColorContentStrongLoading == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorContentStrongPressed() throws {
        #expect(inheritedTheme.button.monoColorContentStrongPressed != abstractTheme.button.monoColorContentStrongPressed)
        #expect(inheritedTheme.button.monoColorContentStrongPressed == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgDefaultDisabled() throws {
        #expect(inheritedTheme.button.colorBgDefaultDisabled != abstractTheme.button.colorBgDefaultDisabled)
        #expect(inheritedTheme.button.colorBgDefaultDisabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBgDefaultDisabled() throws {
        #expect(inheritedTheme.button.monoColorBgDefaultDisabled != abstractTheme.button.monoColorBgDefaultDisabled)
        #expect(inheritedTheme.button.monoColorBgDefaultDisabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgDefaultEnabled() throws {
        #expect(inheritedTheme.button.colorBgDefaultEnabled != abstractTheme.button.colorBgDefaultEnabled)
        #expect(inheritedTheme.button.colorBgDefaultEnabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgBrandHover() throws {
        #expect(inheritedTheme.button.colorBgBrandHover != abstractTheme.button.colorBgBrandHover)
        #expect(inheritedTheme.button.colorBgBrandHover == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgBrandPressed() throws {
        #expect(inheritedTheme.button.colorBgBrandPressed != abstractTheme.button.colorBgBrandPressed)
        #expect(inheritedTheme.button.colorBgBrandPressed == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgBrandLoading() throws {
        #expect(inheritedTheme.button.colorBgBrandLoading != abstractTheme.button.colorBgBrandLoading)
        #expect(inheritedTheme.button.colorBgBrandLoading == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgBrandFocus() throws {
        #expect(inheritedTheme.button.colorBgBrandFocus != abstractTheme.button.colorBgBrandFocus)
        #expect(inheritedTheme.button.colorBgBrandFocus == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBgDefaultEnabled() throws {
        #expect(inheritedTheme.button.monoColorBgDefaultEnabled != abstractTheme.button.monoColorBgDefaultEnabled)
        #expect(inheritedTheme.button.monoColorBgDefaultEnabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgDefaultFocus() throws {
        #expect(inheritedTheme.button.colorBgDefaultFocus != abstractTheme.button.colorBgDefaultFocus)
        #expect(inheritedTheme.button.colorBgDefaultFocus == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgDefaultHover() throws {
        #expect(inheritedTheme.button.colorBgDefaultHover != abstractTheme.button.colorBgDefaultHover)
        #expect(inheritedTheme.button.colorBgDefaultHover == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgDefaultLoading() throws {
        #expect(inheritedTheme.button.colorBgDefaultLoading != abstractTheme.button.colorBgDefaultLoading)
        #expect(inheritedTheme.button.colorBgDefaultLoading == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgDefaultPressed() throws {
        #expect(inheritedTheme.button.colorBgDefaultPressed != abstractTheme.button.colorBgDefaultPressed)
        #expect(inheritedTheme.button.colorBgDefaultPressed == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgMinimalFocus() throws {
        #expect(inheritedTheme.button.colorBgMinimalFocus != abstractTheme.button.colorBgMinimalFocus)
        #expect(inheritedTheme.button.colorBgMinimalFocus == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgMinimalHover() throws {
        #expect(inheritedTheme.button.colorBgMinimalHover != abstractTheme.button.colorBgMinimalHover)
        #expect(inheritedTheme.button.colorBgMinimalHover == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgMinimalPressed() throws {
        #expect(inheritedTheme.button.colorBgMinimalPressed != abstractTheme.button.colorBgMinimalPressed)
        #expect(inheritedTheme.button.colorBgMinimalPressed == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgBrandEnabled() throws {
        #expect(inheritedTheme.button.colorBgBrandEnabled != abstractTheme.button.colorBgBrandEnabled)
        #expect(inheritedTheme.button.colorBgBrandEnabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentBrandEnabled() throws {
        #expect(inheritedTheme.button.colorContentBrandEnabled != abstractTheme.button.colorContentBrandEnabled)
        #expect(inheritedTheme.button.colorContentBrandEnabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentBrandHover() throws {
        #expect(inheritedTheme.button.colorContentBrandHover != abstractTheme.button.colorContentBrandHover)
        #expect(inheritedTheme.button.colorContentBrandHover == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentBrandPressed() throws {
        #expect(inheritedTheme.button.colorContentBrandPressed != abstractTheme.button.colorContentBrandPressed)
        #expect(inheritedTheme.button.colorContentBrandPressed == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentBrandLoading() throws {
        #expect(inheritedTheme.button.colorContentBrandLoading != abstractTheme.button.colorContentBrandLoading)
        #expect(inheritedTheme.button.colorContentBrandLoading == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentBrandFocus() throws {
        #expect(inheritedTheme.button.colorContentBrandFocus != abstractTheme.button.colorContentBrandFocus)
        #expect(inheritedTheme.button.colorContentBrandFocus == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBorderDefaultDisabled() throws {
        #expect(inheritedTheme.button.colorBorderDefaultDisabled != abstractTheme.button.colorBorderDefaultDisabled)
        #expect(inheritedTheme.button.colorBorderDefaultDisabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBorderDefaultEnabled() throws {
        #expect(inheritedTheme.button.colorBorderDefaultEnabled != abstractTheme.button.colorBorderDefaultEnabled)
        #expect(inheritedTheme.button.colorBorderDefaultEnabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBorderDefaultFocus() throws {
        #expect(inheritedTheme.button.colorBorderDefaultFocus != abstractTheme.button.colorBorderDefaultFocus)
        #expect(inheritedTheme.button.colorBorderDefaultFocus == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBorderDefaultFocusMono() throws {
        #expect(inheritedTheme.button.monoColorBorderDefaultFocus != abstractTheme.button.monoColorBorderDefaultFocus)
        #expect(inheritedTheme.button.monoColorBorderDefaultFocus == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBorderDefaultHover() throws {
        #expect(inheritedTheme.button.colorBorderDefaultHover != abstractTheme.button.colorBorderDefaultHover)
        #expect(inheritedTheme.button.colorBorderDefaultHover == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBorderDefaultHoverMono() throws {
        #expect(inheritedTheme.button.monoColorBorderDefaultHover != abstractTheme.button.monoColorBorderDefaultHover)
        #expect(inheritedTheme.button.monoColorBorderDefaultHover == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBorderDefaultLoading() throws {
        #expect(inheritedTheme.button.colorBorderDefaultLoading != abstractTheme.button.colorBorderDefaultLoading)
        #expect(inheritedTheme.button.colorBorderDefaultLoading == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonMonoColorBorderDefaultLoadingMono() throws {
        #expect(inheritedTheme.button.monoColorBorderDefaultLoading != abstractTheme.button.monoColorBorderDefaultLoading)
        #expect(inheritedTheme.button.monoColorBorderDefaultLoading == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBorderDefaultPressed() throws {
        #expect(inheritedTheme.button.colorBorderDefaultPressed != abstractTheme.button.colorBorderDefaultPressed)
        #expect(inheritedTheme.button.colorBorderDefaultPressed == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonCMonoolorBorderDefaultPressedMono() throws {
        #expect(inheritedTheme.button.monoColorBorderDefaultPressed != abstractTheme.button.monoColorBorderDefaultPressed)
        #expect(inheritedTheme.button.monoColorBorderDefaultPressed == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentDefaultDisabled() throws {
        #expect(inheritedTheme.button.colorContentDefaultDisabled != abstractTheme.button.colorContentDefaultDisabled)
        #expect(inheritedTheme.button.colorContentDefaultDisabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentDefaultEnabled() throws {
        #expect(inheritedTheme.button.colorContentDefaultEnabled != abstractTheme.button.colorContentDefaultEnabled)
        #expect(inheritedTheme.button.colorContentDefaultEnabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentDefaultFocus() throws {
        #expect(inheritedTheme.button.colorContentDefaultFocus != abstractTheme.button.colorContentDefaultFocus)
        #expect(inheritedTheme.button.colorContentDefaultFocus == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentDefaultHover() throws {
        #expect(inheritedTheme.button.colorContentDefaultHover != abstractTheme.button.colorContentDefaultHover)
        #expect(inheritedTheme.button.colorContentDefaultHover == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentDefaultLoading() throws {
        #expect(inheritedTheme.button.colorContentDefaultLoading != abstractTheme.button.colorContentDefaultLoading)
        #expect(inheritedTheme.button.colorContentDefaultLoading == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentDefaultPressed() throws {
        #expect(inheritedTheme.button.colorContentDefaultPressed != abstractTheme.button.colorContentDefaultPressed)
        #expect(inheritedTheme.button.colorContentDefaultPressed == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentMinimalDisabled() throws {
        #expect(inheritedTheme.button.colorContentMinimalDisabled != abstractTheme.button.colorContentMinimalDisabled)
        #expect(inheritedTheme.button.colorContentMinimalDisabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentMinimalEnabled() throws {
        #expect(inheritedTheme.button.colorContentMinimalEnabled != abstractTheme.button.colorContentMinimalEnabled)
        #expect(inheritedTheme.button.colorContentMinimalEnabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentMinimalFocus() throws {
        #expect(inheritedTheme.button.colorContentMinimalFocus != abstractTheme.button.colorContentMinimalFocus)
        #expect(inheritedTheme.button.colorContentMinimalFocus == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentMinimalHover() throws {
        #expect(inheritedTheme.button.colorContentMinimalHover != abstractTheme.button.colorContentMinimalHover)
        #expect(inheritedTheme.button.colorContentMinimalHover == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentMinimalLoading() throws {
        #expect(inheritedTheme.button.colorContentMinimalLoading != abstractTheme.button.colorContentMinimalLoading)
        #expect(inheritedTheme.button.colorContentMinimalLoading == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentMinimalPressed() throws {
        #expect(inheritedTheme.button.colorContentMinimalPressed != abstractTheme.button.colorContentMinimalPressed)
        #expect(inheritedTheme.button.colorContentMinimalPressed == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonSizeIcon() throws {
        #expect(inheritedTheme.button.sizeIcon != abstractTheme.button.sizeIcon)
        #expect(inheritedTheme.button.sizeIcon == MockThemeButtonComponentTokenProvider.mockThemeButtonSize)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonSizeIconOnly() throws {
        #expect(inheritedTheme.button.sizeIconOnly != abstractTheme.button.sizeIconOnly)
        #expect(inheritedTheme.button.sizeIconOnly == MockThemeButtonComponentTokenProvider.mockThemeButtonSize)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonSizeLoader() throws {
        #expect(inheritedTheme.button.sizeLoader != abstractTheme.button.sizeLoader)
        #expect(inheritedTheme.button.sizeLoader == MockThemeButtonComponentTokenProvider.mockThemeButtonSize)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonSpaceColumnGapIcon() throws {
        #expect(inheritedTheme.button.spaceColumnGapIcon != abstractTheme.button.spaceColumnGapIcon)
        #expect(inheritedTheme.button.spaceColumnGapIcon == MockThemeButtonComponentTokenProvider.mockThemeButtonSpace)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonSpaceInsetIconOnly() throws {
        #expect(inheritedTheme.button.spaceInsetIconOnly != abstractTheme.button.spaceInsetIconOnly)
        #expect(inheritedTheme.button.spaceInsetIconOnly == MockThemeButtonComponentTokenProvider.mockThemeButtonSpace)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonSpacePaddingBlock() throws {
        #expect(inheritedTheme.button.spacePaddingBlock != abstractTheme.button.spacePaddingBlock)
        #expect(inheritedTheme.button.spacePaddingBlock == MockThemeButtonComponentTokenProvider.mockThemeButtonSpace)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenbuttonSpacePaddingInlineChevronEnd() throws {
        #expect(inheritedTheme.button.spacePaddingInlineChevronEnd != abstractTheme.button.spacePaddingInlineChevronEnd)
        #expect(inheritedTheme.button.spacePaddingInlineChevronEnd == MockThemeButtonComponentTokenProvider.mockThemeButtonSpace)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenbuttonSpacePaddingInlineChevronStart() throws {
        #expect(inheritedTheme.button.spacePaddingInlineChevronStart != abstractTheme.button.spacePaddingInlineChevronStart)
        #expect(inheritedTheme.button.spacePaddingInlineChevronStart == MockThemeButtonComponentTokenProvider.mockThemeButtonSpace)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonSpacePaddingInlineEndIconStart() throws {
        #expect(inheritedTheme.button.spacePaddingInlineEndIconStart != abstractTheme.button.spacePaddingInlineEndIconStart)
        #expect(inheritedTheme.button.spacePaddingInlineEndIconStart == MockThemeButtonComponentTokenProvider.mockThemeButtonSpace)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonSpacePaddingInlineIconNone() throws {
        #expect(inheritedTheme.button.spacePaddingInlineIconNone != abstractTheme.button.spacePaddingInlineIconNone)
        #expect(inheritedTheme.button.spacePaddingInlineIconNone == MockThemeButtonComponentTokenProvider.mockThemeButtonSpace)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonSpacePaddingInlineIconStart() throws {
        #expect(inheritedTheme.button.spacePaddingInlineIconStart != abstractTheme.button.spacePaddingInlineIconStart)
        #expect(inheritedTheme.button.spacePaddingInlineIconStart == MockThemeButtonComponentTokenProvider.mockThemeButtonSpace)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonSpacePaddingInlineStartIconEnd() throws {
        #expect(inheritedTheme.button.spacePaddingInlineStartIconEnd != abstractTheme.button.spacePaddingInlineStartIconEnd)
        #expect(inheritedTheme.button.spacePaddingInlineStartIconEnd == MockThemeButtonComponentTokenProvider.mockThemeButtonSpace)
    }
}

// swiftlint:enable type_body_length
// swiftlint:enable type_name
