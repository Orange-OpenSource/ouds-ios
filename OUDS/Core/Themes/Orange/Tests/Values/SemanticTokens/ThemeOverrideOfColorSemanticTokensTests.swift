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

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionReadOnlyPrimaryLight() throws {
        #expect(inheritedTheme.colors.actionReadOnlyPrimaryLight != abstractTheme.colors.actionReadOnlyPrimaryLight)
        #expect(inheritedTheme.colors.actionReadOnlyPrimaryLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionReadOnlyPrimaryDark() throws {
        #expect(inheritedTheme.colors.actionReadOnlyPrimaryDark != abstractTheme.colors.actionReadOnlyPrimaryDark)
        #expect(inheritedTheme.colors.actionReadOnlyPrimaryDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionReadOnlySecondaryLight() throws {
        #expect(inheritedTheme.colors.actionReadOnlySecondaryLight != abstractTheme.colors.actionReadOnlySecondaryLight)
        #expect(inheritedTheme.colors.actionReadOnlySecondaryLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionReadOnlySecondaryDark() throws {
        #expect(inheritedTheme.colors.actionReadOnlySecondaryDark != abstractTheme.colors.actionReadOnlySecondaryDark)
        #expect(inheritedTheme.colors.actionReadOnlySecondaryDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
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

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderMinimalLight() throws {
        #expect(inheritedTheme.colors.borderMinimalLight != abstractTheme.colors.borderMinimalLight)
        #expect(inheritedTheme.colors.borderMinimalLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderMinimalDark() throws {
        #expect(inheritedTheme.colors.borderMinimalDark != abstractTheme.colors.borderMinimalDark)
        #expect(inheritedTheme.colors.borderMinimalDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderMutedLight() throws {
        #expect(inheritedTheme.colors.borderMutedLight != abstractTheme.colors.borderMutedLight)
        #expect(inheritedTheme.colors.borderMutedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderMutedDark() throws {
        #expect(inheritedTheme.colors.borderMutedDark != abstractTheme.colors.borderMutedDark)
        #expect(inheritedTheme.colors.borderMutedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderBrandPrimaryLight() throws {
        #expect(inheritedTheme.colors.borderBrandPrimaryLight != abstractTheme.colors.borderBrandPrimaryLight)
        #expect(inheritedTheme.colors.borderBrandPrimaryLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderBrandSecondaryLight() throws {
        #expect(inheritedTheme.colors.borderBrandSecondaryLight != abstractTheme.colors.borderBrandSecondaryLight)
        #expect(inheritedTheme.colors.borderBrandSecondaryLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderBrandTertiaryLight() throws {
        #expect(inheritedTheme.colors.borderBrandTertiaryLight != abstractTheme.colors.borderBrandTertiaryLight)
        #expect(inheritedTheme.colors.borderBrandTertiaryLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
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

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderOnBrandSecondaryLight() throws {
        #expect(inheritedTheme.colors.borderOnBrandSecondaryLight != abstractTheme.colors.borderOnBrandSecondaryLight)
        #expect(inheritedTheme.colors.borderOnBrandSecondaryLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderOnBrandTertiaryLight() throws {
        #expect(inheritedTheme.colors.borderOnBrandTertiaryLight != abstractTheme.colors.borderOnBrandTertiaryLight)
        #expect(inheritedTheme.colors.borderOnBrandTertiaryLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderOnBrandPrimaryDark() throws {
        #expect(inheritedTheme.colors.borderOnBrandPrimaryDark != abstractTheme.colors.borderOnBrandPrimaryDark)
        #expect(inheritedTheme.colors.borderOnBrandPrimaryDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderOnBrandSecondaryDark() throws {
        #expect(inheritedTheme.colors.borderOnBrandSecondaryDark != abstractTheme.colors.borderOnBrandSecondaryDark)
        #expect(inheritedTheme.colors.borderOnBrandSecondaryDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderOnBrandTertiaryDark() throws {
        #expect(inheritedTheme.colors.borderOnBrandTertiaryDark != abstractTheme.colors.borderOnBrandTertiaryDark)
        #expect(inheritedTheme.colors.borderOnBrandTertiaryDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderBrandPrimaryDark() throws {
        #expect(inheritedTheme.colors.borderBrandPrimaryDark != abstractTheme.colors.borderBrandPrimaryDark)
        #expect(inheritedTheme.colors.borderBrandPrimaryDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderBrandSecondaryDark() throws {
        #expect(inheritedTheme.colors.borderBrandSecondaryDark != abstractTheme.colors.borderBrandSecondaryDark)
        #expect(inheritedTheme.colors.borderBrandSecondaryDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderBrandTertiaryDark() throws {
        #expect(inheritedTheme.colors.borderBrandTertiaryDark != abstractTheme.colors.borderBrandTertiaryDark)
        #expect(inheritedTheme.colors.borderBrandTertiaryDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderStatusPositiveLight() throws {
        #expect(inheritedTheme.colors.borderStatusPositiveLight != abstractTheme.colors.borderStatusPositiveLight)
        #expect(inheritedTheme.colors.borderStatusPositiveLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderStatusPositiveDark() throws {
        #expect(inheritedTheme.colors.borderStatusPositiveDark != abstractTheme.colors.borderStatusPositiveDark)
        #expect(inheritedTheme.colors.borderStatusPositiveDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderStatusInfoLight() throws {
        #expect(inheritedTheme.colors.borderStatusInfoLight != abstractTheme.colors.borderStatusInfoLight)
        #expect(inheritedTheme.colors.borderStatusInfoLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderStatusInfoDark() throws {
        #expect(inheritedTheme.colors.borderStatusInfoDark != abstractTheme.colors.borderStatusInfoDark)
        #expect(inheritedTheme.colors.borderStatusInfoDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderStatusWarningLight() throws {
        #expect(inheritedTheme.colors.borderStatusWarningLight != abstractTheme.colors.borderStatusWarningLight)
        #expect(inheritedTheme.colors.borderStatusWarningLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderStatusWarningDark() throws {
        #expect(inheritedTheme.colors.borderStatusWarningDark != abstractTheme.colors.borderStatusWarningDark)
        #expect(inheritedTheme.colors.borderStatusWarningDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderStatusNegativeLight() throws {
        #expect(inheritedTheme.colors.borderStatusNegativeLight != abstractTheme.colors.borderStatusNegativeLight)
        #expect(inheritedTheme.colors.borderStatusNegativeLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderStatusNegativeDark() throws {
        #expect(inheritedTheme.colors.borderStatusNegativeDark != abstractTheme.colors.borderStatusNegativeDark)
        #expect(inheritedTheme.colors.borderStatusNegativeDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderStatusAccentLight() throws {
        #expect(inheritedTheme.colors.borderStatusAccentLight != abstractTheme.colors.borderStatusAccentLight)
        #expect(inheritedTheme.colors.borderStatusAccentLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderStatusAccentDark() throws {
        #expect(inheritedTheme.colors.borderStatusAccentDark != abstractTheme.colors.borderStatusAccentDark)
        #expect(inheritedTheme.colors.borderStatusAccentDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
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

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentBrandPrimaryDark() throws {
        #expect(inheritedTheme.colors.contentBrandPrimaryDark != abstractTheme.colors.contentBrandPrimaryDark)
        #expect(inheritedTheme.colors.contentBrandPrimaryDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentBrandSecondaryLight() throws {
        #expect(inheritedTheme.colors.contentBrandSecondaryLight != abstractTheme.colors.contentBrandSecondaryLight)
        #expect(inheritedTheme.colors.contentBrandSecondaryLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentBrandSecondaryDark() throws {
        #expect(inheritedTheme.colors.contentBrandSecondaryDark != abstractTheme.colors.contentBrandSecondaryDark)
        #expect(inheritedTheme.colors.contentBrandSecondaryDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentBrandTertiaryLight() throws {
        #expect(inheritedTheme.colors.contentBrandTertiaryLight != abstractTheme.colors.contentBrandTertiaryLight)
        #expect(inheritedTheme.colors.contentBrandTertiaryLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentBrandTertiaryDark() throws {
        #expect(inheritedTheme.colors.contentBrandTertiaryDark != abstractTheme.colors.contentBrandTertiaryDark)
        #expect(inheritedTheme.colors.contentBrandTertiaryDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentDefaultLight() throws {
        #expect(inheritedTheme.colors.contentDefaultLight != abstractTheme.colors.contentDefaultLight)
        #expect(inheritedTheme.colors.contentDefaultLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentDefaultDark() throws {
        #expect(inheritedTheme.colors.contentDefaultDark != abstractTheme.colors.contentDefaultDark)
        #expect(inheritedTheme.colors.contentDefaultDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentDisabledLight() throws {
        #expect(inheritedTheme.colors.contentDisabledLight != abstractTheme.colors.contentDisabledLight)
        #expect(inheritedTheme.colors.contentDisabledLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentDisabledDark() throws {
        #expect(inheritedTheme.colors.contentDisabledDark != abstractTheme.colors.contentDisabledDark)
        #expect(inheritedTheme.colors.contentDisabledDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentMutedLight() throws {
        #expect(inheritedTheme.colors.contentMutedLight != abstractTheme.colors.contentMutedLight)
        #expect(inheritedTheme.colors.contentMutedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentMutedDark() throws {
        #expect(inheritedTheme.colors.contentMutedDark != abstractTheme.colors.contentMutedDark)
        #expect(inheritedTheme.colors.contentMutedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
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

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnBrandSecondaryLight() throws {
        #expect(inheritedTheme.colors.contentOnBrandSecondaryLight != abstractTheme.colors.contentOnBrandSecondaryLight)
        #expect(inheritedTheme.colors.contentOnBrandSecondaryLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnBrandSecondaryDark() throws {
        #expect(inheritedTheme.colors.contentOnBrandSecondaryDark != abstractTheme.colors.contentOnBrandSecondaryDark)
        #expect(inheritedTheme.colors.contentOnBrandSecondaryDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnBrandTertiaryLight() throws {
        #expect(inheritedTheme.colors.contentOnBrandTertiaryLight != abstractTheme.colors.contentOnBrandTertiaryLight)
        #expect(inheritedTheme.colors.contentOnBrandTertiaryLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnBrandTertiaryDark() throws {
        #expect(inheritedTheme.colors.contentOnBrandTertiaryDark != abstractTheme.colors.contentOnBrandTertiaryDark)
        #expect(inheritedTheme.colors.contentOnBrandTertiaryDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
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

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusInfoMutedLight() throws {
        #expect(inheritedTheme.colors.contentOnStatusInfoMutedLight != abstractTheme.colors.contentOnStatusInfoMutedLight)
        #expect(inheritedTheme.colors.contentOnStatusInfoMutedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusInfoMutedDark() throws {
        #expect(inheritedTheme.colors.contentOnStatusInfoMutedDark != abstractTheme.colors.contentOnStatusInfoMutedDark)
        #expect(inheritedTheme.colors.contentOnStatusInfoMutedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusInfoEmphasizedLight() throws {
        #expect(inheritedTheme.colors.contentOnStatusInfoEmphasizedLight != abstractTheme.colors.contentOnStatusInfoEmphasizedLight)
        #expect(inheritedTheme.colors.contentOnStatusInfoEmphasizedLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusInfoEmphasizedDark() throws {
        #expect(inheritedTheme.colors.contentOnStatusInfoEmphasizedDark != abstractTheme.colors.contentOnStatusInfoEmphasizedDark)
        #expect(inheritedTheme.colors.contentOnStatusInfoEmphasizedDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusInfoLight() throws {
        #expect(inheritedTheme.colors.contentStatusInfoLight != abstractTheme.colors.contentStatusInfoLight)
        #expect(inheritedTheme.colors.contentStatusInfoLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusNegativeLight() throws {
        #expect(inheritedTheme.colors.contentStatusNegativeLight != abstractTheme.colors.contentStatusNegativeLight)
        #expect(inheritedTheme.colors.contentStatusNegativeLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusAccentLight() throws {
        #expect(inheritedTheme.colors.contentStatusAccentLight != abstractTheme.colors.contentStatusAccentLight)
        #expect(inheritedTheme.colors.contentStatusAccentLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
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

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusAccentDark() throws {
        #expect(inheritedTheme.colors.contentStatusAccentDark != abstractTheme.colors.contentStatusAccentDark)
        #expect(inheritedTheme.colors.contentStatusAccentDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusPositiveDark() throws {
        #expect(inheritedTheme.colors.contentStatusPositiveDark != abstractTheme.colors.contentStatusPositiveDark)
        #expect(inheritedTheme.colors.contentStatusPositiveDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusWarningDark() throws {
        #expect(inheritedTheme.colors.contentStatusWarningDark != abstractTheme.colors.contentStatusWarningDark)
        #expect(inheritedTheme.colors.contentStatusWarningDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusInversePositiveLight() throws {
        #expect(inheritedTheme.colors.contentStatusInversePositiveLight != abstractTheme.colors.contentStatusInversePositiveLight)
        #expect(inheritedTheme.colors.contentStatusInversePositiveLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusInversePositiveDark() throws {
        #expect(inheritedTheme.colors.contentStatusInversePositiveDark != abstractTheme.colors.contentStatusInversePositiveDark)
        #expect(inheritedTheme.colors.contentStatusInversePositiveDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusInverseInfoLight() throws {
        #expect(inheritedTheme.colors.contentStatusInverseInfoLight != abstractTheme.colors.contentStatusInverseInfoLight)
        #expect(inheritedTheme.colors.contentStatusInverseInfoLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusInverseInfoDark() throws {
        #expect(inheritedTheme.colors.contentStatusInverseInfoDark != abstractTheme.colors.contentStatusInverseInfoDark)
        #expect(inheritedTheme.colors.contentStatusInverseInfoDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusInverseWarningLight() throws {
        #expect(inheritedTheme.colors.contentStatusInverseWarningLight != abstractTheme.colors.contentStatusInverseWarningLight)
        #expect(inheritedTheme.colors.contentStatusInverseWarningLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusInverseWarningDark() throws {
        #expect(inheritedTheme.colors.contentStatusInverseWarningDark != abstractTheme.colors.contentStatusInverseWarningDark)
        #expect(inheritedTheme.colors.contentStatusInverseWarningDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusInverseNegativeLight() throws {
        #expect(inheritedTheme.colors.contentStatusInverseNegativeLight != abstractTheme.colors.contentStatusInverseNegativeLight)
        #expect(inheritedTheme.colors.contentStatusInverseNegativeLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusInverseNegativeDark() throws {
        #expect(inheritedTheme.colors.contentStatusInverseNegativeDark != abstractTheme.colors.contentStatusInverseNegativeDark)
        #expect(inheritedTheme.colors.contentStatusInverseNegativeDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOverlayDropdownLight() throws {
        #expect(inheritedTheme.colors.overlayDropdownLight != abstractTheme.colors.overlayDropdownLight)
        #expect(inheritedTheme.colors.overlayDropdownLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOverlayTooltipLight() throws {
        #expect(inheritedTheme.colors.overlayTooltipLight != abstractTheme.colors.overlayTooltipLight)
        #expect(inheritedTheme.colors.overlayTooltipLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOverlayDragLight() throws {
        #expect(inheritedTheme.colors.overlayDragLight != abstractTheme.colors.overlayDragLight)
        #expect(inheritedTheme.colors.overlayDragLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOverlayModalSheetLight() throws {
        #expect(inheritedTheme.colors.overlayModalSheetLight != abstractTheme.colors.overlayModalSheetLight)
        #expect(inheritedTheme.colors.overlayModalSheetLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOverlayBackdropLight() throws {
        #expect(inheritedTheme.colors.overlayBackdropLight != abstractTheme.colors.overlayBackdropLight)
        #expect(inheritedTheme.colors.overlayBackdropLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOverlayDropdownDark() throws {
        #expect(inheritedTheme.colors.overlayDropdownDark != abstractTheme.colors.overlayDropdownDark)
        #expect(inheritedTheme.colors.overlayDropdownDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOverlayTooltipDark() throws {
        #expect(inheritedTheme.colors.overlayTooltipDark != abstractTheme.colors.overlayTooltipDark)
        #expect(inheritedTheme.colors.overlayTooltipDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOverlayDragDark() throws {
        #expect(inheritedTheme.colors.overlayDragDark != abstractTheme.colors.overlayDragDark)
        #expect(inheritedTheme.colors.overlayDragDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOverlayModalSheetDark() throws {
        #expect(inheritedTheme.colors.overlayModalSheetDark != abstractTheme.colors.overlayModalSheetDark)
        #expect(inheritedTheme.colors.overlayModalSheetDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOverlayBackdropDark() throws {
        #expect(inheritedTheme.colors.overlayBackdropDark != abstractTheme.colors.overlayBackdropDark)
        #expect(inheritedTheme.colors.overlayBackdropDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
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

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceBrandSecondaryLight() throws {
        #expect(inheritedTheme.colors.surfaceBrandSecondaryLight != abstractTheme.colors.surfaceBrandSecondaryLight)
        #expect(inheritedTheme.colors.surfaceBrandSecondaryLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceBrandSecondaryDark() throws {
        #expect(inheritedTheme.colors.surfaceBrandSecondaryDark != abstractTheme.colors.surfaceBrandSecondaryDark)
        #expect(inheritedTheme.colors.surfaceBrandSecondaryDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceBrandTertiaryLight() throws {
        #expect(inheritedTheme.colors.surfaceBrandTertiaryLight != abstractTheme.colors.surfaceBrandTertiaryLight)
        #expect(inheritedTheme.colors.surfaceBrandTertiaryLight == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceBrandTertiaryDark() throws {
        #expect(inheritedTheme.colors.surfaceBrandTertiaryDark != abstractTheme.colors.surfaceBrandTertiaryDark)
        #expect(inheritedTheme.colors.surfaceBrandTertiaryDark == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
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

    // MARK: - Color semantic tokens - Multiples

    @Test func inheritedThemeCanOverrideSemanticTokenColorOpacityLowest() throws {
        #expect(inheritedTheme.colors.opacityLowest != abstractTheme.colors.opacityLowest)
        #expect(inheritedTheme.colors.opacityLowest == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOpacityLower() throws {
        #expect(inheritedTheme.colors.opacityLower != abstractTheme.colors.opacityLower)
        #expect(inheritedTheme.colors.opacityLower == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOpacityTransparent() throws {
        #expect(inheritedTheme.colors.opacityTransparent != abstractTheme.colors.opacityTransparent)
        #expect(inheritedTheme.colors.opacityTransparent == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionDisabled() throws {
        #expect(inheritedTheme.colors.actionDisabled != abstractTheme.colors.actionDisabled)
        #expect(inheritedTheme.colors.actionDisabled == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionEnabled() throws {
        #expect(inheritedTheme.colors.actionEnabled != abstractTheme.colors.actionEnabled)
        #expect(inheritedTheme.colors.actionEnabled == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionFocus() throws {
        #expect(inheritedTheme.colors.actionFocus != abstractTheme.colors.actionFocus)
        #expect(inheritedTheme.colors.actionFocus == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionHighlighted() throws {
        #expect(inheritedTheme.colors.actionHighlighted != abstractTheme.colors.actionHighlighted)
        #expect(inheritedTheme.colors.actionHighlighted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionHover() throws {
        #expect(inheritedTheme.colors.actionHover != abstractTheme.colors.actionHover)
        #expect(inheritedTheme.colors.actionHover == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionLoading() throws {
        #expect(inheritedTheme.colors.actionLoading != abstractTheme.colors.actionLoading)
        #expect(inheritedTheme.colors.actionLoading == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionNegativeEnabled() throws {
        #expect(inheritedTheme.colors.actionNegativeEnabled != abstractTheme.colors.actionNegativeEnabled)
        #expect(inheritedTheme.colors.actionNegativeEnabled == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionNegativeFocus() throws {
        #expect(inheritedTheme.colors.actionNegativeFocus != abstractTheme.colors.actionNegativeFocus)
        #expect(inheritedTheme.colors.actionNegativeFocus == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionNegativeHover() throws {
        #expect(inheritedTheme.colors.actionNegativeHover != abstractTheme.colors.actionNegativeHover)
        #expect(inheritedTheme.colors.actionNegativeHover == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionNegativeLoading() throws {
        #expect(inheritedTheme.colors.actionNegativeLoading != abstractTheme.colors.actionNegativeLoading)
        #expect(inheritedTheme.colors.actionNegativeLoading == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionNegativePressed() throws {
        #expect(inheritedTheme.colors.actionNegativePressed != abstractTheme.colors.actionNegativePressed)
        #expect(inheritedTheme.colors.actionNegativePressed == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionPressed() throws {
        #expect(inheritedTheme.colors.actionPressed != abstractTheme.colors.actionPressed)
        #expect(inheritedTheme.colors.actionPressed == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSelected() throws {
        #expect(inheritedTheme.colors.actionSelected != abstractTheme.colors.actionSelected)
        #expect(inheritedTheme.colors.actionSelected == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportEnabled() throws {
        #expect(inheritedTheme.colors.actionSupportEnabled != abstractTheme.colors.actionSupportEnabled)
        #expect(inheritedTheme.colors.actionSupportEnabled == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportDisabled() throws {
        #expect(inheritedTheme.colors.actionSupportDisabled != abstractTheme.colors.actionSupportDisabled)
        #expect(inheritedTheme.colors.actionSupportDisabled == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportFocus() throws {
        #expect(inheritedTheme.colors.actionSupportFocus != abstractTheme.colors.actionSupportFocus)
        #expect(inheritedTheme.colors.actionSupportFocus == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportHover() throws {
        #expect(inheritedTheme.colors.actionSupportHover != abstractTheme.colors.actionSupportHover)
        #expect(inheritedTheme.colors.actionSupportHover == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportLoading() throws {
        #expect(inheritedTheme.colors.actionSupportLoading != abstractTheme.colors.actionSupportLoading)
        #expect(inheritedTheme.colors.actionSupportLoading == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportPressed() throws {
        #expect(inheritedTheme.colors.actionSupportPressed != abstractTheme.colors.actionSupportPressed)
        #expect(inheritedTheme.colors.actionSupportPressed == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionVisited() throws {
        #expect(inheritedTheme.colors.actionVisited != abstractTheme.colors.actionVisited)
        #expect(inheritedTheme.colors.actionVisited == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionReadOnlyPrimary() throws {
        #expect(inheritedTheme.colors.actionReadOnlyPrimary != abstractTheme.colors.actionReadOnlyPrimary)
        #expect(inheritedTheme.colors.actionReadOnlyPrimary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionReadOnlySecondary() throws {
        #expect(inheritedTheme.colors.actionReadOnlySecondary != abstractTheme.colors.actionReadOnlySecondary)
        #expect(inheritedTheme.colors.actionReadOnlySecondary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorAlwaysBlack() throws {
        #expect(inheritedTheme.colors.alwaysBlack != abstractTheme.colors.alwaysBlack)
        #expect(inheritedTheme.colors.alwaysBlack == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorAlwaysWhite() throws {
        #expect(inheritedTheme.colors.alwaysWhite != abstractTheme.colors.alwaysWhite)
        #expect(inheritedTheme.colors.alwaysWhite == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorAlwaysOnBlack() throws {
        #expect(inheritedTheme.colors.alwaysOnBlack != abstractTheme.colors.alwaysOnBlack)
        #expect(inheritedTheme.colors.alwaysOnBlack == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorAlwaysOnWhite() throws {
        #expect(inheritedTheme.colors.alwaysOnWhite != abstractTheme.colors.alwaysOnWhite)
        #expect(inheritedTheme.colors.alwaysOnWhite == MockThemeColorSemanticTokensProvider.mockThemeSemanticColorToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBgPrimary() throws {
        #expect(inheritedTheme.colors.bgPrimary != abstractTheme.colors.bgPrimary)
        #expect(inheritedTheme.colors.bgPrimary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBgSecondary() throws {
        #expect(inheritedTheme.colors.bgSecondary != abstractTheme.colors.bgSecondary)
        #expect(inheritedTheme.colors.bgSecondary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBgTertiary() throws {
        #expect(inheritedTheme.colors.bgTertiary != abstractTheme.colors.bgTertiary)
        #expect(inheritedTheme.colors.bgTertiary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBgInverseLow() throws {
        #expect(inheritedTheme.colors.bgInverseLow != abstractTheme.colors.bgInverseLow)
        #expect(inheritedTheme.colors.bgInverseLow == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBgInverseHigh() throws {
        #expect(inheritedTheme.colors.bgInverseHigh != abstractTheme.colors.bgInverseHigh)
        #expect(inheritedTheme.colors.bgInverseHigh == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderBrandPrimary() throws {
        #expect(inheritedTheme.colors.borderBrandPrimary != abstractTheme.colors.borderBrandPrimary)
        #expect(inheritedTheme.colors.borderBrandPrimary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderBrandSecondary() throws {
        #expect(inheritedTheme.colors.borderBrandSecondary != abstractTheme.colors.borderBrandSecondary)
        #expect(inheritedTheme.colors.borderBrandSecondary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderBrandTertiary() throws {
        #expect(inheritedTheme.colors.borderBrandTertiary != abstractTheme.colors.borderBrandTertiary)
        #expect(inheritedTheme.colors.borderBrandTertiary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderDefault() throws {
        #expect(inheritedTheme.colors.borderDefault != abstractTheme.colors.borderDefault)
        #expect(inheritedTheme.colors.borderDefault == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderEmphasized() throws {
        #expect(inheritedTheme.colors.borderEmphasized != abstractTheme.colors.borderEmphasized)
        #expect(inheritedTheme.colors.borderEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderFocus() throws {
        #expect(inheritedTheme.colors.borderFocus != abstractTheme.colors.borderFocus)
        #expect(inheritedTheme.colors.borderFocus == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderFocusInset() throws {
        #expect(inheritedTheme.colors.borderFocusInset != abstractTheme.colors.borderFocusInset)
        #expect(inheritedTheme.colors.borderFocusInset == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderMuted() throws {
        #expect(inheritedTheme.colors.borderMuted != abstractTheme.colors.borderMuted)
        #expect(inheritedTheme.colors.borderMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderMinimal() throws {
        #expect(inheritedTheme.colors.borderMinimal != abstractTheme.colors.borderMinimal)
        #expect(inheritedTheme.colors.borderMinimal == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderOnBrandPrimary() throws {
        #expect(inheritedTheme.colors.borderOnBrandPrimary != abstractTheme.colors.borderOnBrandPrimary)
        #expect(inheritedTheme.colors.borderOnBrandPrimary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderOnBrandSecondary() throws {
        #expect(inheritedTheme.colors.borderOnBrandSecondary != abstractTheme.colors.borderOnBrandSecondary)
        #expect(inheritedTheme.colors.borderOnBrandSecondary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderOnBrandTertiary() throws {
        #expect(inheritedTheme.colors.borderOnBrandTertiary != abstractTheme.colors.borderOnBrandTertiary)
        #expect(inheritedTheme.colors.borderOnBrandTertiary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderStatusPositive() throws {
        #expect(inheritedTheme.colors.borderStatusPositive != abstractTheme.colors.borderStatusPositive)
        #expect(inheritedTheme.colors.borderStatusPositive == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderStatusInfo() throws {
        #expect(inheritedTheme.colors.borderStatusInfo != abstractTheme.colors.borderStatusInfo)
        #expect(inheritedTheme.colors.borderStatusInfo == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderStatusWarning() throws {
        #expect(inheritedTheme.colors.borderStatusWarning != abstractTheme.colors.borderStatusWarning)
        #expect(inheritedTheme.colors.borderStatusWarning == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderStatusNegative() throws {
        #expect(inheritedTheme.colors.borderStatusNegative != abstractTheme.colors.borderStatusNegative)
        #expect(inheritedTheme.colors.borderStatusNegative == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderStatusAccent() throws {
        #expect(inheritedTheme.colors.borderStatusAccent != abstractTheme.colors.borderStatusAccent)
        #expect(inheritedTheme.colors.borderStatusAccent == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentBrandPrimary() throws {
        #expect(inheritedTheme.colors.contentBrandPrimary != abstractTheme.colors.contentBrandPrimary)
        #expect(inheritedTheme.colors.contentBrandPrimary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentBrandSecondary() throws {
        #expect(inheritedTheme.colors.contentBrandSecondary != abstractTheme.colors.contentBrandSecondary)
        #expect(inheritedTheme.colors.contentBrandSecondary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentBrandTertiary() throws {
        #expect(inheritedTheme.colors.contentBrandTertiary != abstractTheme.colors.contentBrandTertiary)
        #expect(inheritedTheme.colors.contentBrandTertiary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentDefault() throws {
        #expect(inheritedTheme.colors.contentDefault != abstractTheme.colors.contentDefault)
        #expect(inheritedTheme.colors.contentDefault == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentDisabled() throws {
        #expect(inheritedTheme.colors.contentDisabled != abstractTheme.colors.contentDisabled)
        #expect(inheritedTheme.colors.contentDisabled == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentMuted() throws {
        #expect(inheritedTheme.colors.contentMuted != abstractTheme.colors.contentMuted)
        #expect(inheritedTheme.colors.contentMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionSelected() throws {
        #expect(inheritedTheme.colors.contentOnActionSelected != abstractTheme.colors.contentOnActionSelected)
        #expect(inheritedTheme.colors.contentOnActionSelected == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionDisabled() throws {
        #expect(inheritedTheme.colors.contentOnActionDisabled != abstractTheme.colors.contentOnActionDisabled)
        #expect(inheritedTheme.colors.contentOnActionDisabled == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionEnabled() throws {
        #expect(inheritedTheme.colors.contentOnActionEnabled != abstractTheme.colors.contentOnActionEnabled)
        #expect(inheritedTheme.colors.contentOnActionEnabled == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionFocus() throws {
        #expect(inheritedTheme.colors.contentOnActionFocus != abstractTheme.colors.contentOnActionFocus)
        #expect(inheritedTheme.colors.contentOnActionFocus == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionHighlighted() throws {
        #expect(inheritedTheme.colors.contentOnActionHighlighted != abstractTheme.colors.contentOnActionHighlighted)
        #expect(inheritedTheme.colors.contentOnActionHighlighted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionHover() throws {
        #expect(inheritedTheme.colors.contentOnActionHover != abstractTheme.colors.contentOnActionHover)
        #expect(inheritedTheme.colors.contentOnActionHover == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionLoading() throws {
        #expect(inheritedTheme.colors.contentOnActionLoading != abstractTheme.colors.contentOnActionLoading)
        #expect(inheritedTheme.colors.contentOnActionLoading == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionPressed() throws {
        #expect(inheritedTheme.colors.contentOnActionPressed != abstractTheme.colors.contentOnActionPressed)
        #expect(inheritedTheme.colors.contentOnActionPressed == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnBrandPrimary() throws {
        #expect(inheritedTheme.colors.contentOnBrandPrimary != abstractTheme.colors.contentOnBrandPrimary)
        #expect(inheritedTheme.colors.contentOnBrandPrimary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnBrandSecondary() throws {
        #expect(inheritedTheme.colors.contentOnBrandSecondary != abstractTheme.colors.contentOnBrandSecondary)
        #expect(inheritedTheme.colors.contentOnBrandSecondary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnBrandTertiary() throws {
        #expect(inheritedTheme.colors.contentOnBrandTertiary != abstractTheme.colors.contentOnBrandTertiary)
        #expect(inheritedTheme.colors.contentOnBrandTertiary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusPositiveMuted() throws {
        #expect(inheritedTheme.colors.contentOnStatusPositiveMuted != abstractTheme.colors.contentOnStatusPositiveMuted)
        #expect(inheritedTheme.colors.contentOnStatusPositiveMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusPositiveEmphasized() throws {
        #expect(inheritedTheme.colors.contentOnStatusPositiveEmphasized != abstractTheme.colors.contentOnStatusPositiveEmphasized)
        #expect(inheritedTheme.colors.contentOnStatusPositiveEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusWarningMuted() throws {
        #expect(inheritedTheme.colors.contentOnStatusWarningMuted != abstractTheme.colors.contentOnStatusWarningMuted)
        #expect(inheritedTheme.colors.contentOnStatusWarningMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusWarningEmphasized() throws {
        #expect(inheritedTheme.colors.contentOnStatusWarningEmphasized != abstractTheme.colors.contentOnStatusWarningEmphasized)
        #expect(inheritedTheme.colors.contentOnStatusWarningEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentInverse() throws {
        #expect(inheritedTheme.colors.contentInverse != abstractTheme.colors.contentInverse)
        #expect(inheritedTheme.colors.contentInverse == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusNegativeMuted() throws {
        #expect(inheritedTheme.colors.contentOnStatusNegativeMuted != abstractTheme.colors.contentOnStatusNegativeMuted)
        #expect(inheritedTheme.colors.contentOnStatusNegativeMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusNegativeEmphasized() throws {
        #expect(inheritedTheme.colors.contentOnStatusNegativeEmphasized != abstractTheme.colors.contentOnStatusNegativeEmphasized)
        #expect(inheritedTheme.colors.contentOnStatusNegativeEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusInfoMuted() throws {
        #expect(inheritedTheme.colors.contentOnStatusInfoMuted != abstractTheme.colors.contentOnStatusInfoMuted)
        #expect(inheritedTheme.colors.contentOnStatusInfoMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusInfoEmphasized() throws {
        #expect(inheritedTheme.colors.contentOnStatusInfoEmphasized != abstractTheme.colors.contentOnStatusInfoEmphasized)
        #expect(inheritedTheme.colors.contentOnStatusInfoEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusAccentMuted() throws {
        #expect(inheritedTheme.colors.contentOnStatusAccentMuted != abstractTheme.colors.contentOnStatusAccentMuted)
        #expect(inheritedTheme.colors.contentOnStatusAccentMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusAccentEmphasized() throws {
        #expect(inheritedTheme.colors.contentOnStatusAccentEmphasized != abstractTheme.colors.contentOnStatusAccentEmphasized)
        #expect(inheritedTheme.colors.contentOnStatusAccentEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusAccent() throws {
        #expect(inheritedTheme.colors.contentStatusAccent != abstractTheme.colors.contentStatusAccent)
        #expect(inheritedTheme.colors.contentStatusAccent == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusInfo() throws {
        #expect(inheritedTheme.colors.contentStatusInfo != abstractTheme.colors.contentStatusInfo)
        #expect(inheritedTheme.colors.contentStatusInfo == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusNegative() throws {
        #expect(inheritedTheme.colors.contentStatusNegative != abstractTheme.colors.contentStatusNegative)
        #expect(inheritedTheme.colors.contentStatusNegative == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusPositive() throws {
        #expect(inheritedTheme.colors.contentStatusPositive != abstractTheme.colors.contentStatusPositive)
        #expect(inheritedTheme.colors.contentStatusPositive == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusWarning() throws {
        #expect(inheritedTheme.colors.contentStatusWarning != abstractTheme.colors.contentStatusWarning)
        #expect(inheritedTheme.colors.contentStatusWarning == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOverlayDropdown() throws {
        #expect(inheritedTheme.colors.overlayDropdown != abstractTheme.colors.overlayDropdown)
        #expect(inheritedTheme.colors.overlayDropdown == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOverlayTooltip() throws {
        #expect(inheritedTheme.colors.overlayTooltip != abstractTheme.colors.overlayTooltip)
        #expect(inheritedTheme.colors.overlayTooltip == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOverlayDrag() throws {
        #expect(inheritedTheme.colors.overlayDrag != abstractTheme.colors.overlayDrag)
        #expect(inheritedTheme.colors.overlayDrag == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOverlayModalSheet() throws {
        #expect(inheritedTheme.colors.overlayModalSheet != abstractTheme.colors.overlayModalSheet)
        #expect(inheritedTheme.colors.overlayModalSheet == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOverlayBackdrop() throws {
        #expect(inheritedTheme.colors.overlayBackdrop != abstractTheme.colors.overlayBackdrop)
        #expect(inheritedTheme.colors.overlayBackdrop == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceBrandPrimary() throws {
        #expect(inheritedTheme.colors.surfaceBrandPrimary != abstractTheme.colors.surfaceBrandPrimary)
        #expect(inheritedTheme.colors.surfaceBrandPrimary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceBrandSecondary() throws {
        #expect(inheritedTheme.colors.surfaceBrandSecondary != abstractTheme.colors.surfaceBrandSecondary)
        #expect(inheritedTheme.colors.surfaceBrandSecondary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceBrandTertiary() throws {
        #expect(inheritedTheme.colors.surfaceBrandTertiary != abstractTheme.colors.surfaceBrandTertiary)
        #expect(inheritedTheme.colors.surfaceBrandTertiary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusAccentEmphasized() throws {
        #expect(inheritedTheme.colors.surfaceStatusAccentEmphasized != abstractTheme.colors.surfaceStatusAccentEmphasized)
        #expect(inheritedTheme.colors.surfaceStatusAccentEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusAccentMuted() throws {
        #expect(inheritedTheme.colors.surfaceStatusAccentMuted != abstractTheme.colors.surfaceStatusAccentMuted)
        #expect(inheritedTheme.colors.surfaceStatusAccentMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusInfoEmphasized() throws {
        #expect(inheritedTheme.colors.surfaceStatusInfoEmphasized != abstractTheme.colors.surfaceStatusInfoEmphasized)
        #expect(inheritedTheme.colors.surfaceStatusInfoEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusInfoMuted() throws {
        #expect(inheritedTheme.colors.surfaceStatusInfoMuted != abstractTheme.colors.surfaceStatusInfoMuted)
        #expect(inheritedTheme.colors.surfaceStatusInfoMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNegativeEmphasized() throws {
        #expect(inheritedTheme.colors.surfaceStatusNegativeEmphasized != abstractTheme.colors.surfaceStatusNegativeEmphasized)
        #expect(inheritedTheme.colors.surfaceStatusNegativeEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNegativeMuted() throws {
        #expect(inheritedTheme.colors.surfaceStatusNegativeMuted != abstractTheme.colors.surfaceStatusNegativeMuted)
        #expect(inheritedTheme.colors.surfaceStatusNegativeMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceInverseHigh() throws {
        #expect(inheritedTheme.colors.surfaceInverseHigh != abstractTheme.colors.surfaceInverseHigh)
        #expect(inheritedTheme.colors.surfaceInverseHigh == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceInverseLow() throws {
        #expect(inheritedTheme.colors.surfaceInverseLow != abstractTheme.colors.surfaceInverseLow)
        #expect(inheritedTheme.colors.surfaceInverseLow == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfacePrimary() throws {
        #expect(inheritedTheme.colors.surfacePrimary != abstractTheme.colors.surfacePrimary)
        #expect(inheritedTheme.colors.surfacePrimary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceSecondary() throws {
        #expect(inheritedTheme.colors.surfaceSecondary != abstractTheme.colors.surfaceSecondary)
        #expect(inheritedTheme.colors.surfaceSecondary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceTertiary() throws {
        #expect(inheritedTheme.colors.surfaceTertiary != abstractTheme.colors.surfaceTertiary)
        #expect(inheritedTheme.colors.surfaceTertiary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusPositiveEmphasized() throws {
        #expect(inheritedTheme.colors.surfaceStatusPositiveEmphasized != abstractTheme.colors.surfaceStatusPositiveEmphasized)
        #expect(inheritedTheme.colors.surfaceStatusPositiveEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusPositiveMuted() throws {
        #expect(inheritedTheme.colors.surfaceStatusPositiveMuted != abstractTheme.colors.surfaceStatusPositiveMuted)
        #expect(inheritedTheme.colors.surfaceStatusPositiveMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusWarningEmphasized() throws {
        #expect(inheritedTheme.colors.surfaceStatusWarningEmphasized != abstractTheme.colors.surfaceStatusWarningEmphasized)
        #expect(inheritedTheme.colors.surfaceStatusWarningEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusWarningMuted() throws {
        #expect(inheritedTheme.colors.surfaceStatusWarningMuted != abstractTheme.colors.surfaceStatusWarningMuted)
        #expect(inheritedTheme.colors.surfaceStatusWarningMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
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
