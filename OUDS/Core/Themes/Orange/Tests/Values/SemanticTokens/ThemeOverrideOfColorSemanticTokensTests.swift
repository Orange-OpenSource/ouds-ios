//
// Software Name: OUDSThemesContract iOS
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
        #expect(inheritedTheme.colors.opacityLowestLight != abstractTheme.colors.opacityLowestLight)
        #expect(inheritedTheme.colors.opacityLowestLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOpacityLowestDark() throws {
        #expect(inheritedTheme.colors.opacityLowestDark != abstractTheme.colors.opacityLowestDark)
        #expect(inheritedTheme.colors.opacityLowestDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOpacityLowerLight() throws {
        #expect(inheritedTheme.colors.opacityLowerLight != abstractTheme.colors.opacityLowerLight)
        #expect(inheritedTheme.colors.opacityLowerLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOpacityLowerDark() throws {
        #expect(inheritedTheme.colors.opacityLowerDark != abstractTheme.colors.opacityLowerDark)
        #expect(inheritedTheme.colors.opacityLowerDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOpacityTransparentLight() throws {
        #expect(inheritedTheme.colors.opacityTransparentLight != abstractTheme.colors.opacityTransparentLight)
        #expect(inheritedTheme.colors.opacityTransparentLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOpacityTransparentDark() throws {
        #expect(inheritedTheme.colors.opacityTransparentDark != abstractTheme.colors.opacityTransparentDark)
        #expect(inheritedTheme.colors.opacityTransparentDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionDisabledLight() throws {
        #expect(inheritedTheme.colors.actionDisabledLight != abstractTheme.colors.actionDisabledLight)
        #expect(inheritedTheme.colors.actionDisabledLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionEnabledLight() throws {
        #expect(inheritedTheme.colors.actionEnabledLight != abstractTheme.colors.actionEnabledLight)
        #expect(inheritedTheme.colors.actionEnabledLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionFocusLight() throws {
        #expect(inheritedTheme.colors.actionFocusLight != abstractTheme.colors.actionFocusLight)
        #expect(inheritedTheme.colors.actionFocusLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionHighlightedLight() throws {
        #expect(inheritedTheme.colors.actionHighlightedLight != abstractTheme.colors.actionHighlightedLight)
        #expect(inheritedTheme.colors.actionHighlightedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionHoverLight() throws {
        #expect(inheritedTheme.colors.actionHoverLight != abstractTheme.colors.actionHoverLight)
        #expect(inheritedTheme.colors.actionHoverLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionLoadingLight() throws {
        #expect(inheritedTheme.colors.actionLoadingLight != abstractTheme.colors.actionLoadingLight)
        #expect(inheritedTheme.colors.actionLoadingLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionNegativeEnabledLight() throws {
        #expect(inheritedTheme.colors.actionNegativeEnabledLight != abstractTheme.colors.actionNegativeEnabledLight)
        #expect(inheritedTheme.colors.actionNegativeEnabledLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionNegativeFocusLight() throws {
        #expect(inheritedTheme.colors.actionNegativeFocusLight != abstractTheme.colors.actionNegativeFocusLight)
        #expect(inheritedTheme.colors.actionNegativeFocusLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionNegativeHoverLight() throws {
        #expect(inheritedTheme.colors.actionNegativeHoverLight != abstractTheme.colors.actionNegativeHoverLight)
        #expect(inheritedTheme.colors.actionNegativeHoverLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionNegativeLoadingLight() throws {
        #expect(inheritedTheme.colors.actionNegativeLoadingLight != abstractTheme.colors.actionNegativeLoadingLight)
        #expect(inheritedTheme.colors.actionNegativeLoadingLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionNegativePressedLight() throws {
        #expect(inheritedTheme.colors.actionNegativePressedLight != abstractTheme.colors.actionNegativePressedLight)
        #expect(inheritedTheme.colors.actionNegativePressedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionNegativeEnabledDark() throws {
        #expect(inheritedTheme.colors.actionNegativeEnabledDark != abstractTheme.colors.actionNegativeEnabledDark)
        #expect(inheritedTheme.colors.actionNegativeEnabledDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionNegativeFocusDark() throws {
        #expect(inheritedTheme.colors.actionNegativeFocusDark != abstractTheme.colors.actionNegativeFocusDark)
        #expect(inheritedTheme.colors.actionNegativeFocusDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionNegativeHoverDark() throws {
        #expect(inheritedTheme.colors.actionNegativeHoverDark != abstractTheme.colors.actionNegativeHoverDark)
        #expect(inheritedTheme.colors.actionNegativeHoverDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionNegativeLoadingDark() throws {
        #expect(inheritedTheme.colors.actionNegativeLoadingDark != abstractTheme.colors.actionNegativeLoadingDark)
        #expect(inheritedTheme.colors.actionNegativeLoadingDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionNegativePressedDark() throws {
        #expect(inheritedTheme.colors.actionNegativePressedDark != abstractTheme.colors.actionNegativePressedDark)
        #expect(inheritedTheme.colors.actionNegativePressedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionPressedLight() throws {
        #expect(inheritedTheme.colors.actionPressedLight != abstractTheme.colors.actionPressedLight)
        #expect(inheritedTheme.colors.actionPressedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSelectedLight() throws {
        #expect(inheritedTheme.colors.actionSelectedLight != abstractTheme.colors.actionSelectedLight)
        #expect(inheritedTheme.colors.actionSelectedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportEnabledLight() throws {
        #expect(inheritedTheme.colors.actionSupportEnabledLight != abstractTheme.colors.actionSupportEnabledLight)
        #expect(inheritedTheme.colors.actionSupportEnabledLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportDisabledLight() throws {
        #expect(inheritedTheme.colors.actionSupportDisabledLight != abstractTheme.colors.actionSupportDisabledLight)
        #expect(inheritedTheme.colors.actionSupportDisabledLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportFocusLight() throws {
        #expect(inheritedTheme.colors.actionSupportFocusLight != abstractTheme.colors.actionSupportFocusLight)
        #expect(inheritedTheme.colors.actionSupportFocusLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportHoverLight() throws {
        #expect(inheritedTheme.colors.actionSupportHoverLight != abstractTheme.colors.actionSupportHoverLight)
        #expect(inheritedTheme.colors.actionSupportHoverLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportLoadingLight() throws {
        #expect(inheritedTheme.colors.actionSupportLoadingLight != abstractTheme.colors.actionSupportLoadingLight)
        #expect(inheritedTheme.colors.actionSupportLoadingLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportPressedLight() throws {
        #expect(inheritedTheme.colors.actionSupportPressedLight != abstractTheme.colors.actionSupportPressedLight)
        #expect(inheritedTheme.colors.actionSupportPressedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportEnabledDark() throws {
        #expect(inheritedTheme.colors.actionSupportEnabledDark != abstractTheme.colors.actionSupportEnabledDark)
        #expect(inheritedTheme.colors.actionSupportEnabledDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportDisabledDark() throws {
        #expect(inheritedTheme.colors.actionSupportDisabledDark != abstractTheme.colors.actionSupportDisabledDark)
        #expect(inheritedTheme.colors.actionSupportDisabledDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportFocusDark() throws {
        #expect(inheritedTheme.colors.actionSupportFocusDark != abstractTheme.colors.actionSupportFocusDark)
        #expect(inheritedTheme.colors.actionSupportFocusDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportHoverDark() throws {
        #expect(inheritedTheme.colors.actionSupportHoverDark != abstractTheme.colors.actionSupportHoverDark)
        #expect(inheritedTheme.colors.actionSupportHoverDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportLoadingDark() throws {
        #expect(inheritedTheme.colors.actionSupportLoadingDark != abstractTheme.colors.actionSupportLoadingDark)
        #expect(inheritedTheme.colors.actionSupportLoadingDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportPressedDark() throws {
        #expect(inheritedTheme.colors.actionSupportPressedDark != abstractTheme.colors.actionSupportPressedDark)
        #expect(inheritedTheme.colors.actionSupportPressedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionVisitedLight() throws {
        #expect(inheritedTheme.colors.actionVisitedLight != abstractTheme.colors.actionVisitedLight)
        #expect(inheritedTheme.colors.actionVisitedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionDisabledDark() throws {
        #expect(inheritedTheme.colors.actionDisabledDark != abstractTheme.colors.actionDisabledDark)
        #expect(inheritedTheme.colors.actionDisabledDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionEnabledDark() throws {
        #expect(inheritedTheme.colors.actionEnabledDark != abstractTheme.colors.actionEnabledDark)
        #expect(inheritedTheme.colors.actionEnabledDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionFocusDark() throws {
        #expect(inheritedTheme.colors.actionFocusDark != abstractTheme.colors.actionFocusDark)
        #expect(inheritedTheme.colors.actionFocusDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionHighlightedDark() throws {
        #expect(inheritedTheme.colors.actionHighlightedDark != abstractTheme.colors.actionHighlightedDark)
        #expect(inheritedTheme.colors.actionHighlightedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionHoverDark() throws {
        #expect(inheritedTheme.colors.actionHoverDark != abstractTheme.colors.actionHoverDark)
        #expect(inheritedTheme.colors.actionHoverDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionLoadingDark() throws {
        #expect(inheritedTheme.colors.actionLoadingDark != abstractTheme.colors.actionLoadingDark)
        #expect(inheritedTheme.colors.actionLoadingDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionPressedDark() throws {
        #expect(inheritedTheme.colors.actionPressedDark != abstractTheme.colors.actionPressedDark)
        #expect(inheritedTheme.colors.actionPressedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSelectedDark() throws {
        #expect(inheritedTheme.colors.actionSelectedDark != abstractTheme.colors.actionSelectedDark)
        #expect(inheritedTheme.colors.actionSelectedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionVisitedDark() throws {
        #expect(inheritedTheme.colors.actionVisitedDark != abstractTheme.colors.actionVisitedDark)
        #expect(inheritedTheme.colors.actionVisitedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBgInverseLowLight() throws {
        #expect(inheritedTheme.colors.bgInverseLowLight != abstractTheme.colors.bgInverseLowLight)
        #expect(inheritedTheme.colors.bgInverseLowLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBgInverseHighLight() throws {
        #expect(inheritedTheme.colors.bgInverseHighLight != abstractTheme.colors.bgInverseHighLight)
        #expect(inheritedTheme.colors.bgInverseHighLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBgPrimaryLight() throws {
        #expect(inheritedTheme.colors.bgPrimaryLight != abstractTheme.colors.bgPrimaryLight)
        #expect(inheritedTheme.colors.bgPrimaryLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBgSecondaryLight() throws {
        #expect(inheritedTheme.colors.bgSecondaryLight != abstractTheme.colors.bgSecondaryLight)
        #expect(inheritedTheme.colors.bgSecondaryLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBgTertiaryLight() throws {
        #expect(inheritedTheme.colors.bgTertiaryLight != abstractTheme.colors.bgTertiaryLight)
        #expect(inheritedTheme.colors.bgTertiaryLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBgInverseLowDark() throws {
        #expect(inheritedTheme.colors.bgInverseLowDark != abstractTheme.colors.bgInverseLowDark)
        #expect(inheritedTheme.colors.bgInverseLowDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBgInverseHighDark() throws {
        #expect(inheritedTheme.colors.bgInverseHighDark != abstractTheme.colors.bgInverseHighDark)
        #expect(inheritedTheme.colors.bgInverseHighDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBgPrimaryDark() throws {
        #expect(inheritedTheme.colors.bgPrimaryDark != abstractTheme.colors.bgPrimaryDark)
        #expect(inheritedTheme.colors.bgPrimaryDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBgSecondaryDark() throws {
        #expect(inheritedTheme.colors.bgSecondaryDark != abstractTheme.colors.bgSecondaryDark)
        #expect(inheritedTheme.colors.bgSecondaryDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBgTertiaryDark() throws {
        #expect(inheritedTheme.colors.bgTertiaryDark != abstractTheme.colors.bgTertiaryDark)
        #expect(inheritedTheme.colors.bgTertiaryDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderBrandPrimaryLight() throws {
        #expect(inheritedTheme.colors.borderBrandPrimaryLight != abstractTheme.colors.borderBrandPrimaryLight)
        #expect(inheritedTheme.colors.borderBrandPrimaryLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderDefaultLight() throws {
        #expect(inheritedTheme.colors.borderDefaultLight != abstractTheme.colors.borderDefaultLight)
        #expect(inheritedTheme.colors.borderDefaultLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderEmphasizedLight() throws {
        #expect(inheritedTheme.colors.borderEmphasizedLight != abstractTheme.colors.borderEmphasizedLight)
        #expect(inheritedTheme.colors.borderEmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderFocusLight() throws {
        #expect(inheritedTheme.colors.borderFocusLight != abstractTheme.colors.borderFocusLight)
        #expect(inheritedTheme.colors.borderFocusLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderFocusInsetLight() throws {
        #expect(inheritedTheme.colors.borderFocusInsetLight != abstractTheme.colors.borderFocusInsetLight)
        #expect(inheritedTheme.colors.borderFocusInsetLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderOnBrandPrimaryLight() throws {
        #expect(inheritedTheme.colors.borderOnBrandPrimaryLight != abstractTheme.colors.borderOnBrandPrimaryLight)
        #expect(inheritedTheme.colors.borderOnBrandPrimaryLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderOnBrandPrimaryDark() throws {
        #expect(inheritedTheme.colors.borderOnBrandPrimaryDark != abstractTheme.colors.borderOnBrandPrimaryDark)
        #expect(inheritedTheme.colors.borderOnBrandPrimaryDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderBrandPrimaryDark() throws {
        #expect(inheritedTheme.colors.borderBrandPrimaryDark != abstractTheme.colors.borderBrandPrimaryDark)
        #expect(inheritedTheme.colors.borderBrandPrimaryDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderDefaultDark() throws {
        #expect(inheritedTheme.colors.borderDefaultDark != abstractTheme.colors.borderDefaultDark)
        #expect(inheritedTheme.colors.borderDefaultDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderEmphasizedDark() throws {
        #expect(inheritedTheme.colors.borderEmphasizedDark != abstractTheme.colors.borderEmphasizedDark)
        #expect(inheritedTheme.colors.borderEmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderFocusDark() throws {
        #expect(inheritedTheme.colors.borderFocusDark != abstractTheme.colors.borderFocusDark)
        #expect(inheritedTheme.colors.borderFocusDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderFocusInsetDark() throws {
        #expect(inheritedTheme.colors.borderFocusInsetDark != abstractTheme.colors.borderFocusInsetDark)
        #expect(inheritedTheme.colors.borderFocusInsetDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentBrandPrimaryLight() throws {
        #expect(inheritedTheme.colors.contentBrandPrimaryLight != abstractTheme.colors.contentBrandPrimaryLight)
        #expect(inheritedTheme.colors.contentBrandPrimaryLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentDefaultLight() throws {
        #expect(inheritedTheme.colors.contentDefaultLight != abstractTheme.colors.contentDefaultLight)
        #expect(inheritedTheme.colors.contentDefaultLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentDisabledLight() throws {
        #expect(inheritedTheme.colors.contentDisabledLight != abstractTheme.colors.contentDisabledLight)
        #expect(inheritedTheme.colors.contentDisabledLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentMutedLight() throws {
        #expect(inheritedTheme.colors.contentMutedLight != abstractTheme.colors.contentMutedLight)
        #expect(inheritedTheme.colors.contentMutedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionSelectedLight() throws {
        #expect(inheritedTheme.colors.contentOnActionSelectedLight != abstractTheme.colors.contentOnActionSelectedLight)
        #expect(inheritedTheme.colors.contentOnActionSelectedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionDisabledLight() throws {
        #expect(inheritedTheme.colors.contentOnActionDisabledLight != abstractTheme.colors.contentOnActionDisabledLight)
        #expect(inheritedTheme.colors.contentOnActionDisabledLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionEnabledLight() throws {
        #expect(inheritedTheme.colors.contentOnActionEnabledLight != abstractTheme.colors.contentOnActionEnabledLight)
        #expect(inheritedTheme.colors.contentOnActionEnabledLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionFocusLight() throws {
        #expect(inheritedTheme.colors.contentOnActionFocusLight != abstractTheme.colors.contentOnActionFocusLight)
        #expect(inheritedTheme.colors.contentOnActionFocusLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionHighlightedLight() throws {
        #expect(inheritedTheme.colors.contentOnActionHighlightedLight != abstractTheme.colors.contentOnActionHighlightedLight)
        #expect(inheritedTheme.colors.contentOnActionHighlightedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionHoverLight() throws {
        #expect(inheritedTheme.colors.contentOnActionHoverLight != abstractTheme.colors.contentOnActionHoverLight)
        #expect(inheritedTheme.colors.contentOnActionHoverLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionLoadingLight() throws {
        #expect(inheritedTheme.colors.contentOnActionLoadingLight != abstractTheme.colors.contentOnActionLoadingLight)
        #expect(inheritedTheme.colors.contentOnActionLoadingLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionPressedLight() throws {
        #expect(inheritedTheme.colors.contentOnActionPressedLight != abstractTheme.colors.contentOnActionPressedLight)
        #expect(inheritedTheme.colors.contentOnActionPressedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionSelectedDark() throws {
        #expect(inheritedTheme.colors.contentOnActionSelectedDark != abstractTheme.colors.contentOnActionSelectedDark)
        #expect(inheritedTheme.colors.contentOnActionSelectedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionDisabledDark() throws {
        #expect(inheritedTheme.colors.contentOnActionDisabledDark != abstractTheme.colors.contentOnActionDisabledDark)
        #expect(inheritedTheme.colors.contentOnActionDisabledDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionEnabledDark() throws {
        #expect(inheritedTheme.colors.contentOnActionEnabledDark != abstractTheme.colors.contentOnActionEnabledDark)
        #expect(inheritedTheme.colors.contentOnActionEnabledDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionFocusDark() throws {
        #expect(inheritedTheme.colors.contentOnActionFocusDark != abstractTheme.colors.contentOnActionFocusDark)
        #expect(inheritedTheme.colors.contentOnActionFocusDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionHighlightedDark() throws {
        #expect(inheritedTheme.colors.contentOnActionHighlightedDark != abstractTheme.colors.contentOnActionHighlightedDark)
        #expect(inheritedTheme.colors.contentOnActionHighlightedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionHoverDark() throws {
        #expect(inheritedTheme.colors.contentOnActionHoverDark != abstractTheme.colors.contentOnActionHoverDark)
        #expect(inheritedTheme.colors.contentOnActionHoverDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionLoadingDark() throws {
        #expect(inheritedTheme.colors.contentOnActionLoadingDark != abstractTheme.colors.contentOnActionLoadingDark)
        #expect(inheritedTheme.colors.contentOnActionLoadingDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionPressedDark() throws {
        #expect(inheritedTheme.colors.contentOnActionPressedDark != abstractTheme.colors.contentOnActionPressedDark)
        #expect(inheritedTheme.colors.contentOnActionPressedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnBrandPrimaryLight() throws {
        #expect(inheritedTheme.colors.contentOnBrandPrimaryLight != abstractTheme.colors.contentOnBrandPrimaryLight)
        #expect(inheritedTheme.colors.contentOnBrandPrimaryLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnBrandPrimaryDark() throws {
        #expect(inheritedTheme.colors.contentOnBrandPrimaryDark != abstractTheme.colors.contentOnBrandPrimaryDark)
        #expect(inheritedTheme.colors.contentOnBrandPrimaryDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusPositiveMutedLight() throws {
        #expect(inheritedTheme.colors.contentOnStatusPositiveMutedLight != abstractTheme.colors.contentOnStatusPositiveMutedLight)
        #expect(inheritedTheme.colors.contentOnStatusPositiveMutedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusPositiveEmphasizedLight() throws {
        #expect(inheritedTheme.colors.contentOnStatusPositiveEmphasizedLight != abstractTheme.colors.contentOnStatusPositiveEmphasizedLight)
        #expect(inheritedTheme.colors.contentOnStatusPositiveEmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentInverseLight() throws {
        #expect(inheritedTheme.colors.contentInverseLight != abstractTheme.colors.contentInverseLight)
        #expect(inheritedTheme.colors.contentInverseLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusNegativeMutedight() throws {
        #expect(inheritedTheme.colors.contentOnStatusNegativeMutedLight != abstractTheme.colors.contentOnStatusNegativeMutedLight)
        #expect(inheritedTheme.colors.contentOnStatusNegativeMutedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusNegativeEmphasizedLight() throws {
        #expect(inheritedTheme.colors.contentOnStatusNegativeEmphasizedLight != abstractTheme.colors.contentOnStatusNegativeEmphasizedLight)
        #expect(inheritedTheme.colors.contentOnStatusNegativeEmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusWarningMutedLight() throws {
        #expect(inheritedTheme.colors.contentOnStatusWarningMutedLight != abstractTheme.colors.contentOnStatusWarningMutedLight)
        #expect(inheritedTheme.colors.contentOnStatusWarningMutedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusWarningEmphasizedLight() throws {
        #expect(inheritedTheme.colors.contentOnStatusWarningEmphasizedLight != abstractTheme.colors.contentOnStatusWarningEmphasizedLight)
        #expect(inheritedTheme.colors.contentOnStatusWarningEmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusAccentMutedLight() throws {
        #expect(inheritedTheme.colors.contentOnStatusAccentMutedLight != abstractTheme.colors.contentOnStatusAccentMutedLight)
        #expect(inheritedTheme.colors.contentOnStatusAccentMutedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusAccentEmphasizedLight() throws {
        #expect(inheritedTheme.colors.contentOnStatusAccentEmphasizedLight != abstractTheme.colors.contentOnStatusAccentEmphasizedLight)
        #expect(inheritedTheme.colors.contentOnStatusAccentEmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusPositiveMutedDark() throws {
        #expect(inheritedTheme.colors.contentOnStatusPositiveMutedDark != abstractTheme.colors.contentOnStatusPositiveMutedDark)
        #expect(inheritedTheme.colors.contentOnStatusPositiveMutedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusPositiveEmphasizedDark() throws {
        #expect(inheritedTheme.colors.contentOnStatusPositiveEmphasizedDark != abstractTheme.colors.contentOnStatusPositiveEmphasizedDark)
        #expect(inheritedTheme.colors.contentOnStatusPositiveEmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentInverseDark() throws {
        #expect(inheritedTheme.colors.contentInverseDark != abstractTheme.colors.contentInverseDark)
        #expect(inheritedTheme.colors.contentInverseDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusNegativeMutedDark() throws {
        #expect(inheritedTheme.colors.contentOnStatusNegativeMutedDark != abstractTheme.colors.contentOnStatusNegativeMutedDark)
        #expect(inheritedTheme.colors.contentOnStatusNegativeMutedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusNegativeEmphasizedDark() throws {
        #expect(inheritedTheme.colors.contentOnStatusNegativeEmphasizedDark != abstractTheme.colors.contentOnStatusNegativeEmphasizedDark)
        #expect(inheritedTheme.colors.contentOnStatusNegativeEmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusWarningMutedDark() throws {
        #expect(inheritedTheme.colors.contentOnStatusWarningMutedDark != abstractTheme.colors.contentOnStatusWarningMutedDark)
        #expect(inheritedTheme.colors.contentOnStatusWarningMutedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusWarningEmphasizedDark() throws {
        #expect(inheritedTheme.colors.contentOnStatusWarningEmphasizedDark != abstractTheme.colors.contentOnStatusWarningEmphasizedDark)
        #expect(inheritedTheme.colors.contentOnStatusWarningEmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusAccentMutedDark() throws {
        #expect(inheritedTheme.colors.contentOnStatusAccentMutedDark != abstractTheme.colors.contentOnStatusAccentMutedDark)
        #expect(inheritedTheme.colors.contentOnStatusAccentMutedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusAccentEmphasizedDark() throws {
        #expect(inheritedTheme.colors.contentOnStatusAccentEmphasizedDark != abstractTheme.colors.contentOnStatusAccentEmphasizedDark)
        #expect(inheritedTheme.colors.contentOnStatusAccentEmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusInfoLight() throws {
        #expect(inheritedTheme.colors.contentStatusInfoLight != abstractTheme.colors.contentStatusInfoLight)
        #expect(inheritedTheme.colors.contentStatusInfoLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusNegativeLight() throws {
        #expect(inheritedTheme.colors.contentStatusNegativeLight != abstractTheme.colors.contentStatusNegativeLight)
        #expect(inheritedTheme.colors.contentStatusNegativeLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusPositiveLight() throws {
        #expect(inheritedTheme.colors.contentStatusPositiveLight != abstractTheme.colors.contentStatusPositiveLight)
        #expect(inheritedTheme.colors.contentStatusPositiveLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusWarningLight() throws {
        #expect(inheritedTheme.colors.contentStatusWarningLight != abstractTheme.colors.contentStatusWarningLight)
        #expect(inheritedTheme.colors.contentStatusWarningLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusInfoDark() throws {
        #expect(inheritedTheme.colors.contentStatusInfoDark != abstractTheme.colors.contentStatusInfoDark)
        #expect(inheritedTheme.colors.contentStatusInfoDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusNegativeDark() throws {
        #expect(inheritedTheme.colors.contentStatusNegativeDark != abstractTheme.colors.contentStatusNegativeDark)
        #expect(inheritedTheme.colors.contentStatusNegativeDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusPositiveDark() throws {
        #expect(inheritedTheme.colors.contentStatusPositiveDark != abstractTheme.colors.contentStatusPositiveDark)
        #expect(inheritedTheme.colors.contentStatusPositiveDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusWarningDark() throws {
        #expect(inheritedTheme.colors.contentStatusWarningDark != abstractTheme.colors.contentStatusWarningDark)
        #expect(inheritedTheme.colors.contentStatusWarningDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOverlayDropdownLight() throws {
        #expect(inheritedTheme.colors.overlayDropdownLight != abstractTheme.colors.overlayDropdownLight)
        #expect(inheritedTheme.colors.overlayDropdownLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOverlayDragLight() throws {
        #expect(inheritedTheme.colors.overlayDragLight != abstractTheme.colors.overlayDragLight)
        #expect(inheritedTheme.colors.overlayDragLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOverlayModalLight() throws {
        #expect(inheritedTheme.colors.overlayModalLight != abstractTheme.colors.overlayModalLight)
        #expect(inheritedTheme.colors.overlayModalLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOverlayDropdownDark() throws {
        #expect(inheritedTheme.colors.overlayDropdownDark != abstractTheme.colors.overlayDropdownDark)
        #expect(inheritedTheme.colors.overlayDropdownDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOverlayDragDark() throws {
        #expect(inheritedTheme.colors.overlayDragDark != abstractTheme.colors.overlayDragDark)
        #expect(inheritedTheme.colors.overlayDragDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOverlayModalDark() throws {
        #expect(inheritedTheme.colors.overlayModalDark != abstractTheme.colors.overlayModalDark)
        #expect(inheritedTheme.colors.overlayModalDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    // MARK: - Color - Surface

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceBrandPrimaryLight() throws {
        #expect(inheritedTheme.colors.surfaceBrandPrimaryLight != abstractTheme.colors.surfaceBrandPrimaryLight)
        #expect(inheritedTheme.colors.surfaceBrandPrimaryLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceBrandPrimaryDark() throws {
        #expect(inheritedTheme.colors.surfaceBrandPrimaryDark != abstractTheme.colors.surfaceBrandPrimaryDark)
        #expect(inheritedTheme.colors.surfaceBrandPrimaryDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusAccentEmphasizedLight() throws {
        #expect(inheritedTheme.colors.surfaceStatusAccentEmphasizedLight != abstractTheme.colors.surfaceStatusAccentEmphasizedLight)
        #expect(inheritedTheme.colors.surfaceStatusAccentEmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusAccentMutedLight() throws {
        #expect(inheritedTheme.colors.surfaceStatusAccentMutedLight != abstractTheme.colors.surfaceStatusAccentMutedLight)
        #expect(inheritedTheme.colors.surfaceStatusAccentMutedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusAccentEmphasizedDark() throws {
        #expect(inheritedTheme.colors.surfaceStatusAccentEmphasizedDark != abstractTheme.colors.surfaceStatusAccentEmphasizedDark)
        #expect(inheritedTheme.colors.surfaceStatusAccentEmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusAccentMutedDark() throws {
        #expect(inheritedTheme.colors.surfaceStatusAccentMutedDark != abstractTheme.colors.surfaceStatusAccentMutedDark)
        #expect(inheritedTheme.colors.surfaceStatusAccentMutedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusInfoEmphasizedLight() throws {
        #expect(inheritedTheme.colors.surfaceStatusInfoEmphasizedLight != abstractTheme.colors.surfaceStatusInfoEmphasizedLight)
        #expect(inheritedTheme.colors.surfaceStatusInfoEmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusInfoMutedLight() throws {
        #expect(inheritedTheme.colors.surfaceStatusInfoMutedLight != abstractTheme.colors.surfaceStatusInfoMutedLight)
        #expect(inheritedTheme.colors.surfaceStatusInfoMutedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusInfoEmphasizedDark() throws {
        #expect(inheritedTheme.colors.surfaceStatusInfoEmphasizedDark != abstractTheme.colors.surfaceStatusInfoEmphasizedDark)
        #expect(inheritedTheme.colors.surfaceStatusInfoEmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusInfoMutedDark() throws {
        #expect(inheritedTheme.colors.surfaceStatusInfoMutedDark != abstractTheme.colors.surfaceStatusInfoMutedDark)
        #expect(inheritedTheme.colors.surfaceStatusInfoMutedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNegativeEmphasizedLight() throws {
        #expect(inheritedTheme.colors.surfaceStatusNegativeEmphasizedLight != abstractTheme.colors.surfaceStatusNegativeEmphasizedLight)
        #expect(inheritedTheme.colors.surfaceStatusNegativeEmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNegativeMutedLight() throws {
        #expect(inheritedTheme.colors.surfaceStatusNegativeMutedLight != abstractTheme.colors.surfaceStatusNegativeMutedLight)
        #expect(inheritedTheme.colors.surfaceStatusNegativeMutedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNegativeEmphasizedDark() throws {
        #expect(inheritedTheme.colors.surfaceStatusNegativeEmphasizedDark != abstractTheme.colors.surfaceStatusNegativeEmphasizedDark)
        #expect(inheritedTheme.colors.surfaceStatusNegativeEmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNegativeMutedDark() throws {
        #expect(inheritedTheme.colors.surfaceStatusNegativeMutedDark != abstractTheme.colors.surfaceStatusNegativeMutedDark)
        #expect(inheritedTheme.colors.surfaceStatusNegativeMutedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokencolorSurfaceInverseHighight() throws {
        #expect(inheritedTheme.colors.surfaceInverseHighLight != abstractTheme.colors.surfaceInverseHighLight)
        #expect(inheritedTheme.colors.surfaceInverseHighLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokencolorSurfaceInverseLowLight() throws {
        #expect(inheritedTheme.colors.surfaceInverseLowLight != abstractTheme.colors.surfaceInverseLowLight)
        #expect(inheritedTheme.colors.surfaceInverseLowLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfacePrimaryLight() throws {
        #expect(inheritedTheme.colors.surfacePrimaryLight != abstractTheme.colors.surfacePrimaryLight)
        #expect(inheritedTheme.colors.surfacePrimaryLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceSecondaryLight() throws {
        #expect(inheritedTheme.colors.surfaceSecondaryLight != abstractTheme.colors.surfaceSecondaryLight)
        #expect(inheritedTheme.colors.surfaceSecondaryLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceTertiaryLight() throws {
        #expect(inheritedTheme.colors.surfaceTertiaryLight != abstractTheme.colors.surfaceTertiaryLight)
        #expect(inheritedTheme.colors.surfaceTertiaryLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokencolorSurfaceInverseHighDark() throws {
        #expect(inheritedTheme.colors.surfaceInverseHighDark != abstractTheme.colors.surfaceInverseHighDark)
        #expect(inheritedTheme.colors.surfaceInverseHighDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokencolorSurfaceInverseLowDark() throws {
        #expect(inheritedTheme.colors.surfaceInverseLowDark != abstractTheme.colors.surfaceInverseLowDark)
        #expect(inheritedTheme.colors.surfaceInverseLowDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfacePrimaryDark() throws {
        #expect(inheritedTheme.colors.surfacePrimaryDark != abstractTheme.colors.surfacePrimaryDark)
        #expect(inheritedTheme.colors.surfacePrimaryDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceSecondaryDark() throws {
        #expect(inheritedTheme.colors.surfaceSecondaryDark != abstractTheme.colors.surfaceSecondaryDark)
        #expect(inheritedTheme.colors.surfaceSecondaryDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceTertiaryDark() throws {
        #expect(inheritedTheme.colors.surfaceTertiaryDark != abstractTheme.colors.surfaceTertiaryDark)
        #expect(inheritedTheme.colors.surfaceTertiaryDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusPositiveEmphasizedLight() throws {
        #expect(inheritedTheme.colors.surfaceStatusPositiveEmphasizedLight != abstractTheme.colors.surfaceStatusPositiveEmphasizedLight)
        #expect(inheritedTheme.colors.surfaceStatusPositiveEmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusPositiveMutedLight() throws {
        #expect(inheritedTheme.colors.surfaceStatusPositiveMutedLight != abstractTheme.colors.surfaceStatusPositiveMutedLight)
        #expect(inheritedTheme.colors.surfaceStatusPositiveMutedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusPositiveEmphasizedDark() throws {
        #expect(inheritedTheme.colors.surfaceStatusPositiveEmphasizedDark != abstractTheme.colors.surfaceStatusPositiveEmphasizedDark)
        #expect(inheritedTheme.colors.surfaceStatusPositiveEmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusPositiveMutedDark() throws {
        #expect(inheritedTheme.colors.surfaceStatusPositiveMutedDark != abstractTheme.colors.surfaceStatusPositiveMutedDark)
        #expect(inheritedTheme.colors.surfaceStatusPositiveMutedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusWarningEmphasizedLight() throws {
        #expect(inheritedTheme.colors.surfaceStatusWarningEmphasizedLight != abstractTheme.colors.surfaceStatusWarningEmphasizedLight)
        #expect(inheritedTheme.colors.surfaceStatusWarningEmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusWarningMutedLight() throws {
        #expect(inheritedTheme.colors.surfaceStatusWarningMutedLight != abstractTheme.colors.surfaceStatusWarningMutedLight)
        #expect(inheritedTheme.colors.surfaceStatusWarningMutedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusWarningEmphasizedDark() throws {
        #expect(inheritedTheme.colors.surfaceStatusWarningEmphasizedDark != abstractTheme.colors.surfaceStatusWarningEmphasizedDark)
        #expect(inheritedTheme.colors.surfaceStatusWarningEmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusWarningMutedDark() throws {
        #expect(inheritedTheme.colors.surfaceStatusWarningMutedDark != abstractTheme.colors.surfaceStatusWarningMutedDark)
        #expect(inheritedTheme.colors.surfaceStatusWarningMutedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    // MARK: - Color - Repository

    // WARNING: Semantic tokens of colors repository* must not be overridable
    // i.e. defined in the top level provider and that's all.

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryAccentMedium() throws {
        #expect(inheritedTheme.colors.repositoryAccentMedium == abstractTheme.colors.repositoryAccentMedium)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryAccentHigh() throws {
        #expect(inheritedTheme.colors.repositoryAccentHigh == abstractTheme.colors.repositoryAccentHigh)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryAccentHigher() throws {
        #expect(inheritedTheme.colors.repositoryAccentHigher == abstractTheme.colors.repositoryAccentHigher)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryAccentHighest() throws {
        #expect(inheritedTheme.colors.repositoryAccentHighest == abstractTheme.colors.repositoryAccentHighest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryAccentLow() throws {
        #expect(inheritedTheme.colors.repositoryAccentLow == abstractTheme.colors.repositoryAccentLow)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryAccentLowest() throws {
        #expect(inheritedTheme.colors.repositoryAccentLowest == abstractTheme.colors.repositoryAccentLowest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryInfoMedium() throws {
        #expect(inheritedTheme.colors.repositoryInfoMedium == abstractTheme.colors.repositoryInfoMedium)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryInfoHighest() throws {
        #expect(inheritedTheme.colors.repositoryInfoHighest == abstractTheme.colors.repositoryInfoHighest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryInfoLow() throws {
        #expect(inheritedTheme.colors.repositoryInfoLow == abstractTheme.colors.repositoryInfoLow)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryInfoLowest() throws {
        #expect(inheritedTheme.colors.repositoryInfoLowest == abstractTheme.colors.repositoryInfoLowest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeMedium() throws {
        #expect(inheritedTheme.colors.repositoryNegativeMedium == abstractTheme.colors.repositoryNegativeMedium)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeHigh() throws {
        #expect(inheritedTheme.colors.repositoryNegativeHigh == abstractTheme.colors.repositoryNegativeHigh)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeHigher() throws {
        #expect(inheritedTheme.colors.repositoryNegativeHigher == abstractTheme.colors.repositoryNegativeHigher)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeHighest() throws {
        #expect(inheritedTheme.colors.repositoryNegativeHighest == abstractTheme.colors.repositoryNegativeHighest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeLow() throws {
        #expect(inheritedTheme.colors.repositoryNegativeLow == abstractTheme.colors.repositoryNegativeLow)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeLower() throws {
        #expect(inheritedTheme.colors.repositoryNegativeLower == abstractTheme.colors.repositoryNegativeLower)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeLowest() throws {
        #expect(inheritedTheme.colors.repositoryNegativeLowest == abstractTheme.colors.repositoryNegativeLowest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralEmphasizedBlack() throws {
        #expect(inheritedTheme.colors.repositoryNeutralEmphasizedBlack == abstractTheme.colors.repositoryNeutralEmphasizedBlack)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralEmphasizedHigh() throws {
        #expect(inheritedTheme.colors.repositoryNeutralEmphasizedHigh == abstractTheme.colors.repositoryNeutralEmphasizedHigh)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralEmphasizedHigher() throws {
        #expect(inheritedTheme.colors.repositoryNeutralEmphasizedHigher == abstractTheme.colors.repositoryNeutralEmphasizedHigher)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralEmphasizedHighest() throws {
        #expect(inheritedTheme.colors.repositoryNeutralEmphasizedHighest == abstractTheme.colors.repositoryNeutralEmphasizedHighest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralEmphasizedMedium() throws {
        #expect(inheritedTheme.colors.repositoryNeutralEmphasizedMedium == abstractTheme.colors.repositoryNeutralEmphasizedMedium)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralMutedLower() throws {
        #expect(inheritedTheme.colors.repositoryNeutralMutedLower == abstractTheme.colors.repositoryNeutralMutedLower)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralMutedLowest() throws {
        #expect(inheritedTheme.colors.repositoryNeutralMutedLowest == abstractTheme.colors.repositoryNeutralMutedLowest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralMutedWhite() throws {
        #expect(inheritedTheme.colors.repositoryNeutralMutedWhite == abstractTheme.colors.repositoryNeutralMutedWhite)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackHigh() throws {
        #expect(inheritedTheme.colors.repositoryOpacityBlackHigh == abstractTheme.colors.repositoryOpacityBlackHigh)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackHigher() throws {
        #expect(inheritedTheme.colors.repositoryOpacityBlackHigher == abstractTheme.colors.repositoryOpacityBlackHigher)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackHighest() throws {
        #expect(inheritedTheme.colors.repositoryOpacityBlackHighest == abstractTheme.colors.repositoryOpacityBlackHighest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackLow() throws {
        #expect(inheritedTheme.colors.repositoryOpacityBlackLow == abstractTheme.colors.repositoryOpacityBlackLow)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackLower() throws {
        #expect(inheritedTheme.colors.repositoryOpacityBlackLower == abstractTheme.colors.repositoryOpacityBlackLower)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackLowest() throws {
        #expect(inheritedTheme.colors.repositoryOpacityBlackLowest == abstractTheme.colors.repositoryOpacityBlackLowest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackMedium() throws {
        #expect(inheritedTheme.colors.repositoryOpacityBlackMedium == abstractTheme.colors.repositoryOpacityBlackMedium)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackMediumHigh() throws {
        #expect(inheritedTheme.colors.repositoryOpacityBlackMediumHigh == abstractTheme.colors.repositoryOpacityBlackMediumHigh)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackMediumLow() throws {
        #expect(inheritedTheme.colors.repositoryOpacityBlackMediumLow == abstractTheme.colors.repositoryOpacityBlackMediumLow)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackTransparent() throws {
        #expect(inheritedTheme.colors.repositoryOpacityBlackTransparent == abstractTheme.colors.repositoryOpacityBlackTransparent)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityInfoLow() throws {
        #expect(inheritedTheme.colors.repositoryOpacityInfoLow == abstractTheme.colors.repositoryOpacityInfoLow)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityInfoMedium() throws {
        #expect(inheritedTheme.colors.repositoryOpacityInfoMedium == abstractTheme.colors.repositoryOpacityInfoMedium)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityAccentLow() throws {
        #expect(inheritedTheme.colors.repositoryOpacityAccentLow == abstractTheme.colors.repositoryOpacityAccentLow)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityAccentMedium() throws {
        #expect(inheritedTheme.colors.repositoryOpacityAccentMedium == abstractTheme.colors.repositoryOpacityAccentMedium)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityNegativeLow() throws {
        #expect(inheritedTheme.colors.repositoryOpacityNegativeLow == abstractTheme.colors.repositoryOpacityNegativeLow)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityNegativeMedium() throws {
        #expect(inheritedTheme.colors.repositoryOpacityNegativeMedium == abstractTheme.colors.repositoryOpacityNegativeMedium)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityPositiveLow() throws {
        #expect(inheritedTheme.colors.repositoryOpacityPositiveLow == abstractTheme.colors.repositoryOpacityPositiveLow)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityPositiveMedium() throws {
        #expect(inheritedTheme.colors.repositoryOpacityPositiveMedium == abstractTheme.colors.repositoryOpacityPositiveMedium)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWarningLow() throws {
        #expect(inheritedTheme.colors.repositoryOpacityWarningLow == abstractTheme.colors.repositoryOpacityWarningLow)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWarningMedium() throws {
        #expect(inheritedTheme.colors.repositoryOpacityWarningMedium == abstractTheme.colors.repositoryOpacityWarningMedium)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteHigh() throws {
        #expect(inheritedTheme.colors.repositoryOpacityWhiteHigh == abstractTheme.colors.repositoryOpacityWhiteHigh)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteHigher() throws {
        #expect(inheritedTheme.colors.repositoryOpacityWhiteHigher == abstractTheme.colors.repositoryOpacityWhiteHigher)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteHighest() throws {
        #expect(inheritedTheme.colors.repositoryOpacityWhiteHighest == abstractTheme.colors.repositoryOpacityWhiteHighest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteHighLow() throws {
        #expect(inheritedTheme.colors.repositoryOpacityWhiteLow == abstractTheme.colors.repositoryOpacityWhiteLow)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteMedium() throws {
        #expect(inheritedTheme.colors.repositoryOpacityWhiteMedium == abstractTheme.colors.repositoryOpacityWhiteMedium)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteMediumLow() throws {
        #expect(inheritedTheme.colors.repositoryOpacityWhiteMediumLow == abstractTheme.colors.repositoryOpacityWhiteMediumLow)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteLower() throws {
        #expect(inheritedTheme.colors.repositoryOpacityWhiteLower == abstractTheme.colors.repositoryOpacityWhiteLower)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteLowest() throws {
        #expect(inheritedTheme.colors.repositoryOpacityWhiteLowest == abstractTheme.colors.repositoryOpacityWhiteLowest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteTransparent() throws {
        #expect(inheritedTheme.colors.repositoryOpacityWhiteTransparent == abstractTheme.colors.repositoryOpacityWhiteTransparent)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryPositiveMedium() throws {
        #expect(inheritedTheme.colors.repositoryPositiveMedium == abstractTheme.colors.repositoryPositiveMedium)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryPositiveHigh() throws {
        #expect(inheritedTheme.colors.repositoryPositiveHigh == abstractTheme.colors.repositoryPositiveHigh)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryPositiveHighest() throws {
        #expect(inheritedTheme.colors.repositoryPositiveHighest == abstractTheme.colors.repositoryPositiveHighest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryPositiveLow() throws {
        #expect(inheritedTheme.colors.repositoryPositiveLow == abstractTheme.colors.repositoryPositiveLow)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryPositiveLowest() throws {
        #expect(inheritedTheme.colors.repositoryPositiveLowest == abstractTheme.colors.repositoryPositiveLowest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryPrimaryMedium() throws {
        #expect(inheritedTheme.colors.repositoryPrimaryMedium == abstractTheme.colors.repositoryPrimaryMedium)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryPrimaryLow() throws {
        #expect(inheritedTheme.colors.repositoryPrimaryLow == abstractTheme.colors.repositoryPrimaryLow)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryWarningMedium() throws {
        #expect(inheritedTheme.colors.repositoryWarningMedium == abstractTheme.colors.repositoryWarningMedium)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryWarningHighest() throws {
        #expect(inheritedTheme.colors.repositoryWarningHighest == abstractTheme.colors.repositoryWarningHighest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryWarningLow() throws {
        #expect(inheritedTheme.colors.repositoryWarningLow == abstractTheme.colors.repositoryWarningLow)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryWarningLowest() throws {
        #expect(inheritedTheme.colors.repositoryWarningLowest == abstractTheme.colors.repositoryWarningLowest)
    }
}

// swiftlint:enable type_body_length
