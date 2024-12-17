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
        XCTAssertTrue(inheritedTheme.colors.colorOpacityInvisibleBlackLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOpacityInvisibleBlackDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOpacityInvisibleBlackDark, abstractTheme.colors.colorOpacityInvisibleBlackDark)
        XCTAssertTrue(inheritedTheme.colors.colorOpacityInvisibleBlackDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOpacityInvisibleWhiteLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOpacityInvisibleWhiteLight, abstractTheme.colors.colorOpacityInvisibleWhiteLight)
        XCTAssertTrue(inheritedTheme.colors.colorOpacityInvisibleWhiteLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOpacityInvisibleWhiteDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOpacityInvisibleWhiteDark, abstractTheme.colors.colorOpacityInvisibleWhiteDark)
        XCTAssertTrue(inheritedTheme.colors.colorOpacityInvisibleWhiteDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionDisabledLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionDisabledLight, abstractTheme.colors.colorActionDisabledLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionDisabledLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionEnabledLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionEnabledLight, abstractTheme.colors.colorActionEnabledLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionEnabledLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionFocusLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionFocusLight, abstractTheme.colors.colorActionFocusLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionFocusLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionHighlightedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionHighlightedLight, abstractTheme.colors.colorActionHighlightedLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionHighlightedLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionHoverLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionHoverLight, abstractTheme.colors.colorActionHoverLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionHoverLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionLoadingLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionLoadingLight, abstractTheme.colors.colorActionLoadingLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionLoadingLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeEnabledLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativeEnabledLight, abstractTheme.colors.colorActionNegativeEnabledLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativeEnabledLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeFocusLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativeFocusLight, abstractTheme.colors.colorActionNegativeFocusLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativeFocusLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeHoverLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativeHoverLight, abstractTheme.colors.colorActionNegativeHoverLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativeHoverLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeLoadingLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativeLoadingLight, abstractTheme.colors.colorActionNegativeLoadingLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativeLoadingLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativePressedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativePressedLight, abstractTheme.colors.colorActionNegativePressedLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativePressedLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeEnabledDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativeEnabledDark, abstractTheme.colors.colorActionNegativeEnabledDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativeEnabledDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeFocusDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativeFocusDark, abstractTheme.colors.colorActionNegativeFocusDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativeFocusDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeHoverDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativeHoverDark, abstractTheme.colors.colorActionNegativeHoverDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativeHoverDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeLoadingDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativeLoadingDark, abstractTheme.colors.colorActionNegativeLoadingDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativeLoadingDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativePressedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativePressedDark, abstractTheme.colors.colorActionNegativePressedDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativePressedDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPressedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionPressedLight, abstractTheme.colors.colorActionPressedLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionPressedLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSelectedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSelectedLight, abstractTheme.colors.colorActionSelectedLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionSelectedLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportEnabledLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportEnabledLight, abstractTheme.colors.colorActionSupportEnabledLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportEnabledLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportFocusLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportFocusLight, abstractTheme.colors.colorActionSupportFocusLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportFocusLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportHoverLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportHoverLight, abstractTheme.colors.colorActionSupportHoverLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportHoverLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportLoadingLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportLoadingLight, abstractTheme.colors.colorActionSupportLoadingLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportLoadingLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportPressedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportPressedLight, abstractTheme.colors.colorActionSupportPressedLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportPressedLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportEnabledDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportEnabledDark, abstractTheme.colors.colorActionSupportEnabledDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportEnabledDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportFocusDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportFocusDark, abstractTheme.colors.colorActionSupportFocusDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportFocusDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportHoverDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportHoverDark, abstractTheme.colors.colorActionSupportHoverDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportHoverDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportLoadingDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportLoadingDark, abstractTheme.colors.colorActionSupportLoadingDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportLoadingDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportPressedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportPressedDark, abstractTheme.colors.colorActionSupportPressedDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportPressedDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionVisitedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionVisitedLight, abstractTheme.colors.colorActionVisitedLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionVisitedLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionDisabledDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionDisabledDark, abstractTheme.colors.colorActionDisabledDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionDisabledDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionEnabledDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionEnabledDark, abstractTheme.colors.colorActionEnabledDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionEnabledDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionFocusDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionFocusDark, abstractTheme.colors.colorActionFocusDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionFocusDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionHighlightedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionHighlightedDark, abstractTheme.colors.colorActionHighlightedDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionHighlightedDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionHoverDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionHoverDark, abstractTheme.colors.colorActionHoverDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionHoverDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionLoadingDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionLoadingDark, abstractTheme.colors.colorActionLoadingDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionLoadingDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPressedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionPressedDark, abstractTheme.colors.colorActionPressedDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionPressedDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSelectedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSelectedDark, abstractTheme.colors.colorActionSelectedDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionSelectedDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionVisitedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionVisitedDark, abstractTheme.colors.colorActionVisitedDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionVisitedDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysBlackLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorAlwaysBlackLight, abstractTheme.colors.colorAlwaysBlackLight)
        XCTAssertTrue(inheritedTheme.colors.colorAlwaysBlackLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnBlackLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorAlwaysOnBlackLight, abstractTheme.colors.colorAlwaysOnBlackLight)
        XCTAssertTrue(inheritedTheme.colors.colorAlwaysOnBlackLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnWhiteLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorAlwaysOnWhiteLight, abstractTheme.colors.colorAlwaysOnWhiteLight)
        XCTAssertTrue(inheritedTheme.colors.colorAlwaysOnWhiteLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysWhiteLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorAlwaysWhiteLight, abstractTheme.colors.colorAlwaysWhiteLight)
        XCTAssertTrue(inheritedTheme.colors.colorAlwaysWhiteLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysBlackDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorAlwaysBlackDark, abstractTheme.colors.colorAlwaysBlackDark)
        XCTAssertTrue(inheritedTheme.colors.colorAlwaysBlackDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnBlackDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorAlwaysOnBlackDark, abstractTheme.colors.colorAlwaysOnBlackDark)
        XCTAssertTrue(inheritedTheme.colors.colorAlwaysOnBlackDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnWhiteDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorAlwaysOnWhiteDark, abstractTheme.colors.colorAlwaysOnWhiteDark)
        XCTAssertTrue(inheritedTheme.colors.colorAlwaysOnWhiteDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysWhiteDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorAlwaysWhiteDark, abstractTheme.colors.colorAlwaysWhiteDark)
        XCTAssertTrue(inheritedTheme.colors.colorAlwaysWhiteDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBgEmphasizedLight, abstractTheme.colors.colorBgEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorBgEmphasizedLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBgPrimaryLight, abstractTheme.colors.colorBgPrimaryLight)
        XCTAssertTrue(inheritedTheme.colors.colorBgPrimaryLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgSecondaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBgSecondaryLight, abstractTheme.colors.colorBgSecondaryLight)
        XCTAssertTrue(inheritedTheme.colors.colorBgSecondaryLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgTertiaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBgTertiaryLight, abstractTheme.colors.colorBgTertiaryLight)
        XCTAssertTrue(inheritedTheme.colors.colorBgTertiaryLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBgEmphasizedDark, abstractTheme.colors.colorBgEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorBgEmphasizedDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgPrimaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBgPrimaryDark, abstractTheme.colors.colorBgPrimaryDark)
        XCTAssertTrue(inheritedTheme.colors.colorBgPrimaryDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgSecondaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBgSecondaryDark, abstractTheme.colors.colorBgSecondaryDark)
        XCTAssertTrue(inheritedTheme.colors.colorBgSecondaryDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgTertiaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBgTertiaryDark, abstractTheme.colors.colorBgTertiaryDark)
        XCTAssertTrue(inheritedTheme.colors.colorBgTertiaryDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderBrandPrimaryLight, abstractTheme.colors.colorBorderBrandPrimaryLight)
        XCTAssertTrue(inheritedTheme.colors.colorBorderBrandPrimaryLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderDefaultLight, abstractTheme.colors.colorBorderDefaultLight)
        XCTAssertTrue(inheritedTheme.colors.colorBorderDefaultLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderEmphasizedLight, abstractTheme.colors.colorBorderEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorBorderEmphasizedLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderFocusLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderFocusLight, abstractTheme.colors.colorBorderFocusLight)
        XCTAssertTrue(inheritedTheme.colors.colorBorderFocusLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderFocusInsetLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderFocusInsetLight, abstractTheme.colors.colorBorderFocusInsetLight)
        XCTAssertTrue(inheritedTheme.colors.colorBorderFocusInsetLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderOnBrandPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderOnBrandPrimaryLight, abstractTheme.colors.colorBorderOnBrandPrimaryLight)
        XCTAssertTrue(inheritedTheme.colors.colorBorderOnBrandPrimaryLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderOnBrandPrimaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderOnBrandPrimaryDark, abstractTheme.colors.colorBorderOnBrandPrimaryDark)
        XCTAssertTrue(inheritedTheme.colors.colorBorderOnBrandPrimaryDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandPrimaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderBrandPrimaryDark, abstractTheme.colors.colorBorderBrandPrimaryDark)
        XCTAssertTrue(inheritedTheme.colors.colorBorderBrandPrimaryDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderDefaultDark, abstractTheme.colors.colorBorderDefaultDark)
        XCTAssertTrue(inheritedTheme.colors.colorBorderDefaultDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderEmphasizedDark, abstractTheme.colors.colorBorderEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorBorderEmphasizedDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderFocusDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderFocusDark, abstractTheme.colors.colorBorderFocusDark)
        XCTAssertTrue(inheritedTheme.colors.colorBorderFocusDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderFocusInsetDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderFocusInsetDark, abstractTheme.colors.colorBorderFocusInsetDark)
        XCTAssertTrue(inheritedTheme.colors.colorBorderFocusInsetDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentBrandPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentBrandPrimaryLight, abstractTheme.colors.colorContentBrandPrimaryLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentBrandPrimaryLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentDefaultLight, abstractTheme.colors.colorContentDefaultLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentDefaultLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentDisabledLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentDisabledLight, abstractTheme.colors.colorContentDisabledLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentDisabledLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentMutedLight, abstractTheme.colors.colorContentMutedLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentMutedLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionDisabledLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionDisabledLight, abstractTheme.colors.colorContentOnActionDisabledLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionDisabledLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionEnabledLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionEnabledLight, abstractTheme.colors.colorContentOnActionEnabledLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionEnabledLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionFocusLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionFocusLight, abstractTheme.colors.colorContentOnActionFocusLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionFocusLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionHighlightedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionHighlightedLight, abstractTheme.colors.colorContentOnActionHighlightedLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionHighlightedLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionHoverLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionHoverLight, abstractTheme.colors.colorContentOnActionHoverLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionHoverLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionLoadingLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionLoadingLight, abstractTheme.colors.colorContentOnActionLoadingLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionLoadingLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionNegativeLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionNegativeLight, abstractTheme.colors.colorContentOnActionNegativeLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionNegativeLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionPressedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionPressedLight, abstractTheme.colors.colorContentOnActionPressedLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionPressedLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionDisabledDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionDisabledDark, abstractTheme.colors.colorContentOnActionDisabledDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionDisabledDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionEnabledDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionEnabledDark, abstractTheme.colors.colorContentOnActionEnabledDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionEnabledDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionFocusDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionFocusDark, abstractTheme.colors.colorContentOnActionFocusDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionFocusDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionHighlightedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionHighlightedDark, abstractTheme.colors.colorContentOnActionHighlightedDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionHighlightedDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionHoverDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionHoverDark, abstractTheme.colors.colorContentOnActionHoverDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionHoverDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionLoadingDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionLoadingDark, abstractTheme.colors.colorContentOnActionLoadingDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionLoadingDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionNegativeDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionNegativeDark, abstractTheme.colors.colorContentOnActionNegativeDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionNegativeDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionPressedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionPressedDark, abstractTheme.colors.colorContentOnActionPressedDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionPressedDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBrandPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnBrandPrimaryLight, abstractTheme.colors.colorContentOnBrandPrimaryLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnBrandPrimaryLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBrandPrimaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnBrandPrimaryDark, abstractTheme.colors.colorContentOnBrandPrimaryDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnBrandPrimaryDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnOverlayEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnOverlayEmphasizedLight, abstractTheme.colors.colorContentOnOverlayEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnOverlayEmphasizedLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnOverlayEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnOverlayEmphasizedDark, abstractTheme.colors.colorContentOnOverlayEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnOverlayEmphasizedDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnStatusEmphasizedLight, abstractTheme.colors.colorContentOnStatusEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnStatusEmphasizedLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusEmphasizedNeutralLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnStatusEmphasizedNeutralLight, abstractTheme.colors.colorContentOnStatusEmphasizedNeutralLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnStatusEmphasizedNeutralLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnStatusMutedLight, abstractTheme.colors.colorContentOnStatusMutedLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnStatusMutedLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnStatusEmphasizedDark, abstractTheme.colors.colorContentOnStatusEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnStatusEmphasizedDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusEmphasizedNeutralDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnStatusEmphasizedNeutralDark, abstractTheme.colors.colorContentOnStatusEmphasizedNeutralDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnStatusEmphasizedNeutralDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnStatusMutedDark, abstractTheme.colors.colorContentOnStatusMutedDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnStatusMutedDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusInfoLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentStatusInfoLight, abstractTheme.colors.colorContentStatusInfoLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentStatusInfoLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusNegativeLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentStatusNegativeLight, abstractTheme.colors.colorContentStatusNegativeLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentStatusNegativeLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusPositiveLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentStatusPositiveLight, abstractTheme.colors.colorContentStatusPositiveLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentStatusPositiveLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusWarningLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentStatusWarningLight, abstractTheme.colors.colorContentStatusWarningLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentStatusWarningLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusInfoDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentStatusInfoDark, abstractTheme.colors.colorContentStatusInfoDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentStatusInfoDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusNegativeDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentStatusNegativeDark, abstractTheme.colors.colorContentStatusNegativeDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentStatusNegativeDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusPositiveDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentStatusPositiveDark, abstractTheme.colors.colorContentStatusPositiveDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentStatusPositiveDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusWarningDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentStatusWarningDark, abstractTheme.colors.colorContentStatusWarningDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentStatusWarningDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOverlayDefaultLight, abstractTheme.colors.colorOverlayDefaultLight)
        XCTAssertTrue(inheritedTheme.colors.colorOverlayDefaultLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayDragLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOverlayDragLight, abstractTheme.colors.colorOverlayDragLight)
        XCTAssertTrue(inheritedTheme.colors.colorOverlayDragLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOverlayEmphasizedLight, abstractTheme.colors.colorOverlayEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorOverlayEmphasizedLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayModalLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOverlayModalLight, abstractTheme.colors.colorOverlayModalLight)
        XCTAssertTrue(inheritedTheme.colors.colorOverlayModalLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOverlayDefaultDark, abstractTheme.colors.colorOverlayDefaultDark)
        XCTAssertTrue(inheritedTheme.colors.colorOverlayDefaultDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayDragDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOverlayDragDark, abstractTheme.colors.colorOverlayDragDark)
        XCTAssertTrue(inheritedTheme.colors.colorOverlayDragDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOverlayEmphasizedDark, abstractTheme.colors.colorOverlayEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorOverlayEmphasizedDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayModalDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOverlayModalDark, abstractTheme.colors.colorOverlayModalDark)
        XCTAssertTrue(inheritedTheme.colors.colorOverlayModalDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    // MARK: - Color - Surface

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceBrandPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceBrandPrimaryLight, abstractTheme.colors.colorSurfaceBrandPrimaryLight)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceBrandPrimaryLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceBrandPrimaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceBrandPrimaryDark, abstractTheme.colors.colorSurfaceBrandPrimaryDark)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceBrandPrimaryDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusAccentEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusAccentEmphasizedLight, abstractTheme.colors.colorSurfaceStatusAccentEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusAccentEmphasizedLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusAccentMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusAccentMutedLight, abstractTheme.colors.colorSurfaceStatusAccentMutedLight)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusAccentMutedLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusAccentEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusAccentEmphasizedDark, abstractTheme.colors.colorSurfaceStatusAccentEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusAccentEmphasizedDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusAccentMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusAccentMutedDark, abstractTheme.colors.colorSurfaceStatusAccentMutedDark)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusAccentMutedDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusInfoEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusInfoEmphasizedLight, abstractTheme.colors.colorSurfaceStatusInfoEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusInfoEmphasizedLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusInfoMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusInfoMutedLight, abstractTheme.colors.colorSurfaceStatusInfoMutedLight)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusInfoMutedLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusInfoEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusInfoEmphasizedDark, abstractTheme.colors.colorSurfaceStatusInfoEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusInfoEmphasizedDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusInfoMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusInfoMutedDark, abstractTheme.colors.colorSurfaceStatusInfoMutedDark)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusInfoMutedDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNegativeEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusNegativeEmphasizedLight, abstractTheme.colors.colorSurfaceStatusNegativeEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusNegativeEmphasizedLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNegativeMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusNegativeMutedLight, abstractTheme.colors.colorSurfaceStatusNegativeMutedLight)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusNegativeMutedLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNegativeEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusNegativeEmphasizedDark, abstractTheme.colors.colorSurfaceStatusNegativeEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusNegativeEmphasizedDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNegativeMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusNegativeMutedDark, abstractTheme.colors.colorSurfaceStatusNegativeMutedDark)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusNegativeMutedDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNeutralEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusNeutralEmphasizedLight, abstractTheme.colors.colorSurfaceStatusNeutralEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusNeutralEmphasizedLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNeutralMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusNeutralMutedLight, abstractTheme.colors.colorSurfaceStatusNeutralMutedLight)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusNeutralMutedLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNeutralEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusNeutralEmphasizedDark, abstractTheme.colors.colorSurfaceStatusNeutralEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusNeutralEmphasizedDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNeutralMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusNeutralMutedDark, abstractTheme.colors.colorSurfaceStatusNeutralMutedDark)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusNeutralMutedDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusPositiveEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusPositiveEmphasizedLight, abstractTheme.colors.colorSurfaceStatusPositiveEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusPositiveEmphasizedLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusPositiveMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusPositiveMutedLight, abstractTheme.colors.colorSurfaceStatusPositiveMutedLight)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusPositiveMutedLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusPositiveEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusPositiveEmphasizedDark, abstractTheme.colors.colorSurfaceStatusPositiveEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusPositiveEmphasizedDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusPositiveMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusPositiveMutedDark, abstractTheme.colors.colorSurfaceStatusPositiveMutedDark)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusPositiveMutedDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusWarningEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusWarningEmphasizedLight, abstractTheme.colors.colorSurfaceStatusWarningEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusWarningEmphasizedLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusWarningMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusWarningMutedLight, abstractTheme.colors.colorSurfaceStatusWarningMutedLight)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusWarningMutedLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusWarningEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusWarningEmphasizedDark, abstractTheme.colors.colorSurfaceStatusWarningEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusWarningEmphasizedDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusWarningMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusWarningMutedDark, abstractTheme.colors.colorSurfaceStatusWarningMutedDark)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusWarningMutedDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    // MARK: - Color - Decorative

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1DefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent1DefaultLight, abstractTheme.colors.colorDecorativeAccent1DefaultLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent1DefaultLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1EmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent1EmphasizedLight, abstractTheme.colors.colorDecorativeAccent1EmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent1EmphasizedLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1MutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent1MutedLight, abstractTheme.colors.colorDecorativeAccent1MutedLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent1MutedLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1DefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent1DefaultDark, abstractTheme.colors.colorDecorativeAccent1DefaultDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent1DefaultDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1EmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent1EmphasizedDark, abstractTheme.colors.colorDecorativeAccent1EmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent1EmphasizedDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1MutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent1MutedDark, abstractTheme.colors.colorDecorativeAccent1MutedDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent1MutedDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2DefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent2DefaultLight, abstractTheme.colors.colorDecorativeAccent2DefaultLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent2DefaultLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2EmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent2EmphasizedLight, abstractTheme.colors.colorDecorativeAccent2EmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent2EmphasizedLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2MutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent2MutedLight, abstractTheme.colors.colorDecorativeAccent2MutedLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent2MutedLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2DefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent2DefaultDark, abstractTheme.colors.colorDecorativeAccent2DefaultDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent2DefaultDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2EmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent2EmphasizedDark, abstractTheme.colors.colorDecorativeAccent2EmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent2EmphasizedDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2MutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent2MutedDark, abstractTheme.colors.colorDecorativeAccent2MutedDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent2MutedDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3DefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent3DefaultLight, abstractTheme.colors.colorDecorativeAccent3DefaultLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent3DefaultLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3EmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent3EmphasizedLight, abstractTheme.colors.colorDecorativeAccent3EmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent3EmphasizedLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3MutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent3MutedLight, abstractTheme.colors.colorDecorativeAccent3MutedLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent3MutedLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3DefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent3DefaultDark, abstractTheme.colors.colorDecorativeAccent3DefaultDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent3DefaultDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3EmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent3EmphasizedDark, abstractTheme.colors.colorDecorativeAccent3EmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent3EmphasizedDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3MutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent3MutedDark, abstractTheme.colors.colorDecorativeAccent3MutedDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent3MutedDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4DefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent4DefaultLight, abstractTheme.colors.colorDecorativeAccent4DefaultLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent4DefaultLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4EmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent4EmphasizedLight, abstractTheme.colors.colorDecorativeAccent4EmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent4EmphasizedLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4MutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent4MutedLight, abstractTheme.colors.colorDecorativeAccent4MutedLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent4MutedLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4DefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent4DefaultDark, abstractTheme.colors.colorDecorativeAccent4DefaultDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent4DefaultDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4EmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent4EmphasizedDark, abstractTheme.colors.colorDecorativeAccent4EmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent4EmphasizedDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4MutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent4MutedDark, abstractTheme.colors.colorDecorativeAccent4MutedDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent4MutedDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5DefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent5DefaultLight, abstractTheme.colors.colorDecorativeAccent5DefaultLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent5DefaultLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5EmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent5EmphasizedLight, abstractTheme.colors.colorDecorativeAccent5EmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent5EmphasizedLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5MutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent5MutedLight, abstractTheme.colors.colorDecorativeAccent5MutedLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent5MutedLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5DefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent5DefaultDark, abstractTheme.colors.colorDecorativeAccent5DefaultDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent5DefaultDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5EmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent5EmphasizedDark, abstractTheme.colors.colorDecorativeAccent5EmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent5EmphasizedDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5MutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent5MutedDark, abstractTheme.colors.colorDecorativeAccent5MutedDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent5MutedDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeBrandPrimaryLight, abstractTheme.colors.colorDecorativeBrandPrimaryLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeBrandPrimaryLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandSecondaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeBrandSecondaryLight, abstractTheme.colors.colorDecorativeBrandSecondaryLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeBrandSecondaryLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandTertiaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeBrandTertiaryLight, abstractTheme.colors.colorDecorativeBrandTertiaryLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeBrandTertiaryLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandPrimaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeBrandPrimaryDark, abstractTheme.colors.colorDecorativeBrandPrimaryDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeBrandPrimaryDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandSecondaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeBrandSecondaryDark, abstractTheme.colors.colorDecorativeBrandSecondaryDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeBrandSecondaryDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandTertiaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeBrandTertiaryDark, abstractTheme.colors.colorDecorativeBrandTertiaryDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeBrandTertiaryDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeNeutralDefaultLight, abstractTheme.colors.colorDecorativeNeutralDefaultLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeNeutralDefaultLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeNeutralEmphasizedLight, abstractTheme.colors.colorDecorativeNeutralEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeNeutralEmphasizedLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeNeutralMutedLight, abstractTheme.colors.colorDecorativeNeutralMutedLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeNeutralMutedLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeNeutralDefaultDark, abstractTheme.colors.colorDecorativeNeutralDefaultDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeNeutralDefaultDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeNeutralEmphasizedDark, abstractTheme.colors.colorDecorativeNeutralEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeNeutralEmphasizedDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeNeutralMutedDark, abstractTheme.colors.colorDecorativeNeutralMutedDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeNeutralMutedDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint100Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint100Light, abstractTheme.colors.colorDecorativeSkinTint100Light)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint100Light == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint200Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint200Light, abstractTheme.colors.colorDecorativeSkinTint200Light)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint200Light == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint300Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint300Light, abstractTheme.colors.colorDecorativeSkinTint300Light)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint300Light == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint400Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint400Light, abstractTheme.colors.colorDecorativeSkinTint400Light)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint400Light == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint500Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint500Light, abstractTheme.colors.colorDecorativeSkinTint500Light)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint500Light == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint600Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint600Light, abstractTheme.colors.colorDecorativeSkinTint600Light)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint600Light == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint700Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint700Light, abstractTheme.colors.colorDecorativeSkinTint700Light)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint700Light == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint800Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint800Light, abstractTheme.colors.colorDecorativeSkinTint800Light)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint800Light == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint900Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint900Light, abstractTheme.colors.colorDecorativeSkinTint900Light)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint900Light == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint100Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint100Dark, abstractTheme.colors.colorDecorativeSkinTint100Dark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint100Dark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint200Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint200Dark, abstractTheme.colors.colorDecorativeSkinTint200Dark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint200Dark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint300Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint300Dark, abstractTheme.colors.colorDecorativeSkinTint300Dark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint300Dark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint400Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint400Dark, abstractTheme.colors.colorDecorativeSkinTint400Dark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint400Dark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint500Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint500Dark, abstractTheme.colors.colorDecorativeSkinTint500Dark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint500Dark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint600Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint600Dark, abstractTheme.colors.colorDecorativeSkinTint600Dark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint600Dark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint700Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint700Dark, abstractTheme.colors.colorDecorativeSkinTint700Dark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint700Dark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint800Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint800Dark, abstractTheme.colors.colorDecorativeSkinTint800Dark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint800Dark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint900Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint900Dark, abstractTheme.colors.colorDecorativeSkinTint900Dark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint900Dark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    // MARK: - Color - Chart

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier1Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier1Light, abstractTheme.colors.colorChartCategoricalTier1Light)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier1Light == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier2Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier2Light, abstractTheme.colors.colorChartCategoricalTier2Light)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier2Light == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier3Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier3Light, abstractTheme.colors.colorChartCategoricalTier3Light)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier3Light == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier4Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier4Light, abstractTheme.colors.colorChartCategoricalTier4Light)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier4Light == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier5Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier5Light, abstractTheme.colors.colorChartCategoricalTier5Light)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier5Light == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier6Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier6Light, abstractTheme.colors.colorChartCategoricalTier6Light)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier6Light == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier7Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier7Light, abstractTheme.colors.colorChartCategoricalTier7Light)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier7Light == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier8Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier8Light, abstractTheme.colors.colorChartCategoricalTier8Light)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier8Light == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier9Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier9Light, abstractTheme.colors.colorChartCategoricalTier9Light)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier9Light == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier10Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier10Light, abstractTheme.colors.colorChartCategoricalTier10Light)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier10Light == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier1Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier1Dark, abstractTheme.colors.colorChartCategoricalTier1Dark)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier1Dark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier2Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier2Dark, abstractTheme.colors.colorChartCategoricalTier2Dark)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier2Dark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier3Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier3Dark, abstractTheme.colors.colorChartCategoricalTier3Dark)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier3Dark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier4Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier4Dark, abstractTheme.colors.colorChartCategoricalTier4Dark)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier4Dark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier5Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier5Dark, abstractTheme.colors.colorChartCategoricalTier5Dark)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier5Dark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier6Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier6Dark, abstractTheme.colors.colorChartCategoricalTier6Dark)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier6Dark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier7Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier7Dark, abstractTheme.colors.colorChartCategoricalTier7Dark)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier7Dark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier8Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier8Dark, abstractTheme.colors.colorChartCategoricalTier8Dark)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier8Dark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier9Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier9Dark, abstractTheme.colors.colorChartCategoricalTier9Dark)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier9Dark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier10Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier10Dark, abstractTheme.colors.colorChartCategoricalTier10Dark)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier10Dark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalInformationLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartFunctionalInformationLight, abstractTheme.colors.colorChartFunctionalInformationLight)
        XCTAssertTrue(inheritedTheme.colors.colorChartFunctionalInformationLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalNegativeLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartFunctionalNegativeLight, abstractTheme.colors.colorChartFunctionalNegativeLight)
        XCTAssertTrue(inheritedTheme.colors.colorChartFunctionalNegativeLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalPositiveLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartFunctionalPositiveLight, abstractTheme.colors.colorChartFunctionalPositiveLight)
        XCTAssertTrue(inheritedTheme.colors.colorChartFunctionalPositiveLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalWarningLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartFunctionalWarningLight, abstractTheme.colors.colorChartFunctionalWarningLight)
        XCTAssertTrue(inheritedTheme.colors.colorChartFunctionalWarningLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalInformationDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartFunctionalInformationDark, abstractTheme.colors.colorChartFunctionalInformationDark)
        XCTAssertTrue(inheritedTheme.colors.colorChartFunctionalInformationDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalNegativeDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartFunctionalNegativeDark, abstractTheme.colors.colorChartFunctionalNegativeDark)
        XCTAssertTrue(inheritedTheme.colors.colorChartFunctionalNegativeDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalPositiveDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartFunctionalPositiveDark, abstractTheme.colors.colorChartFunctionalPositiveDark)
        XCTAssertTrue(inheritedTheme.colors.colorChartFunctionalPositiveDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalWarningDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartFunctionalWarningDark, abstractTheme.colors.colorChartFunctionalWarningDark)
        XCTAssertTrue(inheritedTheme.colors.colorChartFunctionalWarningDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartGridlinesLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartGridlinesLight, abstractTheme.colors.colorChartGridlinesLight)
        XCTAssertTrue(inheritedTheme.colors.colorChartGridlinesLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartHighlightLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartHighlightLight, abstractTheme.colors.colorChartHighlightLight)
        XCTAssertTrue(inheritedTheme.colors.colorChartHighlightLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartNeutralLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartNeutralLight, abstractTheme.colors.colorChartNeutralLight)
        XCTAssertTrue(inheritedTheme.colors.colorChartNeutralLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    // MARK: - Color - Repository

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryAccentDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryAccentDefaultLight, abstractTheme.colors.colorRepositoryAccentDefaultLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryAccentDefaultLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryAccentHighestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryAccentHighestLight, abstractTheme.colors.colorRepositoryAccentHighestLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryAccentHighestLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryAccentLowLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryAccentLowLight, abstractTheme.colors.colorRepositoryAccentLowLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryAccentLowLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryAccentLowestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryAccentLowestLight, abstractTheme.colors.colorRepositoryAccentLowestLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryAccentLowestLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryAccentDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryAccentDefaultDark, abstractTheme.colors.colorRepositoryAccentDefaultDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryAccentDefaultDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryAccentHighestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryAccentHighestDark, abstractTheme.colors.colorRepositoryAccentHighestDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryAccentHighestDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryAccentLowDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryAccentLowDark, abstractTheme.colors.colorRepositoryAccentLowDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryAccentLowDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryAccentLowestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryAccentLowestDark, abstractTheme.colors.colorRepositoryAccentLowestDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryAccentLowestDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryInfoDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryInfoDefaultLight, abstractTheme.colors.colorRepositoryInfoDefaultLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryInfoDefaultLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryInfoHighestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryInfoHighestLight, abstractTheme.colors.colorRepositoryInfoHighestLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryInfoHighestLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryInfoLowLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryInfoLowLight, abstractTheme.colors.colorRepositoryInfoLowLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryInfoLowLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryInfoLowestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryInfoLowestLight, abstractTheme.colors.colorRepositoryInfoLowestLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryInfoLowestLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryInfoDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryInfoDefaultDark, abstractTheme.colors.colorRepositoryInfoDefaultDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryInfoDefaultDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryInfoHighestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryInfoHighestDark, abstractTheme.colors.colorRepositoryInfoHighestDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryInfoHighestDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryInfoLowDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryInfoLowDark, abstractTheme.colors.colorRepositoryInfoLowDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryInfoLowDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryInfoLowestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryInfoLowestDark, abstractTheme.colors.colorRepositoryInfoLowestDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryInfoLowestDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNegativeDefaultLight, abstractTheme.colors.colorRepositoryNegativeDefaultLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNegativeDefaultLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeHighLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNegativeHighLight, abstractTheme.colors.colorRepositoryNegativeHighLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNegativeHighLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeHigherLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNegativeHigherLight, abstractTheme.colors.colorRepositoryNegativeHigherLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNegativeHigherLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeHighestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNegativeHighestLight, abstractTheme.colors.colorRepositoryNegativeHighestLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNegativeHighestLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeLowLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNegativeLowLight, abstractTheme.colors.colorRepositoryNegativeLowLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNegativeLowLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeLowerLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNegativeLowerLight, abstractTheme.colors.colorRepositoryNegativeLowerLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNegativeLowerLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeLowestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNegativeLowestLight, abstractTheme.colors.colorRepositoryNegativeLowestLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNegativeLowestLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNegativeDefaultDark, abstractTheme.colors.colorRepositoryNegativeDefaultDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNegativeDefaultDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeHighDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNegativeHighDark, abstractTheme.colors.colorRepositoryNegativeHighDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNegativeHighDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeHigherDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNegativeHigherDark, abstractTheme.colors.colorRepositoryNegativeHigherDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNegativeHigherDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeHighestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNegativeHighestDark, abstractTheme.colors.colorRepositoryNegativeHighestDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNegativeHighestDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeLowDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNegativeLowDark, abstractTheme.colors.colorRepositoryNegativeLowDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNegativeLowDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeLowerDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNegativeLowerDark, abstractTheme.colors.colorRepositoryNegativeLowerDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNegativeLowerDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeLowestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNegativeLowestDark, abstractTheme.colors.colorRepositoryNegativeLowestDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNegativeLowestDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedBlackLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedBlackLight, abstractTheme.colors.colorRepositoryNeutralEmphasizedBlackLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralEmphasizedBlackLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedHighLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHighLight, abstractTheme.colors.colorRepositoryNeutralEmphasizedHighLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHighLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedHigherLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHigherLight, abstractTheme.colors.colorRepositoryNeutralEmphasizedHigherLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHigherLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedHighestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHighestLight, abstractTheme.colors.colorRepositoryNeutralEmphasizedHighestLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHighestLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedMediumLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedMediumLight, abstractTheme.colors.colorRepositoryNeutralEmphasizedMediumLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralEmphasizedMediumLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedBlackDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedBlackDark, abstractTheme.colors.colorRepositoryNeutralEmphasizedBlackDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralEmphasizedBlackDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedHighDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHighDark, abstractTheme.colors.colorRepositoryNeutralEmphasizedHighDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHighDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedHigherDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHigherDark, abstractTheme.colors.colorRepositoryNeutralEmphasizedHigherDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHigherDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedHighestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHighestDark, abstractTheme.colors.colorRepositoryNeutralEmphasizedHighestDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHighestDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedMediumDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedMediumDark, abstractTheme.colors.colorRepositoryNeutralEmphasizedMediumDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralEmphasizedMediumDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralMutedLowerLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralMutedLowerLight, abstractTheme.colors.colorRepositoryNeutralMutedLowerLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralMutedLowerLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralMutedLowestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralMutedLowestLight, abstractTheme.colors.colorRepositoryNeutralMutedLowestLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralMutedLowestLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralMutedWhiteLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralMutedWhiteLight, abstractTheme.colors.colorRepositoryNeutralMutedWhiteLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralMutedWhiteLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralMutedLowerDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralMutedLowerDark, abstractTheme.colors.colorRepositoryNeutralMutedLowerDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralMutedLowerDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralMutedLowestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralMutedLowestDark, abstractTheme.colors.colorRepositoryNeutralMutedLowestDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralMutedLowestDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralMutedWhiteDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralMutedWhiteDark, abstractTheme.colors.colorRepositoryNeutralMutedWhiteDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralMutedWhiteDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackHigherLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityBlackHigherLight, abstractTheme.colors.colorRepositoryOpacityBlackHigherLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityBlackHigherLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackHighestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityBlackHighestLight, abstractTheme.colors.colorRepositoryOpacityBlackHighestLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityBlackHighestLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackLowLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityBlackLowLight, abstractTheme.colors.colorRepositoryOpacityBlackLowLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityBlackLowLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackLowerLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityBlackLowerLight, abstractTheme.colors.colorRepositoryOpacityBlackLowerLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityBlackLowerLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackLowestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityBlackLowestLight, abstractTheme.colors.colorRepositoryOpacityBlackLowestLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityBlackLowestLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackMediumLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityBlackMediumLight, abstractTheme.colors.colorRepositoryOpacityBlackMediumLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityBlackMediumLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackTransparentLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityBlackTransparentLight, abstractTheme.colors.colorRepositoryOpacityBlackTransparentLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityBlackTransparentLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackHigherDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityBlackHigherDark, abstractTheme.colors.colorRepositoryOpacityBlackHigherDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityBlackHigherDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackHighestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityBlackHighestDark, abstractTheme.colors.colorRepositoryOpacityBlackHighestDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityBlackHighestDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackLowDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityBlackLowDark, abstractTheme.colors.colorRepositoryOpacityBlackLowDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityBlackLowDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackLowerDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityBlackLowerDark, abstractTheme.colors.colorRepositoryOpacityBlackLowerDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityBlackLowerDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackLowestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityBlackLowestDark, abstractTheme.colors.colorRepositoryOpacityBlackLowestDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityBlackLowestDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackMediumDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityBlackMediumDark, abstractTheme.colors.colorRepositoryOpacityBlackMediumDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityBlackMediumDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackTransparentDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityBlackTransparentDark, abstractTheme.colors.colorRepositoryOpacityBlackTransparentDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityBlackTransparentDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityInfoLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityInfoLight, abstractTheme.colors.colorRepositoryOpacityInfoLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityInfoLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityNegativeLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityNegativeLight, abstractTheme.colors.colorRepositoryOpacityNegativeLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityNegativeLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityPositiveLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityPositiveLight, abstractTheme.colors.colorRepositoryOpacityPositiveLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityPositiveLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWarningLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWarningLight, abstractTheme.colors.colorRepositoryOpacityWarningLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWarningLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteHighLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteHighLight, abstractTheme.colors.colorRepositoryOpacityWhiteHighLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWhiteHighLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteHigherLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteHigherLight, abstractTheme.colors.colorRepositoryOpacityWhiteHigherLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWhiteHigherLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteHighestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteHighestLight, abstractTheme.colors.colorRepositoryOpacityWhiteHighestLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWhiteHighestLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteLowLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteLowLight, abstractTheme.colors.colorRepositoryOpacityWhiteLowLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWhiteLowLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteLowerLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteLowerLight, abstractTheme.colors.colorRepositoryOpacityWhiteLowerLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWhiteLowerLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteLowestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteLowestLight, abstractTheme.colors.colorRepositoryOpacityWhiteLowestLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWhiteLowestLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteTransparentLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteTransparentLight, abstractTheme.colors.colorRepositoryOpacityWhiteTransparentLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWhiteTransparentLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteHighDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteHighDark, abstractTheme.colors.colorRepositoryOpacityWhiteHighDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWhiteHighDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteHigherDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteHigherDark, abstractTheme.colors.colorRepositoryOpacityWhiteHigherDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWhiteHigherDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteHighestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteHighestDark, abstractTheme.colors.colorRepositoryOpacityWhiteHighestDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWhiteHighestDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteLowDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteLowDark, abstractTheme.colors.colorRepositoryOpacityWhiteLowDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWhiteLowDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteLowerDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteLowerDark, abstractTheme.colors.colorRepositoryOpacityWhiteLowerDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWhiteLowerDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteLowestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteLowestDark, abstractTheme.colors.colorRepositoryOpacityWhiteLowestDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWhiteLowestDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteTransparentDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteTransparentDark, abstractTheme.colors.colorRepositoryOpacityWhiteTransparentDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWhiteTransparentDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityInfoDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityInfoDark, abstractTheme.colors.colorRepositoryOpacityInfoDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityInfoDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityNegativeDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityNegativeDark, abstractTheme.colors.colorRepositoryOpacityNegativeDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityNegativeDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityPositiveDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityPositiveDark, abstractTheme.colors.colorRepositoryOpacityPositiveDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityPositiveDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWarningDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWarningDark, abstractTheme.colors.colorRepositoryOpacityWarningDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWarningDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPositiveDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryPositiveDefaultLight, abstractTheme.colors.colorRepositoryPositiveDefaultLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryPositiveDefaultLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPositiveHighestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryPositiveHighestLight, abstractTheme.colors.colorRepositoryPositiveHighestLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryPositiveHighestLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPositiveLowLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryPositiveLowLight, abstractTheme.colors.colorRepositoryPositiveLowLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryPositiveLowLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPositiveLowestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryPositiveLowestLight, abstractTheme.colors.colorRepositoryPositiveLowestLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryPositiveLowestLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPositiveDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryPositiveDefaultDark, abstractTheme.colors.colorRepositoryPositiveDefaultDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryPositiveDefaultDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPositiveHighestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryPositiveHighestDark, abstractTheme.colors.colorRepositoryPositiveHighestDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryPositiveHighestDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPositiveLowDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryPositiveLowDark, abstractTheme.colors.colorRepositoryPositiveLowDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryPositiveLowDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPositiveLowestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryPositiveLowestDark, abstractTheme.colors.colorRepositoryPositiveLowestDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryPositiveLowestDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPrimaryDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryPrimaryDefaultLight, abstractTheme.colors.colorRepositoryPrimaryDefaultLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryPrimaryDefaultLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPrimaryLowLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryPrimaryLowLight, abstractTheme.colors.colorRepositoryPrimaryLowLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryPrimaryLowLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPrimaryDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryPrimaryDefaultDark, abstractTheme.colors.colorRepositoryPrimaryDefaultDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryPrimaryDefaultDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPrimaryLowDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryPrimaryLowDark, abstractTheme.colors.colorRepositoryPrimaryLowDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryPrimaryLowDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryWarningDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryWarningDefaultLight, abstractTheme.colors.colorRepositoryWarningDefaultLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryWarningDefaultLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryWarningHighestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryWarningHighestLight, abstractTheme.colors.colorRepositoryWarningHighestLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryWarningHighestLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryWarningLowLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryWarningLowLight, abstractTheme.colors.colorRepositoryWarningLowLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryWarningLowLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryWarningLowestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryWarningLowestLight, abstractTheme.colors.colorRepositoryWarningLowestLight)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryWarningLowestLight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryWarningDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryWarningDefaultDark, abstractTheme.colors.colorRepositoryWarningDefaultDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryWarningDefaultDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryWarningHighestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryWarningHighestDark, abstractTheme.colors.colorRepositoryWarningHighestDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryWarningHighestDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryWarningLowDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryWarningLowDark, abstractTheme.colors.colorRepositoryWarningLowDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryWarningLowDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryWarningLowestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryWarningLowestDark, abstractTheme.colors.colorRepositoryWarningLowestDark)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryWarningLowestDark == OtherMockThemeColorSemanticTokensProvider.otherMockThemeSemanticColorToken)
    }
}

// swiftlint:enable type_body_length
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable required_deinit
