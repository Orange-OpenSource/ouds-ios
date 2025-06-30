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
import Testing

// swiftlint:disable type_body_length
// swiftlint:disable file_length

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In fact the `OUDSTheme` object is a class, which can be seen as an _abstract class_, exposing through its extensions and protocols _colors semantic tokens_.
/// These semantic tokens should be overridable by subclasses like the ``OrangeThemeColorSemanticTokensProvider``.
///
/// **These tests checks if any _colors semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
struct ThemeOverrideOfColorSemanticTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Tests

    // MARK: - Color semantic tokens - Light and dark

    @Test func inheritedThemeCanOverrideSemanticTokenColorOpacityLowestLight() throws {
        #expect(inheritedTheme.colors.colorOpacityLowestLight != abstractTheme.colors.colorOpacityLowestLight)
        #expect(inheritedTheme.colors.colorOpacityLowestLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOpacityLowestDark() throws {
        #expect(inheritedTheme.colors.colorOpacityLowestDark != abstractTheme.colors.colorOpacityLowestDark)
        #expect(inheritedTheme.colors.colorOpacityLowestDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOpacityLowerLight() throws {
        #expect(inheritedTheme.colors.colorOpacityLowerLight != abstractTheme.colors.colorOpacityLowerLight)
        #expect(inheritedTheme.colors.colorOpacityLowerLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOpacityLowerDark() throws {
        #expect(inheritedTheme.colors.colorOpacityLowerDark != abstractTheme.colors.colorOpacityLowerDark)
        #expect(inheritedTheme.colors.colorOpacityLowerDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOpacityTransparentLight() throws {
        #expect(inheritedTheme.colors.colorOpacityTransparentLight != abstractTheme.colors.colorOpacityTransparentLight)
        #expect(inheritedTheme.colors.colorOpacityTransparentLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOpacityTransparentDark() throws {
        #expect(inheritedTheme.colors.colorOpacityTransparentDark != abstractTheme.colors.colorOpacityTransparentDark)
        #expect(inheritedTheme.colors.colorOpacityTransparentDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionDisabledLight() throws {
        #expect(inheritedTheme.colors.colorActionDisabledLight != abstractTheme.colors.colorActionDisabledLight)
        #expect(inheritedTheme.colors.colorActionDisabledLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionEnabledLight() throws {
        #expect(inheritedTheme.colors.colorActionEnabledLight != abstractTheme.colors.colorActionEnabledLight)
        #expect(inheritedTheme.colors.colorActionEnabledLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionFocusLight() throws {
        #expect(inheritedTheme.colors.colorActionFocusLight != abstractTheme.colors.colorActionFocusLight)
        #expect(inheritedTheme.colors.colorActionFocusLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionHighlightedLight() throws {
        #expect(inheritedTheme.colors.colorActionHighlightedLight != abstractTheme.colors.colorActionHighlightedLight)
        #expect(inheritedTheme.colors.colorActionHighlightedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionHoverLight() throws {
        #expect(inheritedTheme.colors.colorActionHoverLight != abstractTheme.colors.colorActionHoverLight)
        #expect(inheritedTheme.colors.colorActionHoverLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionLoadingLight() throws {
        #expect(inheritedTheme.colors.colorActionLoadingLight != abstractTheme.colors.colorActionLoadingLight)
        #expect(inheritedTheme.colors.colorActionLoadingLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionNegativeEnabledLight() throws {
        #expect(inheritedTheme.colors.colorActionNegativeEnabledLight != abstractTheme.colors.colorActionNegativeEnabledLight)
        #expect(inheritedTheme.colors.colorActionNegativeEnabledLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionNegativeFocusLight() throws {
        #expect(inheritedTheme.colors.colorActionNegativeFocusLight != abstractTheme.colors.colorActionNegativeFocusLight)
        #expect(inheritedTheme.colors.colorActionNegativeFocusLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionNegativeHoverLight() throws {
        #expect(inheritedTheme.colors.colorActionNegativeHoverLight != abstractTheme.colors.colorActionNegativeHoverLight)
        #expect(inheritedTheme.colors.colorActionNegativeHoverLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionNegativeLoadingLight() throws {
        #expect(inheritedTheme.colors.colorActionNegativeLoadingLight != abstractTheme.colors.colorActionNegativeLoadingLight)
        #expect(inheritedTheme.colors.colorActionNegativeLoadingLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionNegativePressedLight() throws {
        #expect(inheritedTheme.colors.colorActionNegativePressedLight != abstractTheme.colors.colorActionNegativePressedLight)
        #expect(inheritedTheme.colors.colorActionNegativePressedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionNegativeEnabledDark() throws {
        #expect(inheritedTheme.colors.colorActionNegativeEnabledDark != abstractTheme.colors.colorActionNegativeEnabledDark)
        #expect(inheritedTheme.colors.colorActionNegativeEnabledDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionNegativeFocusDark() throws {
        #expect(inheritedTheme.colors.colorActionNegativeFocusDark != abstractTheme.colors.colorActionNegativeFocusDark)
        #expect(inheritedTheme.colors.colorActionNegativeFocusDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionNegativeHoverDark() throws {
        #expect(inheritedTheme.colors.colorActionNegativeHoverDark != abstractTheme.colors.colorActionNegativeHoverDark)
        #expect(inheritedTheme.colors.colorActionNegativeHoverDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionNegativeLoadingDark() throws {
        #expect(inheritedTheme.colors.colorActionNegativeLoadingDark != abstractTheme.colors.colorActionNegativeLoadingDark)
        #expect(inheritedTheme.colors.colorActionNegativeLoadingDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionNegativePressedDark() throws {
        #expect(inheritedTheme.colors.colorActionNegativePressedDark != abstractTheme.colors.colorActionNegativePressedDark)
        #expect(inheritedTheme.colors.colorActionNegativePressedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionPressedLight() throws {
        #expect(inheritedTheme.colors.colorActionPressedLight != abstractTheme.colors.colorActionPressedLight)
        #expect(inheritedTheme.colors.colorActionPressedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSelectedLight() throws {
        #expect(inheritedTheme.colors.colorActionSelectedLight != abstractTheme.colors.colorActionSelectedLight)
        #expect(inheritedTheme.colors.colorActionSelectedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportEnabledLight() throws {
        #expect(inheritedTheme.colors.colorActionSupportEnabledLight != abstractTheme.colors.colorActionSupportEnabledLight)
        #expect(inheritedTheme.colors.colorActionSupportEnabledLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportFocusLight() throws {
        #expect(inheritedTheme.colors.colorActionSupportFocusLight != abstractTheme.colors.colorActionSupportFocusLight)
        #expect(inheritedTheme.colors.colorActionSupportFocusLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportHoverLight() throws {
        #expect(inheritedTheme.colors.colorActionSupportHoverLight != abstractTheme.colors.colorActionSupportHoverLight)
        #expect(inheritedTheme.colors.colorActionSupportHoverLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportLoadingLight() throws {
        #expect(inheritedTheme.colors.colorActionSupportLoadingLight != abstractTheme.colors.colorActionSupportLoadingLight)
        #expect(inheritedTheme.colors.colorActionSupportLoadingLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportPressedLight() throws {
        #expect(inheritedTheme.colors.colorActionSupportPressedLight != abstractTheme.colors.colorActionSupportPressedLight)
        #expect(inheritedTheme.colors.colorActionSupportPressedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportEnabledDark() throws {
        #expect(inheritedTheme.colors.colorActionSupportEnabledDark != abstractTheme.colors.colorActionSupportEnabledDark)
        #expect(inheritedTheme.colors.colorActionSupportEnabledDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportFocusDark() throws {
        #expect(inheritedTheme.colors.colorActionSupportFocusDark != abstractTheme.colors.colorActionSupportFocusDark)
        #expect(inheritedTheme.colors.colorActionSupportFocusDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportHoverDark() throws {
        #expect(inheritedTheme.colors.colorActionSupportHoverDark != abstractTheme.colors.colorActionSupportHoverDark)
        #expect(inheritedTheme.colors.colorActionSupportHoverDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportLoadingDark() throws {
        #expect(inheritedTheme.colors.colorActionSupportLoadingDark != abstractTheme.colors.colorActionSupportLoadingDark)
        #expect(inheritedTheme.colors.colorActionSupportLoadingDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportPressedDark() throws {
        #expect(inheritedTheme.colors.colorActionSupportPressedDark != abstractTheme.colors.colorActionSupportPressedDark)
        #expect(inheritedTheme.colors.colorActionSupportPressedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionVisitedLight() throws {
        #expect(inheritedTheme.colors.colorActionVisitedLight != abstractTheme.colors.colorActionVisitedLight)
        #expect(inheritedTheme.colors.colorActionVisitedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionDisabledDark() throws {
        #expect(inheritedTheme.colors.colorActionDisabledDark != abstractTheme.colors.colorActionDisabledDark)
        #expect(inheritedTheme.colors.colorActionDisabledDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionEnabledDark() throws {
        #expect(inheritedTheme.colors.colorActionEnabledDark != abstractTheme.colors.colorActionEnabledDark)
        #expect(inheritedTheme.colors.colorActionEnabledDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionFocusDark() throws {
        #expect(inheritedTheme.colors.colorActionFocusDark != abstractTheme.colors.colorActionFocusDark)
        #expect(inheritedTheme.colors.colorActionFocusDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionHighlightedDark() throws {
        #expect(inheritedTheme.colors.colorActionHighlightedDark != abstractTheme.colors.colorActionHighlightedDark)
        #expect(inheritedTheme.colors.colorActionHighlightedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionHoverDark() throws {
        #expect(inheritedTheme.colors.colorActionHoverDark != abstractTheme.colors.colorActionHoverDark)
        #expect(inheritedTheme.colors.colorActionHoverDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionLoadingDark() throws {
        #expect(inheritedTheme.colors.colorActionLoadingDark != abstractTheme.colors.colorActionLoadingDark)
        #expect(inheritedTheme.colors.colorActionLoadingDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionPressedDark() throws {
        #expect(inheritedTheme.colors.colorActionPressedDark != abstractTheme.colors.colorActionPressedDark)
        #expect(inheritedTheme.colors.colorActionPressedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSelectedDark() throws {
        #expect(inheritedTheme.colors.colorActionSelectedDark != abstractTheme.colors.colorActionSelectedDark)
        #expect(inheritedTheme.colors.colorActionSelectedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionVisitedDark() throws {
        #expect(inheritedTheme.colors.colorActionVisitedDark != abstractTheme.colors.colorActionVisitedDark)
        #expect(inheritedTheme.colors.colorActionVisitedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorAlwaysBlackLight() throws {
        #expect(inheritedTheme.colors.colorAlwaysBlackLight != abstractTheme.colors.colorAlwaysBlackLight)
        #expect(inheritedTheme.colors.colorAlwaysBlackLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorAlwaysOnBlackLight() throws {
        #expect(inheritedTheme.colors.colorAlwaysOnBlackLight != abstractTheme.colors.colorAlwaysOnBlackLight)
        #expect(inheritedTheme.colors.colorAlwaysOnBlackLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorAlwaysOnWhiteLight() throws {
        #expect(inheritedTheme.colors.colorAlwaysOnWhiteLight != abstractTheme.colors.colorAlwaysOnWhiteLight)
        #expect(inheritedTheme.colors.colorAlwaysOnWhiteLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorAlwaysWhiteLight() throws {
        #expect(inheritedTheme.colors.colorAlwaysWhiteLight != abstractTheme.colors.colorAlwaysWhiteLight)
        #expect(inheritedTheme.colors.colorAlwaysWhiteLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorAlwaysBlackDark() throws {
        #expect(inheritedTheme.colors.colorAlwaysBlackDark != abstractTheme.colors.colorAlwaysBlackDark)
        #expect(inheritedTheme.colors.colorAlwaysBlackDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorAlwaysOnBlackDark() throws {
        #expect(inheritedTheme.colors.colorAlwaysOnBlackDark != abstractTheme.colors.colorAlwaysOnBlackDark)
        #expect(inheritedTheme.colors.colorAlwaysOnBlackDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorAlwaysOnWhiteDark() throws {
        #expect(inheritedTheme.colors.colorAlwaysOnWhiteDark != abstractTheme.colors.colorAlwaysOnWhiteDark)
        #expect(inheritedTheme.colors.colorAlwaysOnWhiteDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorAlwaysWhiteDark() throws {
        #expect(inheritedTheme.colors.colorAlwaysWhiteDark != abstractTheme.colors.colorAlwaysWhiteDark)
        #expect(inheritedTheme.colors.colorAlwaysWhiteDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBgEmphasizedLight() throws {
        #expect(inheritedTheme.colors.colorBgEmphasizedLight != abstractTheme.colors.colorBgEmphasizedLight)
        #expect(inheritedTheme.colors.colorBgEmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBgPrimaryLight() throws {
        #expect(inheritedTheme.colors.colorBgPrimaryLight != abstractTheme.colors.colorBgPrimaryLight)
        #expect(inheritedTheme.colors.colorBgPrimaryLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBgSecondaryLight() throws {
        #expect(inheritedTheme.colors.colorBgSecondaryLight != abstractTheme.colors.colorBgSecondaryLight)
        #expect(inheritedTheme.colors.colorBgSecondaryLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBgTertiaryLight() throws {
        #expect(inheritedTheme.colors.colorBgTertiaryLight != abstractTheme.colors.colorBgTertiaryLight)
        #expect(inheritedTheme.colors.colorBgTertiaryLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBgEmphasizedDark() throws {
        #expect(inheritedTheme.colors.colorBgEmphasizedDark != abstractTheme.colors.colorBgEmphasizedDark)
        #expect(inheritedTheme.colors.colorBgEmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBgPrimaryDark() throws {
        #expect(inheritedTheme.colors.colorBgPrimaryDark != abstractTheme.colors.colorBgPrimaryDark)
        #expect(inheritedTheme.colors.colorBgPrimaryDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBgSecondaryDark() throws {
        #expect(inheritedTheme.colors.colorBgSecondaryDark != abstractTheme.colors.colorBgSecondaryDark)
        #expect(inheritedTheme.colors.colorBgSecondaryDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBgTertiaryDark() throws {
        #expect(inheritedTheme.colors.colorBgTertiaryDark != abstractTheme.colors.colorBgTertiaryDark)
        #expect(inheritedTheme.colors.colorBgTertiaryDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderBrandPrimaryLight() throws {
        #expect(inheritedTheme.colors.colorBorderBrandPrimaryLight != abstractTheme.colors.colorBorderBrandPrimaryLight)
        #expect(inheritedTheme.colors.colorBorderBrandPrimaryLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderDefaultLight() throws {
        #expect(inheritedTheme.colors.colorBorderDefaultLight != abstractTheme.colors.colorBorderDefaultLight)
        #expect(inheritedTheme.colors.colorBorderDefaultLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderEmphasizedLight() throws {
        #expect(inheritedTheme.colors.colorBorderEmphasizedLight != abstractTheme.colors.colorBorderEmphasizedLight)
        #expect(inheritedTheme.colors.colorBorderEmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderFocusLight() throws {
        #expect(inheritedTheme.colors.colorBorderFocusLight != abstractTheme.colors.colorBorderFocusLight)
        #expect(inheritedTheme.colors.colorBorderFocusLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderFocusInsetLight() throws {
        #expect(inheritedTheme.colors.colorBorderFocusInsetLight != abstractTheme.colors.colorBorderFocusInsetLight)
        #expect(inheritedTheme.colors.colorBorderFocusInsetLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderOnBrandPrimaryLight() throws {
        #expect(inheritedTheme.colors.colorBorderOnBrandPrimaryLight != abstractTheme.colors.colorBorderOnBrandPrimaryLight)
        #expect(inheritedTheme.colors.colorBorderOnBrandPrimaryLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderOnBrandPrimaryDark() throws {
        #expect(inheritedTheme.colors.colorBorderOnBrandPrimaryDark != abstractTheme.colors.colorBorderOnBrandPrimaryDark)
        #expect(inheritedTheme.colors.colorBorderOnBrandPrimaryDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderBrandPrimaryDark() throws {
        #expect(inheritedTheme.colors.colorBorderBrandPrimaryDark != abstractTheme.colors.colorBorderBrandPrimaryDark)
        #expect(inheritedTheme.colors.colorBorderBrandPrimaryDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderDefaultDark() throws {
        #expect(inheritedTheme.colors.colorBorderDefaultDark != abstractTheme.colors.colorBorderDefaultDark)
        #expect(inheritedTheme.colors.colorBorderDefaultDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderEmphasizedDark() throws {
        #expect(inheritedTheme.colors.colorBorderEmphasizedDark != abstractTheme.colors.colorBorderEmphasizedDark)
        #expect(inheritedTheme.colors.colorBorderEmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderFocusDark() throws {
        #expect(inheritedTheme.colors.colorBorderFocusDark != abstractTheme.colors.colorBorderFocusDark)
        #expect(inheritedTheme.colors.colorBorderFocusDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderFocusInsetDark() throws {
        #expect(inheritedTheme.colors.colorBorderFocusInsetDark != abstractTheme.colors.colorBorderFocusInsetDark)
        #expect(inheritedTheme.colors.colorBorderFocusInsetDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentBrandPrimaryLight() throws {
        #expect(inheritedTheme.colors.colorContentBrandPrimaryLight != abstractTheme.colors.colorContentBrandPrimaryLight)
        #expect(inheritedTheme.colors.colorContentBrandPrimaryLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentDefaultLight() throws {
        #expect(inheritedTheme.colors.colorContentDefaultLight != abstractTheme.colors.colorContentDefaultLight)
        #expect(inheritedTheme.colors.colorContentDefaultLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentDisabledLight() throws {
        #expect(inheritedTheme.colors.colorContentDisabledLight != abstractTheme.colors.colorContentDisabledLight)
        #expect(inheritedTheme.colors.colorContentDisabledLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentMutedLight() throws {
        #expect(inheritedTheme.colors.colorContentMutedLight != abstractTheme.colors.colorContentMutedLight)
        #expect(inheritedTheme.colors.colorContentMutedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionSelectedLight() throws {
        #expect(inheritedTheme.colors.colorContentOnActionSelectedLight != abstractTheme.colors.colorContentOnActionSelectedLight)
        #expect(inheritedTheme.colors.colorContentOnActionSelectedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionDisabledLight() throws {
        #expect(inheritedTheme.colors.colorContentOnActionDisabledLight != abstractTheme.colors.colorContentOnActionDisabledLight)
        #expect(inheritedTheme.colors.colorContentOnActionDisabledLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionEnabledLight() throws {
        #expect(inheritedTheme.colors.colorContentOnActionEnabledLight != abstractTheme.colors.colorContentOnActionEnabledLight)
        #expect(inheritedTheme.colors.colorContentOnActionEnabledLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionFocusLight() throws {
        #expect(inheritedTheme.colors.colorContentOnActionFocusLight != abstractTheme.colors.colorContentOnActionFocusLight)
        #expect(inheritedTheme.colors.colorContentOnActionFocusLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionHighlightedLight() throws {
        #expect(inheritedTheme.colors.colorContentOnActionHighlightedLight != abstractTheme.colors.colorContentOnActionHighlightedLight)
        #expect(inheritedTheme.colors.colorContentOnActionHighlightedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionHoverLight() throws {
        #expect(inheritedTheme.colors.colorContentOnActionHoverLight != abstractTheme.colors.colorContentOnActionHoverLight)
        #expect(inheritedTheme.colors.colorContentOnActionHoverLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionLoadingLight() throws {
        #expect(inheritedTheme.colors.colorContentOnActionLoadingLight != abstractTheme.colors.colorContentOnActionLoadingLight)
        #expect(inheritedTheme.colors.colorContentOnActionLoadingLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionPressedLight() throws {
        #expect(inheritedTheme.colors.colorContentOnActionPressedLight != abstractTheme.colors.colorContentOnActionPressedLight)
        #expect(inheritedTheme.colors.colorContentOnActionPressedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionSelectedDark() throws {
        #expect(inheritedTheme.colors.colorContentOnActionSelectedDark != abstractTheme.colors.colorContentOnActionSelectedDark)
        #expect(inheritedTheme.colors.colorContentOnActionSelectedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionDisabledDark() throws {
        #expect(inheritedTheme.colors.colorContentOnActionDisabledDark != abstractTheme.colors.colorContentOnActionDisabledDark)
        #expect(inheritedTheme.colors.colorContentOnActionDisabledDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionEnabledDark() throws {
        #expect(inheritedTheme.colors.colorContentOnActionEnabledDark != abstractTheme.colors.colorContentOnActionEnabledDark)
        #expect(inheritedTheme.colors.colorContentOnActionEnabledDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionFocusDark() throws {
        #expect(inheritedTheme.colors.colorContentOnActionFocusDark != abstractTheme.colors.colorContentOnActionFocusDark)
        #expect(inheritedTheme.colors.colorContentOnActionFocusDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionHighlightedDark() throws {
        #expect(inheritedTheme.colors.colorContentOnActionHighlightedDark != abstractTheme.colors.colorContentOnActionHighlightedDark)
        #expect(inheritedTheme.colors.colorContentOnActionHighlightedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionHoverDark() throws {
        #expect(inheritedTheme.colors.colorContentOnActionHoverDark != abstractTheme.colors.colorContentOnActionHoverDark)
        #expect(inheritedTheme.colors.colorContentOnActionHoverDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionLoadingDark() throws {
        #expect(inheritedTheme.colors.colorContentOnActionLoadingDark != abstractTheme.colors.colorContentOnActionLoadingDark)
        #expect(inheritedTheme.colors.colorContentOnActionLoadingDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionPressedDark() throws {
        #expect(inheritedTheme.colors.colorContentOnActionPressedDark != abstractTheme.colors.colorContentOnActionPressedDark)
        #expect(inheritedTheme.colors.colorContentOnActionPressedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnBrandPrimaryLight() throws {
        #expect(inheritedTheme.colors.colorContentOnBrandPrimaryLight != abstractTheme.colors.colorContentOnBrandPrimaryLight)
        #expect(inheritedTheme.colors.colorContentOnBrandPrimaryLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnBrandPrimaryDark() throws {
        #expect(inheritedTheme.colors.colorContentOnBrandPrimaryDark != abstractTheme.colors.colorContentOnBrandPrimaryDark)
        #expect(inheritedTheme.colors.colorContentOnBrandPrimaryDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnOverlayEmphasizedLight() throws {
        #expect(inheritedTheme.colors.colorContentOnOverlayEmphasizedLight != abstractTheme.colors.colorContentOnOverlayEmphasizedLight)
        #expect(inheritedTheme.colors.colorContentOnOverlayEmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnOverlayEmphasizedDark() throws {
        #expect(inheritedTheme.colors.colorContentOnOverlayEmphasizedDark != abstractTheme.colors.colorContentOnOverlayEmphasizedDark)
        #expect(inheritedTheme.colors.colorContentOnOverlayEmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusPositiveMutedLight() throws {
        #expect(inheritedTheme.colors.colorContentOnStatusPositiveMutedLight != abstractTheme.colors.colorContentOnStatusPositiveMutedLight)
        #expect(inheritedTheme.colors.colorContentOnStatusPositiveMutedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusPositiveEmphasizedLight() throws {
        #expect(inheritedTheme.colors.colorContentOnStatusPositiveEmphasizedLight != abstractTheme.colors.colorContentOnStatusPositiveEmphasizedLight)
        #expect(inheritedTheme.colors.colorContentOnStatusPositiveEmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusNeutralMutedLight() throws {
        #expect(inheritedTheme.colors.colorContentOnStatusNeutralMutedLight != abstractTheme.colors.colorContentOnStatusNeutralMutedLight)
        #expect(inheritedTheme.colors.colorContentOnStatusNeutralMutedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusNeutralEmphasizedLight() throws {
        #expect(inheritedTheme.colors.colorContentOnStatusNeutralEmphasizedLight != abstractTheme.colors.colorContentOnStatusNeutralEmphasizedLight)
        #expect(inheritedTheme.colors.colorContentOnStatusNeutralEmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusNegativeMutedight() throws {
        #expect(inheritedTheme.colors.colorContentOnStatusNegativeMutedLight != abstractTheme.colors.colorContentOnStatusNegativeMutedLight)
        #expect(inheritedTheme.colors.colorContentOnStatusNegativeMutedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusNegativeEmphasizedLight() throws {
        #expect(inheritedTheme.colors.colorContentOnStatusNegativeEmphasizedLight != abstractTheme.colors.colorContentOnStatusNegativeEmphasizedLight)
        #expect(inheritedTheme.colors.colorContentOnStatusNegativeEmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusInfoMutedLight() throws {
        #expect(inheritedTheme.colors.colorContentOnStatusInfoMutedLight != abstractTheme.colors.colorContentOnStatusInfoMutedLight)
        #expect(inheritedTheme.colors.colorContentOnStatusInfoMutedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusInfoEmphasizedLight() throws {
        #expect(inheritedTheme.colors.colorContentOnStatusInfoEmphasizedLight != abstractTheme.colors.colorContentOnStatusInfoEmphasizedLight)
        #expect(inheritedTheme.colors.colorContentOnStatusInfoEmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusWarningMutedLight() throws {
        #expect(inheritedTheme.colors.colorContentOnStatusWarningMutedLight != abstractTheme.colors.colorContentOnStatusWarningMutedLight)
        #expect(inheritedTheme.colors.colorContentOnStatusWarningMutedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusWarningEmphasizedLight() throws {
        #expect(inheritedTheme.colors.colorContentOnStatusWarningEmphasizedLight != abstractTheme.colors.colorContentOnStatusWarningEmphasizedLight)
        #expect(inheritedTheme.colors.colorContentOnStatusWarningEmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusAccentMutedLight() throws {
        #expect(inheritedTheme.colors.colorContentOnStatusAccentMutedLight != abstractTheme.colors.colorContentOnStatusAccentMutedLight)
        #expect(inheritedTheme.colors.colorContentOnStatusAccentMutedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusAccentEmphasizedLight() throws {
        #expect(inheritedTheme.colors.colorContentOnStatusAccentEmphasizedLight != abstractTheme.colors.colorContentOnStatusAccentEmphasizedLight)
        #expect(inheritedTheme.colors.colorContentOnStatusAccentEmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusPositiveMutedDark() throws {
        #expect(inheritedTheme.colors.colorContentOnStatusPositiveMutedDark != abstractTheme.colors.colorContentOnStatusPositiveMutedDark)
        #expect(inheritedTheme.colors.colorContentOnStatusPositiveMutedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusPositiveEmphasizedDark() throws {
        #expect(inheritedTheme.colors.colorContentOnStatusPositiveEmphasizedDark != abstractTheme.colors.colorContentOnStatusPositiveEmphasizedDark)
        #expect(inheritedTheme.colors.colorContentOnStatusPositiveEmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusNeutraMutedDark() throws {
        #expect(inheritedTheme.colors.colorContentOnStatusNeutralMutedDark != abstractTheme.colors.colorContentOnStatusNeutralMutedDark)
        #expect(inheritedTheme.colors.colorContentOnStatusNeutralMutedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusNeutralEmphasizedDark() throws {
        #expect(inheritedTheme.colors.colorContentOnStatusNeutralEmphasizedDark != abstractTheme.colors.colorContentOnStatusNeutralEmphasizedDark)
        #expect(inheritedTheme.colors.colorContentOnStatusNeutralEmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusNegativeMutedDark() throws {
        #expect(inheritedTheme.colors.colorContentOnStatusNegativeMutedDark != abstractTheme.colors.colorContentOnStatusNegativeMutedDark)
        #expect(inheritedTheme.colors.colorContentOnStatusNegativeMutedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusNegativeEmphasizedDark() throws {
        #expect(inheritedTheme.colors.colorContentOnStatusNegativeEmphasizedDark != abstractTheme.colors.colorContentOnStatusNegativeEmphasizedDark)
        #expect(inheritedTheme.colors.colorContentOnStatusNegativeEmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusInfoMutedDark() throws {
        #expect(inheritedTheme.colors.colorContentOnStatusInfoMutedDark != abstractTheme.colors.colorContentOnStatusInfoMutedDark)
        #expect(inheritedTheme.colors.colorContentOnStatusInfoMutedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusInfoEmphasizedDark() throws {
        #expect(inheritedTheme.colors.colorContentOnStatusInfoEmphasizedDark != abstractTheme.colors.colorContentOnStatusInfoEmphasizedDark)
        #expect(inheritedTheme.colors.colorContentOnStatusInfoEmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusWarningMutedDark() throws {
        #expect(inheritedTheme.colors.colorContentOnStatusWarningMutedDark != abstractTheme.colors.colorContentOnStatusWarningMutedDark)
        #expect(inheritedTheme.colors.colorContentOnStatusWarningMutedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusWarningEmphasizedDark() throws {
        #expect(inheritedTheme.colors.colorContentOnStatusWarningEmphasizedDark != abstractTheme.colors.colorContentOnStatusWarningEmphasizedDark)
        #expect(inheritedTheme.colors.colorContentOnStatusWarningEmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusAccentMutedDark() throws {
        #expect(inheritedTheme.colors.colorContentOnStatusAccentMutedDark != abstractTheme.colors.colorContentOnStatusAccentMutedDark)
        #expect(inheritedTheme.colors.colorContentOnStatusAccentMutedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusAccentEmphasizedDark() throws {
        #expect(inheritedTheme.colors.colorContentOnStatusAccentEmphasizedDark != abstractTheme.colors.colorContentOnStatusAccentEmphasizedDark)
        #expect(inheritedTheme.colors.colorContentOnStatusAccentEmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusInfoLight() throws {
        #expect(inheritedTheme.colors.colorContentStatusInfoLight != abstractTheme.colors.colorContentStatusInfoLight)
        #expect(inheritedTheme.colors.colorContentStatusInfoLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusInfoMutedLight() throws {
        #expect(inheritedTheme.colors.colorContentStatusInfoMutedLight != abstractTheme.colors.colorContentStatusInfoMutedLight)
        #expect(inheritedTheme.colors.colorContentStatusInfoMutedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusInfoEmphasizedight() throws {
        #expect(inheritedTheme.colors.colorContentStatusInfoEmphasizedLight != abstractTheme.colors.colorContentStatusInfoEmphasizedLight)
        #expect(inheritedTheme.colors.colorContentStatusInfoEmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusNegativeLight() throws {
        #expect(inheritedTheme.colors.colorContentStatusNegativeLight != abstractTheme.colors.colorContentStatusNegativeLight)
        #expect(inheritedTheme.colors.colorContentStatusNegativeLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusPositiveLight() throws {
        #expect(inheritedTheme.colors.colorContentStatusPositiveLight != abstractTheme.colors.colorContentStatusPositiveLight)
        #expect(inheritedTheme.colors.colorContentStatusPositiveLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusWarningLight() throws {
        #expect(inheritedTheme.colors.colorContentStatusWarningLight != abstractTheme.colors.colorContentStatusWarningLight)
        #expect(inheritedTheme.colors.colorContentStatusWarningLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusInfoDark() throws {
        #expect(inheritedTheme.colors.colorContentStatusInfoDark != abstractTheme.colors.colorContentStatusInfoDark)
        #expect(inheritedTheme.colors.colorContentStatusInfoDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusNegativeDark() throws {
        #expect(inheritedTheme.colors.colorContentStatusNegativeDark != abstractTheme.colors.colorContentStatusNegativeDark)
        #expect(inheritedTheme.colors.colorContentStatusNegativeDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusPositiveDark() throws {
        #expect(inheritedTheme.colors.colorContentStatusPositiveDark != abstractTheme.colors.colorContentStatusPositiveDark)
        #expect(inheritedTheme.colors.colorContentStatusPositiveDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusWarningDark() throws {
        #expect(inheritedTheme.colors.colorContentStatusWarningDark != abstractTheme.colors.colorContentStatusWarningDark)
        #expect(inheritedTheme.colors.colorContentStatusWarningDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOverlayDefaultLight() throws {
        #expect(inheritedTheme.colors.colorOverlayDefaultLight != abstractTheme.colors.colorOverlayDefaultLight)
        #expect(inheritedTheme.colors.colorOverlayDefaultLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOverlayDragLight() throws {
        #expect(inheritedTheme.colors.colorOverlayDragLight != abstractTheme.colors.colorOverlayDragLight)
        #expect(inheritedTheme.colors.colorOverlayDragLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOverlayEmphasizedLight() throws {
        #expect(inheritedTheme.colors.colorOverlayEmphasizedLight != abstractTheme.colors.colorOverlayEmphasizedLight)
        #expect(inheritedTheme.colors.colorOverlayEmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOverlayModalLight() throws {
        #expect(inheritedTheme.colors.colorOverlayModalLight != abstractTheme.colors.colorOverlayModalLight)
        #expect(inheritedTheme.colors.colorOverlayModalLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOverlayDefaultDark() throws {
        #expect(inheritedTheme.colors.colorOverlayDefaultDark != abstractTheme.colors.colorOverlayDefaultDark)
        #expect(inheritedTheme.colors.colorOverlayDefaultDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOverlayDragDark() throws {
        #expect(inheritedTheme.colors.colorOverlayDragDark != abstractTheme.colors.colorOverlayDragDark)
        #expect(inheritedTheme.colors.colorOverlayDragDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOverlayEmphasizedDark() throws {
        #expect(inheritedTheme.colors.colorOverlayEmphasizedDark != abstractTheme.colors.colorOverlayEmphasizedDark)
        #expect(inheritedTheme.colors.colorOverlayEmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOverlayModalDark() throws {
        #expect(inheritedTheme.colors.colorOverlayModalDark != abstractTheme.colors.colorOverlayModalDark)
        #expect(inheritedTheme.colors.colorOverlayModalDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    // MARK: - Color - Surface

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceBrandPrimaryLight() throws {
        #expect(inheritedTheme.colors.colorSurfaceBrandPrimaryLight != abstractTheme.colors.colorSurfaceBrandPrimaryLight)
        #expect(inheritedTheme.colors.colorSurfaceBrandPrimaryLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceBrandPrimaryDark() throws {
        #expect(inheritedTheme.colors.colorSurfaceBrandPrimaryDark != abstractTheme.colors.colorSurfaceBrandPrimaryDark)
        #expect(inheritedTheme.colors.colorSurfaceBrandPrimaryDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusAccentEmphasizedLight() throws {
        #expect(inheritedTheme.colors.colorSurfaceStatusAccentEmphasizedLight != abstractTheme.colors.colorSurfaceStatusAccentEmphasizedLight)
        #expect(inheritedTheme.colors.colorSurfaceStatusAccentEmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusAccentMutedLight() throws {
        #expect(inheritedTheme.colors.colorSurfaceStatusAccentMutedLight != abstractTheme.colors.colorSurfaceStatusAccentMutedLight)
        #expect(inheritedTheme.colors.colorSurfaceStatusAccentMutedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusAccentEmphasizedDark() throws {
        #expect(inheritedTheme.colors.colorSurfaceStatusAccentEmphasizedDark != abstractTheme.colors.colorSurfaceStatusAccentEmphasizedDark)
        #expect(inheritedTheme.colors.colorSurfaceStatusAccentEmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusAccentMutedDark() throws {
        #expect(inheritedTheme.colors.colorSurfaceStatusAccentMutedDark != abstractTheme.colors.colorSurfaceStatusAccentMutedDark)
        #expect(inheritedTheme.colors.colorSurfaceStatusAccentMutedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusInfoEmphasizedLight() throws {
        #expect(inheritedTheme.colors.colorSurfaceStatusInfoEmphasizedLight != abstractTheme.colors.colorSurfaceStatusInfoEmphasizedLight)
        #expect(inheritedTheme.colors.colorSurfaceStatusInfoEmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusInfoMutedLight() throws {
        #expect(inheritedTheme.colors.colorSurfaceStatusInfoMutedLight != abstractTheme.colors.colorSurfaceStatusInfoMutedLight)
        #expect(inheritedTheme.colors.colorSurfaceStatusInfoMutedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusInfoEmphasizedDark() throws {
        #expect(inheritedTheme.colors.colorSurfaceStatusInfoEmphasizedDark != abstractTheme.colors.colorSurfaceStatusInfoEmphasizedDark)
        #expect(inheritedTheme.colors.colorSurfaceStatusInfoEmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusInfoMutedDark() throws {
        #expect(inheritedTheme.colors.colorSurfaceStatusInfoMutedDark != abstractTheme.colors.colorSurfaceStatusInfoMutedDark)
        #expect(inheritedTheme.colors.colorSurfaceStatusInfoMutedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNegativeEmphasizedLight() throws {
        #expect(inheritedTheme.colors.colorSurfaceStatusNegativeEmphasizedLight != abstractTheme.colors.colorSurfaceStatusNegativeEmphasizedLight)
        #expect(inheritedTheme.colors.colorSurfaceStatusNegativeEmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNegativeMutedLight() throws {
        #expect(inheritedTheme.colors.colorSurfaceStatusNegativeMutedLight != abstractTheme.colors.colorSurfaceStatusNegativeMutedLight)
        #expect(inheritedTheme.colors.colorSurfaceStatusNegativeMutedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNegativeEmphasizedDark() throws {
        #expect(inheritedTheme.colors.colorSurfaceStatusNegativeEmphasizedDark != abstractTheme.colors.colorSurfaceStatusNegativeEmphasizedDark)
        #expect(inheritedTheme.colors.colorSurfaceStatusNegativeEmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNegativeMutedDark() throws {
        #expect(inheritedTheme.colors.colorSurfaceStatusNegativeMutedDark != abstractTheme.colors.colorSurfaceStatusNegativeMutedDark)
        #expect(inheritedTheme.colors.colorSurfaceStatusNegativeMutedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNeutralEmphasizedLight() throws {
        #expect(inheritedTheme.colors.colorSurfaceStatusNeutralEmphasizedLight != abstractTheme.colors.colorSurfaceStatusNeutralEmphasizedLight)
        #expect(inheritedTheme.colors.colorSurfaceStatusNeutralEmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNeutralMutedLight() throws {
        #expect(inheritedTheme.colors.colorSurfaceStatusNeutralMutedLight != abstractTheme.colors.colorSurfaceStatusNeutralMutedLight)
        #expect(inheritedTheme.colors.colorSurfaceStatusNeutralMutedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNeutralEmphasizedDark() throws {
        #expect(inheritedTheme.colors.colorSurfaceStatusNeutralEmphasizedDark != abstractTheme.colors.colorSurfaceStatusNeutralEmphasizedDark)
        #expect(inheritedTheme.colors.colorSurfaceStatusNeutralEmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNeutralMutedDark() throws {
        #expect(inheritedTheme.colors.colorSurfaceStatusNeutralMutedDark != abstractTheme.colors.colorSurfaceStatusNeutralMutedDark)
        #expect(inheritedTheme.colors.colorSurfaceStatusNeutralMutedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusPositiveEmphasizedLight() throws {
        #expect(inheritedTheme.colors.colorSurfaceStatusPositiveEmphasizedLight != abstractTheme.colors.colorSurfaceStatusPositiveEmphasizedLight)
        #expect(inheritedTheme.colors.colorSurfaceStatusPositiveEmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusPositiveMutedLight() throws {
        #expect(inheritedTheme.colors.colorSurfaceStatusPositiveMutedLight != abstractTheme.colors.colorSurfaceStatusPositiveMutedLight)
        #expect(inheritedTheme.colors.colorSurfaceStatusPositiveMutedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusPositiveEmphasizedDark() throws {
        #expect(inheritedTheme.colors.colorSurfaceStatusPositiveEmphasizedDark != abstractTheme.colors.colorSurfaceStatusPositiveEmphasizedDark)
        #expect(inheritedTheme.colors.colorSurfaceStatusPositiveEmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusPositiveMutedDark() throws {
        #expect(inheritedTheme.colors.colorSurfaceStatusPositiveMutedDark != abstractTheme.colors.colorSurfaceStatusPositiveMutedDark)
        #expect(inheritedTheme.colors.colorSurfaceStatusPositiveMutedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusWarningEmphasizedLight() throws {
        #expect(inheritedTheme.colors.colorSurfaceStatusWarningEmphasizedLight != abstractTheme.colors.colorSurfaceStatusWarningEmphasizedLight)
        #expect(inheritedTheme.colors.colorSurfaceStatusWarningEmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusWarningMutedLight() throws {
        #expect(inheritedTheme.colors.colorSurfaceStatusWarningMutedLight != abstractTheme.colors.colorSurfaceStatusWarningMutedLight)
        #expect(inheritedTheme.colors.colorSurfaceStatusWarningMutedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusWarningEmphasizedDark() throws {
        #expect(inheritedTheme.colors.colorSurfaceStatusWarningEmphasizedDark != abstractTheme.colors.colorSurfaceStatusWarningEmphasizedDark)
        #expect(inheritedTheme.colors.colorSurfaceStatusWarningEmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusWarningMutedDark() throws {
        #expect(inheritedTheme.colors.colorSurfaceStatusWarningMutedDark != abstractTheme.colors.colorSurfaceStatusWarningMutedDark)
        #expect(inheritedTheme.colors.colorSurfaceStatusWarningMutedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    // MARK: - Color - Decorative

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1Default() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent1Default != abstractTheme.colors.colorDecorativeAccent1Default)
        #expect(inheritedTheme.colors.colorDecorativeAccent1Default == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1Emphasized() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent1Emphasized != abstractTheme.colors.colorDecorativeAccent1Emphasized)
        #expect(inheritedTheme.colors.colorDecorativeAccent1Emphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1Muted() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent1Muted != abstractTheme.colors.colorDecorativeAccent1Muted)
        #expect(inheritedTheme.colors.colorDecorativeAccent1Muted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2Default() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent2Default != abstractTheme.colors.colorDecorativeAccent2Default)
        #expect(inheritedTheme.colors.colorDecorativeAccent2Default == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2Emphasized() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent2Emphasized != abstractTheme.colors.colorDecorativeAccent2Emphasized)
        #expect(inheritedTheme.colors.colorDecorativeAccent2Emphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2Muted() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent2Muted != abstractTheme.colors.colorDecorativeAccent2Muted)
        #expect(inheritedTheme.colors.colorDecorativeAccent2Muted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3Default() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent3Default != abstractTheme.colors.colorDecorativeAccent3Default)
        #expect(inheritedTheme.colors.colorDecorativeAccent3Default == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3Emphasized() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent3Emphasized != abstractTheme.colors.colorDecorativeAccent3Emphasized)
        #expect(inheritedTheme.colors.colorDecorativeAccent3Emphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3Muted() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent3Muted != abstractTheme.colors.colorDecorativeAccent3Muted)
        #expect(inheritedTheme.colors.colorDecorativeAccent3Muted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4Default() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent4Default != abstractTheme.colors.colorDecorativeAccent4Default)
        #expect(inheritedTheme.colors.colorDecorativeAccent4Default == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4Emphasized() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent4Emphasized != abstractTheme.colors.colorDecorativeAccent4Emphasized)
        #expect(inheritedTheme.colors.colorDecorativeAccent4Emphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4Muted() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent4Muted != abstractTheme.colors.colorDecorativeAccent4Muted)
        #expect(inheritedTheme.colors.colorDecorativeAccent4Muted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5Default() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent5Default != abstractTheme.colors.colorDecorativeAccent5Default)
        #expect(inheritedTheme.colors.colorDecorativeAccent5Default == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5Emphasized() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent5Emphasized != abstractTheme.colors.colorDecorativeAccent5Emphasized)
        #expect(inheritedTheme.colors.colorDecorativeAccent5Emphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5Muted() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent5Muted != abstractTheme.colors.colorDecorativeAccent5Muted)
        #expect(inheritedTheme.colors.colorDecorativeAccent5Muted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeBrandPrimary() throws {
        #expect(inheritedTheme.colors.colorDecorativeBrandPrimary != abstractTheme.colors.colorDecorativeBrandPrimary)
        #expect(inheritedTheme.colors.colorDecorativeBrandPrimary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeBrandSecondary() throws {
        #expect(inheritedTheme.colors.colorDecorativeBrandSecondary != abstractTheme.colors.colorDecorativeBrandSecondary)
        #expect(inheritedTheme.colors.colorDecorativeBrandSecondary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeBrandTertiary() throws {
        #expect(inheritedTheme.colors.colorDecorativeBrandTertiary != abstractTheme.colors.colorDecorativeBrandTertiary)
        #expect(inheritedTheme.colors.colorDecorativeBrandTertiary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint100() throws {
        #expect(inheritedTheme.colors.colorDecorativeSkinTint100 != abstractTheme.colors.colorDecorativeSkinTint100)
        #expect(inheritedTheme.colors.colorDecorativeSkinTint100 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint200() throws {
        #expect(inheritedTheme.colors.colorDecorativeSkinTint200 != abstractTheme.colors.colorDecorativeSkinTint200)
        #expect(inheritedTheme.colors.colorDecorativeSkinTint200 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint300() throws {
        #expect(inheritedTheme.colors.colorDecorativeSkinTint300 != abstractTheme.colors.colorDecorativeSkinTint300)
        #expect(inheritedTheme.colors.colorDecorativeSkinTint300 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint400() throws {
        #expect(inheritedTheme.colors.colorDecorativeSkinTint400 != abstractTheme.colors.colorDecorativeSkinTint400)
        #expect(inheritedTheme.colors.colorDecorativeSkinTint400 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint500() throws {
        #expect(inheritedTheme.colors.colorDecorativeSkinTint500 != abstractTheme.colors.colorDecorativeSkinTint500)
        #expect(inheritedTheme.colors.colorDecorativeSkinTint500 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint600() throws {
        #expect(inheritedTheme.colors.colorDecorativeSkinTint600 != abstractTheme.colors.colorDecorativeSkinTint600)
        #expect(inheritedTheme.colors.colorDecorativeSkinTint600 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint700() throws {
        #expect(inheritedTheme.colors.colorDecorativeSkinTint700 != abstractTheme.colors.colorDecorativeSkinTint700)
        #expect(inheritedTheme.colors.colorDecorativeSkinTint700 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint800() throws {
        #expect(inheritedTheme.colors.colorDecorativeSkinTint800 != abstractTheme.colors.colorDecorativeSkinTint800)
        #expect(inheritedTheme.colors.colorDecorativeSkinTint800 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint900() throws {
        #expect(inheritedTheme.colors.colorDecorativeSkinTint900 != abstractTheme.colors.colorDecorativeSkinTint900)
        #expect(inheritedTheme.colors.colorDecorativeSkinTint900 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideColorDecorativeNeutralEmphasizedHigher() throws {
        #expect(inheritedTheme.colors.colorDecorativeNeutralEmphasizedHigher != abstractTheme.colors.colorDecorativeNeutralEmphasizedHigher)
        #expect(inheritedTheme.colors.colorDecorativeNeutralEmphasizedHigher == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideColorDecorativeNeutralEmphasizedLow() throws {
        #expect(inheritedTheme.colors.colorDecorativeNeutralEmphasizedLow != abstractTheme.colors.colorDecorativeNeutralEmphasizedLow)
        #expect(inheritedTheme.colors.colorDecorativeNeutralEmphasizedLow == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideColorDecorativeNeutralEmphasizedLower() throws {
        #expect(inheritedTheme.colors.colorDecorativeNeutralEmphasizedLower != abstractTheme.colors.colorDecorativeNeutralEmphasizedLower)
        #expect(inheritedTheme.colors.colorDecorativeNeutralEmphasizedLower == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideColorDecorativeNeutralEmphasizedLowest() throws {
        #expect(inheritedTheme.colors.colorDecorativeNeutralEmphasizedLowest != abstractTheme.colors.colorDecorativeNeutralEmphasizedLowest)
        #expect(inheritedTheme.colors.colorDecorativeNeutralEmphasizedLowest == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideColorDecorativeNeutralMutedHigh() throws {
        #expect(inheritedTheme.colors.colorDecorativeNeutralMutedHigh != abstractTheme.colors.colorDecorativeNeutralMutedHigh)
        #expect(inheritedTheme.colors.colorDecorativeNeutralMutedHigh == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideColorDecorativeNeutralMutedHigher() throws {
        #expect(inheritedTheme.colors.colorDecorativeNeutralMutedHigher != abstractTheme.colors.colorDecorativeNeutralMutedHigher)
        #expect(inheritedTheme.colors.colorDecorativeNeutralMutedHigher == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideColorDecorativeNeutralMutedHighest() throws {
        #expect(inheritedTheme.colors.colorDecorativeNeutralMutedHighest != abstractTheme.colors.colorDecorativeNeutralMutedHighest)
        #expect(inheritedTheme.colors.colorDecorativeNeutralMutedHighest == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideColorDecorativeNeutralMutedLow() throws {
        #expect(inheritedTheme.colors.colorDecorativeNeutralMutedLow != abstractTheme.colors.colorDecorativeNeutralMutedLow)
        #expect(inheritedTheme.colors.colorDecorativeNeutralMutedLow == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideColorDecorativeNeutralMutedLower() throws {
        #expect(inheritedTheme.colors.colorDecorativeNeutralMutedLower != abstractTheme.colors.colorDecorativeNeutralMutedLower)
        #expect(inheritedTheme.colors.colorDecorativeNeutralMutedLower == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideColorDecorativeNeutralMutedLowest() throws {
        #expect(inheritedTheme.colors.colorDecorativeNeutralMutedLowest != abstractTheme.colors.colorDecorativeNeutralMutedLowest)
        #expect(inheritedTheme.colors.colorDecorativeNeutralMutedLowest == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideColorDecorativeNeutralMutedMedium() throws {
        #expect(inheritedTheme.colors.colorDecorativeNeutralMutedMedium != abstractTheme.colors.colorDecorativeNeutralMutedMedium)
        #expect(inheritedTheme.colors.colorDecorativeNeutralMutedMedium == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Chart

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartBorderLight() throws {
        #expect(inheritedTheme.colors.colorChartBorderLight != abstractTheme.colors.colorChartBorderLight)
        #expect(inheritedTheme.colors.colorChartBorderLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartBorderContrastLight() throws {
        #expect(inheritedTheme.colors.colorChartBorderContrastLight != abstractTheme.colors.colorChartBorderContrastLight)
        #expect(inheritedTheme.colors.colorChartBorderContrastLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier1Light() throws {
        #expect(inheritedTheme.colors.colorChartCategoricalTier1Light != abstractTheme.colors.colorChartCategoricalTier1Light)
        #expect(inheritedTheme.colors.colorChartCategoricalTier1Light == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier2Light() throws {
        #expect(inheritedTheme.colors.colorChartCategoricalTier2Light != abstractTheme.colors.colorChartCategoricalTier2Light)
        #expect(inheritedTheme.colors.colorChartCategoricalTier2Light == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier3Light() throws {
        #expect(inheritedTheme.colors.colorChartCategoricalTier3Light != abstractTheme.colors.colorChartCategoricalTier3Light)
        #expect(inheritedTheme.colors.colorChartCategoricalTier3Light == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier4Light() throws {
        #expect(inheritedTheme.colors.colorChartCategoricalTier4Light != abstractTheme.colors.colorChartCategoricalTier4Light)
        #expect(inheritedTheme.colors.colorChartCategoricalTier4Light == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier5Light() throws {
        #expect(inheritedTheme.colors.colorChartCategoricalTier5Light != abstractTheme.colors.colorChartCategoricalTier5Light)
        #expect(inheritedTheme.colors.colorChartCategoricalTier5Light == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier6Light() throws {
        #expect(inheritedTheme.colors.colorChartCategoricalTier6Light != abstractTheme.colors.colorChartCategoricalTier6Light)
        #expect(inheritedTheme.colors.colorChartCategoricalTier6Light == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier7Light() throws {
        #expect(inheritedTheme.colors.colorChartCategoricalTier7Light != abstractTheme.colors.colorChartCategoricalTier7Light)
        #expect(inheritedTheme.colors.colorChartCategoricalTier7Light == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier8Light() throws {
        #expect(inheritedTheme.colors.colorChartCategoricalTier8Light != abstractTheme.colors.colorChartCategoricalTier8Light)
        #expect(inheritedTheme.colors.colorChartCategoricalTier8Light == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier9Light() throws {
        #expect(inheritedTheme.colors.colorChartCategoricalTier9Light != abstractTheme.colors.colorChartCategoricalTier9Light)
        #expect(inheritedTheme.colors.colorChartCategoricalTier9Light == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier10Light() throws {
        #expect(inheritedTheme.colors.colorChartCategoricalTier10Light != abstractTheme.colors.colorChartCategoricalTier10Light)
        #expect(inheritedTheme.colors.colorChartCategoricalTier10Light == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartBorderDark() throws {
        #expect(inheritedTheme.colors.colorChartBorderDark != abstractTheme.colors.colorChartBorderDark)
        #expect(inheritedTheme.colors.colorChartBorderDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartBorderContrastDark() throws {
        #expect(inheritedTheme.colors.colorChartBorderContrastDark != abstractTheme.colors.colorChartBorderContrastDark)
        #expect(inheritedTheme.colors.colorChartBorderContrastDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier1Dark() throws {
        #expect(inheritedTheme.colors.colorChartCategoricalTier1Dark != abstractTheme.colors.colorChartCategoricalTier1Dark)
        #expect(inheritedTheme.colors.colorChartCategoricalTier1Dark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier2Dark() throws {
        #expect(inheritedTheme.colors.colorChartCategoricalTier2Dark != abstractTheme.colors.colorChartCategoricalTier2Dark)
        #expect(inheritedTheme.colors.colorChartCategoricalTier2Dark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier3Dark() throws {
        #expect(inheritedTheme.colors.colorChartCategoricalTier3Dark != abstractTheme.colors.colorChartCategoricalTier3Dark)
        #expect(inheritedTheme.colors.colorChartCategoricalTier3Dark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier4Dark() throws {
        #expect(inheritedTheme.colors.colorChartCategoricalTier4Dark != abstractTheme.colors.colorChartCategoricalTier4Dark)
        #expect(inheritedTheme.colors.colorChartCategoricalTier4Dark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier5Dark() throws {
        #expect(inheritedTheme.colors.colorChartCategoricalTier5Dark != abstractTheme.colors.colorChartCategoricalTier5Dark)
        #expect(inheritedTheme.colors.colorChartCategoricalTier5Dark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier6Dark() throws {
        #expect(inheritedTheme.colors.colorChartCategoricalTier6Dark != abstractTheme.colors.colorChartCategoricalTier6Dark)
        #expect(inheritedTheme.colors.colorChartCategoricalTier6Dark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier7Dark() throws {
        #expect(inheritedTheme.colors.colorChartCategoricalTier7Dark != abstractTheme.colors.colorChartCategoricalTier7Dark)
        #expect(inheritedTheme.colors.colorChartCategoricalTier7Dark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier8Dark() throws {
        #expect(inheritedTheme.colors.colorChartCategoricalTier8Dark != abstractTheme.colors.colorChartCategoricalTier8Dark)
        #expect(inheritedTheme.colors.colorChartCategoricalTier8Dark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier9Dark() throws {
        #expect(inheritedTheme.colors.colorChartCategoricalTier9Dark != abstractTheme.colors.colorChartCategoricalTier9Dark)
        #expect(inheritedTheme.colors.colorChartCategoricalTier9Dark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier10Dark() throws {
        #expect(inheritedTheme.colors.colorChartCategoricalTier10Dark != abstractTheme.colors.colorChartCategoricalTier10Dark)
        #expect(inheritedTheme.colors.colorChartCategoricalTier10Dark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartFunctionalInfoLight() throws {
        #expect(inheritedTheme.colors.colorChartFunctionalInfoLight != abstractTheme.colors.colorChartFunctionalInfoLight)
        #expect(inheritedTheme.colors.colorChartFunctionalInfoLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartFunctionalNegativeLight() throws {
        #expect(inheritedTheme.colors.colorChartFunctionalNegativeLight != abstractTheme.colors.colorChartFunctionalNegativeLight)
        #expect(inheritedTheme.colors.colorChartFunctionalNegativeLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartFunctionalPositiveLight() throws {
        #expect(inheritedTheme.colors.colorChartFunctionalPositiveLight != abstractTheme.colors.colorChartFunctionalPositiveLight)
        #expect(inheritedTheme.colors.colorChartFunctionalPositiveLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartFunctionalWarningLight() throws {
        #expect(inheritedTheme.colors.colorChartFunctionalWarningLight != abstractTheme.colors.colorChartFunctionalWarningLight)
        #expect(inheritedTheme.colors.colorChartFunctionalWarningLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartFunctionalInfoDark() throws {
        #expect(inheritedTheme.colors.colorChartFunctionalInfoDark != abstractTheme.colors.colorChartFunctionalInfoDark)
        #expect(inheritedTheme.colors.colorChartFunctionalInfoDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartFunctionalNegativeDark() throws {
        #expect(inheritedTheme.colors.colorChartFunctionalNegativeDark != abstractTheme.colors.colorChartFunctionalNegativeDark)
        #expect(inheritedTheme.colors.colorChartFunctionalNegativeDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartFunctionalPositiveDark() throws {
        #expect(inheritedTheme.colors.colorChartFunctionalPositiveDark != abstractTheme.colors.colorChartFunctionalPositiveDark)
        #expect(inheritedTheme.colors.colorChartFunctionalPositiveDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartFunctionalWarningDark() throws {
        #expect(inheritedTheme.colors.colorChartFunctionalWarningDark != abstractTheme.colors.colorChartFunctionalWarningDark)
        #expect(inheritedTheme.colors.colorChartFunctionalWarningDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartGridlinesLight() throws {
        #expect(inheritedTheme.colors.colorChartGridlinesLight != abstractTheme.colors.colorChartGridlinesLight)
        #expect(inheritedTheme.colors.colorChartGridlinesLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartHighlightLight() throws {
        #expect(inheritedTheme.colors.colorChartHighlightLight != abstractTheme.colors.colorChartHighlightLight)
        #expect(inheritedTheme.colors.colorChartHighlightLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartNeutralLight() throws {
        #expect(inheritedTheme.colors.colorChartNeutralLight != abstractTheme.colors.colorChartNeutralLight)
        #expect(inheritedTheme.colors.colorChartNeutralLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    // MARK: - Color - Repository

    // WARNING: Semantic tokens of colors colorRepository* must not be overridable
    // i.e. defined in the top level provider and that's all.

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryAccentDefaultLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryAccentDefaultLight == abstractTheme.colors.colorRepositoryAccentDefaultLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryAccentHighestLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryAccentHighestLight == abstractTheme.colors.colorRepositoryAccentHighestLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryAccentLowLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryAccentLowLight == abstractTheme.colors.colorRepositoryAccentLowLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryAccentLowestLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryAccentLowestLight == abstractTheme.colors.colorRepositoryAccentLowestLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryAccentDefaultDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryAccentDefaultDark == abstractTheme.colors.colorRepositoryAccentDefaultDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryAccentHighestDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryAccentHighestDark == abstractTheme.colors.colorRepositoryAccentHighestDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryAccentLowDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryAccentLowDark == abstractTheme.colors.colorRepositoryAccentLowDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryAccentLowestDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryAccentLowestDark == abstractTheme.colors.colorRepositoryAccentLowestDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryInfoDefaultLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryInfoDefaultLight == abstractTheme.colors.colorRepositoryInfoDefaultLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryInfoHighestLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryInfoHighestLight == abstractTheme.colors.colorRepositoryInfoHighestLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryInfoLowLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryInfoLowLight == abstractTheme.colors.colorRepositoryInfoLowLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryInfoLowestLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryInfoLowestLight == abstractTheme.colors.colorRepositoryInfoLowestLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryInfoDefaultDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryInfoDefaultDark == abstractTheme.colors.colorRepositoryInfoDefaultDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryInfoHighestDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryInfoHighestDark == abstractTheme.colors.colorRepositoryInfoHighestDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryInfoLowDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryInfoLowDark == abstractTheme.colors.colorRepositoryInfoLowDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryInfoLowestDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryInfoLowestDark == abstractTheme.colors.colorRepositoryInfoLowestDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeDefaultLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryNegativeDefaultLight == abstractTheme.colors.colorRepositoryNegativeDefaultLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeHighLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryNegativeHighLight == abstractTheme.colors.colorRepositoryNegativeHighLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeHigherLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryNegativeHigherLight == abstractTheme.colors.colorRepositoryNegativeHigherLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeHighestLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryNegativeHighestLight == abstractTheme.colors.colorRepositoryNegativeHighestLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeLowLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryNegativeLowLight == abstractTheme.colors.colorRepositoryNegativeLowLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeLowerLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryNegativeLowerLight == abstractTheme.colors.colorRepositoryNegativeLowerLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeLowestLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryNegativeLowestLight == abstractTheme.colors.colorRepositoryNegativeLowestLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeDefaultDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryNegativeDefaultDark == abstractTheme.colors.colorRepositoryNegativeDefaultDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeHighDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryNegativeHighDark == abstractTheme.colors.colorRepositoryNegativeHighDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeHigherDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryNegativeHigherDark == abstractTheme.colors.colorRepositoryNegativeHigherDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeHighestDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryNegativeHighestDark == abstractTheme.colors.colorRepositoryNegativeHighestDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeLowDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryNegativeLowDark == abstractTheme.colors.colorRepositoryNegativeLowDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeLowerDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryNegativeLowerDark == abstractTheme.colors.colorRepositoryNegativeLowerDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeLowestDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryNegativeLowestDark == abstractTheme.colors.colorRepositoryNegativeLowestDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralEmphasizedBlackLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryNeutralEmphasizedBlackLight == abstractTheme.colors.colorRepositoryNeutralEmphasizedBlackLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralEmphasizedHighLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHighLight == abstractTheme.colors.colorRepositoryNeutralEmphasizedHighLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralEmphasizedHigherLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHigherLight == abstractTheme.colors.colorRepositoryNeutralEmphasizedHigherLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralEmphasizedHighestLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHighestLight == abstractTheme.colors.colorRepositoryNeutralEmphasizedHighestLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralEmphasizedMediumLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryNeutralEmphasizedMediumLight == abstractTheme.colors.colorRepositoryNeutralEmphasizedMediumLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralEmphasizedBlackDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryNeutralEmphasizedBlackDark == abstractTheme.colors.colorRepositoryNeutralEmphasizedBlackDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralEmphasizedHighDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHighDark == abstractTheme.colors.colorRepositoryNeutralEmphasizedHighDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralEmphasizedHigherDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHigherDark == abstractTheme.colors.colorRepositoryNeutralEmphasizedHigherDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralEmphasizedHighestDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHighestDark == abstractTheme.colors.colorRepositoryNeutralEmphasizedHighestDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralEmphasizedMediumDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryNeutralEmphasizedMediumDark == abstractTheme.colors.colorRepositoryNeutralEmphasizedMediumDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralMutedLowerLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryNeutralMutedLowerLight == abstractTheme.colors.colorRepositoryNeutralMutedLowerLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralMutedLowestLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryNeutralMutedLowestLight == abstractTheme.colors.colorRepositoryNeutralMutedLowestLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralMutedWhiteLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryNeutralMutedWhiteLight == abstractTheme.colors.colorRepositoryNeutralMutedWhiteLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralMutedLowerDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryNeutralMutedLowerDark == abstractTheme.colors.colorRepositoryNeutralMutedLowerDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralMutedLowestDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryNeutralMutedLowestDark == abstractTheme.colors.colorRepositoryNeutralMutedLowestDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralMutedWhiteDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryNeutralMutedWhiteDark == abstractTheme.colors.colorRepositoryNeutralMutedWhiteDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackHighLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityBlackHighLight == abstractTheme.colors.colorRepositoryOpacityBlackHighLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackHigherLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityBlackHigherLight == abstractTheme.colors.colorRepositoryOpacityBlackHigherLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackHighestLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityBlackHighestLight == abstractTheme.colors.colorRepositoryOpacityBlackHighestLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackLowLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityBlackLowLight == abstractTheme.colors.colorRepositoryOpacityBlackLowLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackLowerLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityBlackLowerLight == abstractTheme.colors.colorRepositoryOpacityBlackLowerLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackLowestLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityBlackLowestLight == abstractTheme.colors.colorRepositoryOpacityBlackLowestLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackMediumLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityBlackMediumLight == abstractTheme.colors.colorRepositoryOpacityBlackMediumLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackTransparentLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityBlackTransparentLight == abstractTheme.colors.colorRepositoryOpacityBlackTransparentLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackHighDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityBlackHighDark == abstractTheme.colors.colorRepositoryOpacityBlackHighDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackHigherDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityBlackHigherDark == abstractTheme.colors.colorRepositoryOpacityBlackHigherDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackHighestDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityBlackHighestDark == abstractTheme.colors.colorRepositoryOpacityBlackHighestDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackLowDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityBlackLowDark == abstractTheme.colors.colorRepositoryOpacityBlackLowDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackLowerDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityBlackLowerDark == abstractTheme.colors.colorRepositoryOpacityBlackLowerDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackLowestDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityBlackLowestDark == abstractTheme.colors.colorRepositoryOpacityBlackLowestDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackMediumDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityBlackMediumDark == abstractTheme.colors.colorRepositoryOpacityBlackMediumDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackTransparentDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityBlackTransparentDark == abstractTheme.colors.colorRepositoryOpacityBlackTransparentDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityInfoLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityInfoLight == abstractTheme.colors.colorRepositoryOpacityInfoLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityNegativeLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityNegativeLight == abstractTheme.colors.colorRepositoryOpacityNegativeLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityPositiveLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityPositiveLight == abstractTheme.colors.colorRepositoryOpacityPositiveLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWarningLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityWarningLight == abstractTheme.colors.colorRepositoryOpacityWarningLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteHighLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityWhiteHighLight == abstractTheme.colors.colorRepositoryOpacityWhiteHighLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteHigherLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityWhiteHigherLight == abstractTheme.colors.colorRepositoryOpacityWhiteHigherLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteHighestLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityWhiteHighestLight == abstractTheme.colors.colorRepositoryOpacityWhiteHighestLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteMediumLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityWhiteMediumLight == abstractTheme.colors.colorRepositoryOpacityWhiteMediumLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteLowLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityWhiteLowLight == abstractTheme.colors.colorRepositoryOpacityWhiteLowLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteLowerLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityWhiteLowerLight == abstractTheme.colors.colorRepositoryOpacityWhiteLowerLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteLowestLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityWhiteLowestLight == abstractTheme.colors.colorRepositoryOpacityWhiteLowestLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteTransparentLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityWhiteTransparentLight == abstractTheme.colors.colorRepositoryOpacityWhiteTransparentLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteHighDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityWhiteHighDark == abstractTheme.colors.colorRepositoryOpacityWhiteHighDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteHigherDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityWhiteHigherDark == abstractTheme.colors.colorRepositoryOpacityWhiteHigherDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteHighestDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityWhiteHighestDark == abstractTheme.colors.colorRepositoryOpacityWhiteHighestDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteMediumDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityWhiteMediumDark == abstractTheme.colors.colorRepositoryOpacityWhiteMediumDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteLowDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityWhiteLowDark == abstractTheme.colors.colorRepositoryOpacityWhiteLowDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteLowerDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityWhiteLowerDark == abstractTheme.colors.colorRepositoryOpacityWhiteLowerDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteLowestDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityWhiteLowestDark == abstractTheme.colors.colorRepositoryOpacityWhiteLowestDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteTransparentDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityWhiteTransparentDark == abstractTheme.colors.colorRepositoryOpacityWhiteTransparentDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityInfoDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityInfoDark == abstractTheme.colors.colorRepositoryOpacityInfoDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityNegativeDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityNegativeDark == abstractTheme.colors.colorRepositoryOpacityNegativeDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityPositiveDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityPositiveDark == abstractTheme.colors.colorRepositoryOpacityPositiveDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWarningDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityWarningDark == abstractTheme.colors.colorRepositoryOpacityWarningDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryPositiveDefaultLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryPositiveDefaultLight == abstractTheme.colors.colorRepositoryPositiveDefaultLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryPositiveHighLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryPositiveHighLight == abstractTheme.colors.colorRepositoryPositiveHighLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryPositiveHighestLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryPositiveHighestLight == abstractTheme.colors.colorRepositoryPositiveHighestLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryPositiveLowLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryPositiveLowLight == abstractTheme.colors.colorRepositoryPositiveLowLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryPositiveLowestLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryPositiveLowestLight == abstractTheme.colors.colorRepositoryPositiveLowestLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryPositiveDefaultDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryPositiveDefaultDark == abstractTheme.colors.colorRepositoryPositiveDefaultDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryPositiveHighDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryPositiveHighDark == abstractTheme.colors.colorRepositoryPositiveHighDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryPositiveHighestDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryPositiveHighestDark == abstractTheme.colors.colorRepositoryPositiveHighestDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryPositiveLowDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryPositiveLowDark == abstractTheme.colors.colorRepositoryPositiveLowDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryPositiveLowestDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryPositiveLowestDark == abstractTheme.colors.colorRepositoryPositiveLowestDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryPrimaryDefaultLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryPrimaryDefaultLight == abstractTheme.colors.colorRepositoryPrimaryDefaultLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryPrimaryLowLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryPrimaryLowLight == abstractTheme.colors.colorRepositoryPrimaryLowLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryPrimaryDefaultDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryPrimaryDefaultDark == abstractTheme.colors.colorRepositoryPrimaryDefaultDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryPrimaryLowDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryPrimaryLowDark == abstractTheme.colors.colorRepositoryPrimaryLowDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryWarningDefaultLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryWarningDefaultLight == abstractTheme.colors.colorRepositoryWarningDefaultLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryWarningHighestLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryWarningHighestLight == abstractTheme.colors.colorRepositoryWarningHighestLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryWarningLowLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryWarningLowLight == abstractTheme.colors.colorRepositoryWarningLowLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryWarningLowestLight() throws {
        #expect(inheritedTheme.colors.colorRepositoryWarningLowestLight == abstractTheme.colors.colorRepositoryWarningLowestLight)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryWarningDefaultDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryWarningDefaultDark == abstractTheme.colors.colorRepositoryWarningDefaultDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryWarningHighestDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryWarningHighestDark == abstractTheme.colors.colorRepositoryWarningHighestDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryWarningLowDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryWarningLowDark == abstractTheme.colors.colorRepositoryWarningLowDark)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryWarningLowestDark() throws {
        #expect(inheritedTheme.colors.colorRepositoryWarningLowestDark == abstractTheme.colors.colorRepositoryWarningLowestDark)
    }
}

// swiftlint:enable type_body_length
