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

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportDisabledLight() throws {
        #expect(inheritedTheme.colors.colorActionSupportDisabledLight != abstractTheme.colors.colorActionSupportDisabledLight)
        #expect(inheritedTheme.colors.colorActionSupportDisabledLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
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

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportDisabledDark() throws {
        #expect(inheritedTheme.colors.colorActionSupportDisabledDark != abstractTheme.colors.colorActionSupportDisabledDark)
        #expect(inheritedTheme.colors.colorActionSupportDisabledDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
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
        #expect(inheritedTheme.colors.colorDecorativeAccent1Default == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1Emphasized() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent1Emphasized != abstractTheme.colors.colorDecorativeAccent1Emphasized)
        #expect(inheritedTheme.colors.colorDecorativeAccent1Emphasized == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1Muted() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent1Muted != abstractTheme.colors.colorDecorativeAccent1Muted)
        #expect(inheritedTheme.colors.colorDecorativeAccent1Muted == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2Default() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent2Default != abstractTheme.colors.colorDecorativeAccent2Default)
        #expect(inheritedTheme.colors.colorDecorativeAccent2Default == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2Emphasized() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent2Emphasized != abstractTheme.colors.colorDecorativeAccent2Emphasized)
        #expect(inheritedTheme.colors.colorDecorativeAccent2Emphasized == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2Muted() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent2Muted != abstractTheme.colors.colorDecorativeAccent2Muted)
        #expect(inheritedTheme.colors.colorDecorativeAccent2Muted == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3Default() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent3Default != abstractTheme.colors.colorDecorativeAccent3Default)
        #expect(inheritedTheme.colors.colorDecorativeAccent3Default == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3Emphasized() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent3Emphasized != abstractTheme.colors.colorDecorativeAccent3Emphasized)
        #expect(inheritedTheme.colors.colorDecorativeAccent3Emphasized == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3Muted() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent3Muted != abstractTheme.colors.colorDecorativeAccent3Muted)
        #expect(inheritedTheme.colors.colorDecorativeAccent3Muted == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4Default() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent4Default != abstractTheme.colors.colorDecorativeAccent4Default)
        #expect(inheritedTheme.colors.colorDecorativeAccent4Default == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4Emphasized() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent4Emphasized != abstractTheme.colors.colorDecorativeAccent4Emphasized)
        #expect(inheritedTheme.colors.colorDecorativeAccent4Emphasized == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4Muted() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent4Muted != abstractTheme.colors.colorDecorativeAccent4Muted)
        #expect(inheritedTheme.colors.colorDecorativeAccent4Muted == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5Default() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent5Default != abstractTheme.colors.colorDecorativeAccent5Default)
        #expect(inheritedTheme.colors.colorDecorativeAccent5Default == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5Emphasized() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent5Emphasized != abstractTheme.colors.colorDecorativeAccent5Emphasized)
        #expect(inheritedTheme.colors.colorDecorativeAccent5Emphasized == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5Muted() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent5Muted != abstractTheme.colors.colorDecorativeAccent5Muted)
        #expect(inheritedTheme.colors.colorDecorativeAccent5Muted == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeBrandPrimary() throws {
        #expect(inheritedTheme.colors.colorDecorativeBrandPrimary != abstractTheme.colors.colorDecorativeBrandPrimary)
        #expect(inheritedTheme.colors.colorDecorativeBrandPrimary == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeBrandSecondary() throws {
        #expect(inheritedTheme.colors.colorDecorativeBrandSecondary != abstractTheme.colors.colorDecorativeBrandSecondary)
        #expect(inheritedTheme.colors.colorDecorativeBrandSecondary == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeBrandTertiary() throws {
        #expect(inheritedTheme.colors.colorDecorativeBrandTertiary != abstractTheme.colors.colorDecorativeBrandTertiary)
        #expect(inheritedTheme.colors.colorDecorativeBrandTertiary == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint100() throws {
        #expect(inheritedTheme.colors.colorDecorativeSkinTint100 != abstractTheme.colors.colorDecorativeSkinTint100)
        #expect(inheritedTheme.colors.colorDecorativeSkinTint100 == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint200() throws {
        #expect(inheritedTheme.colors.colorDecorativeSkinTint200 != abstractTheme.colors.colorDecorativeSkinTint200)
        #expect(inheritedTheme.colors.colorDecorativeSkinTint200 == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint300() throws {
        #expect(inheritedTheme.colors.colorDecorativeSkinTint300 != abstractTheme.colors.colorDecorativeSkinTint300)
        #expect(inheritedTheme.colors.colorDecorativeSkinTint300 == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint400() throws {
        #expect(inheritedTheme.colors.colorDecorativeSkinTint400 != abstractTheme.colors.colorDecorativeSkinTint400)
        #expect(inheritedTheme.colors.colorDecorativeSkinTint400 == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint500() throws {
        #expect(inheritedTheme.colors.colorDecorativeSkinTint500 != abstractTheme.colors.colorDecorativeSkinTint500)
        #expect(inheritedTheme.colors.colorDecorativeSkinTint500 == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint600() throws {
        #expect(inheritedTheme.colors.colorDecorativeSkinTint600 != abstractTheme.colors.colorDecorativeSkinTint600)
        #expect(inheritedTheme.colors.colorDecorativeSkinTint600 == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint700() throws {
        #expect(inheritedTheme.colors.colorDecorativeSkinTint700 != abstractTheme.colors.colorDecorativeSkinTint700)
        #expect(inheritedTheme.colors.colorDecorativeSkinTint700 == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint800() throws {
        #expect(inheritedTheme.colors.colorDecorativeSkinTint800 != abstractTheme.colors.colorDecorativeSkinTint800)
        #expect(inheritedTheme.colors.colorDecorativeSkinTint800 == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint900() throws {
        #expect(inheritedTheme.colors.colorDecorativeSkinTint900 != abstractTheme.colors.colorDecorativeSkinTint900)
        #expect(inheritedTheme.colors.colorDecorativeSkinTint900 == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideColorDecorativeNeutralEmphasizedHigher() throws {
        #expect(inheritedTheme.colors.colorDecorativeNeutralEmphasizedHigher != abstractTheme.colors.colorDecorativeNeutralEmphasizedHigher)
        #expect(inheritedTheme.colors.colorDecorativeNeutralEmphasizedHigher == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideColorDecorativeNeutralEmphasizedLow() throws {
        #expect(inheritedTheme.colors.colorDecorativeNeutralEmphasizedLow != abstractTheme.colors.colorDecorativeNeutralEmphasizedLow)
        #expect(inheritedTheme.colors.colorDecorativeNeutralEmphasizedLow == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideColorDecorativeNeutralEmphasizedLower() throws {
        #expect(inheritedTheme.colors.colorDecorativeNeutralEmphasizedLower != abstractTheme.colors.colorDecorativeNeutralEmphasizedLower)
        #expect(inheritedTheme.colors.colorDecorativeNeutralEmphasizedLower == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideColorDecorativeNeutralEmphasizedLowest() throws {
        #expect(inheritedTheme.colors.colorDecorativeNeutralEmphasizedLowest != abstractTheme.colors.colorDecorativeNeutralEmphasizedLowest)
        #expect(inheritedTheme.colors.colorDecorativeNeutralEmphasizedLowest == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideColorDecorativeNeutralMutedHigh() throws {
        #expect(inheritedTheme.colors.colorDecorativeNeutralMutedHigh != abstractTheme.colors.colorDecorativeNeutralMutedHigh)
        #expect(inheritedTheme.colors.colorDecorativeNeutralMutedHigh == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideColorDecorativeNeutralMutedHigher() throws {
        #expect(inheritedTheme.colors.colorDecorativeNeutralMutedHigher != abstractTheme.colors.colorDecorativeNeutralMutedHigher)
        #expect(inheritedTheme.colors.colorDecorativeNeutralMutedHigher == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideColorDecorativeNeutralMutedHighest() throws {
        #expect(inheritedTheme.colors.colorDecorativeNeutralMutedHighest != abstractTheme.colors.colorDecorativeNeutralMutedHighest)
        #expect(inheritedTheme.colors.colorDecorativeNeutralMutedHighest == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideColorDecorativeNeutralMutedLow() throws {
        #expect(inheritedTheme.colors.colorDecorativeNeutralMutedLow != abstractTheme.colors.colorDecorativeNeutralMutedLow)
        #expect(inheritedTheme.colors.colorDecorativeNeutralMutedLow == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideColorDecorativeNeutralMutedLower() throws {
        #expect(inheritedTheme.colors.colorDecorativeNeutralMutedLower != abstractTheme.colors.colorDecorativeNeutralMutedLower)
        #expect(inheritedTheme.colors.colorDecorativeNeutralMutedLower == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideColorDecorativeNeutralMutedLowest() throws {
        #expect(inheritedTheme.colors.colorDecorativeNeutralMutedLowest != abstractTheme.colors.colorDecorativeNeutralMutedLowest)
        #expect(inheritedTheme.colors.colorDecorativeNeutralMutedLowest == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideColorDecorativeNeutralMutedMedium() throws {
        #expect(inheritedTheme.colors.colorDecorativeNeutralMutedMedium != abstractTheme.colors.colorDecorativeNeutralMutedMedium)
        #expect(inheritedTheme.colors.colorDecorativeNeutralMutedMedium == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    // MARK: - Color - Repository

    // WARNING: Semantic tokens of colors colorRepository* must not be overridable
    // i.e. defined in the top level provider and that's all.

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryAccentDefault() throws {
        #expect(inheritedTheme.colors.colorRepositoryAccentDefault == abstractTheme.colors.colorRepositoryAccentDefault)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryAccentHigh() throws {
        #expect(inheritedTheme.colors.colorRepositoryAccentHigh == abstractTheme.colors.colorRepositoryAccentHigh)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryAccentHigher() throws {
        #expect(inheritedTheme.colors.colorRepositoryAccentHigher == abstractTheme.colors.colorRepositoryAccentHigher)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryAccentHighest() throws {
        #expect(inheritedTheme.colors.colorRepositoryAccentHighest == abstractTheme.colors.colorRepositoryAccentHighest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryAccentLow() throws {
        #expect(inheritedTheme.colors.colorRepositoryAccentLow == abstractTheme.colors.colorRepositoryAccentLow)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryAccentLowest() throws {
        #expect(inheritedTheme.colors.colorRepositoryAccentLowest == abstractTheme.colors.colorRepositoryAccentLowest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryInfoDefault() throws {
        #expect(inheritedTheme.colors.colorRepositoryInfoDefault == abstractTheme.colors.colorRepositoryInfoDefault)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryInfoHighest() throws {
        #expect(inheritedTheme.colors.colorRepositoryInfoHighest == abstractTheme.colors.colorRepositoryInfoHighest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryInfoLow() throws {
        #expect(inheritedTheme.colors.colorRepositoryInfoLow == abstractTheme.colors.colorRepositoryInfoLow)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryInfoLowest() throws {
        #expect(inheritedTheme.colors.colorRepositoryInfoLowest == abstractTheme.colors.colorRepositoryInfoLowest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeDefault() throws {
        #expect(inheritedTheme.colors.colorRepositoryNegativeDefault == abstractTheme.colors.colorRepositoryNegativeDefault)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeHigh() throws {
        #expect(inheritedTheme.colors.colorRepositoryNegativeHigh == abstractTheme.colors.colorRepositoryNegativeHigh)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeHigher() throws {
        #expect(inheritedTheme.colors.colorRepositoryNegativeHigher == abstractTheme.colors.colorRepositoryNegativeHigher)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeHighest() throws {
        #expect(inheritedTheme.colors.colorRepositoryNegativeHighest == abstractTheme.colors.colorRepositoryNegativeHighest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeLow() throws {
        #expect(inheritedTheme.colors.colorRepositoryNegativeLow == abstractTheme.colors.colorRepositoryNegativeLow)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeLower() throws {
        #expect(inheritedTheme.colors.colorRepositoryNegativeLower == abstractTheme.colors.colorRepositoryNegativeLower)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeLowest() throws {
        #expect(inheritedTheme.colors.colorRepositoryNegativeLowest == abstractTheme.colors.colorRepositoryNegativeLowest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralEmphasizedBlack() throws {
        #expect(inheritedTheme.colors.colorRepositoryNeutralEmphasizedBlack == abstractTheme.colors.colorRepositoryNeutralEmphasizedBlack)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralEmphasizedHigh() throws {
        #expect(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHigh == abstractTheme.colors.colorRepositoryNeutralEmphasizedHigh)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralEmphasizedHigher() throws {
        #expect(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHigher == abstractTheme.colors.colorRepositoryNeutralEmphasizedHigher)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralEmphasizedHighest() throws {
        #expect(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHighest == abstractTheme.colors.colorRepositoryNeutralEmphasizedHighest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralEmphasizedMedium() throws {
        #expect(inheritedTheme.colors.colorRepositoryNeutralEmphasizedMedium == abstractTheme.colors.colorRepositoryNeutralEmphasizedMedium)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralMutedLower() throws {
        #expect(inheritedTheme.colors.colorRepositoryNeutralMutedLower == abstractTheme.colors.colorRepositoryNeutralMutedLower)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralMutedLowest() throws {
        #expect(inheritedTheme.colors.colorRepositoryNeutralMutedLowest == abstractTheme.colors.colorRepositoryNeutralMutedLowest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralMutedWhite() throws {
        #expect(inheritedTheme.colors.colorRepositoryNeutralMutedWhite == abstractTheme.colors.colorRepositoryNeutralMutedWhite)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackHigh() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityBlackHigh == abstractTheme.colors.colorRepositoryOpacityBlackHigh)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackHigher() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityBlackHigher == abstractTheme.colors.colorRepositoryOpacityBlackHigher)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackHighest() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityBlackHighest == abstractTheme.colors.colorRepositoryOpacityBlackHighest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackLow() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityBlackLow == abstractTheme.colors.colorRepositoryOpacityBlackLow)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackLower() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityBlackLower == abstractTheme.colors.colorRepositoryOpacityBlackLower)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackLowest() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityBlackLowest == abstractTheme.colors.colorRepositoryOpacityBlackLowest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackMedium() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityBlackMedium == abstractTheme.colors.colorRepositoryOpacityBlackMedium)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackMediumHigh() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityBlackMediumHigh == abstractTheme.colors.colorRepositoryOpacityBlackMediumHigh)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackMediumLow() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityBlackMediumLow == abstractTheme.colors.colorRepositoryOpacityBlackMediumLow)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackTransparent() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityBlackTransparent == abstractTheme.colors.colorRepositoryOpacityBlackTransparent)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityInfo() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityInfo == abstractTheme.colors.colorRepositoryOpacityInfo)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityAccent() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityAccent == abstractTheme.colors.colorRepositoryOpacityAccent)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityNegative() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityNegative == abstractTheme.colors.colorRepositoryOpacityNegative)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityPositive() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityPositive == abstractTheme.colors.colorRepositoryOpacityPositive)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWarning() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityWarning == abstractTheme.colors.colorRepositoryOpacityWarning)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteHigh() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityWhiteHigh == abstractTheme.colors.colorRepositoryOpacityWhiteHigh)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteHigher() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityWhiteHigher == abstractTheme.colors.colorRepositoryOpacityWhiteHigher)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteHighest() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityWhiteHighest == abstractTheme.colors.colorRepositoryOpacityWhiteHighest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteHighLow() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityWhiteLow == abstractTheme.colors.colorRepositoryOpacityWhiteLow)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteMedium() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityWhiteMedium == abstractTheme.colors.colorRepositoryOpacityWhiteMedium)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteMediumLow() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityWhiteMediumLow == abstractTheme.colors.colorRepositoryOpacityWhiteMediumLow)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteLower() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityWhiteLower == abstractTheme.colors.colorRepositoryOpacityWhiteLower)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteLowest() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityWhiteLowest == abstractTheme.colors.colorRepositoryOpacityWhiteLowest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteTransparent() throws {
        #expect(inheritedTheme.colors.colorRepositoryOpacityWhiteTransparent == abstractTheme.colors.colorRepositoryOpacityWhiteTransparent)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryPositiveDefault() throws {
        #expect(inheritedTheme.colors.colorRepositoryPositiveDefault == abstractTheme.colors.colorRepositoryPositiveDefault)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryPositiveHigh() throws {
        #expect(inheritedTheme.colors.colorRepositoryPositiveHigh == abstractTheme.colors.colorRepositoryPositiveHigh)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryPositiveHighest() throws {
        #expect(inheritedTheme.colors.colorRepositoryPositiveHighest == abstractTheme.colors.colorRepositoryPositiveHighest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryPositiveLow() throws {
        #expect(inheritedTheme.colors.colorRepositoryPositiveLow == abstractTheme.colors.colorRepositoryPositiveLow)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryPositiveLowest() throws {
        #expect(inheritedTheme.colors.colorRepositoryPositiveLowest == abstractTheme.colors.colorRepositoryPositiveLowest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryPrimaryDefault() throws {
        #expect(inheritedTheme.colors.colorRepositoryPrimaryDefault == abstractTheme.colors.colorRepositoryPrimaryDefault)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryPrimaryLow() throws {
        #expect(inheritedTheme.colors.colorRepositoryPrimaryLow == abstractTheme.colors.colorRepositoryPrimaryLow)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryWarningDefault() throws {
        #expect(inheritedTheme.colors.colorRepositoryWarningDefault == abstractTheme.colors.colorRepositoryWarningDefault)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryWarningHighest() throws {
        #expect(inheritedTheme.colors.colorRepositoryWarningHighest == abstractTheme.colors.colorRepositoryWarningHighest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryWarningLow() throws {
        #expect(inheritedTheme.colors.colorRepositoryWarningLow == abstractTheme.colors.colorRepositoryWarningLow)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryWarningLowest() throws {
        #expect(inheritedTheme.colors.colorRepositoryWarningLowest == abstractTheme.colors.colorRepositoryWarningLowest)
    }
}

// swiftlint:enable type_body_length
