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
        XCTAssertNotEqual(inheritedTheme.colorOpacityInvisibleBlackLight, abstractTheme.colorOpacityInvisibleBlackLight)
        XCTAssertTrue(inheritedTheme.colorOpacityInvisibleBlackLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOpacityInvisibleBlackDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorOpacityInvisibleBlackDark, abstractTheme.colorOpacityInvisibleBlackDark)
        XCTAssertTrue(inheritedTheme.colorOpacityInvisibleBlackDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOpacityInvisibleWhiteLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorOpacityInvisibleWhiteLight, abstractTheme.colorOpacityInvisibleWhiteLight)
        XCTAssertTrue(inheritedTheme.colorOpacityInvisibleWhiteLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOpacityInvisibleWhiteDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorOpacityInvisibleWhiteDark, abstractTheme.colorOpacityInvisibleWhiteDark)
        XCTAssertTrue(inheritedTheme.colorOpacityInvisibleWhiteDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionDisabledLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionDisabledLight, abstractTheme.colorActionDisabledLight)
        XCTAssertTrue(inheritedTheme.colorActionDisabledLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionEnabledLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionEnabledLight, abstractTheme.colorActionEnabledLight)
        XCTAssertTrue(inheritedTheme.colorActionEnabledLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionFocusLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionFocusLight, abstractTheme.colorActionFocusLight)
        XCTAssertTrue(inheritedTheme.colorActionFocusLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionHighlightedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionHighlightedLight, abstractTheme.colorActionHighlightedLight)
        XCTAssertTrue(inheritedTheme.colorActionHighlightedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionHoverLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionHoverLight, abstractTheme.colorActionHoverLight)
        XCTAssertTrue(inheritedTheme.colorActionHoverLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionLoadingLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionLoadingLight, abstractTheme.colorActionLoadingLight)
        XCTAssertTrue(inheritedTheme.colorActionLoadingLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeEnabledLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionNegativeEnabledLight, abstractTheme.colorActionNegativeEnabledLight)
        XCTAssertTrue(inheritedTheme.colorActionNegativeEnabledLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeFocusLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionNegativeFocusLight, abstractTheme.colorActionNegativeFocusLight)
        XCTAssertTrue(inheritedTheme.colorActionNegativeFocusLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeHoverLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionNegativeHoverLight, abstractTheme.colorActionNegativeHoverLight)
        XCTAssertTrue(inheritedTheme.colorActionNegativeHoverLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeLoadingLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionNegativeLoadingLight, abstractTheme.colorActionNegativeLoadingLight)
        XCTAssertTrue(inheritedTheme.colorActionNegativeLoadingLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativePressedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionNegativePressedLight, abstractTheme.colorActionNegativePressedLight)
        XCTAssertTrue(inheritedTheme.colorActionNegativePressedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeEnabledDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionNegativeEnabledDark, abstractTheme.colorActionNegativeEnabledDark)
        XCTAssertTrue(inheritedTheme.colorActionNegativeEnabledDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeFocusDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionNegativeFocusDark, abstractTheme.colorActionNegativeFocusDark)
        XCTAssertTrue(inheritedTheme.colorActionNegativeFocusDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeHoverDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionNegativeHoverDark, abstractTheme.colorActionNegativeHoverDark)
        XCTAssertTrue(inheritedTheme.colorActionNegativeHoverDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeLoadingDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionNegativeLoadingDark, abstractTheme.colorActionNegativeLoadingDark)
        XCTAssertTrue(inheritedTheme.colorActionNegativeLoadingDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativePressedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionNegativePressedDark, abstractTheme.colorActionNegativePressedDark)
        XCTAssertTrue(inheritedTheme.colorActionNegativePressedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPressedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPressedLight, abstractTheme.colorActionPressedLight)
        XCTAssertTrue(inheritedTheme.colorActionPressedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSelectedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSelectedLight, abstractTheme.colorActionSelectedLight)
        XCTAssertTrue(inheritedTheme.colorActionSelectedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportEnabledLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSupportEnabledLight, abstractTheme.colorActionSupportEnabledLight)
        XCTAssertTrue(inheritedTheme.colorActionSupportEnabledLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportFocusLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSupportFocusLight, abstractTheme.colorActionSupportFocusLight)
        XCTAssertTrue(inheritedTheme.colorActionSupportFocusLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportHoverLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSupportHoverLight, abstractTheme.colorActionSupportHoverLight)
        XCTAssertTrue(inheritedTheme.colorActionSupportHoverLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportLoadingLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSupportLoadingLight, abstractTheme.colorActionSupportLoadingLight)
        XCTAssertTrue(inheritedTheme.colorActionSupportLoadingLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportPressedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSupportPressedLight, abstractTheme.colorActionSupportPressedLight)
        XCTAssertTrue(inheritedTheme.colorActionSupportPressedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportEnabledDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSupportEnabledDark, abstractTheme.colorActionSupportEnabledDark)
        XCTAssertTrue(inheritedTheme.colorActionSupportEnabledDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportFocusDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSupportFocusDark, abstractTheme.colorActionSupportFocusDark)
        XCTAssertTrue(inheritedTheme.colorActionSupportFocusDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportHoverDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSupportHoverDark, abstractTheme.colorActionSupportHoverDark)
        XCTAssertTrue(inheritedTheme.colorActionSupportHoverDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportLoadingDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSupportLoadingDark, abstractTheme.colorActionSupportLoadingDark)
        XCTAssertTrue(inheritedTheme.colorActionSupportLoadingDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportPressedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSupportPressedDark, abstractTheme.colorActionSupportPressedDark)
        XCTAssertTrue(inheritedTheme.colorActionSupportPressedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionVisitedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionVisitedLight, abstractTheme.colorActionVisitedLight)
        XCTAssertTrue(inheritedTheme.colorActionVisitedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionDisabledDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionDisabledDark, abstractTheme.colorActionDisabledDark)
        XCTAssertTrue(inheritedTheme.colorActionDisabledDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionEnabledDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionEnabledDark, abstractTheme.colorActionEnabledDark)
        XCTAssertTrue(inheritedTheme.colorActionEnabledDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionFocusDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionFocusDark, abstractTheme.colorActionFocusDark)
        XCTAssertTrue(inheritedTheme.colorActionFocusDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionHighlightedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionHighlightedDark, abstractTheme.colorActionHighlightedDark)
        XCTAssertTrue(inheritedTheme.colorActionHighlightedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionHoverDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionHoverDark, abstractTheme.colorActionHoverDark)
        XCTAssertTrue(inheritedTheme.colorActionHoverDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionLoadingDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionLoadingDark, abstractTheme.colorActionLoadingDark)
        XCTAssertTrue(inheritedTheme.colorActionLoadingDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPressedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPressedDark, abstractTheme.colorActionPressedDark)
        XCTAssertTrue(inheritedTheme.colorActionPressedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSelectedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSelectedDark, abstractTheme.colorActionSelectedDark)
        XCTAssertTrue(inheritedTheme.colorActionSelectedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionVisitedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionVisitedDark, abstractTheme.colorActionVisitedDark)
        XCTAssertTrue(inheritedTheme.colorActionVisitedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysBlackLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysBlackLight, abstractTheme.colorAlwaysBlackLight)
        XCTAssertTrue(inheritedTheme.colorAlwaysBlackLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnBlackLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnBlackLight, abstractTheme.colorAlwaysOnBlackLight)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnBlackLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnWhiteLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnWhiteLight, abstractTheme.colorAlwaysOnWhiteLight)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnWhiteLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysWhiteLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysWhiteLight, abstractTheme.colorAlwaysWhiteLight)
        XCTAssertTrue(inheritedTheme.colorAlwaysWhiteLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysBlackDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysBlackDark, abstractTheme.colorAlwaysBlackDark)
        XCTAssertTrue(inheritedTheme.colorAlwaysBlackDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnBlackDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnBlackDark, abstractTheme.colorAlwaysOnBlackDark)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnBlackDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnWhiteDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnWhiteDark, abstractTheme.colorAlwaysOnWhiteDark)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnWhiteDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysWhiteDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysWhiteDark, abstractTheme.colorAlwaysWhiteDark)
        XCTAssertTrue(inheritedTheme.colorAlwaysWhiteDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgEmphasizedLight, abstractTheme.colorBgEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorBgEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgPrimaryLight, abstractTheme.colorBgPrimaryLight)
        XCTAssertTrue(inheritedTheme.colorBgPrimaryLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgSecondaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgSecondaryLight, abstractTheme.colorBgSecondaryLight)
        XCTAssertTrue(inheritedTheme.colorBgSecondaryLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgTertiaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgTertiaryLight, abstractTheme.colorBgTertiaryLight)
        XCTAssertTrue(inheritedTheme.colorBgTertiaryLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgEmphasizedDark, abstractTheme.colorBgEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorBgEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgPrimaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgPrimaryDark, abstractTheme.colorBgPrimaryDark)
        XCTAssertTrue(inheritedTheme.colorBgPrimaryDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgSecondaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgSecondaryDark, abstractTheme.colorBgSecondaryDark)
        XCTAssertTrue(inheritedTheme.colorBgSecondaryDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgTertiaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgTertiaryDark, abstractTheme.colorBgTertiaryDark)
        XCTAssertTrue(inheritedTheme.colorBgTertiaryDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandPrimaryLight, abstractTheme.colorBorderBrandPrimaryLight)
        XCTAssertTrue(inheritedTheme.colorBorderBrandPrimaryLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderDefaultLight, abstractTheme.colorBorderDefaultLight)
        XCTAssertTrue(inheritedTheme.colorBorderDefaultLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderEmphasizedLight, abstractTheme.colorBorderEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorBorderEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderFocusLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderFocusLight, abstractTheme.colorBorderFocusLight)
        XCTAssertTrue(inheritedTheme.colorBorderFocusLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderFocusInsetLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderFocusInsetLight, abstractTheme.colorBorderFocusInsetLight)
        XCTAssertTrue(inheritedTheme.colorBorderFocusInsetLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderOnBrandPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderOnBrandPrimaryLight, abstractTheme.colorBorderOnBrandPrimaryLight)
        XCTAssertTrue(inheritedTheme.colorBorderOnBrandPrimaryLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderOnBrandPrimaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderOnBrandPrimaryDark, abstractTheme.colorBorderOnBrandPrimaryDark)
        XCTAssertTrue(inheritedTheme.colorBorderOnBrandPrimaryDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandPrimaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandPrimaryDark, abstractTheme.colorBorderBrandPrimaryDark)
        XCTAssertTrue(inheritedTheme.colorBorderBrandPrimaryDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderDefaultDark, abstractTheme.colorBorderDefaultDark)
        XCTAssertTrue(inheritedTheme.colorBorderDefaultDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderEmphasizedDark, abstractTheme.colorBorderEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorBorderEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderFocusDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderFocusDark, abstractTheme.colorBorderFocusDark)
        XCTAssertTrue(inheritedTheme.colorBorderFocusDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderFocusInsetDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderFocusInsetDark, abstractTheme.colorBorderFocusInsetDark)
        XCTAssertTrue(inheritedTheme.colorBorderFocusInsetDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentBrandPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentBrandPrimaryLight, abstractTheme.colorContentBrandPrimaryLight)
        XCTAssertTrue(inheritedTheme.colorContentBrandPrimaryLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentDefaultLight, abstractTheme.colorContentDefaultLight)
        XCTAssertTrue(inheritedTheme.colorContentDefaultLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentDisabledLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentDisabledLight, abstractTheme.colorContentDisabledLight)
        XCTAssertTrue(inheritedTheme.colorContentDisabledLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentMutedLight, abstractTheme.colorContentMutedLight)
        XCTAssertTrue(inheritedTheme.colorContentMutedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionDisabledLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnActionDisabledLight, abstractTheme.colorContentOnActionDisabledLight)
        XCTAssertTrue(inheritedTheme.colorContentOnActionDisabledLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionEnabledLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnActionEnabledLight, abstractTheme.colorContentOnActionEnabledLight)
        XCTAssertTrue(inheritedTheme.colorContentOnActionEnabledLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionFocusLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnActionFocusLight, abstractTheme.colorContentOnActionFocusLight)
        XCTAssertTrue(inheritedTheme.colorContentOnActionFocusLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionHighlightedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnActionHighlightedLight, abstractTheme.colorContentOnActionHighlightedLight)
        XCTAssertTrue(inheritedTheme.colorContentOnActionHighlightedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionHoverLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnActionHoverLight, abstractTheme.colorContentOnActionHoverLight)
        XCTAssertTrue(inheritedTheme.colorContentOnActionHoverLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionLoadingLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnActionLoadingLight, abstractTheme.colorContentOnActionLoadingLight)
        XCTAssertTrue(inheritedTheme.colorContentOnActionLoadingLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionNegativeLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnActionNegativeLight, abstractTheme.colorContentOnActionNegativeLight)
        XCTAssertTrue(inheritedTheme.colorContentOnActionNegativeLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionPressedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnActionPressedLight, abstractTheme.colorContentOnActionPressedLight)
        XCTAssertTrue(inheritedTheme.colorContentOnActionPressedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionDisabledDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnActionDisabledDark, abstractTheme.colorContentOnActionDisabledDark)
        XCTAssertTrue(inheritedTheme.colorContentOnActionDisabledDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionEnabledDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnActionEnabledDark, abstractTheme.colorContentOnActionEnabledDark)
        XCTAssertTrue(inheritedTheme.colorContentOnActionEnabledDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionFocusDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnActionFocusDark, abstractTheme.colorContentOnActionFocusDark)
        XCTAssertTrue(inheritedTheme.colorContentOnActionFocusDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionHighlightedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnActionHighlightedDark, abstractTheme.colorContentOnActionHighlightedDark)
        XCTAssertTrue(inheritedTheme.colorContentOnActionHighlightedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionHoverDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnActionHoverDark, abstractTheme.colorContentOnActionHoverDark)
        XCTAssertTrue(inheritedTheme.colorContentOnActionHoverDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionLoadingDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnActionLoadingDark, abstractTheme.colorContentOnActionLoadingDark)
        XCTAssertTrue(inheritedTheme.colorContentOnActionLoadingDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionNegativeDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnActionNegativeDark, abstractTheme.colorContentOnActionNegativeDark)
        XCTAssertTrue(inheritedTheme.colorContentOnActionNegativeDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionPressedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnActionPressedDark, abstractTheme.colorContentOnActionPressedDark)
        XCTAssertTrue(inheritedTheme.colorContentOnActionPressedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBrandPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBrandPrimaryLight, abstractTheme.colorContentOnBrandPrimaryLight)
        XCTAssertTrue(inheritedTheme.colorContentOnBrandPrimaryLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBrandPrimaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBrandPrimaryDark, abstractTheme.colorContentOnBrandPrimaryDark)
        XCTAssertTrue(inheritedTheme.colorContentOnBrandPrimaryDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnOverlayEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnOverlayEmphasizedLight, abstractTheme.colorContentOnOverlayEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorContentOnOverlayEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnOverlayEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnOverlayEmphasizedDark, abstractTheme.colorContentOnOverlayEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorContentOnOverlayEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnStatusEmphasizedLight, abstractTheme.colorContentOnStatusEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorContentOnStatusEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusEmphasizedNeutralLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnStatusEmphasizedNeutralLight, abstractTheme.colorContentOnStatusEmphasizedNeutralLight)
        XCTAssertTrue(inheritedTheme.colorContentOnStatusEmphasizedNeutralLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnStatusMutedLight, abstractTheme.colorContentOnStatusMutedLight)
        XCTAssertTrue(inheritedTheme.colorContentOnStatusMutedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnStatusEmphasizedDark, abstractTheme.colorContentOnStatusEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorContentOnStatusEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusEmphasizedNeutralDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnStatusEmphasizedNeutralDark, abstractTheme.colorContentOnStatusEmphasizedNeutralDark)
        XCTAssertTrue(inheritedTheme.colorContentOnStatusEmphasizedNeutralDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnStatusMutedDark, abstractTheme.colorContentOnStatusMutedDark)
        XCTAssertTrue(inheritedTheme.colorContentOnStatusMutedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusInfoLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusInfoLight, abstractTheme.colorContentStatusInfoLight)
        XCTAssertTrue(inheritedTheme.colorContentStatusInfoLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusNegativeLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusNegativeLight, abstractTheme.colorContentStatusNegativeLight)
        XCTAssertTrue(inheritedTheme.colorContentStatusNegativeLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusPositiveLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusPositiveLight, abstractTheme.colorContentStatusPositiveLight)
        XCTAssertTrue(inheritedTheme.colorContentStatusPositiveLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusWarningLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusWarningLight, abstractTheme.colorContentStatusWarningLight)
        XCTAssertTrue(inheritedTheme.colorContentStatusWarningLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusInfoDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusInfoDark, abstractTheme.colorContentStatusInfoDark)
        XCTAssertTrue(inheritedTheme.colorContentStatusInfoDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusNegativeDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusNegativeDark, abstractTheme.colorContentStatusNegativeDark)
        XCTAssertTrue(inheritedTheme.colorContentStatusNegativeDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusPositiveDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusPositiveDark, abstractTheme.colorContentStatusPositiveDark)
        XCTAssertTrue(inheritedTheme.colorContentStatusPositiveDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusWarningDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusWarningDark, abstractTheme.colorContentStatusWarningDark)
        XCTAssertTrue(inheritedTheme.colorContentStatusWarningDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorOverlayDefaultLight, abstractTheme.colorOverlayDefaultLight)
        XCTAssertTrue(inheritedTheme.colorOverlayDefaultLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayDragLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorOverlayDragLight, abstractTheme.colorOverlayDragLight)
        XCTAssertTrue(inheritedTheme.colorOverlayDragLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorOverlayEmphasizedLight, abstractTheme.colorOverlayEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorOverlayEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayModalLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorOverlayModalLight, abstractTheme.colorOverlayModalLight)
        XCTAssertTrue(inheritedTheme.colorOverlayModalLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorOverlayDefaultDark, abstractTheme.colorOverlayDefaultDark)
        XCTAssertTrue(inheritedTheme.colorOverlayDefaultDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayDragDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorOverlayDragDark, abstractTheme.colorOverlayDragDark)
        XCTAssertTrue(inheritedTheme.colorOverlayDragDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorOverlayEmphasizedDark, abstractTheme.colorOverlayEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorOverlayEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayModalDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorOverlayModalDark, abstractTheme.colorOverlayModalDark)
        XCTAssertTrue(inheritedTheme.colorOverlayModalDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    // MARK: - Color - Surface

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceBrandPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorSurfaceBrandPrimaryLight, abstractTheme.colorSurfaceBrandPrimaryLight)
        XCTAssertTrue(inheritedTheme.colorSurfaceBrandPrimaryLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceBrandPrimaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorSurfaceBrandPrimaryDark, abstractTheme.colorSurfaceBrandPrimaryDark)
        XCTAssertTrue(inheritedTheme.colorSurfaceBrandPrimaryDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusAccentEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorSurfaceStatusAccentEmphasizedLight, abstractTheme.colorSurfaceStatusAccentEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorSurfaceStatusAccentEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusAccentMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorSurfaceStatusAccentMutedLight, abstractTheme.colorSurfaceStatusAccentMutedLight)
        XCTAssertTrue(inheritedTheme.colorSurfaceStatusAccentMutedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusAccentEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorSurfaceStatusAccentEmphasizedDark, abstractTheme.colorSurfaceStatusAccentEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorSurfaceStatusAccentEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusAccentMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorSurfaceStatusAccentMutedDark, abstractTheme.colorSurfaceStatusAccentMutedDark)
        XCTAssertTrue(inheritedTheme.colorSurfaceStatusAccentMutedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusInfoEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorSurfaceStatusInfoEmphasizedLight, abstractTheme.colorSurfaceStatusInfoEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorSurfaceStatusInfoEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusInfoMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorSurfaceStatusInfoMutedLight, abstractTheme.colorSurfaceStatusInfoMutedLight)
        XCTAssertTrue(inheritedTheme.colorSurfaceStatusInfoMutedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusInfoEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorSurfaceStatusInfoEmphasizedDark, abstractTheme.colorSurfaceStatusInfoEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorSurfaceStatusInfoEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusInfoMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorSurfaceStatusInfoMutedDark, abstractTheme.colorSurfaceStatusInfoMutedDark)
        XCTAssertTrue(inheritedTheme.colorSurfaceStatusInfoMutedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNegativeEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorSurfaceStatusNegativeEmphasizedLight, abstractTheme.colorSurfaceStatusNegativeEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorSurfaceStatusNegativeEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNegativeMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorSurfaceStatusNegativeMutedLight, abstractTheme.colorSurfaceStatusNegativeMutedLight)
        XCTAssertTrue(inheritedTheme.colorSurfaceStatusNegativeMutedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNegativeEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorSurfaceStatusNegativeEmphasizedDark, abstractTheme.colorSurfaceStatusNegativeEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorSurfaceStatusNegativeEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNegativeMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorSurfaceStatusNegativeMutedDark, abstractTheme.colorSurfaceStatusNegativeMutedDark)
        XCTAssertTrue(inheritedTheme.colorSurfaceStatusNegativeMutedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNeutralEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorSurfaceStatusNeutralEmphasizedLight, abstractTheme.colorSurfaceStatusNeutralEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorSurfaceStatusNeutralEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNeutralMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorSurfaceStatusNeutralMutedLight, abstractTheme.colorSurfaceStatusNeutralMutedLight)
        XCTAssertTrue(inheritedTheme.colorSurfaceStatusNeutralMutedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNeutralEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorSurfaceStatusNeutralEmphasizedDark, abstractTheme.colorSurfaceStatusNeutralEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorSurfaceStatusNeutralEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNeutralMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorSurfaceStatusNeutralMutedDark, abstractTheme.colorSurfaceStatusNeutralMutedDark)
        XCTAssertTrue(inheritedTheme.colorSurfaceStatusNeutralMutedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusPositiveEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorSurfaceStatusPositiveEmphasizedLight, abstractTheme.colorSurfaceStatusPositiveEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorSurfaceStatusPositiveEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusPositiveMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorSurfaceStatusPositiveMutedLight, abstractTheme.colorSurfaceStatusPositiveMutedLight)
        XCTAssertTrue(inheritedTheme.colorSurfaceStatusPositiveMutedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusPositiveEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorSurfaceStatusPositiveEmphasizedDark, abstractTheme.colorSurfaceStatusPositiveEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorSurfaceStatusPositiveEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusPositiveMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorSurfaceStatusPositiveMutedDark, abstractTheme.colorSurfaceStatusPositiveMutedDark)
        XCTAssertTrue(inheritedTheme.colorSurfaceStatusPositiveMutedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusWarningEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorSurfaceStatusWarningEmphasizedLight, abstractTheme.colorSurfaceStatusWarningEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorSurfaceStatusWarningEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusWarningMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorSurfaceStatusWarningMutedLight, abstractTheme.colorSurfaceStatusWarningMutedLight)
        XCTAssertTrue(inheritedTheme.colorSurfaceStatusWarningMutedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusWarningEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorSurfaceStatusWarningEmphasizedDark, abstractTheme.colorSurfaceStatusWarningEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorSurfaceStatusWarningEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusWarningMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorSurfaceStatusWarningMutedDark, abstractTheme.colorSurfaceStatusWarningMutedDark)
        XCTAssertTrue(inheritedTheme.colorSurfaceStatusWarningMutedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    // MARK: - Color - Decorative

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1DefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent1DefaultLight, abstractTheme.colorDecorativeAccent1DefaultLight)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent1DefaultLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1EmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent1EmphasizedLight, abstractTheme.colorDecorativeAccent1EmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent1EmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1MutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent1MutedLight, abstractTheme.colorDecorativeAccent1MutedLight)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent1MutedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1DefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent1DefaultDark, abstractTheme.colorDecorativeAccent1DefaultDark)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent1DefaultDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1EmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent1EmphasizedDark, abstractTheme.colorDecorativeAccent1EmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent1EmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1MutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent1MutedDark, abstractTheme.colorDecorativeAccent1MutedDark)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent1MutedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2DefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent2DefaultLight, abstractTheme.colorDecorativeAccent2DefaultLight)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent2DefaultLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2EmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent2EmphasizedLight, abstractTheme.colorDecorativeAccent2EmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent2EmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2MutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent2MutedLight, abstractTheme.colorDecorativeAccent2MutedLight)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent2MutedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2DefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent2DefaultDark, abstractTheme.colorDecorativeAccent2DefaultDark)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent2DefaultDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2EmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent2EmphasizedDark, abstractTheme.colorDecorativeAccent2EmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent2EmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2MutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent2MutedDark, abstractTheme.colorDecorativeAccent2MutedDark)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent2MutedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3DefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent3DefaultLight, abstractTheme.colorDecorativeAccent3DefaultLight)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent3DefaultLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3EmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent3EmphasizedLight, abstractTheme.colorDecorativeAccent3EmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent3EmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3MutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent3MutedLight, abstractTheme.colorDecorativeAccent3MutedLight)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent3MutedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3DefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent3DefaultDark, abstractTheme.colorDecorativeAccent3DefaultDark)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent3DefaultDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3EmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent3EmphasizedDark, abstractTheme.colorDecorativeAccent3EmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent3EmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3MutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent3MutedDark, abstractTheme.colorDecorativeAccent3MutedDark)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent3MutedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4DefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent4DefaultLight, abstractTheme.colorDecorativeAccent4DefaultLight)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent4DefaultLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4EmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent4EmphasizedLight, abstractTheme.colorDecorativeAccent4EmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent4EmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4MutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent4MutedLight, abstractTheme.colorDecorativeAccent4MutedLight)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent4MutedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4DefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent4DefaultDark, abstractTheme.colorDecorativeAccent4DefaultDark)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent4DefaultDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4EmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent4EmphasizedDark, abstractTheme.colorDecorativeAccent4EmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent4EmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4MutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent4MutedDark, abstractTheme.colorDecorativeAccent4MutedDark)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent4MutedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5DefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent5DefaultLight, abstractTheme.colorDecorativeAccent5DefaultLight)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent5DefaultLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5EmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent5EmphasizedLight, abstractTheme.colorDecorativeAccent5EmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent5EmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5MutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent5MutedLight, abstractTheme.colorDecorativeAccent5MutedLight)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent5MutedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5DefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent5DefaultDark, abstractTheme.colorDecorativeAccent5DefaultDark)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent5DefaultDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5EmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent5EmphasizedDark, abstractTheme.colorDecorativeAccent5EmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent5EmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5MutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent5MutedDark, abstractTheme.colorDecorativeAccent5MutedDark)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent5MutedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeBrandPrimaryLight, abstractTheme.colorDecorativeBrandPrimaryLight)
        XCTAssertTrue(inheritedTheme.colorDecorativeBrandPrimaryLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandSecondaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeBrandSecondaryLight, abstractTheme.colorDecorativeBrandSecondaryLight)
        XCTAssertTrue(inheritedTheme.colorDecorativeBrandSecondaryLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandTertiaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeBrandTertiaryLight, abstractTheme.colorDecorativeBrandTertiaryLight)
        XCTAssertTrue(inheritedTheme.colorDecorativeBrandTertiaryLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandPrimaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeBrandPrimaryDark, abstractTheme.colorDecorativeBrandPrimaryDark)
        XCTAssertTrue(inheritedTheme.colorDecorativeBrandPrimaryDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandSecondaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeBrandSecondaryDark, abstractTheme.colorDecorativeBrandSecondaryDark)
        XCTAssertTrue(inheritedTheme.colorDecorativeBrandSecondaryDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandTertiaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeBrandTertiaryDark, abstractTheme.colorDecorativeBrandTertiaryDark)
        XCTAssertTrue(inheritedTheme.colorDecorativeBrandTertiaryDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeNeutralDefaultLight, abstractTheme.colorDecorativeNeutralDefaultLight)
        XCTAssertTrue(inheritedTheme.colorDecorativeNeutralDefaultLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeNeutralEmphasizedLight, abstractTheme.colorDecorativeNeutralEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorDecorativeNeutralEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeNeutralMutedLight, abstractTheme.colorDecorativeNeutralMutedLight)
        XCTAssertTrue(inheritedTheme.colorDecorativeNeutralMutedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeNeutralDefaultDark, abstractTheme.colorDecorativeNeutralDefaultDark)
        XCTAssertTrue(inheritedTheme.colorDecorativeNeutralDefaultDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeNeutralEmphasizedDark, abstractTheme.colorDecorativeNeutralEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorDecorativeNeutralEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeNeutralMutedDark, abstractTheme.colorDecorativeNeutralMutedDark)
        XCTAssertTrue(inheritedTheme.colorDecorativeNeutralMutedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint100Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint100Light, abstractTheme.colorDecorativeSkinTint100Light)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint100Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint200Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint200Light, abstractTheme.colorDecorativeSkinTint200Light)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint200Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint300Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint300Light, abstractTheme.colorDecorativeSkinTint300Light)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint300Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint400Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint400Light, abstractTheme.colorDecorativeSkinTint400Light)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint400Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint500Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint500Light, abstractTheme.colorDecorativeSkinTint500Light)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint500Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint600Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint600Light, abstractTheme.colorDecorativeSkinTint600Light)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint600Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint700Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint700Light, abstractTheme.colorDecorativeSkinTint700Light)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint700Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint800Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint800Light, abstractTheme.colorDecorativeSkinTint800Light)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint800Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint900Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint900Light, abstractTheme.colorDecorativeSkinTint900Light)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint900Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint100Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint100Dark, abstractTheme.colorDecorativeSkinTint100Dark)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint100Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint200Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint200Dark, abstractTheme.colorDecorativeSkinTint200Dark)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint200Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint300Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint300Dark, abstractTheme.colorDecorativeSkinTint300Dark)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint300Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint400Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint400Dark, abstractTheme.colorDecorativeSkinTint400Dark)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint400Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint500Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint500Dark, abstractTheme.colorDecorativeSkinTint500Dark)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint500Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint600Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint600Dark, abstractTheme.colorDecorativeSkinTint600Dark)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint600Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint700Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint700Dark, abstractTheme.colorDecorativeSkinTint700Dark)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint700Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint800Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint800Dark, abstractTheme.colorDecorativeSkinTint800Dark)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint800Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint900Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint900Dark, abstractTheme.colorDecorativeSkinTint900Dark)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint900Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    // MARK: - Color - Chart

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier1Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier1Light, abstractTheme.colorChartCategoricalTier1Light)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier1Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier2Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier2Light, abstractTheme.colorChartCategoricalTier2Light)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier2Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier3Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier3Light, abstractTheme.colorChartCategoricalTier3Light)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier3Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier4Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier4Light, abstractTheme.colorChartCategoricalTier4Light)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier4Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier5Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier5Light, abstractTheme.colorChartCategoricalTier5Light)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier5Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier6Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier6Light, abstractTheme.colorChartCategoricalTier6Light)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier6Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier7Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier7Light, abstractTheme.colorChartCategoricalTier7Light)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier7Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier8Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier8Light, abstractTheme.colorChartCategoricalTier8Light)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier8Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier9Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier9Light, abstractTheme.colorChartCategoricalTier9Light)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier9Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier10Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier10Light, abstractTheme.colorChartCategoricalTier10Light)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier10Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier1Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier1Dark, abstractTheme.colorChartCategoricalTier1Dark)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier1Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier2Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier2Dark, abstractTheme.colorChartCategoricalTier2Dark)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier2Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier3Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier3Dark, abstractTheme.colorChartCategoricalTier3Dark)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier3Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier4Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier4Dark, abstractTheme.colorChartCategoricalTier4Dark)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier4Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier5Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier5Dark, abstractTheme.colorChartCategoricalTier5Dark)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier5Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier6Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier6Dark, abstractTheme.colorChartCategoricalTier6Dark)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier6Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier7Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier7Dark, abstractTheme.colorChartCategoricalTier7Dark)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier7Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier8Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier8Dark, abstractTheme.colorChartCategoricalTier8Dark)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier8Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier9Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier9Dark, abstractTheme.colorChartCategoricalTier9Dark)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier9Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier10Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier10Dark, abstractTheme.colorChartCategoricalTier10Dark)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier10Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalInformationLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartFunctionalInformationLight, abstractTheme.colorChartFunctionalInformationLight)
        XCTAssertTrue(inheritedTheme.colorChartFunctionalInformationLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalNegativeLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartFunctionalNegativeLight, abstractTheme.colorChartFunctionalNegativeLight)
        XCTAssertTrue(inheritedTheme.colorChartFunctionalNegativeLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalPositiveLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartFunctionalPositiveLight, abstractTheme.colorChartFunctionalPositiveLight)
        XCTAssertTrue(inheritedTheme.colorChartFunctionalPositiveLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalWarningLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartFunctionalWarningLight, abstractTheme.colorChartFunctionalWarningLight)
        XCTAssertTrue(inheritedTheme.colorChartFunctionalWarningLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalInformationDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartFunctionalInformationDark, abstractTheme.colorChartFunctionalInformationDark)
        XCTAssertTrue(inheritedTheme.colorChartFunctionalInformationDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalNegativeDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartFunctionalNegativeDark, abstractTheme.colorChartFunctionalNegativeDark)
        XCTAssertTrue(inheritedTheme.colorChartFunctionalNegativeDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalPositiveDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartFunctionalPositiveDark, abstractTheme.colorChartFunctionalPositiveDark)
        XCTAssertTrue(inheritedTheme.colorChartFunctionalPositiveDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalWarningDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartFunctionalWarningDark, abstractTheme.colorChartFunctionalWarningDark)
        XCTAssertTrue(inheritedTheme.colorChartFunctionalWarningDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartGridlinesLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartGridlinesLight, abstractTheme.colorChartGridlinesLight)
        XCTAssertTrue(inheritedTheme.colorChartGridlinesLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartHighlightLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartHighlightLight, abstractTheme.colorChartHighlightLight)
        XCTAssertTrue(inheritedTheme.colorChartHighlightLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartNeutralLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartNeutralLight, abstractTheme.colorChartNeutralLight)
        XCTAssertTrue(inheritedTheme.colorChartNeutralLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    // MARK: - Color - Repository

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryAccentDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryAccentDefaultLight, abstractTheme.colorRepositoryAccentDefaultLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryAccentDefaultLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryAccentHighestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryAccentHighestLight, abstractTheme.colorRepositoryAccentHighestLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryAccentHighestLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryAccentLowLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryAccentLowLight, abstractTheme.colorRepositoryAccentLowLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryAccentLowLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryAccentLowestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryAccentLowestLight, abstractTheme.colorRepositoryAccentLowestLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryAccentLowestLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryAccentDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryAccentDefaultDark, abstractTheme.colorRepositoryAccentDefaultDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryAccentDefaultDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryAccentHighestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryAccentHighestDark, abstractTheme.colorRepositoryAccentHighestDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryAccentHighestDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryAccentLowDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryAccentLowDark, abstractTheme.colorRepositoryAccentLowDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryAccentLowDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryAccentLowestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryAccentLowestDark, abstractTheme.colorRepositoryAccentLowestDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryAccentLowestDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryInfoDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryInfoDefaultLight, abstractTheme.colorRepositoryInfoDefaultLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryInfoDefaultLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryInfoHighestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryInfoHighestLight, abstractTheme.colorRepositoryInfoHighestLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryInfoHighestLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryInfoLowLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryInfoLowLight, abstractTheme.colorRepositoryInfoLowLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryInfoLowLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryInfoLowestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryInfoLowestLight, abstractTheme.colorRepositoryInfoLowestLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryInfoLowestLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryInfoDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryInfoDefaultDark, abstractTheme.colorRepositoryInfoDefaultDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryInfoDefaultDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryInfoHighestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryInfoHighestDark, abstractTheme.colorRepositoryInfoHighestDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryInfoHighestDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryInfoLowDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryInfoLowDark, abstractTheme.colorRepositoryInfoLowDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryInfoLowDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryInfoLowestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryInfoLowestDark, abstractTheme.colorRepositoryInfoLowestDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryInfoLowestDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNegativeDefaultLight, abstractTheme.colorRepositoryNegativeDefaultLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryNegativeDefaultLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeHighLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNegativeHighLight, abstractTheme.colorRepositoryNegativeHighLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryNegativeHighLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeHigherLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNegativeHigherLight, abstractTheme.colorRepositoryNegativeHigherLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryNegativeHigherLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeHighestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNegativeHighestLight, abstractTheme.colorRepositoryNegativeHighestLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryNegativeHighestLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeLowLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNegativeLowLight, abstractTheme.colorRepositoryNegativeLowLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryNegativeLowLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeLowerLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNegativeLowerLight, abstractTheme.colorRepositoryNegativeLowerLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryNegativeLowerLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeLowestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNegativeLowestLight, abstractTheme.colorRepositoryNegativeLowestLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryNegativeLowestLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNegativeDefaultDark, abstractTheme.colorRepositoryNegativeDefaultDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryNegativeDefaultDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeHighDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNegativeHighDark, abstractTheme.colorRepositoryNegativeHighDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryNegativeHighDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeHigherDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNegativeHigherDark, abstractTheme.colorRepositoryNegativeHigherDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryNegativeHigherDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeHighestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNegativeHighestDark, abstractTheme.colorRepositoryNegativeHighestDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryNegativeHighestDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeLowDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNegativeLowDark, abstractTheme.colorRepositoryNegativeLowDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryNegativeLowDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeLowerDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNegativeLowerDark, abstractTheme.colorRepositoryNegativeLowerDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryNegativeLowerDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeLowestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNegativeLowestDark, abstractTheme.colorRepositoryNegativeLowestDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryNegativeLowestDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedBlackLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNeutralEmphasizedBlackLight, abstractTheme.colorRepositoryNeutralEmphasizedBlackLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryNeutralEmphasizedBlackLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedHighLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNeutralEmphasizedHighLight, abstractTheme.colorRepositoryNeutralEmphasizedHighLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryNeutralEmphasizedHighLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedHigherLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNeutralEmphasizedHigherLight, abstractTheme.colorRepositoryNeutralEmphasizedHigherLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryNeutralEmphasizedHigherLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedHighestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNeutralEmphasizedHighestLight, abstractTheme.colorRepositoryNeutralEmphasizedHighestLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryNeutralEmphasizedHighestLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedMediumLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNeutralEmphasizedMediumLight, abstractTheme.colorRepositoryNeutralEmphasizedMediumLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryNeutralEmphasizedMediumLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedBlackDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNeutralEmphasizedBlackDark, abstractTheme.colorRepositoryNeutralEmphasizedBlackDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryNeutralEmphasizedBlackDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedHighDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNeutralEmphasizedHighDark, abstractTheme.colorRepositoryNeutralEmphasizedHighDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryNeutralEmphasizedHighDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedHigherDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNeutralEmphasizedHigherDark, abstractTheme.colorRepositoryNeutralEmphasizedHigherDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryNeutralEmphasizedHigherDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedHighestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNeutralEmphasizedHighestDark, abstractTheme.colorRepositoryNeutralEmphasizedHighestDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryNeutralEmphasizedHighestDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedMediumDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNeutralEmphasizedMediumDark, abstractTheme.colorRepositoryNeutralEmphasizedMediumDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryNeutralEmphasizedMediumDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralMutedLowerLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNeutralMutedLowerLight, abstractTheme.colorRepositoryNeutralMutedLowerLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryNeutralMutedLowerLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralMutedLowestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNeutralMutedLowestLight, abstractTheme.colorRepositoryNeutralMutedLowestLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryNeutralMutedLowestLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralMutedWhiteLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNeutralMutedWhiteLight, abstractTheme.colorRepositoryNeutralMutedWhiteLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryNeutralMutedWhiteLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralMutedLowerDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNeutralMutedLowerDark, abstractTheme.colorRepositoryNeutralMutedLowerDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryNeutralMutedLowerDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralMutedLowestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNeutralMutedLowestDark, abstractTheme.colorRepositoryNeutralMutedLowestDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryNeutralMutedLowestDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralMutedWhiteDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNeutralMutedWhiteDark, abstractTheme.colorRepositoryNeutralMutedWhiteDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryNeutralMutedWhiteDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackHigherLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityBlackHigherLight, abstractTheme.colorRepositoryOpacityBlackHigherLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityBlackHigherLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackHighestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityBlackHighestLight, abstractTheme.colorRepositoryOpacityBlackHighestLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityBlackHighestLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackLowLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityBlackLowLight, abstractTheme.colorRepositoryOpacityBlackLowLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityBlackLowLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackLowerLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityBlackLowerLight, abstractTheme.colorRepositoryOpacityBlackLowerLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityBlackLowerLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackLowestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityBlackLowestLight, abstractTheme.colorRepositoryOpacityBlackLowestLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityBlackLowestLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackMediumLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityBlackMediumLight, abstractTheme.colorRepositoryOpacityBlackMediumLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityBlackMediumLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackTransparentLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityBlackTransparentLight, abstractTheme.colorRepositoryOpacityBlackTransparentLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityBlackTransparentLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackHigherDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityBlackHigherDark, abstractTheme.colorRepositoryOpacityBlackHigherDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityBlackHigherDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackHighestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityBlackHighestDark, abstractTheme.colorRepositoryOpacityBlackHighestDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityBlackHighestDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackLowDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityBlackLowDark, abstractTheme.colorRepositoryOpacityBlackLowDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityBlackLowDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackLowerDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityBlackLowerDark, abstractTheme.colorRepositoryOpacityBlackLowerDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityBlackLowerDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackLowestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityBlackLowestDark, abstractTheme.colorRepositoryOpacityBlackLowestDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityBlackLowestDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackMediumDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityBlackMediumDark, abstractTheme.colorRepositoryOpacityBlackMediumDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityBlackMediumDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackTransparentDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityBlackTransparentDark, abstractTheme.colorRepositoryOpacityBlackTransparentDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityBlackTransparentDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityInfoLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityInfoLight, abstractTheme.colorRepositoryOpacityInfoLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityInfoLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityNegativeLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityNegativeLight, abstractTheme.colorRepositoryOpacityNegativeLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityNegativeLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityPositiveLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityPositiveLight, abstractTheme.colorRepositoryOpacityPositiveLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityPositiveLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWarningLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityWarningLight, abstractTheme.colorRepositoryOpacityWarningLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityWarningLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteHighLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityWhiteHighLight, abstractTheme.colorRepositoryOpacityWhiteHighLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityWhiteHighLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteHigherLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityWhiteHigherLight, abstractTheme.colorRepositoryOpacityWhiteHigherLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityWhiteHigherLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteHighestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityWhiteHighestLight, abstractTheme.colorRepositoryOpacityWhiteHighestLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityWhiteHighestLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteLowLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityWhiteLowLight, abstractTheme.colorRepositoryOpacityWhiteLowLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityWhiteLowLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteLowerLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityWhiteLowerLight, abstractTheme.colorRepositoryOpacityWhiteLowerLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityWhiteLowerLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteLowestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityWhiteLowestLight, abstractTheme.colorRepositoryOpacityWhiteLowestLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityWhiteLowestLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteTransparentLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityWhiteTransparentLight, abstractTheme.colorRepositoryOpacityWhiteTransparentLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityWhiteTransparentLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteHighDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityWhiteHighDark, abstractTheme.colorRepositoryOpacityWhiteHighDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityWhiteHighDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteHigherDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityWhiteHigherDark, abstractTheme.colorRepositoryOpacityWhiteHigherDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityWhiteHigherDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteHighestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityWhiteHighestDark, abstractTheme.colorRepositoryOpacityWhiteHighestDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityWhiteHighestDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteLowDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityWhiteLowDark, abstractTheme.colorRepositoryOpacityWhiteLowDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityWhiteLowDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteLowerDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityWhiteLowerDark, abstractTheme.colorRepositoryOpacityWhiteLowerDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityWhiteLowerDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteLowestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityWhiteLowestDark, abstractTheme.colorRepositoryOpacityWhiteLowestDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityWhiteLowestDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteTransparentDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityWhiteTransparentDark, abstractTheme.colorRepositoryOpacityWhiteTransparentDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityWhiteTransparentDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityInfoDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityInfoDark, abstractTheme.colorRepositoryOpacityInfoDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityInfoDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityNegativeDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityNegativeDark, abstractTheme.colorRepositoryOpacityNegativeDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityNegativeDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityPositiveDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityPositiveDark, abstractTheme.colorRepositoryOpacityPositiveDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityPositiveDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWarningDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityWarningDark, abstractTheme.colorRepositoryOpacityWarningDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityWarningDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPositiveDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryPositiveDefaultLight, abstractTheme.colorRepositoryPositiveDefaultLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryPositiveDefaultLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPositiveHighestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryPositiveHighestLight, abstractTheme.colorRepositoryPositiveHighestLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryPositiveHighestLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPositiveLowLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryPositiveLowLight, abstractTheme.colorRepositoryPositiveLowLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryPositiveLowLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPositiveLowestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryPositiveLowestLight, abstractTheme.colorRepositoryPositiveLowestLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryPositiveLowestLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPositiveDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryPositiveDefaultDark, abstractTheme.colorRepositoryPositiveDefaultDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryPositiveDefaultDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPositiveHighestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryPositiveHighestDark, abstractTheme.colorRepositoryPositiveHighestDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryPositiveHighestDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPositiveLowDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryPositiveLowDark, abstractTheme.colorRepositoryPositiveLowDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryPositiveLowDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPositiveLowestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryPositiveLowestDark, abstractTheme.colorRepositoryPositiveLowestDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryPositiveLowestDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPrimaryDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryPrimaryDefaultLight, abstractTheme.colorRepositoryPrimaryDefaultLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryPrimaryDefaultLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPrimaryLowLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryPrimaryLowLight, abstractTheme.colorRepositoryPrimaryLowLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryPrimaryLowLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPrimaryDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryPrimaryDefaultDark, abstractTheme.colorRepositoryPrimaryDefaultDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryPrimaryDefaultDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPrimaryLowDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryPrimaryLowDark, abstractTheme.colorRepositoryPrimaryLowDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryPrimaryLowDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryWarningDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryWarningDefaultLight, abstractTheme.colorRepositoryWarningDefaultLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryWarningDefaultLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryWarningHighestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryWarningHighestLight, abstractTheme.colorRepositoryWarningHighestLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryWarningHighestLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryWarningLowLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryWarningLowLight, abstractTheme.colorRepositoryWarningLowLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryWarningLowLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryWarningLowestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryWarningLowestLight, abstractTheme.colorRepositoryWarningLowestLight)
        XCTAssertTrue(inheritedTheme.colorRepositoryWarningLowestLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryWarningDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryWarningDefaultDark, abstractTheme.colorRepositoryWarningDefaultDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryWarningDefaultDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryWarningHighestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryWarningHighestDark, abstractTheme.colorRepositoryWarningHighestDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryWarningHighestDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryWarningLowDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryWarningLowDark, abstractTheme.colorRepositoryWarningLowDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryWarningLowDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryWarningLowestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryWarningLowestDark, abstractTheme.colorRepositoryWarningLowestDark)
        XCTAssertTrue(inheritedTheme.colorRepositoryWarningLowestDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }
}

// swiftlint:enable type_body_length
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable required_deinit
