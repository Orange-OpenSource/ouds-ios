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
import OUDSTokensSemantic
import XCTest

// swiftlint:disable type_body_length
// swiftlint:disable file_length
// swiftlint:disable implicitly_unwrapped_optional
// swiftlint:disable required_deinit

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In fact the `OUDSTheme` object is a class, which can be seen as an _abstract class_, exposing through its extensions and protocols _colors semantic tokens_.
/// These semantic tokens should be overriden by subclass like the `OrangeTheme` default theme.
/// 
/// **These tests checks if any _colors semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
final class TestThemeOverrideOfColorSemanticTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = MockTheme()
        inheritedTheme = OtherMockTheme()
    }

    // MARK: - Tests

    // MARK: - Color semantic tokens - Light and dark

    func testInheritedThemeCanOverrideSemanticTokenColorOpacityInvisibleBlackLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOpacityInvisibleBlackLight, abstractTheme.colors.colorOpacityInvisibleBlackLight)
        XCTAssertTrue(inheritedTheme.colors.colorOpacityInvisibleBlackLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOpacityInvisibleBlackDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOpacityInvisibleBlackDark, abstractTheme.colors.colorOpacityInvisibleBlackDark)
        XCTAssertTrue(inheritedTheme.colors.colorOpacityInvisibleBlackDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOpacityInvisibleWhiteLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOpacityInvisibleWhiteLight, abstractTheme.colors.colorOpacityInvisibleWhiteLight)
        XCTAssertTrue(inheritedTheme.colors.colorOpacityInvisibleWhiteLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOpacityInvisibleWhiteDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOpacityInvisibleWhiteDark, abstractTheme.colors.colorOpacityInvisibleWhiteDark)
        XCTAssertTrue(inheritedTheme.colors.colorOpacityInvisibleWhiteDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionDisabledLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionDisabledLight, abstractTheme.colors.colorActionDisabledLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionDisabledLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionEnabledLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionEnabledLight, abstractTheme.colors.colorActionEnabledLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionEnabledLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionFocusLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionFocusLight, abstractTheme.colors.colorActionFocusLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionFocusLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionHighlightedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionHighlightedLight, abstractTheme.colors.colorActionHighlightedLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionHighlightedLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionHoverLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionHoverLight, abstractTheme.colors.colorActionHoverLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionHoverLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionLoadingLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionLoadingLight, abstractTheme.colors.colorActionLoadingLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionLoadingLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeEnabledLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativeEnabledLight, abstractTheme.colors.colorActionNegativeEnabledLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativeEnabledLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeFocusLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativeFocusLight, abstractTheme.colors.colorActionNegativeFocusLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativeFocusLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeHoverLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativeHoverLight, abstractTheme.colors.colorActionNegativeHoverLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativeHoverLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeLoadingLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativeLoadingLight, abstractTheme.colors.colorActionNegativeLoadingLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativeLoadingLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativePressedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativePressedLight, abstractTheme.colors.colorActionNegativePressedLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativePressedLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeEnabledDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativeEnabledDark, abstractTheme.colors.colorActionNegativeEnabledDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativeEnabledDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeFocusDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativeFocusDark, abstractTheme.colors.colorActionNegativeFocusDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativeFocusDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeHoverDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativeHoverDark, abstractTheme.colors.colorActionNegativeHoverDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativeHoverDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeLoadingDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativeLoadingDark, abstractTheme.colors.colorActionNegativeLoadingDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativeLoadingDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativePressedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativePressedDark, abstractTheme.colors.colorActionNegativePressedDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativePressedDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPressedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionPressedLight, abstractTheme.colors.colorActionPressedLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionPressedLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSelectedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSelectedLight, abstractTheme.colors.colorActionSelectedLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionSelectedLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportEnabledLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportEnabledLight, abstractTheme.colors.colorActionSupportEnabledLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportEnabledLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportFocusLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportFocusLight, abstractTheme.colors.colorActionSupportFocusLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportFocusLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportHoverLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportHoverLight, abstractTheme.colors.colorActionSupportHoverLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportHoverLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportLoadingLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportLoadingLight, abstractTheme.colors.colorActionSupportLoadingLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportLoadingLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportPressedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportPressedLight, abstractTheme.colors.colorActionSupportPressedLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportPressedLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportEnabledDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportEnabledDark, abstractTheme.colors.colorActionSupportEnabledDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportEnabledDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportFocusDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportFocusDark, abstractTheme.colors.colorActionSupportFocusDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportFocusDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportHoverDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportHoverDark, abstractTheme.colors.colorActionSupportHoverDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportHoverDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportLoadingDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportLoadingDark, abstractTheme.colors.colorActionSupportLoadingDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportLoadingDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportPressedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportPressedDark, abstractTheme.colors.colorActionSupportPressedDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportPressedDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionVisitedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionVisitedLight, abstractTheme.colors.colorActionVisitedLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionVisitedLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionDisabledDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionDisabledDark, abstractTheme.colors.colorActionDisabledDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionDisabledDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionEnabledDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionEnabledDark, abstractTheme.colors.colorActionEnabledDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionEnabledDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionFocusDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionFocusDark, abstractTheme.colors.colorActionFocusDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionFocusDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionHighlightedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionHighlightedDark, abstractTheme.colors.colorActionHighlightedDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionHighlightedDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionHoverDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionHoverDark, abstractTheme.colors.colorActionHoverDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionHoverDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionLoadingDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionLoadingDark, abstractTheme.colors.colorActionLoadingDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionLoadingDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPressedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionPressedDark, abstractTheme.colors.colorActionPressedDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionPressedDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSelectedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSelectedDark, abstractTheme.colors.colorActionSelectedDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionSelectedDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionVisitedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionVisitedDark, abstractTheme.colors.colorActionVisitedDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionVisitedDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysBlackLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorAlwaysBlackLight, abstractTheme.colors.colorAlwaysBlackLight)
        XCTAssertTrue(inheritedTheme.colors.colorAlwaysBlackLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnBlackLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorAlwaysOnBlackLight, abstractTheme.colors.colorAlwaysOnBlackLight)
        XCTAssertTrue(inheritedTheme.colors.colorAlwaysOnBlackLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnWhiteLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorAlwaysOnWhiteLight, abstractTheme.colors.colorAlwaysOnWhiteLight)
        XCTAssertTrue(inheritedTheme.colors.colorAlwaysOnWhiteLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysWhiteLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorAlwaysWhiteLight, abstractTheme.colors.colorAlwaysWhiteLight)
        XCTAssertTrue(inheritedTheme.colors.colorAlwaysWhiteLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysBlackDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorAlwaysBlackDark, abstractTheme.colors.colorAlwaysBlackDark)
        XCTAssertTrue(inheritedTheme.colors.colorAlwaysBlackDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnBlackDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorAlwaysOnBlackDark, abstractTheme.colors.colorAlwaysOnBlackDark)
        XCTAssertTrue(inheritedTheme.colors.colorAlwaysOnBlackDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnWhiteDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorAlwaysOnWhiteDark, abstractTheme.colors.colorAlwaysOnWhiteDark)
        XCTAssertTrue(inheritedTheme.colors.colorAlwaysOnWhiteDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysWhiteDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorAlwaysWhiteDark, abstractTheme.colors.colorAlwaysWhiteDark)
        XCTAssertTrue(inheritedTheme.colors.colorAlwaysWhiteDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBgEmphasizedLight, abstractTheme.colors.colorBgEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorBgEmphasizedLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBgPrimaryLight, abstractTheme.colors.colorBgPrimaryLight)
        XCTAssertTrue(inheritedTheme.colors.colorBgPrimaryLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgSecondaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBgSecondaryLight, abstractTheme.colors.colorBgSecondaryLight)
        XCTAssertTrue(inheritedTheme.colors.colorBgSecondaryLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgTertiaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBgTertiaryLight, abstractTheme.colors.colorBgTertiaryLight)
        XCTAssertTrue(inheritedTheme.colors.colorBgTertiaryLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBgEmphasizedDark, abstractTheme.colors.colorBgEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorBgEmphasizedDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgPrimaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBgPrimaryDark, abstractTheme.colors.colorBgPrimaryDark)
        XCTAssertTrue(inheritedTheme.colors.colorBgPrimaryDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgSecondaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBgSecondaryDark, abstractTheme.colors.colorBgSecondaryDark)
        XCTAssertTrue(inheritedTheme.colors.colorBgSecondaryDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgTertiaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBgTertiaryDark, abstractTheme.colors.colorBgTertiaryDark)
        XCTAssertTrue(inheritedTheme.colors.colorBgTertiaryDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderBrandPrimaryLight, abstractTheme.colors.colorBorderBrandPrimaryLight)
        XCTAssertTrue(inheritedTheme.colors.colorBorderBrandPrimaryLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderDefaultLight, abstractTheme.colors.colorBorderDefaultLight)
        XCTAssertTrue(inheritedTheme.colors.colorBorderDefaultLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderEmphasizedLight, abstractTheme.colors.colorBorderEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorBorderEmphasizedLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderFocusLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderFocusLight, abstractTheme.colors.colorBorderFocusLight)
        XCTAssertTrue(inheritedTheme.colors.colorBorderFocusLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderFocusInsetLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderFocusInsetLight, abstractTheme.colors.colorBorderFocusInsetLight)
        XCTAssertTrue(inheritedTheme.colors.colorBorderFocusInsetLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderOnBrandPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderOnBrandPrimaryLight, abstractTheme.colors.colorBorderOnBrandPrimaryLight)
        XCTAssertTrue(inheritedTheme.colors.colorBorderOnBrandPrimaryLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderOnBrandPrimaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderOnBrandPrimaryDark, abstractTheme.colors.colorBorderOnBrandPrimaryDark)
        XCTAssertTrue(inheritedTheme.colors.colorBorderOnBrandPrimaryDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandPrimaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderBrandPrimaryDark, abstractTheme.colors.colorBorderBrandPrimaryDark)
        XCTAssertTrue(inheritedTheme.colors.colorBorderBrandPrimaryDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderDefaultDark, abstractTheme.colors.colorBorderDefaultDark)
        XCTAssertTrue(inheritedTheme.colors.colorBorderDefaultDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderEmphasizedDark, abstractTheme.colors.colorBorderEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorBorderEmphasizedDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderFocusDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderFocusDark, abstractTheme.colors.colorBorderFocusDark)
        XCTAssertTrue(inheritedTheme.colors.colorBorderFocusDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderFocusInsetDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderFocusInsetDark, abstractTheme.colors.colorBorderFocusInsetDark)
        XCTAssertTrue(inheritedTheme.colors.colorBorderFocusInsetDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentBrandPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentBrandPrimaryLight, abstractTheme.colors.colorContentBrandPrimaryLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentBrandPrimaryLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentDefaultLight, abstractTheme.colors.colorContentDefaultLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentDefaultLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentDisabledLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentDisabledLight, abstractTheme.colors.colorContentDisabledLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentDisabledLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentMutedLight, abstractTheme.colors.colorContentMutedLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentMutedLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionDisabledLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionDisabledLight, abstractTheme.colors.colorContentOnActionDisabledLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionDisabledLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionEnabledLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionEnabledLight, abstractTheme.colors.colorContentOnActionEnabledLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionEnabledLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionFocusLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionFocusLight, abstractTheme.colors.colorContentOnActionFocusLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionFocusLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionHighlightedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionHighlightedLight, abstractTheme.colors.colorContentOnActionHighlightedLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionHighlightedLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionHoverLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionHoverLight, abstractTheme.colors.colorContentOnActionHoverLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionHoverLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionLoadingLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionLoadingLight, abstractTheme.colors.colorContentOnActionLoadingLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionLoadingLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionNegativeLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionNegativeLight, abstractTheme.colors.colorContentOnActionNegativeLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionNegativeLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionPressedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionPressedLight, abstractTheme.colors.colorContentOnActionPressedLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionPressedLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionDisabledDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionDisabledDark, abstractTheme.colors.colorContentOnActionDisabledDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionDisabledDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionEnabledDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionEnabledDark, abstractTheme.colors.colorContentOnActionEnabledDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionEnabledDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionFocusDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionFocusDark, abstractTheme.colors.colorContentOnActionFocusDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionFocusDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionHighlightedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionHighlightedDark, abstractTheme.colors.colorContentOnActionHighlightedDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionHighlightedDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionHoverDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionHoverDark, abstractTheme.colors.colorContentOnActionHoverDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionHoverDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionLoadingDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionLoadingDark, abstractTheme.colors.colorContentOnActionLoadingDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionLoadingDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionNegativeDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionNegativeDark, abstractTheme.colors.colorContentOnActionNegativeDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionNegativeDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionPressedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionPressedDark, abstractTheme.colors.colorContentOnActionPressedDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionPressedDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBrandPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnBrandPrimaryLight, abstractTheme.colors.colorContentOnBrandPrimaryLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnBrandPrimaryLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBrandPrimaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnBrandPrimaryDark, abstractTheme.colors.colorContentOnBrandPrimaryDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnBrandPrimaryDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnOverlayEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnOverlayEmphasizedLight, abstractTheme.colors.colorContentOnOverlayEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnOverlayEmphasizedLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnOverlayEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnOverlayEmphasizedDark, abstractTheme.colors.colorContentOnOverlayEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnOverlayEmphasizedDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnStatusEmphasizedLight, abstractTheme.colors.colorContentOnStatusEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnStatusEmphasizedLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusEmphasizedNeutralLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnStatusEmphasizedNeutralLight, abstractTheme.colors.colorContentOnStatusEmphasizedNeutralLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnStatusEmphasizedNeutralLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnStatusMutedLight, abstractTheme.colors.colorContentOnStatusMutedLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnStatusMutedLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnStatusEmphasizedDark, abstractTheme.colors.colorContentOnStatusEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnStatusEmphasizedDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusEmphasizedNeutralDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnStatusEmphasizedNeutralDark, abstractTheme.colors.colorContentOnStatusEmphasizedNeutralDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnStatusEmphasizedNeutralDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnStatusMutedDark, abstractTheme.colors.colorContentOnStatusMutedDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnStatusMutedDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusInfoLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentStatusInfoLight, abstractTheme.colors.colorContentStatusInfoLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentStatusInfoLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusNegativeLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentStatusNegativeLight, abstractTheme.colors.colorContentStatusNegativeLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentStatusNegativeLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusPositiveLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentStatusPositiveLight, abstractTheme.colors.colorContentStatusPositiveLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentStatusPositiveLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusWarningLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentStatusWarningLight, abstractTheme.colors.colorContentStatusWarningLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentStatusWarningLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusInfoDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentStatusInfoDark, abstractTheme.colors.colorContentStatusInfoDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentStatusInfoDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusNegativeDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentStatusNegativeDark, abstractTheme.colors.colorContentStatusNegativeDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentStatusNegativeDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusPositiveDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentStatusPositiveDark, abstractTheme.colors.colorContentStatusPositiveDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentStatusPositiveDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusWarningDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentStatusWarningDark, abstractTheme.colors.colorContentStatusWarningDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentStatusWarningDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOverlayDefaultLight, abstractTheme.colors.colorOverlayDefaultLight)
        XCTAssertTrue(inheritedTheme.colors.colorOverlayDefaultLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayDragLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOverlayDragLight, abstractTheme.colors.colorOverlayDragLight)
        XCTAssertTrue(inheritedTheme.colors.colorOverlayDragLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOverlayEmphasizedLight, abstractTheme.colors.colorOverlayEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorOverlayEmphasizedLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayModalLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOverlayModalLight, abstractTheme.colors.colorOverlayModalLight)
        XCTAssertTrue(inheritedTheme.colors.colorOverlayModalLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOverlayDefaultDark, abstractTheme.colors.colorOverlayDefaultDark)
        XCTAssertTrue(inheritedTheme.colors.colorOverlayDefaultDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayDragDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOverlayDragDark, abstractTheme.colors.colorOverlayDragDark)
        XCTAssertTrue(inheritedTheme.colors.colorOverlayDragDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOverlayEmphasizedDark, abstractTheme.colors.colorOverlayEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorOverlayEmphasizedDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayModalDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOverlayModalDark, abstractTheme.colors.colorOverlayModalDark)
        XCTAssertTrue(inheritedTheme.colors.colorOverlayModalDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    // MARK: - Color - Surface

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceBrandPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceBrandPrimaryLight, abstractTheme.colors.colorSurfaceBrandPrimaryLight)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceBrandPrimaryLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceBrandPrimaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceBrandPrimaryDark, abstractTheme.colors.colorSurfaceBrandPrimaryDark)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceBrandPrimaryDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusAccentEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusAccentEmphasizedLight, abstractTheme.colors.colorSurfaceStatusAccentEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusAccentEmphasizedLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusAccentMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusAccentMutedLight, abstractTheme.colors.colorSurfaceStatusAccentMutedLight)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusAccentMutedLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusAccentEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusAccentEmphasizedDark, abstractTheme.colors.colorSurfaceStatusAccentEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusAccentEmphasizedDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusAccentMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusAccentMutedDark, abstractTheme.colors.colorSurfaceStatusAccentMutedDark)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusAccentMutedDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusInfoEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusInfoEmphasizedLight, abstractTheme.colors.colorSurfaceStatusInfoEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusInfoEmphasizedLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusInfoMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusInfoMutedLight, abstractTheme.colors.colorSurfaceStatusInfoMutedLight)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusInfoMutedLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusInfoEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusInfoEmphasizedDark, abstractTheme.colors.colorSurfaceStatusInfoEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusInfoEmphasizedDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusInfoMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusInfoMutedDark, abstractTheme.colors.colorSurfaceStatusInfoMutedDark)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusInfoMutedDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNegativeEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusNegativeEmphasizedLight, abstractTheme.colors.colorSurfaceStatusNegativeEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusNegativeEmphasizedLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNegativeMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusNegativeMutedLight, abstractTheme.colors.colorSurfaceStatusNegativeMutedLight)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusNegativeMutedLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNegativeEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusNegativeEmphasizedDark, abstractTheme.colors.colorSurfaceStatusNegativeEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusNegativeEmphasizedDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNegativeMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusNegativeMutedDark, abstractTheme.colors.colorSurfaceStatusNegativeMutedDark)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusNegativeMutedDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNeutralEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusNeutralEmphasizedLight, abstractTheme.colors.colorSurfaceStatusNeutralEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusNeutralEmphasizedLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNeutralMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusNeutralMutedLight, abstractTheme.colors.colorSurfaceStatusNeutralMutedLight)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusNeutralMutedLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNeutralEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusNeutralEmphasizedDark, abstractTheme.colors.colorSurfaceStatusNeutralEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusNeutralEmphasizedDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNeutralMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusNeutralMutedDark, abstractTheme.colors.colorSurfaceStatusNeutralMutedDark)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusNeutralMutedDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusPositiveEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusPositiveEmphasizedLight, abstractTheme.colors.colorSurfaceStatusPositiveEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusPositiveEmphasizedLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusPositiveMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusPositiveMutedLight, abstractTheme.colors.colorSurfaceStatusPositiveMutedLight)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusPositiveMutedLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusPositiveEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusPositiveEmphasizedDark, abstractTheme.colors.colorSurfaceStatusPositiveEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusPositiveEmphasizedDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusPositiveMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusPositiveMutedDark, abstractTheme.colors.colorSurfaceStatusPositiveMutedDark)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusPositiveMutedDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusWarningEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusWarningEmphasizedLight, abstractTheme.colors.colorSurfaceStatusWarningEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusWarningEmphasizedLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusWarningMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusWarningMutedLight, abstractTheme.colors.colorSurfaceStatusWarningMutedLight)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusWarningMutedLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusWarningEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusWarningEmphasizedDark, abstractTheme.colors.colorSurfaceStatusWarningEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusWarningEmphasizedDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusWarningMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusWarningMutedDark, abstractTheme.colors.colorSurfaceStatusWarningMutedDark)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusWarningMutedDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    // MARK: - Color - Decorative

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1DefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent1DefaultLight, abstractTheme.colors.colorDecorativeAccent1DefaultLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent1DefaultLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1EmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent1EmphasizedLight, abstractTheme.colors.colorDecorativeAccent1EmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent1EmphasizedLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1MutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent1MutedLight, abstractTheme.colors.colorDecorativeAccent1MutedLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent1MutedLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1DefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent1DefaultDark, abstractTheme.colors.colorDecorativeAccent1DefaultDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent1DefaultDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1EmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent1EmphasizedDark, abstractTheme.colors.colorDecorativeAccent1EmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent1EmphasizedDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1MutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent1MutedDark, abstractTheme.colors.colorDecorativeAccent1MutedDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent1MutedDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2DefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent2DefaultLight, abstractTheme.colors.colorDecorativeAccent2DefaultLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent2DefaultLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2EmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent2EmphasizedLight, abstractTheme.colors.colorDecorativeAccent2EmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent2EmphasizedLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2MutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent2MutedLight, abstractTheme.colors.colorDecorativeAccent2MutedLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent2MutedLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2DefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent2DefaultDark, abstractTheme.colors.colorDecorativeAccent2DefaultDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent2DefaultDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2EmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent2EmphasizedDark, abstractTheme.colors.colorDecorativeAccent2EmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent2EmphasizedDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2MutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent2MutedDark, abstractTheme.colors.colorDecorativeAccent2MutedDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent2MutedDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3DefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent3DefaultLight, abstractTheme.colors.colorDecorativeAccent3DefaultLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent3DefaultLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3EmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent3EmphasizedLight, abstractTheme.colors.colorDecorativeAccent3EmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent3EmphasizedLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3MutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent3MutedLight, abstractTheme.colors.colorDecorativeAccent3MutedLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent3MutedLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3DefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent3DefaultDark, abstractTheme.colors.colorDecorativeAccent3DefaultDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent3DefaultDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3EmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent3EmphasizedDark, abstractTheme.colors.colorDecorativeAccent3EmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent3EmphasizedDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3MutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent3MutedDark, abstractTheme.colors.colorDecorativeAccent3MutedDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent3MutedDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4DefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent4DefaultLight, abstractTheme.colors.colorDecorativeAccent4DefaultLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent4DefaultLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4EmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent4EmphasizedLight, abstractTheme.colors.colorDecorativeAccent4EmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent4EmphasizedLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4MutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent4MutedLight, abstractTheme.colors.colorDecorativeAccent4MutedLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent4MutedLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4DefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent4DefaultDark, abstractTheme.colors.colorDecorativeAccent4DefaultDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent4DefaultDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4EmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent4EmphasizedDark, abstractTheme.colors.colorDecorativeAccent4EmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent4EmphasizedDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4MutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent4MutedDark, abstractTheme.colors.colorDecorativeAccent4MutedDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent4MutedDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5DefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent5DefaultLight, abstractTheme.colors.colorDecorativeAccent5DefaultLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent5DefaultLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5EmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent5EmphasizedLight, abstractTheme.colors.colorDecorativeAccent5EmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent5EmphasizedLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5MutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent5MutedLight, abstractTheme.colors.colorDecorativeAccent5MutedLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent5MutedLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5DefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent5DefaultDark, abstractTheme.colors.colorDecorativeAccent5DefaultDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent5DefaultDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5EmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent5EmphasizedDark, abstractTheme.colors.colorDecorativeAccent5EmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent5EmphasizedDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5MutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent5MutedDark, abstractTheme.colors.colorDecorativeAccent5MutedDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent5MutedDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeBrandPrimaryLight, abstractTheme.colors.colorDecorativeBrandPrimaryLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeBrandPrimaryLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandSecondaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeBrandSecondaryLight, abstractTheme.colors.colorDecorativeBrandSecondaryLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeBrandSecondaryLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandTertiaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeBrandTertiaryLight, abstractTheme.colors.colorDecorativeBrandTertiaryLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeBrandTertiaryLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandPrimaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeBrandPrimaryDark, abstractTheme.colors.colorDecorativeBrandPrimaryDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeBrandPrimaryDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandSecondaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeBrandSecondaryDark, abstractTheme.colors.colorDecorativeBrandSecondaryDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeBrandSecondaryDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandTertiaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeBrandTertiaryDark, abstractTheme.colors.colorDecorativeBrandTertiaryDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeBrandTertiaryDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeNeutralDefaultLight, abstractTheme.colors.colorDecorativeNeutralDefaultLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeNeutralDefaultLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeNeutralEmphasizedLight, abstractTheme.colors.colorDecorativeNeutralEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeNeutralEmphasizedLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeNeutralMutedLight, abstractTheme.colors.colorDecorativeNeutralMutedLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeNeutralMutedLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeNeutralDefaultDark, abstractTheme.colors.colorDecorativeNeutralDefaultDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeNeutralDefaultDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeNeutralEmphasizedDark, abstractTheme.colors.colorDecorativeNeutralEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeNeutralEmphasizedDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeNeutralMutedDark, abstractTheme.colors.colorDecorativeNeutralMutedDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeNeutralMutedDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint100Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint100Light, abstractTheme.colors.colorDecorativeSkinTint100Light)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint100Light == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint200Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint200Light, abstractTheme.colors.colorDecorativeSkinTint200Light)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint200Light == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint300Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint300Light, abstractTheme.colors.colorDecorativeSkinTint300Light)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint300Light == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint400Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint400Light, abstractTheme.colors.colorDecorativeSkinTint400Light)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint400Light == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint500Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint500Light, abstractTheme.colors.colorDecorativeSkinTint500Light)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint500Light == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint600Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint600Light, abstractTheme.colors.colorDecorativeSkinTint600Light)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint600Light == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint700Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint700Light, abstractTheme.colors.colorDecorativeSkinTint700Light)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint700Light == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint800Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint800Light, abstractTheme.colors.colorDecorativeSkinTint800Light)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint800Light == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint900Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint900Light, abstractTheme.colors.colorDecorativeSkinTint900Light)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint900Light == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint100Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint100Dark, abstractTheme.colors.colorDecorativeSkinTint100Dark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint100Dark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint200Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint200Dark, abstractTheme.colors.colorDecorativeSkinTint200Dark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint200Dark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint300Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint300Dark, abstractTheme.colors.colorDecorativeSkinTint300Dark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint300Dark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint400Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint400Dark, abstractTheme.colors.colorDecorativeSkinTint400Dark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint400Dark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint500Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint500Dark, abstractTheme.colors.colorDecorativeSkinTint500Dark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint500Dark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint600Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint600Dark, abstractTheme.colors.colorDecorativeSkinTint600Dark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint600Dark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint700Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint700Dark, abstractTheme.colors.colorDecorativeSkinTint700Dark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint700Dark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint800Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint800Dark, abstractTheme.colors.colorDecorativeSkinTint800Dark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint800Dark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint900Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint900Dark, abstractTheme.colors.colorDecorativeSkinTint900Dark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint900Dark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    // MARK: - Color - Chart

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier1Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier1Light, abstractTheme.colors.colorChartCategoricalTier1Light)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier1Light == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier2Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier2Light, abstractTheme.colors.colorChartCategoricalTier2Light)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier2Light == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier3Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier3Light, abstractTheme.colors.colorChartCategoricalTier3Light)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier3Light == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier4Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier4Light, abstractTheme.colors.colorChartCategoricalTier4Light)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier4Light == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier5Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier5Light, abstractTheme.colors.colorChartCategoricalTier5Light)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier5Light == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier6Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier6Light, abstractTheme.colors.colorChartCategoricalTier6Light)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier6Light == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier7Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier7Light, abstractTheme.colors.colorChartCategoricalTier7Light)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier7Light == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier8Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier8Light, abstractTheme.colors.colorChartCategoricalTier8Light)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier8Light == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier9Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier9Light, abstractTheme.colors.colorChartCategoricalTier9Light)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier9Light == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier10Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier10Light, abstractTheme.colors.colorChartCategoricalTier10Light)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier10Light == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier1Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier1Dark, abstractTheme.colors.colorChartCategoricalTier1Dark)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier1Dark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier2Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier2Dark, abstractTheme.colors.colorChartCategoricalTier2Dark)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier2Dark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier3Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier3Dark, abstractTheme.colors.colorChartCategoricalTier3Dark)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier3Dark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier4Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier4Dark, abstractTheme.colors.colorChartCategoricalTier4Dark)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier4Dark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier5Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier5Dark, abstractTheme.colors.colorChartCategoricalTier5Dark)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier5Dark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier6Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier6Dark, abstractTheme.colors.colorChartCategoricalTier6Dark)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier6Dark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier7Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier7Dark, abstractTheme.colors.colorChartCategoricalTier7Dark)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier7Dark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier8Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier8Dark, abstractTheme.colors.colorChartCategoricalTier8Dark)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier8Dark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier9Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier9Dark, abstractTheme.colors.colorChartCategoricalTier9Dark)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier9Dark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier10Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier10Dark, abstractTheme.colors.colorChartCategoricalTier10Dark)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier10Dark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalInformationLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartFunctionalInformationLight, abstractTheme.colors.colorChartFunctionalInformationLight)
        XCTAssertTrue(inheritedTheme.colors.colorChartFunctionalInformationLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalNegativeLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartFunctionalNegativeLight, abstractTheme.colors.colorChartFunctionalNegativeLight)
        XCTAssertTrue(inheritedTheme.colors.colorChartFunctionalNegativeLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalPositiveLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartFunctionalPositiveLight, abstractTheme.colors.colorChartFunctionalPositiveLight)
        XCTAssertTrue(inheritedTheme.colors.colorChartFunctionalPositiveLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalWarningLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartFunctionalWarningLight, abstractTheme.colors.colorChartFunctionalWarningLight)
        XCTAssertTrue(inheritedTheme.colors.colorChartFunctionalWarningLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalInformationDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartFunctionalInformationDark, abstractTheme.colors.colorChartFunctionalInformationDark)
        XCTAssertTrue(inheritedTheme.colors.colorChartFunctionalInformationDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalNegativeDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartFunctionalNegativeDark, abstractTheme.colors.colorChartFunctionalNegativeDark)
        XCTAssertTrue(inheritedTheme.colors.colorChartFunctionalNegativeDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalPositiveDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartFunctionalPositiveDark, abstractTheme.colors.colorChartFunctionalPositiveDark)
        XCTAssertTrue(inheritedTheme.colors.colorChartFunctionalPositiveDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalWarningDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartFunctionalWarningDark, abstractTheme.colors.colorChartFunctionalWarningDark)
        XCTAssertTrue(inheritedTheme.colors.colorChartFunctionalWarningDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartGridlinesLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartGridlinesLight, abstractTheme.colors.colorChartGridlinesLight)
        XCTAssertTrue(inheritedTheme.colors.colorChartGridlinesLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartHighlightLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartHighlightLight, abstractTheme.colors.colorChartHighlightLight)
        XCTAssertTrue(inheritedTheme.colors.colorChartHighlightLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartNeutralLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartNeutralLight, abstractTheme.colors.colorChartNeutralLight)
        XCTAssertTrue(inheritedTheme.colors.colorChartNeutralLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    // MARK: - Color - Repository

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryAccentDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryAccentDefaultLight, abstractTheme.colors.colorRepositoryAccentDefaultLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryAccentDefaultLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryAccentHighestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryAccentHighestLight, abstractTheme.colors.colorRepositoryAccentHighestLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryAccentHighestLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryAccentLowLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryAccentLowLight, abstractTheme.colors.colorRepositoryAccentLowLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryAccentLowLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryAccentLowestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryAccentLowestLight, abstractTheme.colors.colorRepositoryAccentLowestLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryAccentLowestLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryAccentDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryAccentDefaultDark, abstractTheme.colors.colorRepositoryAccentDefaultDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryAccentDefaultDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryAccentHighestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryAccentHighestDark, abstractTheme.colors.colorRepositoryAccentHighestDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryAccentHighestDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryAccentLowDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryAccentLowDark, abstractTheme.colors.colorRepositoryAccentLowDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryAccentLowDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryAccentLowestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryAccentLowestDark, abstractTheme.colors.colorRepositoryAccentLowestDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryAccentLowestDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryInfoDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryInfoDefaultLight, abstractTheme.colors.colorRepositoryInfoDefaultLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryInfoDefaultLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryInfoHighestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryInfoHighestLight, abstractTheme.colors.colorRepositoryInfoHighestLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryInfoHighestLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryInfoLowLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryInfoLowLight, abstractTheme.colors.colorRepositoryInfoLowLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryInfoLowLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryInfoLowestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryInfoLowestLight, abstractTheme.colors.colorRepositoryInfoLowestLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryInfoLowestLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryInfoDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryInfoDefaultDark, abstractTheme.colors.colorRepositoryInfoDefaultDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryInfoDefaultDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryInfoHighestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryInfoHighestDark, abstractTheme.colors.colorRepositoryInfoHighestDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryInfoHighestDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryInfoLowDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryInfoLowDark, abstractTheme.colors.colorRepositoryInfoLowDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryInfoLowDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryInfoLowestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryInfoLowestDark, abstractTheme.colors.colorRepositoryInfoLowestDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryInfoLowestDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNegativeDefaultLight, abstractTheme.colors.colorRepositoryNegativeDefaultLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNegativeDefaultLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeHighLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNegativeHighLight, abstractTheme.colors.colorRepositoryNegativeHighLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNegativeHighLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeHigherLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNegativeHigherLight, abstractTheme.colors.colorRepositoryNegativeHigherLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNegativeHigherLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeHighestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNegativeHighestLight, abstractTheme.colors.colorRepositoryNegativeHighestLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNegativeHighestLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeLowLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNegativeLowLight, abstractTheme.colors.colorRepositoryNegativeLowLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNegativeLowLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeLowerLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNegativeLowerLight, abstractTheme.colors.colorRepositoryNegativeLowerLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNegativeLowerLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeLowestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNegativeLowestLight, abstractTheme.colors.colorRepositoryNegativeLowestLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNegativeLowestLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNegativeDefaultDark, abstractTheme.colors.colorRepositoryNegativeDefaultDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNegativeDefaultDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeHighDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNegativeHighDark, abstractTheme.colors.colorRepositoryNegativeHighDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNegativeHighDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeHigherDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNegativeHigherDark, abstractTheme.colors.colorRepositoryNegativeHigherDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNegativeHigherDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeHighestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNegativeHighestDark, abstractTheme.colors.colorRepositoryNegativeHighestDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNegativeHighestDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeLowDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNegativeLowDark, abstractTheme.colors.colorRepositoryNegativeLowDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNegativeLowDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeLowerDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNegativeLowerDark, abstractTheme.colors.colorRepositoryNegativeLowerDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNegativeLowerDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeLowestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNegativeLowestDark, abstractTheme.colors.colorRepositoryNegativeLowestDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNegativeLowestDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedBlackLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedBlackLight, abstractTheme.colors.colorRepositoryNeutralEmphasizedBlackLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralEmphasizedBlackLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedHighLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHighLight, abstractTheme.colors.colorRepositoryNeutralEmphasizedHighLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHighLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedHigherLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHigherLight, abstractTheme.colors.colorRepositoryNeutralEmphasizedHigherLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHigherLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedHighestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHighestLight, abstractTheme.colors.colorRepositoryNeutralEmphasizedHighestLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHighestLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedMediumLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedMediumLight, abstractTheme.colors.colorRepositoryNeutralEmphasizedMediumLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralEmphasizedMediumLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedBlackDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedBlackDark, abstractTheme.colors.colorRepositoryNeutralEmphasizedBlackDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralEmphasizedBlackDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedHighDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHighDark, abstractTheme.colors.colorRepositoryNeutralEmphasizedHighDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHighDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedHigherDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHigherDark, abstractTheme.colors.colorRepositoryNeutralEmphasizedHigherDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHigherDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedHighestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHighestDark, abstractTheme.colors.colorRepositoryNeutralEmphasizedHighestDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHighestDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedMediumDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedMediumDark, abstractTheme.colors.colorRepositoryNeutralEmphasizedMediumDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralEmphasizedMediumDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralMutedLowerLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralMutedLowerLight, abstractTheme.colors.colorRepositoryNeutralMutedLowerLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralMutedLowerLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralMutedLowestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralMutedLowestLight, abstractTheme.colors.colorRepositoryNeutralMutedLowestLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralMutedLowestLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralMutedWhiteLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralMutedWhiteLight, abstractTheme.colors.colorRepositoryNeutralMutedWhiteLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralMutedWhiteLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralMutedLowerDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralMutedLowerDark, abstractTheme.colors.colorRepositoryNeutralMutedLowerDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralMutedLowerDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralMutedLowestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralMutedLowestDark, abstractTheme.colors.colorRepositoryNeutralMutedLowestDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralMutedLowestDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralMutedWhiteDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralMutedWhiteDark, abstractTheme.colors.colorRepositoryNeutralMutedWhiteDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralMutedWhiteDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackHigherLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityBlackHigherLight, abstractTheme.colors.colorRepositoryOpacityBlackHigherLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityBlackHigherLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackHighestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityBlackHighestLight, abstractTheme.colors.colorRepositoryOpacityBlackHighestLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityBlackHighestLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackLowLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityBlackLowLight, abstractTheme.colors.colorRepositoryOpacityBlackLowLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityBlackLowLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackLowerLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityBlackLowerLight, abstractTheme.colors.colorRepositoryOpacityBlackLowerLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityBlackLowerLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackLowestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityBlackLowestLight, abstractTheme.colors.colorRepositoryOpacityBlackLowestLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityBlackLowestLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackMediumLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityBlackMediumLight, abstractTheme.colors.colorRepositoryOpacityBlackMediumLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityBlackMediumLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackTransparentLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityBlackTransparentLight, abstractTheme.colors.colorRepositoryOpacityBlackTransparentLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityBlackTransparentLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackHigherDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityBlackHigherDark, abstractTheme.colors.colorRepositoryOpacityBlackHigherDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityBlackHigherDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackHighestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityBlackHighestDark, abstractTheme.colors.colorRepositoryOpacityBlackHighestDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityBlackHighestDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackLowDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityBlackLowDark, abstractTheme.colors.colorRepositoryOpacityBlackLowDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityBlackLowDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackLowerDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityBlackLowerDark, abstractTheme.colors.colorRepositoryOpacityBlackLowerDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityBlackLowerDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackLowestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityBlackLowestDark, abstractTheme.colors.colorRepositoryOpacityBlackLowestDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityBlackLowestDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackMediumDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityBlackMediumDark, abstractTheme.colors.colorRepositoryOpacityBlackMediumDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityBlackMediumDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackTransparentDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityBlackTransparentDark, abstractTheme.colors.colorRepositoryOpacityBlackTransparentDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityBlackTransparentDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityInfoLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityInfoLight, abstractTheme.colors.colorRepositoryOpacityInfoLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityInfoLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityNegativeLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityNegativeLight, abstractTheme.colors.colorRepositoryOpacityNegativeLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityNegativeLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityPositiveLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityPositiveLight, abstractTheme.colors.colorRepositoryOpacityPositiveLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityPositiveLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWarningLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWarningLight, abstractTheme.colors.colorRepositoryOpacityWarningLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWarningLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteHighLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteHighLight, abstractTheme.colors.colorRepositoryOpacityWhiteHighLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWhiteHighLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteHigherLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteHigherLight, abstractTheme.colors.colorRepositoryOpacityWhiteHigherLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWhiteHigherLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteHighestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteHighestLight, abstractTheme.colors.colorRepositoryOpacityWhiteHighestLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWhiteHighestLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteLowLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteLowLight, abstractTheme.colors.colorRepositoryOpacityWhiteLowLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWhiteLowLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteLowerLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteLowerLight, abstractTheme.colors.colorRepositoryOpacityWhiteLowerLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWhiteLowerLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteLowestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteLowestLight, abstractTheme.colors.colorRepositoryOpacityWhiteLowestLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWhiteLowestLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteTransparentLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteTransparentLight, abstractTheme.colors.colorRepositoryOpacityWhiteTransparentLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWhiteTransparentLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteHighDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteHighDark, abstractTheme.colors.colorRepositoryOpacityWhiteHighDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWhiteHighDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteHigherDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteHigherDark, abstractTheme.colors.colorRepositoryOpacityWhiteHigherDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWhiteHigherDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteHighestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteHighestDark, abstractTheme.colors.colorRepositoryOpacityWhiteHighestDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWhiteHighestDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteLowDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteLowDark, abstractTheme.colors.colorRepositoryOpacityWhiteLowDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWhiteLowDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteLowerDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteLowerDark, abstractTheme.colors.colorRepositoryOpacityWhiteLowerDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWhiteLowerDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteLowestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteLowestDark, abstractTheme.colors.colorRepositoryOpacityWhiteLowestDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWhiteLowestDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteTransparentDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteTransparentDark, abstractTheme.colors.colorRepositoryOpacityWhiteTransparentDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWhiteTransparentDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityInfoDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityInfoDark, abstractTheme.colors.colorRepositoryOpacityInfoDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityInfoDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityNegativeDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityNegativeDark, abstractTheme.colors.colorRepositoryOpacityNegativeDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityNegativeDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityPositiveDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityPositiveDark, abstractTheme.colors.colorRepositoryOpacityPositiveDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityPositiveDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWarningDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWarningDark, abstractTheme.colors.colorRepositoryOpacityWarningDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWarningDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPositiveDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryPositiveDefaultLight, abstractTheme.colors.colorRepositoryPositiveDefaultLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryPositiveDefaultLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPositiveHighestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryPositiveHighestLight, abstractTheme.colors.colorRepositoryPositiveHighestLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryPositiveHighestLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPositiveLowLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryPositiveLowLight, abstractTheme.colors.colorRepositoryPositiveLowLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryPositiveLowLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPositiveLowestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryPositiveLowestLight, abstractTheme.colors.colorRepositoryPositiveLowestLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryPositiveLowestLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPositiveDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryPositiveDefaultDark, abstractTheme.colors.colorRepositoryPositiveDefaultDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryPositiveDefaultDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPositiveHighestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryPositiveHighestDark, abstractTheme.colors.colorRepositoryPositiveHighestDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryPositiveHighestDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPositiveLowDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryPositiveLowDark, abstractTheme.colors.colorRepositoryPositiveLowDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryPositiveLowDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPositiveLowestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryPositiveLowestDark, abstractTheme.colors.colorRepositoryPositiveLowestDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryPositiveLowestDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPrimaryDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryPrimaryDefaultLight, abstractTheme.colors.colorRepositoryPrimaryDefaultLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryPrimaryDefaultLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPrimaryLowLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryPrimaryLowLight, abstractTheme.colors.colorRepositoryPrimaryLowLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryPrimaryLowLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPrimaryDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryPrimaryDefaultDark, abstractTheme.colors.colorRepositoryPrimaryDefaultDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryPrimaryDefaultDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPrimaryLowDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryPrimaryLowDark, abstractTheme.colors.colorRepositoryPrimaryLowDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryPrimaryLowDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryWarningDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryWarningDefaultLight, abstractTheme.colors.colorRepositoryWarningDefaultLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryWarningDefaultLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryWarningHighestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryWarningHighestLight, abstractTheme.colors.colorRepositoryWarningHighestLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryWarningHighestLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryWarningLowLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryWarningLowLight, abstractTheme.colors.colorRepositoryWarningLowLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryWarningLowLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryWarningLowestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryWarningLowestLight, abstractTheme.colors.colorRepositoryWarningLowestLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryWarningLowestLight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryWarningDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryWarningDefaultDark, abstractTheme.colors.colorRepositoryWarningDefaultDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryWarningDefaultDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryWarningHighestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryWarningHighestDark, abstractTheme.colors.colorRepositoryWarningHighestDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryWarningHighestDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryWarningLowDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryWarningLowDark, abstractTheme.colors.colorRepositoryWarningLowDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryWarningLowDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryWarningLowestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryWarningLowestDark, abstractTheme.colors.colorRepositoryWarningLowestDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryWarningLowestDark == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeSemanticColorToken)
    }
}

// swiftlint:enable type_body_length
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable required_deinit
