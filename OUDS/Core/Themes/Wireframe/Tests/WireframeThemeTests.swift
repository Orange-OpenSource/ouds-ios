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
@testable import OUDSThemesWireframe
import Testing

/// Check if the theme has the default configuration and tokens providers with the expected types.
struct WireframeThemeTests {

    private var theme: WireframeTheme

    init() {
        theme = WireframeTheme()
    }

    // MARK: - Tests - Misc.

    @Test func themeName() throws {
        #expect(theme.name == "Wireframe")
    }

    // MARK: - Tests - Theme tuning

    @Test func defaultTuningOfWireframeTheme() {
        let tuning = theme.tuning
        #expect(tuning.hasRoundedButtons == false)
        #expect(tuning.hasRoundedTextInputs == false)
        #expect(tuning.hasRoundedAlertMessages == true)
        #expect(tuning.hasRoundedListItems == false)
    }

    // MARK: - Tests - Semantic tokens providers

    @Test func defaultBorderSemanticTokensProvider() {
        #expect(theme.borders is WireframeThemeBorderSemanticTokensProvider)
    }

    @Test func defaultColorSemanticTokensProvider() {
        #expect(theme.colors is WireframeThemeColorSemanticTokensProvider)
    }

    @Test func defaultColorModeSemanticTokensProvider() throws {
        #expect(theme.colorModes is WireframeThemeColorModeSemanticTokensProvider)
        #expect(try #require((theme.colorModes as? WireframeThemeColorModeSemanticTokensProvider)?.colors) is WireframeThemeColorSemanticTokensProvider)
    }

    @Test func defaultColorChartsSemanticTokensProvider() {
        #expect(theme.colorsCharts == nil)
    }

    @Test func defaultColorDecorativeSemanticTokensProvider() {
        #expect(theme.colorsDecorative == nil)
    }

    @Test func defaultEffectSemanticTokensProvider() {
        #expect(theme.effects is WireframeThemeEffectSemanticTokensProvider)
    }

    @Test func defaultElevationSemanticTokensProvider() {
        #expect(theme.elevations is WireframeThemeElevationSemanticTokensProvider)
    }

    @Test func defaultFontSemanticTokensProvider() {
        #expect(theme.fonts is WireframeThemeFontSemanticTokensProvider)
    }

    @Test func defaultGridSemanticTokensProvider() {
        #expect(theme.grids is WireframeThemeGridSemanticTokensProvider)
    }

    @Test func defaultOpacitySemanticTokensProvider() {
        #expect(theme.opacities is WireframeThemeOpacitySemanticTokensProvider)
    }

    @Test func defaultDimensionSemanticTokensProvider() {
        #expect(theme.dimensions is WireframeThemeDimensionSemanticTokensProvider)
    }

    @Test func defaultSizeSemanticTokensProvider() {
        #expect(theme.sizes is WireframeThemeSizeSemanticTokensProvider)
    }

    @Test func defaultSpaceSemanticTokensProvider() {
        #expect(theme.spaces is WireframeThemeSpaceSemanticTokensProvider)
    }

    // MARK: - Tests - Component tokens providers

    @Test func defaultAlertComponentTokensProvider() {
        #expect(theme.alert is WireframeThemeAlertComponentTokensProvider)
    }

    @Test func defaultBadgeComponentTokensProvider() {
        #expect(theme.badge is WireframeThemeBadgeComponentTokensProvider)
    }

    @Test func defaultBarComponentTokensProvider() {
        #expect(theme.bar is WireframeThemeBarComponentTokensProvider)
    }

    @Test func defaultBulletListComponentTokensProvider() {
        #expect(theme.bulletList is WireframeThemeBulletListComponentTokensProvider)
    }

    @Test func defaultButtonComponentTokensProvider() {
        #expect(theme.button is WireframeThemeButtonComponentTokensProvider)
    }

    @Test func defaultCheckboxComponentTokensProvider() {
        #expect(theme.checkbox is WireframeThemeCheckboxComponentTokensProvider)
    }

    @Test func defaultChipComponentTokensProvider() {
        #expect(theme.chip is WireframeThemeChipComponentTokensProvider)
    }

    @Test func defaultDividerComponentTokensProvider() {
        #expect(theme.divider is WireframeThemeDividerComponentTokensProvider)
    }

    @Test func defaultControlItemComponentTokensProvider() {
        #expect(theme.controlItem is WireframeThemeControlItemComponentTokensProvider)
    }

    @Test func defaultIconComponentTokensProvider() {
        #expect(theme.icon is WireframeThemeIconComponentTokensProvider)
    }

    @Test func defaultLinkComponentTokensProvider() {
        #expect(theme.link is WireframeThemeLinkComponentTokensProvider)
    }

    @Test func defaultPinCodeInputComponentTokensProvider() {
        #expect(theme.pinCodeInput is WireframeThemePinCodeInputComponentTokensProvider)
    }

    @Test func defaultQuantityInputComponentTokensProvider() {
        #expect(theme.quantityInput is WireframeThemeQuantityInputComponentTokensProvider)
    }

    @Test func defaultRadioButtonComponentTokensProvider() {
        #expect(theme.radioButton is WireframeThemeRadioButtonComponentTokensProvider)
    }

    @Test func defaultSelectInputComponentTokensProvider() {
        #expect(theme.selectInput is WireframeThemeSelectInputComponentTokensProvider)
    }

    @Test func defaultSkeletonComponentTokensProvider() {
        #expect(theme.skeleton is WireframeThemeSkeletonComponentTokensProvider)
    }

    @Test func defaultSwitchComponentTokensProvider() {
        #expect(theme.switch is WireframeThemeSwitchComponentTokensProvider)
    }

    @Test func defaultTagComponentTokensProvider() {
        #expect(theme.tag is WireframeThemeTagComponentTokensProvider)
    }

    @Test func defaultInputTagComponentTokensProvider() {
        #expect(theme.inputTag is WireframeThemeInputTagComponentTokensProvider)
    }

    @Test func defaultTextAreaButtonComponentTokensProvider() {
        #expect(theme.textArea is WireframeThemeTextAreaComponentTokensProvider)
    }

    @Test func defaultTextInputComponentTokensProvider() {
        #expect(theme.textInput is WireframeThemeTextInputComponentTokensProvider)
    }
}
