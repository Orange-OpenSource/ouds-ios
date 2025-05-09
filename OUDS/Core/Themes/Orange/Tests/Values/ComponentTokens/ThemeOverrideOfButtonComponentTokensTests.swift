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

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonBorderRadius() throws {
        #expect(inheritedTheme.button.buttonBorderRadius != abstractTheme.button.buttonBorderRadius)
        #expect(inheritedTheme.button.buttonBorderRadius == MockThemeButtonComponentTokenProvider.mockThemeButtonRadius)
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
        #expect(inheritedTheme.button.buttonBorderWidthDefaultInteractionMono != abstractTheme.button.buttonBorderWidthDefaultInteractionMono)
        #expect(inheritedTheme.button.buttonBorderWidthDefaultInteractionMono == MockThemeButtonComponentTokenProvider.mockThemeButtonWidth)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonBorderWidthMinimal() throws {
        #expect(inheritedTheme.button.buttonBorderWidthMinimal != abstractTheme.button.buttonBorderWidthMinimal)
        #expect(inheritedTheme.button.buttonBorderWidthMinimal == MockThemeButtonComponentTokenProvider.mockThemeButtonWidth)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonBorderWidthMinimalInteraction() throws {
        #expect(inheritedTheme.button.buttonBorderWidthMinimalInteraction != abstractTheme.button.buttonBorderWidthMinimalInteraction)
        #expect(inheritedTheme.button.buttonBorderWidthMinimalInteraction == MockThemeButtonComponentTokenProvider.mockThemeButtonWidth)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgDefaultFocusMono() throws {
        #expect(inheritedTheme.button.buttonColorBgDefaultFocusMono != abstractTheme.button.buttonColorBgDefaultFocusMono)
        #expect(inheritedTheme.button.buttonColorBgDefaultFocusMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgDefaultHoverMono() throws {
        #expect(inheritedTheme.button.buttonColorBgDefaultHoverMono != abstractTheme.button.buttonColorBgDefaultHoverMono)
        #expect(inheritedTheme.button.buttonColorBgDefaultHoverMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgDefaultLoadingMono() throws {
        #expect(inheritedTheme.button.buttonColorBgDefaultLoadingMono != abstractTheme.button.buttonColorBgDefaultLoadingMono)
        #expect(inheritedTheme.button.buttonColorBgDefaultLoadingMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgDefaultPressedMono() throws {
        #expect(inheritedTheme.button.buttonColorBgDefaultPressedMono != abstractTheme.button.buttonColorBgDefaultPressedMono)
        #expect(inheritedTheme.button.buttonColorBgDefaultPressedMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgMinimalFocusMono() throws {
        #expect(inheritedTheme.button.buttonColorBgMinimalFocusMono != abstractTheme.button.buttonColorBgMinimalFocusMono)
        #expect(inheritedTheme.button.buttonColorBgMinimalFocusMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgMinimalHoverMono() throws {
        #expect(inheritedTheme.button.buttonColorBgMinimalHoverMono != abstractTheme.button.buttonColorBgMinimalHoverMono)
        #expect(inheritedTheme.button.buttonColorBgMinimalHoverMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgMinimalLoadingMono() throws {
        #expect(inheritedTheme.button.buttonColorBgMinimalLoadingMono != abstractTheme.button.buttonColorBgMinimalLoadingMono)
        #expect(inheritedTheme.button.buttonColorBgMinimalLoadingMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgMinimalPressedMono() throws {
        #expect(inheritedTheme.button.buttonColorBgMinimalPressedMono != abstractTheme.button.buttonColorBgMinimalPressedMono)
        #expect(inheritedTheme.button.buttonColorBgMinimalPressedMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgStrongDisabledMono() throws {
        #expect(inheritedTheme.button.buttonColorBgStrongDisabledMono != abstractTheme.button.buttonColorBgStrongDisabledMono)
        #expect(inheritedTheme.button.buttonColorBgStrongDisabledMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgStrongEnabledMono() throws {
        #expect(inheritedTheme.button.buttonColorBgStrongEnabledMono != abstractTheme.button.buttonColorBgStrongEnabledMono)
        #expect(inheritedTheme.button.buttonColorBgStrongEnabledMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgStrongFocusMono() throws {
        #expect(inheritedTheme.button.buttonColorBgStrongFocusMono != abstractTheme.button.buttonColorBgStrongFocusMono)
        #expect(inheritedTheme.button.buttonColorBgStrongFocusMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgStrongHoverMono() throws {
        #expect(inheritedTheme.button.buttonColorBgStrongHoverMono != abstractTheme.button.buttonColorBgStrongHoverMono)
        #expect(inheritedTheme.button.buttonColorBgStrongHoverMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgStrongLoadingMono() throws {
        #expect(inheritedTheme.button.buttonColorBgStrongLoadingMono != abstractTheme.button.buttonColorBgStrongLoadingMono)
        #expect(inheritedTheme.button.buttonColorBgStrongLoadingMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgStrongPressedMono() throws {
        #expect(inheritedTheme.button.buttonColorBgStrongPressedMono != abstractTheme.button.buttonColorBgStrongPressedMono)
        #expect(inheritedTheme.button.buttonColorBgStrongPressedMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBorderDefaultDisabledMono() throws {
        #expect(inheritedTheme.button.buttonColorBorderDefaultDisabledMono != abstractTheme.button.buttonColorBorderDefaultDisabledMono)
        #expect(inheritedTheme.button.buttonColorBorderDefaultDisabledMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBorderDefaultEnabledMono() throws {
        #expect(inheritedTheme.button.buttonColorBorderDefaultEnabledMono != abstractTheme.button.buttonColorBorderDefaultEnabledMono)
        #expect(inheritedTheme.button.buttonColorBorderDefaultEnabledMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentDefaultDisabledMono() throws {
        #expect(inheritedTheme.button.buttonColorContentDefaultDisabledMono != abstractTheme.button.buttonColorContentDefaultDisabledMono)
        #expect(inheritedTheme.button.buttonColorContentDefaultDisabledMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentDefaultEnabledMono() throws {
        #expect(inheritedTheme.button.buttonColorContentDefaultEnabledMono != abstractTheme.button.buttonColorContentDefaultEnabledMono)
        #expect(inheritedTheme.button.buttonColorContentDefaultEnabledMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentDefaultFocusMono() throws {
        #expect(inheritedTheme.button.buttonColorContentDefaultFocusMono != abstractTheme.button.buttonColorContentDefaultFocusMono)
        #expect(inheritedTheme.button.buttonColorContentDefaultFocusMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentDefaultHoverMono() throws {
        #expect(inheritedTheme.button.buttonColorContentDefaultHoverMono != abstractTheme.button.buttonColorContentDefaultHoverMono)
        #expect(inheritedTheme.button.buttonColorContentDefaultHoverMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentDefaultLoadingMono() throws {
        #expect(inheritedTheme.button.buttonColorContentDefaultLoadingMono != abstractTheme.button.buttonColorContentDefaultLoadingMono)
        #expect(inheritedTheme.button.buttonColorContentDefaultLoadingMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentDefaultPressedMono() throws {
        #expect(inheritedTheme.button.buttonColorContentDefaultPressedMono != abstractTheme.button.buttonColorContentDefaultPressedMono)
        #expect(inheritedTheme.button.buttonColorContentDefaultPressedMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentMinimalDisabledMono() throws {
        #expect(inheritedTheme.button.buttonColorContentMinimalDisabledMono != abstractTheme.button.buttonColorContentMinimalDisabledMono)
        #expect(inheritedTheme.button.buttonColorContentMinimalDisabledMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentMinimalEnabledMono() throws {
        #expect(inheritedTheme.button.buttonColorContentMinimalEnabledMono != abstractTheme.button.buttonColorContentMinimalEnabledMono)
        #expect(inheritedTheme.button.buttonColorContentMinimalEnabledMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentMinimalFocusMono() throws {
        #expect(inheritedTheme.button.buttonColorContentMinimalFocusMono != abstractTheme.button.buttonColorContentMinimalFocusMono)
        #expect(inheritedTheme.button.buttonColorContentMinimalFocusMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentMinimalHoverMono() throws {
        #expect(inheritedTheme.button.buttonColorContentMinimalHoverMono != abstractTheme.button.buttonColorContentMinimalHoverMono)
        #expect(inheritedTheme.button.buttonColorContentMinimalHoverMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentMinimalLoadingMono() throws {
        #expect(inheritedTheme.button.buttonColorContentMinimalLoadingMono != abstractTheme.button.buttonColorContentMinimalLoadingMono)
        #expect(inheritedTheme.button.buttonColorContentMinimalLoadingMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentMinimalPressedMono() throws {
        #expect(inheritedTheme.button.buttonColorContentMinimalPressedMono != abstractTheme.button.buttonColorContentMinimalPressedMono)
        #expect(inheritedTheme.button.buttonColorContentMinimalPressedMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentStrongDisabledMono() throws {
        #expect(inheritedTheme.button.buttonColorContentStrongDisabledMono != abstractTheme.button.buttonColorContentStrongDisabledMono)
        #expect(inheritedTheme.button.buttonColorContentStrongDisabledMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentStrongEnabledMono() throws {
        #expect(inheritedTheme.button.buttonColorContentStrongEnabledMono != abstractTheme.button.buttonColorContentStrongEnabledMono)
        #expect(inheritedTheme.button.buttonColorContentStrongEnabledMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentStrongFocusMono() throws {
        #expect(inheritedTheme.button.buttonColorContentStrongFocusMono != abstractTheme.button.buttonColorContentStrongFocusMono)
        #expect(inheritedTheme.button.buttonColorContentStrongFocusMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentStrongHoverMono() throws {
        #expect(inheritedTheme.button.buttonColorContentStrongHoverMono != abstractTheme.button.buttonColorContentStrongHoverMono)
        #expect(inheritedTheme.button.buttonColorContentStrongHoverMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentStrongLoadingMono() throws {
        #expect(inheritedTheme.button.buttonColorContentStrongLoadingMono != abstractTheme.button.buttonColorContentStrongLoadingMono)
        #expect(inheritedTheme.button.buttonColorContentStrongLoadingMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorContentStrongPressedMono() throws {
        #expect(inheritedTheme.button.buttonColorContentStrongPressedMono != abstractTheme.button.buttonColorContentStrongPressedMono)
        #expect(inheritedTheme.button.buttonColorContentStrongPressedMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgDefaultDisabled() throws {
        #expect(inheritedTheme.button.buttonColorBgDefaultDisabled != abstractTheme.button.buttonColorBgDefaultDisabled)
        #expect(inheritedTheme.button.buttonColorBgDefaultDisabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgDefaultDisabledMono() throws {
        #expect(inheritedTheme.button.buttonColorBgDefaultDisabledMono != abstractTheme.button.buttonColorBgDefaultDisabledMono)
        #expect(inheritedTheme.button.buttonColorBgDefaultDisabledMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgDefaultEnabled() throws {
        #expect(inheritedTheme.button.buttonColorBgDefaultEnabled != abstractTheme.button.buttonColorBgDefaultEnabled)
        #expect(inheritedTheme.button.buttonColorBgDefaultEnabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgDefaultEnabledMono() throws {
        #expect(inheritedTheme.button.buttonColorBgDefaultEnabledMono != abstractTheme.button.buttonColorBgDefaultEnabledMono)
        #expect(inheritedTheme.button.buttonColorBgDefaultEnabledMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
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

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgMinimalDisabled() throws {
        #expect(inheritedTheme.button.buttonColorBgMinimalDisabled != abstractTheme.button.buttonColorBgMinimalDisabled)
        #expect(inheritedTheme.button.buttonColorBgMinimalDisabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgMinimalDisabledMono() throws {
        #expect(inheritedTheme.button.buttonColorBgMinimalDisabledMono != abstractTheme.button.buttonColorBgMinimalDisabledMono)
        #expect(inheritedTheme.button.buttonColorBgMinimalDisabledMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgMinimalEnabled() throws {
        #expect(inheritedTheme.button.buttonColorBgMinimalEnabled != abstractTheme.button.buttonColorBgMinimalEnabled)
        #expect(inheritedTheme.button.buttonColorBgMinimalEnabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgMinimalEnabledMono() throws {
        #expect(inheritedTheme.button.buttonColorBgMinimalEnabledMono != abstractTheme.button.buttonColorBgMinimalEnabledMono)
        #expect(inheritedTheme.button.buttonColorBgMinimalEnabledMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgMinimalFocus() throws {
        #expect(inheritedTheme.button.buttonColorBgMinimalFocus != abstractTheme.button.buttonColorBgMinimalFocus)
        #expect(inheritedTheme.button.buttonColorBgMinimalFocus == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgMinimalHover() throws {
        #expect(inheritedTheme.button.buttonColorBgMinimalHover != abstractTheme.button.buttonColorBgMinimalHover)
        #expect(inheritedTheme.button.buttonColorBgMinimalHover == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgMinimalLoading() throws {
        #expect(inheritedTheme.button.buttonColorBgMinimalLoading != abstractTheme.button.buttonColorBgMinimalLoading)
        #expect(inheritedTheme.button.buttonColorBgMinimalLoading == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBgMinimalPressed() throws {
        #expect(inheritedTheme.button.buttonColorBgMinimalPressed != abstractTheme.button.buttonColorBgMinimalPressed)
        #expect(inheritedTheme.button.buttonColorBgMinimalPressed == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
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

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBorderDefaultFocusMono() throws {
        #expect(inheritedTheme.button.buttonColorBorderDefaultFocusMono != abstractTheme.button.buttonColorBorderDefaultFocusMono)
        #expect(inheritedTheme.button.buttonColorBorderDefaultFocusMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBorderDefaultHover() throws {
        #expect(inheritedTheme.button.buttonColorBorderDefaultHover != abstractTheme.button.buttonColorBorderDefaultHover)
        #expect(inheritedTheme.button.buttonColorBorderDefaultHover == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBorderDefaultHoverMono() throws {
        #expect(inheritedTheme.button.buttonColorBorderDefaultHoverMono != abstractTheme.button.buttonColorBorderDefaultHoverMono)
        #expect(inheritedTheme.button.buttonColorBorderDefaultHoverMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBorderDefaultLoading() throws {
        #expect(inheritedTheme.button.buttonColorBorderDefaultLoading != abstractTheme.button.buttonColorBorderDefaultLoading)
        #expect(inheritedTheme.button.buttonColorBorderDefaultLoading == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBorderDefaultLoadingMono() throws {
        #expect(inheritedTheme.button.buttonColorBorderDefaultLoadingMono != abstractTheme.button.buttonColorBorderDefaultLoadingMono)
        #expect(inheritedTheme.button.buttonColorBorderDefaultLoadingMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBorderDefaultPressed() throws {
        #expect(inheritedTheme.button.buttonColorBorderDefaultPressed != abstractTheme.button.buttonColorBorderDefaultPressed)
        #expect(inheritedTheme.button.buttonColorBorderDefaultPressed == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBorderDefaultPressedMono() throws {
        #expect(inheritedTheme.button.buttonColorBorderDefaultPressedMono != abstractTheme.button.buttonColorBorderDefaultPressedMono)
        #expect(inheritedTheme.button.buttonColorBorderDefaultPressedMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBorderMinimalDisabled() throws {
        #expect(inheritedTheme.button.buttonColorBorderMinimalDisabled != abstractTheme.button.buttonColorBorderMinimalDisabled)
        #expect(inheritedTheme.button.buttonColorBorderMinimalDisabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBorderMinimalDisabledMono() throws {
        #expect(inheritedTheme.button.buttonColorBorderMinimalDisabledMono != abstractTheme.button.buttonColorBorderMinimalDisabledMono)
        #expect(inheritedTheme.button.buttonColorBorderMinimalDisabledMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBorderMinimalEnabled() throws {
        #expect(inheritedTheme.button.buttonColorBorderMinimalEnabled != abstractTheme.button.buttonColorBorderMinimalEnabled)
        #expect(inheritedTheme.button.buttonColorBorderMinimalEnabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBorderMinimalEnabledMono() throws {
        #expect(inheritedTheme.button.buttonColorBorderMinimalEnabledMono != abstractTheme.button.buttonColorBorderMinimalEnabledMono)
        #expect(inheritedTheme.button.buttonColorBorderMinimalEnabledMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBorderMinimalFocus() throws {
        #expect(inheritedTheme.button.buttonColorBorderMinimalFocus != abstractTheme.button.buttonColorBorderMinimalFocus)
        #expect(inheritedTheme.button.buttonColorBorderMinimalFocus == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBorderMinimalFocusMono() throws {
        #expect(inheritedTheme.button.buttonColorBorderMinimalFocusMono != abstractTheme.button.buttonColorBorderMinimalFocusMono)
        #expect(inheritedTheme.button.buttonColorBorderMinimalFocusMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBorderMinimalHover() throws {
        #expect(inheritedTheme.button.buttonColorBorderMinimalHover != abstractTheme.button.buttonColorBorderMinimalHover)
        #expect(inheritedTheme.button.buttonColorBorderMinimalHover == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBorderMinimalHoverMono() throws {
        #expect(inheritedTheme.button.buttonColorBorderMinimalHoverMono != abstractTheme.button.buttonColorBorderMinimalHoverMono)
        #expect(inheritedTheme.button.buttonColorBorderMinimalHoverMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBorderMinimalLoading() throws {
        #expect(inheritedTheme.button.buttonColorBorderMinimalLoading != abstractTheme.button.buttonColorBorderMinimalLoading)
        #expect(inheritedTheme.button.buttonColorBorderMinimalLoading == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBorderMinimalLoadingMono() throws {
        #expect(inheritedTheme.button.buttonColorBorderMinimalLoadingMono != abstractTheme.button.buttonColorBorderMinimalLoadingMono)
        #expect(inheritedTheme.button.buttonColorBorderMinimalLoadingMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBorderMinimalPressed() throws {
        #expect(inheritedTheme.button.buttonColorBorderMinimalPressed != abstractTheme.button.buttonColorBorderMinimalPressed)
        #expect(inheritedTheme.button.buttonColorBorderMinimalPressed == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBorderMinimalPressedMono() throws {
        #expect(inheritedTheme.button.buttonColorBorderMinimalPressedMono != abstractTheme.button.buttonColorBorderMinimalPressedMono)
        #expect(inheritedTheme.button.buttonColorBorderMinimalPressedMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBorderStrongDisabledMono() throws {
        #expect(inheritedTheme.button.buttonColorBorderStrongDisabledMono != abstractTheme.button.buttonColorBorderStrongDisabledMono)
        #expect(inheritedTheme.button.buttonColorBorderStrongDisabledMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBorderStrongEnabledMono() throws {
        #expect(inheritedTheme.button.buttonColorBorderStrongEnabledMono != abstractTheme.button.buttonColorBorderStrongEnabledMono)
        #expect(inheritedTheme.button.buttonColorBorderStrongEnabledMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBorderStrongFocusMono() throws {
        #expect(inheritedTheme.button.buttonColorBorderStrongFocusMono != abstractTheme.button.buttonColorBorderStrongFocusMono)
        #expect(inheritedTheme.button.buttonColorBorderStrongFocusMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBorderStrongHoverMono() throws {
        #expect(inheritedTheme.button.buttonColorBorderStrongHoverMono != abstractTheme.button.buttonColorBorderStrongHoverMono)
        #expect(inheritedTheme.button.buttonColorBorderStrongHoverMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBorderStrongLoadingMono() throws {
        #expect(inheritedTheme.button.buttonColorBorderStrongLoadingMono != abstractTheme.button.buttonColorBorderStrongLoadingMono)
        #expect(inheritedTheme.button.buttonColorBorderStrongLoadingMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonColorBorderStrongPressedMono() throws {
        #expect(inheritedTheme.button.buttonColorBorderStrongPressedMono != abstractTheme.button.buttonColorBorderStrongPressedMono)
        #expect(inheritedTheme.button.buttonColorBorderStrongPressedMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
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

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonSpaceColumnGapArrow() throws {
        #expect(inheritedTheme.button.buttonSpaceColumnGapArrow != abstractTheme.button.buttonSpaceColumnGapArrow)
        #expect(inheritedTheme.button.buttonSpaceColumnGapArrow == MockThemeButtonComponentTokenProvider.mockThemeButtonSpace)
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

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonSpacePaddingInlineArrowEnd() throws {
        #expect(inheritedTheme.button.buttonSpacePaddingInlineArrowEnd != abstractTheme.button.buttonSpacePaddingInlineArrowEnd)
        #expect(inheritedTheme.button.buttonSpacePaddingInlineArrowEnd == MockThemeButtonComponentTokenProvider.mockThemeButtonSpace)
    }

    @Test func inheritedThemeCanOverrideButtonComponentTokenButtonSpacePaddingInlineArrowStart() throws {
        #expect(inheritedTheme.button.buttonSpacePaddingInlineArrowStart != abstractTheme.button.buttonSpacePaddingInlineArrowStart)
        #expect(inheritedTheme.button.buttonSpacePaddingInlineArrowStart == MockThemeButtonComponentTokenProvider.mockThemeButtonSpace)
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
