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
import XCTest

// swiftlint:disable required_deinit
// swiftlint:disable implicitly_unwrapped_optional
// swiftlint:disable type_body_length
// swiftlint:disable file_length

final class TestThemeOverrideOfButtonComponentTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonSizeMaxHeight() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonSizeMaxHeight, abstractTheme.button.buttonSizeMaxHeight)
        XCTAssertTrue(inheritedTheme.button.buttonSizeMaxHeight == MockThemeButtonComponentTokenProvider.mockThemeButtonSize)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonSizeMinHeight() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonSizeMinHeight, abstractTheme.button.buttonSizeMinHeight)
        XCTAssertTrue(inheritedTheme.button.buttonSizeMinHeight == MockThemeButtonComponentTokenProvider.mockThemeButtonSize)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonSizeMinWidth() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonSizeMinWidth, abstractTheme.button.buttonSizeMinWidth)
        XCTAssertTrue(inheritedTheme.button.buttonSizeMinWidth == MockThemeButtonComponentTokenProvider.mockThemeButtonSize)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonBorderRadius() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonBorderRadius, abstractTheme.button.buttonBorderRadius)
        XCTAssertTrue(inheritedTheme.button.buttonBorderRadius == MockThemeButtonComponentTokenProvider.mockThemeButtonRadius)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonBorderWidthDefault() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonBorderWidthDefault, abstractTheme.button.buttonBorderWidthDefault)
        XCTAssertTrue(inheritedTheme.button.buttonBorderWidthDefault == MockThemeButtonComponentTokenProvider.mockThemeButtonWidth)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonBorderWidthDefaultInteraction() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonBorderWidthDefaultInteraction, abstractTheme.button.buttonBorderWidthDefaultInteraction)
        XCTAssertTrue(inheritedTheme.button.buttonBorderWidthDefaultInteraction == MockThemeButtonComponentTokenProvider.mockThemeButtonWidth)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonBorderWidthDefaultInteractionMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonBorderWidthDefaultInteractionMono, abstractTheme.button.buttonBorderWidthDefaultInteractionMono)
        XCTAssertTrue(inheritedTheme.button.buttonBorderWidthDefaultInteractionMono == MockThemeButtonComponentTokenProvider.mockThemeButtonWidth)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonBorderWidthMinimal() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonBorderWidthMinimal, abstractTheme.button.buttonBorderWidthMinimal)
        XCTAssertTrue(inheritedTheme.button.buttonBorderWidthMinimal == MockThemeButtonComponentTokenProvider.mockThemeButtonWidth)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonBorderWidthMinimalInteraction() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonBorderWidthMinimalInteraction, abstractTheme.button.buttonBorderWidthMinimalInteraction)
        XCTAssertTrue(inheritedTheme.button.buttonBorderWidthMinimalInteraction == MockThemeButtonComponentTokenProvider.mockThemeButtonWidth)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBgDefaultFocusMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBgDefaultFocusMono, abstractTheme.button.buttonColorBgDefaultFocusMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorBgDefaultFocusMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBgDefaultHoverMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBgDefaultHoverMono, abstractTheme.button.buttonColorBgDefaultHoverMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorBgDefaultHoverMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBgDefaultLoadingMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBgDefaultLoadingMono, abstractTheme.button.buttonColorBgDefaultLoadingMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorBgDefaultLoadingMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBgDefaultPressedMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBgDefaultPressedMono, abstractTheme.button.buttonColorBgDefaultPressedMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorBgDefaultPressedMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBgMinimalFocusMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBgMinimalFocusMono, abstractTheme.button.buttonColorBgMinimalFocusMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorBgMinimalFocusMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBgMinimalHoverMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBgMinimalHoverMono, abstractTheme.button.buttonColorBgMinimalHoverMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorBgMinimalHoverMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBgMinimalLoadingMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBgMinimalLoadingMono, abstractTheme.button.buttonColorBgMinimalLoadingMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorBgMinimalLoadingMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBgMinimalPressedMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBgMinimalPressedMono, abstractTheme.button.buttonColorBgMinimalPressedMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorBgMinimalPressedMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBgStrongDisabledMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBgStrongDisabledMono, abstractTheme.button.buttonColorBgStrongDisabledMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorBgStrongDisabledMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBgStrongEnabledMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBgStrongEnabledMono, abstractTheme.button.buttonColorBgStrongEnabledMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorBgStrongEnabledMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBgStrongFocusMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBgStrongFocusMono, abstractTheme.button.buttonColorBgStrongFocusMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorBgStrongFocusMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBgStrongHoverMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBgStrongHoverMono, abstractTheme.button.buttonColorBgStrongHoverMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorBgStrongHoverMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBgStrongLoadingMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBgStrongLoadingMono, abstractTheme.button.buttonColorBgStrongLoadingMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorBgStrongLoadingMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBgStrongPressedMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBgStrongPressedMono, abstractTheme.button.buttonColorBgStrongPressedMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorBgStrongPressedMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBorderDefaultDisabledMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBorderDefaultDisabledMono, abstractTheme.button.buttonColorBorderDefaultDisabledMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorBorderDefaultDisabledMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBorderDefaultEnabledMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBorderDefaultEnabledMono, abstractTheme.button.buttonColorBorderDefaultEnabledMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorBorderDefaultEnabledMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorContentDefaultDisabledMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorContentDefaultDisabledMono, abstractTheme.button.buttonColorContentDefaultDisabledMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorContentDefaultDisabledMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorContentDefaultEnabledMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorContentDefaultEnabledMono, abstractTheme.button.buttonColorContentDefaultEnabledMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorContentDefaultEnabledMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorContentDefaultFocusMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorContentDefaultFocusMono, abstractTheme.button.buttonColorContentDefaultFocusMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorContentDefaultFocusMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorContentDefaultHoverMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorContentDefaultHoverMono, abstractTheme.button.buttonColorContentDefaultHoverMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorContentDefaultHoverMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorContentDefaultLoadingMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorContentDefaultLoadingMono, abstractTheme.button.buttonColorContentDefaultLoadingMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorContentDefaultLoadingMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorContentDefaultPressedMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorContentDefaultPressedMono, abstractTheme.button.buttonColorContentDefaultPressedMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorContentDefaultPressedMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorContentMinimalDisabledMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorContentMinimalDisabledMono, abstractTheme.button.buttonColorContentMinimalDisabledMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorContentMinimalDisabledMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorContentMinimalEnabledMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorContentMinimalEnabledMono, abstractTheme.button.buttonColorContentMinimalEnabledMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorContentMinimalEnabledMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorContentMinimalFocusMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorContentMinimalFocusMono, abstractTheme.button.buttonColorContentMinimalFocusMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorContentMinimalFocusMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorContentMinimalHoverMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorContentMinimalHoverMono, abstractTheme.button.buttonColorContentMinimalHoverMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorContentMinimalHoverMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorContentMinimalLoadingMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorContentMinimalLoadingMono, abstractTheme.button.buttonColorContentMinimalLoadingMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorContentMinimalLoadingMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorContentMinimalPressedMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorContentMinimalPressedMono, abstractTheme.button.buttonColorContentMinimalPressedMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorContentMinimalPressedMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorContentStrongDisabledMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorContentStrongDisabledMono, abstractTheme.button.buttonColorContentStrongDisabledMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorContentStrongDisabledMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorContentStrongEnabledMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorContentStrongEnabledMono, abstractTheme.button.buttonColorContentStrongEnabledMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorContentStrongEnabledMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorContentStrongFocusMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorContentStrongFocusMono, abstractTheme.button.buttonColorContentStrongFocusMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorContentStrongFocusMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorContentStrongHoverMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorContentStrongHoverMono, abstractTheme.button.buttonColorContentStrongHoverMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorContentStrongHoverMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorContentStrongLoadingMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorContentStrongLoadingMono, abstractTheme.button.buttonColorContentStrongLoadingMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorContentStrongLoadingMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorContentStrongPressedMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorContentStrongPressedMono, abstractTheme.button.buttonColorContentStrongPressedMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorContentStrongPressedMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBgDefaultDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBgDefaultDisabled, abstractTheme.button.buttonColorBgDefaultDisabled)
        XCTAssertTrue(inheritedTheme.button.buttonColorBgDefaultDisabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBgDefaultDisabledMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBgDefaultDisabledMono, abstractTheme.button.buttonColorBgDefaultDisabledMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorBgDefaultDisabledMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBgDefaultEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBgDefaultEnabled, abstractTheme.button.buttonColorBgDefaultEnabled)
        XCTAssertTrue(inheritedTheme.button.buttonColorBgDefaultEnabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBgDefaultEnabledMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBgDefaultEnabledMono, abstractTheme.button.buttonColorBgDefaultEnabledMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorBgDefaultEnabledMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBgDefaultFocus() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBgDefaultFocus, abstractTheme.button.buttonColorBgDefaultFocus)
        XCTAssertTrue(inheritedTheme.button.buttonColorBgDefaultFocus == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBgDefaultHover() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBgDefaultHover, abstractTheme.button.buttonColorBgDefaultHover)
        XCTAssertTrue(inheritedTheme.button.buttonColorBgDefaultHover == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBgDefaultLoading() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBgDefaultLoading, abstractTheme.button.buttonColorBgDefaultLoading)
        XCTAssertTrue(inheritedTheme.button.buttonColorBgDefaultLoading == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBgDefaultPressed() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBgDefaultPressed, abstractTheme.button.buttonColorBgDefaultPressed)
        XCTAssertTrue(inheritedTheme.button.buttonColorBgDefaultPressed == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBgMinimalDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBgMinimalDisabled, abstractTheme.button.buttonColorBgMinimalDisabled)
        XCTAssertTrue(inheritedTheme.button.buttonColorBgMinimalDisabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBgMinimalDisabledMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBgMinimalDisabledMono, abstractTheme.button.buttonColorBgMinimalDisabledMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorBgMinimalDisabledMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBgMinimalEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBgMinimalEnabled, abstractTheme.button.buttonColorBgMinimalEnabled)
        XCTAssertTrue(inheritedTheme.button.buttonColorBgMinimalEnabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBgMinimalEnabledMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBgMinimalEnabledMono, abstractTheme.button.buttonColorBgMinimalEnabledMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorBgMinimalEnabledMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBgMinimalFocus() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBgMinimalFocus, abstractTheme.button.buttonColorBgMinimalFocus)
        XCTAssertTrue(inheritedTheme.button.buttonColorBgMinimalFocus == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBgMinimalHover() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBgMinimalHover, abstractTheme.button.buttonColorBgMinimalHover)
        XCTAssertTrue(inheritedTheme.button.buttonColorBgMinimalHover == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBgMinimalLoading() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBgMinimalLoading, abstractTheme.button.buttonColorBgMinimalLoading)
        XCTAssertTrue(inheritedTheme.button.buttonColorBgMinimalLoading == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBgMinimalPressed() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBgMinimalPressed, abstractTheme.button.buttonColorBgMinimalPressed)
        XCTAssertTrue(inheritedTheme.button.buttonColorBgMinimalPressed == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBorderDefaultDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBorderDefaultDisabled, abstractTheme.button.buttonColorBorderDefaultDisabled)
        XCTAssertTrue(inheritedTheme.button.buttonColorBorderDefaultDisabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBorderDefaultEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBorderDefaultEnabled, abstractTheme.button.buttonColorBorderDefaultEnabled)
        XCTAssertTrue(inheritedTheme.button.buttonColorBorderDefaultEnabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBorderDefaultFocus() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBorderDefaultFocus, abstractTheme.button.buttonColorBorderDefaultFocus)
        XCTAssertTrue(inheritedTheme.button.buttonColorBorderDefaultFocus == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBorderDefaultFocusMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBorderDefaultFocusMono, abstractTheme.button.buttonColorBorderDefaultFocusMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorBorderDefaultFocusMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBorderDefaultHover() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBorderDefaultHover, abstractTheme.button.buttonColorBorderDefaultHover)
        XCTAssertTrue(inheritedTheme.button.buttonColorBorderDefaultHover == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBorderDefaultHoverMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBorderDefaultHoverMono, abstractTheme.button.buttonColorBorderDefaultHoverMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorBorderDefaultHoverMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBorderDefaultLoading() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBorderDefaultLoading, abstractTheme.button.buttonColorBorderDefaultLoading)
        XCTAssertTrue(inheritedTheme.button.buttonColorBorderDefaultLoading == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBorderDefaultLoadingMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBorderDefaultLoadingMono, abstractTheme.button.buttonColorBorderDefaultLoadingMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorBorderDefaultLoadingMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBorderDefaultPressed() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBorderDefaultPressed, abstractTheme.button.buttonColorBorderDefaultPressed)
        XCTAssertTrue(inheritedTheme.button.buttonColorBorderDefaultPressed == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBorderDefaultPressedMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBorderDefaultPressedMono, abstractTheme.button.buttonColorBorderDefaultPressedMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorBorderDefaultPressedMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBorderMinimalDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBorderMinimalDisabled, abstractTheme.button.buttonColorBorderMinimalDisabled)
        XCTAssertTrue(inheritedTheme.button.buttonColorBorderMinimalDisabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBorderMinimalDisabledMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBorderMinimalDisabledMono, abstractTheme.button.buttonColorBorderMinimalDisabledMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorBorderMinimalDisabledMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBorderMinimalEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBorderMinimalEnabled, abstractTheme.button.buttonColorBorderMinimalEnabled)
        XCTAssertTrue(inheritedTheme.button.buttonColorBorderMinimalEnabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBorderMinimalEnabledMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBorderMinimalEnabledMono, abstractTheme.button.buttonColorBorderMinimalEnabledMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorBorderMinimalEnabledMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBorderMinimalFocus() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBorderMinimalFocus, abstractTheme.button.buttonColorBorderMinimalFocus)
        XCTAssertTrue(inheritedTheme.button.buttonColorBorderMinimalFocus == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBorderMinimalFocusMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBorderMinimalFocusMono, abstractTheme.button.buttonColorBorderMinimalFocusMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorBorderMinimalFocusMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBorderMinimalHover() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBorderMinimalHover, abstractTheme.button.buttonColorBorderMinimalHover)
        XCTAssertTrue(inheritedTheme.button.buttonColorBorderMinimalHover == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBorderMinimalHoverMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBorderMinimalHoverMono, abstractTheme.button.buttonColorBorderMinimalHoverMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorBorderMinimalHoverMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBorderMinimalLoading() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBorderMinimalLoading, abstractTheme.button.buttonColorBorderMinimalLoading)
        XCTAssertTrue(inheritedTheme.button.buttonColorBorderMinimalLoading == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBorderMinimalLoadingMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBorderMinimalLoadingMono, abstractTheme.button.buttonColorBorderMinimalLoadingMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorBorderMinimalLoadingMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBorderMinimalPressed() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBorderMinimalPressed, abstractTheme.button.buttonColorBorderMinimalPressed)
        XCTAssertTrue(inheritedTheme.button.buttonColorBorderMinimalPressed == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBorderMinimalPressedMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBorderMinimalPressedMono, abstractTheme.button.buttonColorBorderMinimalPressedMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorBorderMinimalPressedMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBorderStrongDisabledMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBorderStrongDisabledMono, abstractTheme.button.buttonColorBorderStrongDisabledMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorBorderStrongDisabledMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBorderStrongEnabledMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBorderStrongEnabledMono, abstractTheme.button.buttonColorBorderStrongEnabledMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorBorderStrongEnabledMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBorderStrongFocusMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBorderStrongFocusMono, abstractTheme.button.buttonColorBorderStrongFocusMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorBorderStrongFocusMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBorderStrongHoverMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBorderStrongHoverMono, abstractTheme.button.buttonColorBorderStrongHoverMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorBorderStrongHoverMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBorderStrongLoadingMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBorderStrongLoadingMono, abstractTheme.button.buttonColorBorderStrongLoadingMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorBorderStrongLoadingMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorBorderStrongPressedMono() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorBorderStrongPressedMono, abstractTheme.button.buttonColorBorderStrongPressedMono)
        XCTAssertTrue(inheritedTheme.button.buttonColorBorderStrongPressedMono == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorContentDefaultDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorContentDefaultDisabled, abstractTheme.button.buttonColorContentDefaultDisabled)
        XCTAssertTrue(inheritedTheme.button.buttonColorContentDefaultDisabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorContentDefaultEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorContentDefaultEnabled, abstractTheme.button.buttonColorContentDefaultEnabled)
        XCTAssertTrue(inheritedTheme.button.buttonColorContentDefaultEnabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorContentDefaultFocus() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorContentDefaultFocus, abstractTheme.button.buttonColorContentDefaultFocus)
        XCTAssertTrue(inheritedTheme.button.buttonColorContentDefaultFocus == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorContentDefaultHover() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorContentDefaultHover, abstractTheme.button.buttonColorContentDefaultHover)
        XCTAssertTrue(inheritedTheme.button.buttonColorContentDefaultHover == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorContentDefaultLoading() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorContentDefaultLoading, abstractTheme.button.buttonColorContentDefaultLoading)
        XCTAssertTrue(inheritedTheme.button.buttonColorContentDefaultLoading == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorContentDefaultPressed() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorContentDefaultPressed, abstractTheme.button.buttonColorContentDefaultPressed)
        XCTAssertTrue(inheritedTheme.button.buttonColorContentDefaultPressed == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorContentMinimalDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorContentMinimalDisabled, abstractTheme.button.buttonColorContentMinimalDisabled)
        XCTAssertTrue(inheritedTheme.button.buttonColorContentMinimalDisabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorContentMinimalEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorContentMinimalEnabled, abstractTheme.button.buttonColorContentMinimalEnabled)
        XCTAssertTrue(inheritedTheme.button.buttonColorContentMinimalEnabled == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorContentMinimalFocus() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorContentMinimalFocus, abstractTheme.button.buttonColorContentMinimalFocus)
        XCTAssertTrue(inheritedTheme.button.buttonColorContentMinimalFocus == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorContentMinimalHover() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorContentMinimalHover, abstractTheme.button.buttonColorContentMinimalHover)
        XCTAssertTrue(inheritedTheme.button.buttonColorContentMinimalHover == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorContentMinimalLoading() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorContentMinimalLoading, abstractTheme.button.buttonColorContentMinimalLoading)
        XCTAssertTrue(inheritedTheme.button.buttonColorContentMinimalLoading == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonColorContentMinimalPressed() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonColorContentMinimalPressed, abstractTheme.button.buttonColorContentMinimalPressed)
        XCTAssertTrue(inheritedTheme.button.buttonColorContentMinimalPressed == MockThemeButtonComponentTokenProvider.mockThemeButtonColor)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonSizeIcon() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonSizeIcon, abstractTheme.button.buttonSizeIcon)
        XCTAssertTrue(inheritedTheme.button.buttonSizeIcon == MockThemeButtonComponentTokenProvider.mockThemeButtonSize)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonSizeIconOnly() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonSizeIconOnly, abstractTheme.button.buttonSizeIconOnly)
        XCTAssertTrue(inheritedTheme.button.buttonSizeIconOnly == MockThemeButtonComponentTokenProvider.mockThemeButtonSize)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonSizeLoader() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonSizeLoader, abstractTheme.button.buttonSizeLoader)
        XCTAssertTrue(inheritedTheme.button.buttonSizeLoader == MockThemeButtonComponentTokenProvider.mockThemeButtonSize)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonSpaceColumnGapArrow() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonSpaceColumnGapArrow, abstractTheme.button.buttonSpaceColumnGapArrow)
        XCTAssertTrue(inheritedTheme.button.buttonSpaceColumnGapArrow == MockThemeButtonComponentTokenProvider.mockThemeButtonSpace)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonSpaceColumnGapIcon() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonSpaceColumnGapIcon, abstractTheme.button.buttonSpaceColumnGapIcon)
        XCTAssertTrue(inheritedTheme.button.buttonSpaceColumnGapIcon == MockThemeButtonComponentTokenProvider.mockThemeButtonSpace)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonSpaceInsetIconOnly() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonSpaceInsetIconOnly, abstractTheme.button.buttonSpaceInsetIconOnly)
        XCTAssertTrue(inheritedTheme.button.buttonSpaceInsetIconOnly == MockThemeButtonComponentTokenProvider.mockThemeButtonSpace)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonSpacePaddingBlock() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonSpacePaddingBlock, abstractTheme.button.buttonSpacePaddingBlock)
        XCTAssertTrue(inheritedTheme.button.buttonSpacePaddingBlock == MockThemeButtonComponentTokenProvider.mockThemeButtonSpace)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonSpacePaddingInlineArrowEnd() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonSpacePaddingInlineArrowEnd, abstractTheme.button.buttonSpacePaddingInlineArrowEnd)
        XCTAssertTrue(inheritedTheme.button.buttonSpacePaddingInlineArrowEnd == MockThemeButtonComponentTokenProvider.mockThemeButtonSpace)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonSpacePaddingInlineArrowStart() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonSpacePaddingInlineArrowStart, abstractTheme.button.buttonSpacePaddingInlineArrowStart)
        XCTAssertTrue(inheritedTheme.button.buttonSpacePaddingInlineArrowStart == MockThemeButtonComponentTokenProvider.mockThemeButtonSpace)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonSpacePaddingInlineEndIconStart() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonSpacePaddingInlineEndIconStart, abstractTheme.button.buttonSpacePaddingInlineEndIconStart)
        XCTAssertTrue(inheritedTheme.button.buttonSpacePaddingInlineEndIconStart == MockThemeButtonComponentTokenProvider.mockThemeButtonSpace)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonSpacePaddingInlineIconNone() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonSpacePaddingInlineIconNone, abstractTheme.button.buttonSpacePaddingInlineIconNone)
        XCTAssertTrue(inheritedTheme.button.buttonSpacePaddingInlineIconNone == MockThemeButtonComponentTokenProvider.mockThemeButtonSpace)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonSpacePaddingInlineIconStart() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonSpacePaddingInlineIconStart, abstractTheme.button.buttonSpacePaddingInlineIconStart)
        XCTAssertTrue(inheritedTheme.button.buttonSpacePaddingInlineIconStart == MockThemeButtonComponentTokenProvider.mockThemeButtonSpace)
    }

    func testInheritedThemeCanOverrideButtonComponentTokenButtonSpacePaddingInlineStartIconEnd() throws {
        XCTAssertNotEqual(inheritedTheme.button.buttonSpacePaddingInlineStartIconEnd, abstractTheme.button.buttonSpacePaddingInlineStartIconEnd)
        XCTAssertTrue(inheritedTheme.button.buttonSpacePaddingInlineStartIconEnd == MockThemeButtonComponentTokenProvider.mockThemeButtonSpace)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable type_body_length
