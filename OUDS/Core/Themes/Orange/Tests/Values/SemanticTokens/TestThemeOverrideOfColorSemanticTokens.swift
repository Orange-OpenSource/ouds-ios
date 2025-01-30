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
import OUDSTokensSemantic
import XCTest

// swiftlint:disable type_body_length
// swiftlint:disable file_length
// swiftlint:disable implicitly_unwrapped_optional
// swiftlint:disable required_deinit

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In fact the `OUDSTheme` object is a class, which can be seen as an _abstract class_, exposing through its extensions and protocols _colors semantic tokens_.
/// These semantic tokens should be overridable by subclasses like the ``OrangeThemeColorSemanticTokensProvider``.
///
/// **These tests checks if any _colors semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
final class TestThemeOverrideOfColorSemanticTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Tests

    // MARK: - Color semantic tokens - Light and dark

    func testInheritedThemeCanOverrideSemanticTokenColorOpacityLowestLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOpacityLowestLight, abstractTheme.colors.colorOpacityLowestLight)
        XCTAssertTrue(inheritedTheme.colors.colorOpacityLowestLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOpacityLowestDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOpacityLowestDark, abstractTheme.colors.colorOpacityLowestDark)
        XCTAssertTrue(inheritedTheme.colors.colorOpacityLowestDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOpacityLowerLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOpacityLowerLight, abstractTheme.colors.colorOpacityLowerLight)
        XCTAssertTrue(inheritedTheme.colors.colorOpacityLowerLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOpacityLowerDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOpacityLowerDark, abstractTheme.colors.colorOpacityLowerDark)
        XCTAssertTrue(inheritedTheme.colors.colorOpacityLowerDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOpacityTransparentLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOpacityTransparentLight, abstractTheme.colors.colorOpacityTransparentLight)
        XCTAssertTrue(inheritedTheme.colors.colorOpacityTransparentLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOpacityTransparentDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOpacityTransparentDark, abstractTheme.colors.colorOpacityTransparentDark)
        XCTAssertTrue(inheritedTheme.colors.colorOpacityTransparentDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionDisabledLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionDisabledLight, abstractTheme.colors.colorActionDisabledLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionDisabledLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionEnabledLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionEnabledLight, abstractTheme.colors.colorActionEnabledLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionEnabledLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionFocusLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionFocusLight, abstractTheme.colors.colorActionFocusLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionFocusLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionHighlightedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionHighlightedLight, abstractTheme.colors.colorActionHighlightedLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionHighlightedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionHoverLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionHoverLight, abstractTheme.colors.colorActionHoverLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionHoverLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionLoadingLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionLoadingLight, abstractTheme.colors.colorActionLoadingLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionLoadingLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeEnabledLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativeEnabledLight, abstractTheme.colors.colorActionNegativeEnabledLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativeEnabledLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeFocusLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativeFocusLight, abstractTheme.colors.colorActionNegativeFocusLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativeFocusLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeHoverLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativeHoverLight, abstractTheme.colors.colorActionNegativeHoverLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativeHoverLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeLoadingLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativeLoadingLight, abstractTheme.colors.colorActionNegativeLoadingLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativeLoadingLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativePressedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativePressedLight, abstractTheme.colors.colorActionNegativePressedLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativePressedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeEnabledDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativeEnabledDark, abstractTheme.colors.colorActionNegativeEnabledDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativeEnabledDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeFocusDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativeFocusDark, abstractTheme.colors.colorActionNegativeFocusDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativeFocusDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeHoverDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativeHoverDark, abstractTheme.colors.colorActionNegativeHoverDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativeHoverDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeLoadingDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativeLoadingDark, abstractTheme.colors.colorActionNegativeLoadingDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativeLoadingDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativePressedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativePressedDark, abstractTheme.colors.colorActionNegativePressedDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativePressedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPressedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionPressedLight, abstractTheme.colors.colorActionPressedLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionPressedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSelectedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSelectedLight, abstractTheme.colors.colorActionSelectedLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionSelectedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportEnabledLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportEnabledLight, abstractTheme.colors.colorActionSupportEnabledLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportEnabledLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportFocusLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportFocusLight, abstractTheme.colors.colorActionSupportFocusLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportFocusLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportHoverLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportHoverLight, abstractTheme.colors.colorActionSupportHoverLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportHoverLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportLoadingLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportLoadingLight, abstractTheme.colors.colorActionSupportLoadingLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportLoadingLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportPressedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportPressedLight, abstractTheme.colors.colorActionSupportPressedLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportPressedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportEnabledDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportEnabledDark, abstractTheme.colors.colorActionSupportEnabledDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportEnabledDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportFocusDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportFocusDark, abstractTheme.colors.colorActionSupportFocusDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportFocusDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportHoverDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportHoverDark, abstractTheme.colors.colorActionSupportHoverDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportHoverDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportLoadingDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportLoadingDark, abstractTheme.colors.colorActionSupportLoadingDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportLoadingDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportPressedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportPressedDark, abstractTheme.colors.colorActionSupportPressedDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportPressedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionVisitedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionVisitedLight, abstractTheme.colors.colorActionVisitedLight)
        XCTAssertTrue(inheritedTheme.colors.colorActionVisitedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionDisabledDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionDisabledDark, abstractTheme.colors.colorActionDisabledDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionDisabledDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionEnabledDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionEnabledDark, abstractTheme.colors.colorActionEnabledDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionEnabledDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionFocusDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionFocusDark, abstractTheme.colors.colorActionFocusDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionFocusDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionHighlightedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionHighlightedDark, abstractTheme.colors.colorActionHighlightedDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionHighlightedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionHoverDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionHoverDark, abstractTheme.colors.colorActionHoverDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionHoverDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionLoadingDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionLoadingDark, abstractTheme.colors.colorActionLoadingDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionLoadingDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPressedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionPressedDark, abstractTheme.colors.colorActionPressedDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionPressedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSelectedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSelectedDark, abstractTheme.colors.colorActionSelectedDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionSelectedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionVisitedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionVisitedDark, abstractTheme.colors.colorActionVisitedDark)
        XCTAssertTrue(inheritedTheme.colors.colorActionVisitedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysBlackLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorAlwaysBlackLight, abstractTheme.colors.colorAlwaysBlackLight)
        XCTAssertTrue(inheritedTheme.colors.colorAlwaysBlackLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnBlackLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorAlwaysOnBlackLight, abstractTheme.colors.colorAlwaysOnBlackLight)
        XCTAssertTrue(inheritedTheme.colors.colorAlwaysOnBlackLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnWhiteLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorAlwaysOnWhiteLight, abstractTheme.colors.colorAlwaysOnWhiteLight)
        XCTAssertTrue(inheritedTheme.colors.colorAlwaysOnWhiteLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysWhiteLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorAlwaysWhiteLight, abstractTheme.colors.colorAlwaysWhiteLight)
        XCTAssertTrue(inheritedTheme.colors.colorAlwaysWhiteLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysBlackDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorAlwaysBlackDark, abstractTheme.colors.colorAlwaysBlackDark)
        XCTAssertTrue(inheritedTheme.colors.colorAlwaysBlackDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnBlackDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorAlwaysOnBlackDark, abstractTheme.colors.colorAlwaysOnBlackDark)
        XCTAssertTrue(inheritedTheme.colors.colorAlwaysOnBlackDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnWhiteDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorAlwaysOnWhiteDark, abstractTheme.colors.colorAlwaysOnWhiteDark)
        XCTAssertTrue(inheritedTheme.colors.colorAlwaysOnWhiteDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysWhiteDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorAlwaysWhiteDark, abstractTheme.colors.colorAlwaysWhiteDark)
        XCTAssertTrue(inheritedTheme.colors.colorAlwaysWhiteDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBgEmphasizedLight, abstractTheme.colors.colorBgEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorBgEmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBgPrimaryLight, abstractTheme.colors.colorBgPrimaryLight)
        XCTAssertTrue(inheritedTheme.colors.colorBgPrimaryLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgSecondaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBgSecondaryLight, abstractTheme.colors.colorBgSecondaryLight)
        XCTAssertTrue(inheritedTheme.colors.colorBgSecondaryLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgTertiaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBgTertiaryLight, abstractTheme.colors.colorBgTertiaryLight)
        XCTAssertTrue(inheritedTheme.colors.colorBgTertiaryLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBgEmphasizedDark, abstractTheme.colors.colorBgEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorBgEmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgPrimaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBgPrimaryDark, abstractTheme.colors.colorBgPrimaryDark)
        XCTAssertTrue(inheritedTheme.colors.colorBgPrimaryDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgSecondaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBgSecondaryDark, abstractTheme.colors.colorBgSecondaryDark)
        XCTAssertTrue(inheritedTheme.colors.colorBgSecondaryDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgTertiaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBgTertiaryDark, abstractTheme.colors.colorBgTertiaryDark)
        XCTAssertTrue(inheritedTheme.colors.colorBgTertiaryDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderBrandPrimaryLight, abstractTheme.colors.colorBorderBrandPrimaryLight)
        XCTAssertTrue(inheritedTheme.colors.colorBorderBrandPrimaryLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderDefaultLight, abstractTheme.colors.colorBorderDefaultLight)
        XCTAssertTrue(inheritedTheme.colors.colorBorderDefaultLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderEmphasizedLight, abstractTheme.colors.colorBorderEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorBorderEmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderFocusLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderFocusLight, abstractTheme.colors.colorBorderFocusLight)
        XCTAssertTrue(inheritedTheme.colors.colorBorderFocusLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderFocusInsetLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderFocusInsetLight, abstractTheme.colors.colorBorderFocusInsetLight)
        XCTAssertTrue(inheritedTheme.colors.colorBorderFocusInsetLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderOnBrandPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderOnBrandPrimaryLight, abstractTheme.colors.colorBorderOnBrandPrimaryLight)
        XCTAssertTrue(inheritedTheme.colors.colorBorderOnBrandPrimaryLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderOnBrandPrimaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderOnBrandPrimaryDark, abstractTheme.colors.colorBorderOnBrandPrimaryDark)
        XCTAssertTrue(inheritedTheme.colors.colorBorderOnBrandPrimaryDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandPrimaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderBrandPrimaryDark, abstractTheme.colors.colorBorderBrandPrimaryDark)
        XCTAssertTrue(inheritedTheme.colors.colorBorderBrandPrimaryDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderDefaultDark, abstractTheme.colors.colorBorderDefaultDark)
        XCTAssertTrue(inheritedTheme.colors.colorBorderDefaultDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderEmphasizedDark, abstractTheme.colors.colorBorderEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorBorderEmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderFocusDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderFocusDark, abstractTheme.colors.colorBorderFocusDark)
        XCTAssertTrue(inheritedTheme.colors.colorBorderFocusDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderFocusInsetDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderFocusInsetDark, abstractTheme.colors.colorBorderFocusInsetDark)
        XCTAssertTrue(inheritedTheme.colors.colorBorderFocusInsetDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentBrandPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentBrandPrimaryLight, abstractTheme.colors.colorContentBrandPrimaryLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentBrandPrimaryLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentDefaultLight, abstractTheme.colors.colorContentDefaultLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentDefaultLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentDisabledLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentDisabledLight, abstractTheme.colors.colorContentDisabledLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentDisabledLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentMutedLight, abstractTheme.colors.colorContentMutedLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentMutedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionDisabledLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionDisabledLight, abstractTheme.colors.colorContentOnActionDisabledLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionDisabledLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionEnabledLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionEnabledLight, abstractTheme.colors.colorContentOnActionEnabledLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionEnabledLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionFocusLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionFocusLight, abstractTheme.colors.colorContentOnActionFocusLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionFocusLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionHighlightedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionHighlightedLight, abstractTheme.colors.colorContentOnActionHighlightedLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionHighlightedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionHoverLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionHoverLight, abstractTheme.colors.colorContentOnActionHoverLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionHoverLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionLoadingLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionLoadingLight, abstractTheme.colors.colorContentOnActionLoadingLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionLoadingLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionPressedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionPressedLight, abstractTheme.colors.colorContentOnActionPressedLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionPressedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionDisabledDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionDisabledDark, abstractTheme.colors.colorContentOnActionDisabledDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionDisabledDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionEnabledDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionEnabledDark, abstractTheme.colors.colorContentOnActionEnabledDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionEnabledDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionFocusDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionFocusDark, abstractTheme.colors.colorContentOnActionFocusDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionFocusDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionHighlightedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionHighlightedDark, abstractTheme.colors.colorContentOnActionHighlightedDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionHighlightedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionHoverDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionHoverDark, abstractTheme.colors.colorContentOnActionHoverDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionHoverDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionLoadingDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionLoadingDark, abstractTheme.colors.colorContentOnActionLoadingDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionLoadingDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionPressedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionPressedDark, abstractTheme.colors.colorContentOnActionPressedDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionPressedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBrandPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnBrandPrimaryLight, abstractTheme.colors.colorContentOnBrandPrimaryLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnBrandPrimaryLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBrandPrimaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnBrandPrimaryDark, abstractTheme.colors.colorContentOnBrandPrimaryDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnBrandPrimaryDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnOverlayEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnOverlayEmphasizedLight, abstractTheme.colors.colorContentOnOverlayEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnOverlayEmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnOverlayEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnOverlayEmphasizedDark, abstractTheme.colors.colorContentOnOverlayEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnOverlayEmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnStatusEmphasizedLight, abstractTheme.colors.colorContentOnStatusEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnStatusEmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusEmphasizedAltLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnStatusEmphasizedAltLight, abstractTheme.colors.colorContentOnStatusEmphasizedAltLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnStatusEmphasizedAltLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnStatusMutedLight, abstractTheme.colors.colorContentOnStatusMutedLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnStatusMutedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnStatusEmphasizedDark, abstractTheme.colors.colorContentOnStatusEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnStatusEmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusEmphasizedAltDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnStatusEmphasizedAltDark, abstractTheme.colors.colorContentOnStatusEmphasizedAltDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnStatusEmphasizedAltDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnStatusMutedDark, abstractTheme.colors.colorContentOnStatusMutedDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnStatusMutedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusInfoLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentStatusInfoLight, abstractTheme.colors.colorContentStatusInfoLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentStatusInfoLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusNegativeLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentStatusNegativeLight, abstractTheme.colors.colorContentStatusNegativeLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentStatusNegativeLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusPositiveLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentStatusPositiveLight, abstractTheme.colors.colorContentStatusPositiveLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentStatusPositiveLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusWarningLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentStatusWarningLight, abstractTheme.colors.colorContentStatusWarningLight)
        XCTAssertTrue(inheritedTheme.colors.colorContentStatusWarningLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusInfoDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentStatusInfoDark, abstractTheme.colors.colorContentStatusInfoDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentStatusInfoDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusNegativeDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentStatusNegativeDark, abstractTheme.colors.colorContentStatusNegativeDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentStatusNegativeDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusPositiveDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentStatusPositiveDark, abstractTheme.colors.colorContentStatusPositiveDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentStatusPositiveDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusWarningDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentStatusWarningDark, abstractTheme.colors.colorContentStatusWarningDark)
        XCTAssertTrue(inheritedTheme.colors.colorContentStatusWarningDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOverlayDefaultLight, abstractTheme.colors.colorOverlayDefaultLight)
        XCTAssertTrue(inheritedTheme.colors.colorOverlayDefaultLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayDragLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOverlayDragLight, abstractTheme.colors.colorOverlayDragLight)
        XCTAssertTrue(inheritedTheme.colors.colorOverlayDragLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOverlayEmphasizedLight, abstractTheme.colors.colorOverlayEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorOverlayEmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayModalLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOverlayModalLight, abstractTheme.colors.colorOverlayModalLight)
        XCTAssertTrue(inheritedTheme.colors.colorOverlayModalLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOverlayDefaultDark, abstractTheme.colors.colorOverlayDefaultDark)
        XCTAssertTrue(inheritedTheme.colors.colorOverlayDefaultDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayDragDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOverlayDragDark, abstractTheme.colors.colorOverlayDragDark)
        XCTAssertTrue(inheritedTheme.colors.colorOverlayDragDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOverlayEmphasizedDark, abstractTheme.colors.colorOverlayEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorOverlayEmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayModalDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOverlayModalDark, abstractTheme.colors.colorOverlayModalDark)
        XCTAssertTrue(inheritedTheme.colors.colorOverlayModalDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    // MARK: - Color - Surface

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceBrandPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceBrandPrimaryLight, abstractTheme.colors.colorSurfaceBrandPrimaryLight)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceBrandPrimaryLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceBrandPrimaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceBrandPrimaryDark, abstractTheme.colors.colorSurfaceBrandPrimaryDark)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceBrandPrimaryDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusAccentEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusAccentEmphasizedLight, abstractTheme.colors.colorSurfaceStatusAccentEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusAccentEmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusAccentMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusAccentMutedLight, abstractTheme.colors.colorSurfaceStatusAccentMutedLight)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusAccentMutedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusAccentEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusAccentEmphasizedDark, abstractTheme.colors.colorSurfaceStatusAccentEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusAccentEmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusAccentMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusAccentMutedDark, abstractTheme.colors.colorSurfaceStatusAccentMutedDark)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusAccentMutedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusInfoEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusInfoEmphasizedLight, abstractTheme.colors.colorSurfaceStatusInfoEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusInfoEmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusInfoMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusInfoMutedLight, abstractTheme.colors.colorSurfaceStatusInfoMutedLight)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusInfoMutedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusInfoEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusInfoEmphasizedDark, abstractTheme.colors.colorSurfaceStatusInfoEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusInfoEmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusInfoMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusInfoMutedDark, abstractTheme.colors.colorSurfaceStatusInfoMutedDark)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusInfoMutedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNegativeEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusNegativeEmphasizedLight, abstractTheme.colors.colorSurfaceStatusNegativeEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusNegativeEmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNegativeMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusNegativeMutedLight, abstractTheme.colors.colorSurfaceStatusNegativeMutedLight)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusNegativeMutedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNegativeEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusNegativeEmphasizedDark, abstractTheme.colors.colorSurfaceStatusNegativeEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusNegativeEmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNegativeMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusNegativeMutedDark, abstractTheme.colors.colorSurfaceStatusNegativeMutedDark)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusNegativeMutedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNeutralEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusNeutralEmphasizedLight, abstractTheme.colors.colorSurfaceStatusNeutralEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusNeutralEmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNeutralMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusNeutralMutedLight, abstractTheme.colors.colorSurfaceStatusNeutralMutedLight)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusNeutralMutedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNeutralEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusNeutralEmphasizedDark, abstractTheme.colors.colorSurfaceStatusNeutralEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusNeutralEmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNeutralMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusNeutralMutedDark, abstractTheme.colors.colorSurfaceStatusNeutralMutedDark)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusNeutralMutedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusPositiveEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusPositiveEmphasizedLight, abstractTheme.colors.colorSurfaceStatusPositiveEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusPositiveEmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusPositiveMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusPositiveMutedLight, abstractTheme.colors.colorSurfaceStatusPositiveMutedLight)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusPositiveMutedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusPositiveEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusPositiveEmphasizedDark, abstractTheme.colors.colorSurfaceStatusPositiveEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusPositiveEmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusPositiveMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusPositiveMutedDark, abstractTheme.colors.colorSurfaceStatusPositiveMutedDark)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusPositiveMutedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusWarningEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusWarningEmphasizedLight, abstractTheme.colors.colorSurfaceStatusWarningEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusWarningEmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusWarningMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusWarningMutedLight, abstractTheme.colors.colorSurfaceStatusWarningMutedLight)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusWarningMutedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusWarningEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusWarningEmphasizedDark, abstractTheme.colors.colorSurfaceStatusWarningEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusWarningEmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusWarningMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusWarningMutedDark, abstractTheme.colors.colorSurfaceStatusWarningMutedDark)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusWarningMutedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    // MARK: - Color - Decorative

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1DefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent1DefaultLight, abstractTheme.colors.colorDecorativeAccent1DefaultLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent1DefaultLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1EmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent1EmphasizedLight, abstractTheme.colors.colorDecorativeAccent1EmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent1EmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1MutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent1MutedLight, abstractTheme.colors.colorDecorativeAccent1MutedLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent1MutedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1DefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent1DefaultDark, abstractTheme.colors.colorDecorativeAccent1DefaultDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent1DefaultDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1EmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent1EmphasizedDark, abstractTheme.colors.colorDecorativeAccent1EmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent1EmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1MutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent1MutedDark, abstractTheme.colors.colorDecorativeAccent1MutedDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent1MutedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2DefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent2DefaultLight, abstractTheme.colors.colorDecorativeAccent2DefaultLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent2DefaultLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2EmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent2EmphasizedLight, abstractTheme.colors.colorDecorativeAccent2EmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent2EmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2MutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent2MutedLight, abstractTheme.colors.colorDecorativeAccent2MutedLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent2MutedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2DefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent2DefaultDark, abstractTheme.colors.colorDecorativeAccent2DefaultDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent2DefaultDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2EmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent2EmphasizedDark, abstractTheme.colors.colorDecorativeAccent2EmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent2EmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2MutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent2MutedDark, abstractTheme.colors.colorDecorativeAccent2MutedDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent2MutedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3DefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent3DefaultLight, abstractTheme.colors.colorDecorativeAccent3DefaultLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent3DefaultLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3EmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent3EmphasizedLight, abstractTheme.colors.colorDecorativeAccent3EmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent3EmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3MutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent3MutedLight, abstractTheme.colors.colorDecorativeAccent3MutedLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent3MutedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3DefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent3DefaultDark, abstractTheme.colors.colorDecorativeAccent3DefaultDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent3DefaultDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3EmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent3EmphasizedDark, abstractTheme.colors.colorDecorativeAccent3EmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent3EmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3MutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent3MutedDark, abstractTheme.colors.colorDecorativeAccent3MutedDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent3MutedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4DefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent4DefaultLight, abstractTheme.colors.colorDecorativeAccent4DefaultLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent4DefaultLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4EmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent4EmphasizedLight, abstractTheme.colors.colorDecorativeAccent4EmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent4EmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4MutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent4MutedLight, abstractTheme.colors.colorDecorativeAccent4MutedLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent4MutedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4DefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent4DefaultDark, abstractTheme.colors.colorDecorativeAccent4DefaultDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent4DefaultDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4EmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent4EmphasizedDark, abstractTheme.colors.colorDecorativeAccent4EmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent4EmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4MutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent4MutedDark, abstractTheme.colors.colorDecorativeAccent4MutedDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent4MutedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5DefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent5DefaultLight, abstractTheme.colors.colorDecorativeAccent5DefaultLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent5DefaultLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5EmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent5EmphasizedLight, abstractTheme.colors.colorDecorativeAccent5EmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent5EmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5MutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent5MutedLight, abstractTheme.colors.colorDecorativeAccent5MutedLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent5MutedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5DefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent5DefaultDark, abstractTheme.colors.colorDecorativeAccent5DefaultDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent5DefaultDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5EmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent5EmphasizedDark, abstractTheme.colors.colorDecorativeAccent5EmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent5EmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5MutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent5MutedDark, abstractTheme.colors.colorDecorativeAccent5MutedDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent5MutedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeBrandPrimaryLight, abstractTheme.colors.colorDecorativeBrandPrimaryLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeBrandPrimaryLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandSecondaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeBrandSecondaryLight, abstractTheme.colors.colorDecorativeBrandSecondaryLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeBrandSecondaryLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandTertiaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeBrandTertiaryLight, abstractTheme.colors.colorDecorativeBrandTertiaryLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeBrandTertiaryLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandPrimaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeBrandPrimaryDark, abstractTheme.colors.colorDecorativeBrandPrimaryDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeBrandPrimaryDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandSecondaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeBrandSecondaryDark, abstractTheme.colors.colorDecorativeBrandSecondaryDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeBrandSecondaryDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandTertiaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeBrandTertiaryDark, abstractTheme.colors.colorDecorativeBrandTertiaryDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeBrandTertiaryDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeNeutralDefaultLight, abstractTheme.colors.colorDecorativeNeutralDefaultLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeNeutralDefaultLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeNeutralEmphasizedLight, abstractTheme.colors.colorDecorativeNeutralEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeNeutralEmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeNeutralMutedLight, abstractTheme.colors.colorDecorativeNeutralMutedLight)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeNeutralMutedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeNeutralDefaultDark, abstractTheme.colors.colorDecorativeNeutralDefaultDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeNeutralDefaultDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeNeutralEmphasizedDark, abstractTheme.colors.colorDecorativeNeutralEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeNeutralEmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeNeutralMutedDark, abstractTheme.colors.colorDecorativeNeutralMutedDark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeNeutralMutedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint100Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint100Light, abstractTheme.colors.colorDecorativeSkinTint100Light)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint100Light == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint200Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint200Light, abstractTheme.colors.colorDecorativeSkinTint200Light)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint200Light == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint300Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint300Light, abstractTheme.colors.colorDecorativeSkinTint300Light)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint300Light == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint400Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint400Light, abstractTheme.colors.colorDecorativeSkinTint400Light)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint400Light == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint500Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint500Light, abstractTheme.colors.colorDecorativeSkinTint500Light)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint500Light == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint600Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint600Light, abstractTheme.colors.colorDecorativeSkinTint600Light)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint600Light == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint700Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint700Light, abstractTheme.colors.colorDecorativeSkinTint700Light)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint700Light == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint800Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint800Light, abstractTheme.colors.colorDecorativeSkinTint800Light)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint800Light == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint900Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint900Light, abstractTheme.colors.colorDecorativeSkinTint900Light)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint900Light == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint100Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint100Dark, abstractTheme.colors.colorDecorativeSkinTint100Dark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint100Dark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint200Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint200Dark, abstractTheme.colors.colorDecorativeSkinTint200Dark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint200Dark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint300Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint300Dark, abstractTheme.colors.colorDecorativeSkinTint300Dark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint300Dark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint400Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint400Dark, abstractTheme.colors.colorDecorativeSkinTint400Dark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint400Dark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint500Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint500Dark, abstractTheme.colors.colorDecorativeSkinTint500Dark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint500Dark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint600Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint600Dark, abstractTheme.colors.colorDecorativeSkinTint600Dark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint600Dark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint700Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint700Dark, abstractTheme.colors.colorDecorativeSkinTint700Dark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint700Dark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint800Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint800Dark, abstractTheme.colors.colorDecorativeSkinTint800Dark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint800Dark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint900Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint900Dark, abstractTheme.colors.colorDecorativeSkinTint900Dark)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint900Dark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    // MARK: - Color - Chart

    func testInheritedThemeCanOverrideSemanticTokenColorChartBorderLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartBorderLight, abstractTheme.colors.colorChartBorderLight)
        XCTAssertTrue(inheritedTheme.colors.colorChartBorderLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartBorderContrastLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartBorderContrastLight, abstractTheme.colors.colorChartBorderContrastLight)
        XCTAssertTrue(inheritedTheme.colors.colorChartBorderContrastLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier1Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier1Light, abstractTheme.colors.colorChartCategoricalTier1Light)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier1Light == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier2Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier2Light, abstractTheme.colors.colorChartCategoricalTier2Light)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier2Light == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier3Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier3Light, abstractTheme.colors.colorChartCategoricalTier3Light)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier3Light == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier4Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier4Light, abstractTheme.colors.colorChartCategoricalTier4Light)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier4Light == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier5Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier5Light, abstractTheme.colors.colorChartCategoricalTier5Light)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier5Light == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier6Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier6Light, abstractTheme.colors.colorChartCategoricalTier6Light)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier6Light == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier7Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier7Light, abstractTheme.colors.colorChartCategoricalTier7Light)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier7Light == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier8Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier8Light, abstractTheme.colors.colorChartCategoricalTier8Light)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier8Light == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier9Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier9Light, abstractTheme.colors.colorChartCategoricalTier9Light)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier9Light == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier10Light() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier10Light, abstractTheme.colors.colorChartCategoricalTier10Light)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier10Light == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartBorderDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartBorderDark, abstractTheme.colors.colorChartBorderDark)
        XCTAssertTrue(inheritedTheme.colors.colorChartBorderDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartBorderContrastDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartBorderContrastDark, abstractTheme.colors.colorChartBorderContrastDark)
        XCTAssertTrue(inheritedTheme.colors.colorChartBorderContrastDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier1Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier1Dark, abstractTheme.colors.colorChartCategoricalTier1Dark)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier1Dark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier2Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier2Dark, abstractTheme.colors.colorChartCategoricalTier2Dark)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier2Dark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier3Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier3Dark, abstractTheme.colors.colorChartCategoricalTier3Dark)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier3Dark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier4Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier4Dark, abstractTheme.colors.colorChartCategoricalTier4Dark)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier4Dark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier5Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier5Dark, abstractTheme.colors.colorChartCategoricalTier5Dark)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier5Dark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier6Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier6Dark, abstractTheme.colors.colorChartCategoricalTier6Dark)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier6Dark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier7Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier7Dark, abstractTheme.colors.colorChartCategoricalTier7Dark)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier7Dark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier8Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier8Dark, abstractTheme.colors.colorChartCategoricalTier8Dark)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier8Dark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier9Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier9Dark, abstractTheme.colors.colorChartCategoricalTier9Dark)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier9Dark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier10Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier10Dark, abstractTheme.colors.colorChartCategoricalTier10Dark)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier10Dark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalInfoLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartFunctionalInfoLight, abstractTheme.colors.colorChartFunctionalInfoLight)
        XCTAssertTrue(inheritedTheme.colors.colorChartFunctionalInfoLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalNegativeLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartFunctionalNegativeLight, abstractTheme.colors.colorChartFunctionalNegativeLight)
        XCTAssertTrue(inheritedTheme.colors.colorChartFunctionalNegativeLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalPositiveLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartFunctionalPositiveLight, abstractTheme.colors.colorChartFunctionalPositiveLight)
        XCTAssertTrue(inheritedTheme.colors.colorChartFunctionalPositiveLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalWarningLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartFunctionalWarningLight, abstractTheme.colors.colorChartFunctionalWarningLight)
        XCTAssertTrue(inheritedTheme.colors.colorChartFunctionalWarningLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalInfoDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartFunctionalInfoDark, abstractTheme.colors.colorChartFunctionalInfoDark)
        XCTAssertTrue(inheritedTheme.colors.colorChartFunctionalInfoDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalNegativeDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartFunctionalNegativeDark, abstractTheme.colors.colorChartFunctionalNegativeDark)
        XCTAssertTrue(inheritedTheme.colors.colorChartFunctionalNegativeDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalPositiveDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartFunctionalPositiveDark, abstractTheme.colors.colorChartFunctionalPositiveDark)
        XCTAssertTrue(inheritedTheme.colors.colorChartFunctionalPositiveDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalWarningDark() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartFunctionalWarningDark, abstractTheme.colors.colorChartFunctionalWarningDark)
        XCTAssertTrue(inheritedTheme.colors.colorChartFunctionalWarningDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartGridlinesLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartGridlinesLight, abstractTheme.colors.colorChartGridlinesLight)
        XCTAssertTrue(inheritedTheme.colors.colorChartGridlinesLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartHighlightLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartHighlightLight, abstractTheme.colors.colorChartHighlightLight)
        XCTAssertTrue(inheritedTheme.colors.colorChartHighlightLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartNeutralLight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartNeutralLight, abstractTheme.colors.colorChartNeutralLight)
        XCTAssertTrue(inheritedTheme.colors.colorChartNeutralLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    // MARK: - Color - Repository

    // WARNING: Semantic tokens of colors colorRepository* must not be overridable
    // i.e. defined in the top level provider and that's all.

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryAccentDefaultLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryAccentDefaultLight, abstractTheme.colors.colorRepositoryAccentDefaultLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryAccentHighestLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryAccentHighestLight, abstractTheme.colors.colorRepositoryAccentHighestLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryAccentLowLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryAccentLowLight, abstractTheme.colors.colorRepositoryAccentLowLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryAccentLowestLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryAccentLowestLight, abstractTheme.colors.colorRepositoryAccentLowestLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryAccentDefaultDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryAccentDefaultDark, abstractTheme.colors.colorRepositoryAccentDefaultDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryAccentHighestDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryAccentHighestDark, abstractTheme.colors.colorRepositoryAccentHighestDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryAccentLowDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryAccentLowDark, abstractTheme.colors.colorRepositoryAccentLowDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryAccentLowestDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryAccentLowestDark, abstractTheme.colors.colorRepositoryAccentLowestDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryInfoDefaultLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryInfoDefaultLight, abstractTheme.colors.colorRepositoryInfoDefaultLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryInfoHighestLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryInfoHighestLight, abstractTheme.colors.colorRepositoryInfoHighestLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryInfoLowLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryInfoLowLight, abstractTheme.colors.colorRepositoryInfoLowLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryInfoLowestLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryInfoLowestLight, abstractTheme.colors.colorRepositoryInfoLowestLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryInfoDefaultDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryInfoDefaultDark, abstractTheme.colors.colorRepositoryInfoDefaultDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryInfoHighestDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryInfoHighestDark, abstractTheme.colors.colorRepositoryInfoHighestDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryInfoLowDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryInfoLowDark, abstractTheme.colors.colorRepositoryInfoLowDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryInfoLowestDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryInfoLowestDark, abstractTheme.colors.colorRepositoryInfoLowestDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeDefaultLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNegativeDefaultLight, abstractTheme.colors.colorRepositoryNegativeDefaultLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeHighLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNegativeHighLight, abstractTheme.colors.colorRepositoryNegativeHighLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeHigherLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNegativeHigherLight, abstractTheme.colors.colorRepositoryNegativeHigherLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeHighestLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNegativeHighestLight, abstractTheme.colors.colorRepositoryNegativeHighestLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeLowLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNegativeLowLight, abstractTheme.colors.colorRepositoryNegativeLowLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeLowerLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNegativeLowerLight, abstractTheme.colors.colorRepositoryNegativeLowerLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeLowestLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNegativeLowestLight, abstractTheme.colors.colorRepositoryNegativeLowestLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeDefaultDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNegativeDefaultDark, abstractTheme.colors.colorRepositoryNegativeDefaultDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeHighDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNegativeHighDark, abstractTheme.colors.colorRepositoryNegativeHighDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeHigherDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNegativeHigherDark, abstractTheme.colors.colorRepositoryNegativeHigherDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeHighestDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNegativeHighestDark, abstractTheme.colors.colorRepositoryNegativeHighestDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeLowDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNegativeLowDark, abstractTheme.colors.colorRepositoryNegativeLowDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeLowerDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNegativeLowerDark, abstractTheme.colors.colorRepositoryNegativeLowerDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeLowestDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNegativeLowestDark, abstractTheme.colors.colorRepositoryNegativeLowestDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralEmphasizedBlackLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedBlackLight, abstractTheme.colors.colorRepositoryNeutralEmphasizedBlackLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralEmphasizedHighLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHighLight, abstractTheme.colors.colorRepositoryNeutralEmphasizedHighLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralEmphasizedHigherLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHigherLight, abstractTheme.colors.colorRepositoryNeutralEmphasizedHigherLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralEmphasizedHighestLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHighestLight, abstractTheme.colors.colorRepositoryNeutralEmphasizedHighestLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralEmphasizedMediumLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedMediumLight, abstractTheme.colors.colorRepositoryNeutralEmphasizedMediumLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralEmphasizedBlackDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedBlackDark, abstractTheme.colors.colorRepositoryNeutralEmphasizedBlackDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralEmphasizedHighDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHighDark, abstractTheme.colors.colorRepositoryNeutralEmphasizedHighDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralEmphasizedHigherDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHigherDark, abstractTheme.colors.colorRepositoryNeutralEmphasizedHigherDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralEmphasizedHighestDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHighestDark, abstractTheme.colors.colorRepositoryNeutralEmphasizedHighestDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralEmphasizedMediumDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedMediumDark, abstractTheme.colors.colorRepositoryNeutralEmphasizedMediumDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralMutedLowerLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNeutralMutedLowerLight, abstractTheme.colors.colorRepositoryNeutralMutedLowerLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralMutedLowestLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNeutralMutedLowestLight, abstractTheme.colors.colorRepositoryNeutralMutedLowestLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralMutedWhiteLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNeutralMutedWhiteLight, abstractTheme.colors.colorRepositoryNeutralMutedWhiteLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralMutedLowerDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNeutralMutedLowerDark, abstractTheme.colors.colorRepositoryNeutralMutedLowerDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralMutedLowestDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNeutralMutedLowestDark, abstractTheme.colors.colorRepositoryNeutralMutedLowestDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralMutedWhiteDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNeutralMutedWhiteDark, abstractTheme.colors.colorRepositoryNeutralMutedWhiteDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackHighLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityBlackHighLight, abstractTheme.colors.colorRepositoryOpacityBlackHighLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackHigherLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityBlackHigherLight, abstractTheme.colors.colorRepositoryOpacityBlackHigherLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackHighestLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityBlackHighestLight, abstractTheme.colors.colorRepositoryOpacityBlackHighestLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackLowLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityBlackLowLight, abstractTheme.colors.colorRepositoryOpacityBlackLowLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackLowerLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityBlackLowerLight, abstractTheme.colors.colorRepositoryOpacityBlackLowerLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackLowestLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityBlackLowestLight, abstractTheme.colors.colorRepositoryOpacityBlackLowestLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackMediumLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityBlackMediumLight, abstractTheme.colors.colorRepositoryOpacityBlackMediumLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackSoftLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityBlackSoftLight, abstractTheme.colors.colorRepositoryOpacityBlackSoftLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackTransparentLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityBlackTransparentLight, abstractTheme.colors.colorRepositoryOpacityBlackTransparentLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackHighDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityBlackHighDark, abstractTheme.colors.colorRepositoryOpacityBlackHighDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackHigherDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityBlackHigherDark, abstractTheme.colors.colorRepositoryOpacityBlackHigherDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackHighestDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityBlackHighestDark, abstractTheme.colors.colorRepositoryOpacityBlackHighestDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackLowDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityBlackLowDark, abstractTheme.colors.colorRepositoryOpacityBlackLowDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackLowerDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityBlackLowerDark, abstractTheme.colors.colorRepositoryOpacityBlackLowerDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackLowestDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityBlackLowestDark, abstractTheme.colors.colorRepositoryOpacityBlackLowestDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackMediumDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityBlackMediumDark, abstractTheme.colors.colorRepositoryOpacityBlackMediumDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackSoftDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityBlackSoftDark, abstractTheme.colors.colorRepositoryOpacityBlackSoftDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackTransparentDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityBlackTransparentDark, abstractTheme.colors.colorRepositoryOpacityBlackTransparentDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityInfoLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityInfoLight, abstractTheme.colors.colorRepositoryOpacityInfoLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityNegativeLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityNegativeLight, abstractTheme.colors.colorRepositoryOpacityNegativeLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityPositiveLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityPositiveLight, abstractTheme.colors.colorRepositoryOpacityPositiveLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWarningLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityWarningLight, abstractTheme.colors.colorRepositoryOpacityWarningLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteHighLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteHighLight, abstractTheme.colors.colorRepositoryOpacityWhiteHighLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteHigherLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteHigherLight, abstractTheme.colors.colorRepositoryOpacityWhiteHigherLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteHighestLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteHighestLight, abstractTheme.colors.colorRepositoryOpacityWhiteHighestLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteMediumLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteMediumLight, abstractTheme.colors.colorRepositoryOpacityWhiteMediumLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteLowLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteLowLight, abstractTheme.colors.colorRepositoryOpacityWhiteLowLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteLowerLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteLowerLight, abstractTheme.colors.colorRepositoryOpacityWhiteLowerLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteLowestLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteLowestLight, abstractTheme.colors.colorRepositoryOpacityWhiteLowestLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteTransparentLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteTransparentLight, abstractTheme.colors.colorRepositoryOpacityWhiteTransparentLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteHighDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteHighDark, abstractTheme.colors.colorRepositoryOpacityWhiteHighDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteHigherDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteHigherDark, abstractTheme.colors.colorRepositoryOpacityWhiteHigherDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteHighestDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteHighestDark, abstractTheme.colors.colorRepositoryOpacityWhiteHighestDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteMediumDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteMediumDark, abstractTheme.colors.colorRepositoryOpacityWhiteMediumDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteLowDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteLowDark, abstractTheme.colors.colorRepositoryOpacityWhiteLowDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteLowerDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteLowerDark, abstractTheme.colors.colorRepositoryOpacityWhiteLowerDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteLowestDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteLowestDark, abstractTheme.colors.colorRepositoryOpacityWhiteLowestDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteTransparentDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteTransparentDark, abstractTheme.colors.colorRepositoryOpacityWhiteTransparentDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityInfoDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityInfoDark, abstractTheme.colors.colorRepositoryOpacityInfoDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityNegativeDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityNegativeDark, abstractTheme.colors.colorRepositoryOpacityNegativeDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityPositiveDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityPositiveDark, abstractTheme.colors.colorRepositoryOpacityPositiveDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWarningDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityWarningDark, abstractTheme.colors.colorRepositoryOpacityWarningDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryPositiveDefaultLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryPositiveDefaultLight, abstractTheme.colors.colorRepositoryPositiveDefaultLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryPositiveHighLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryPositiveHighLight, abstractTheme.colors.colorRepositoryPositiveHighLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryPositiveHighestLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryPositiveHighestLight, abstractTheme.colors.colorRepositoryPositiveHighestLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryPositiveLowLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryPositiveLowLight, abstractTheme.colors.colorRepositoryPositiveLowLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryPositiveLowestLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryPositiveLowestLight, abstractTheme.colors.colorRepositoryPositiveLowestLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryPositiveDefaultDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryPositiveDefaultDark, abstractTheme.colors.colorRepositoryPositiveDefaultDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryPositiveHighDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryPositiveHighDark, abstractTheme.colors.colorRepositoryPositiveHighDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryPositiveHighestDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryPositiveHighestDark, abstractTheme.colors.colorRepositoryPositiveHighestDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryPositiveLowDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryPositiveLowDark, abstractTheme.colors.colorRepositoryPositiveLowDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryPositiveLowestDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryPositiveLowestDark, abstractTheme.colors.colorRepositoryPositiveLowestDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryPrimaryDefaultLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryPrimaryDefaultLight, abstractTheme.colors.colorRepositoryPrimaryDefaultLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryPrimaryLowLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryPrimaryLowLight, abstractTheme.colors.colorRepositoryPrimaryLowLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryPrimaryDefaultDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryPrimaryDefaultDark, abstractTheme.colors.colorRepositoryPrimaryDefaultDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryPrimaryLowDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryPrimaryLowDark, abstractTheme.colors.colorRepositoryPrimaryLowDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryWarningDefaultLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryWarningDefaultLight, abstractTheme.colors.colorRepositoryWarningDefaultLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryWarningHighestLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryWarningHighestLight, abstractTheme.colors.colorRepositoryWarningHighestLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryWarningLowLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryWarningLowLight, abstractTheme.colors.colorRepositoryWarningLowLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryWarningLowestLight() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryWarningLowestLight, abstractTheme.colors.colorRepositoryWarningLowestLight)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryWarningDefaultDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryWarningDefaultDark, abstractTheme.colors.colorRepositoryWarningDefaultDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryWarningHighestDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryWarningHighestDark, abstractTheme.colors.colorRepositoryWarningHighestDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryWarningLowDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryWarningLowDark, abstractTheme.colors.colorRepositoryWarningLowDark)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryWarningLowestDark() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryWarningLowestDark, abstractTheme.colors.colorRepositoryWarningLowestDark)
    }
}

// swiftlint:enable type_body_length
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable required_deinit
