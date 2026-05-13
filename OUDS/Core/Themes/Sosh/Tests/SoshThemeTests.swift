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
@testable import OUDSThemesSosh
import Testing

// swiftlint:disable force_cast

/// Check if the theme has the default configuration and tokens providers with the expected types.
struct SoshThemeTests {

    private var theme: SoshTheme

    init() {
        theme = SoshTheme()
    }

    // MARK: - Tests - Misc.

    @Test func themeName() throws {
        #expect(theme.name == "Sosh")
    }

    // MARK: - Tests - Theme tuning

    @Test func defaultTuningOfSoshTheme() {
        let tuning = theme.tuning
        #expect(tuning.hasRoundedButtons == false)
        #expect(tuning.hasRoundedTextInputs == false)
        #expect(tuning.hasRoundedAlertMessages == true)
        #expect(tuning.hasRoundedListItems == false)
    }

    // MARK: - Tests - Semantic tokens providers

    @Test func defaultBorderSemanticTokensProvider() {
        #expect(theme.borders is SoshThemeBorderSemanticTokensProvider)
    }

    @Test func defaultColorSemanticTokensProvider() {
        #expect(theme.colors is SoshThemeColorSemanticTokensProvider)
    }

    @Test func defaultColorModeSemanticTokensProvider() throws {
        #expect(theme.colorModes is SoshThemeColorModeSemanticTokensProvider)
        #expect(try #require((theme.colorModes as? SoshThemeColorModeSemanticTokensProvider)?.colors) is SoshThemeColorSemanticTokensProvider)
    }

    @Test func defaultColorChartsSemanticTokensProvider() {
        #expect(theme.colorsCharts == nil)
    }

    @Test func defaultColorDecorativeSemanticTokensProvider() {
        #expect(theme.colorsDecorative == nil)
    }

    @Test func defaultEffectSemanticTokensProvider() {
        #expect(theme.effects is SoshThemeEffectSemanticTokensProvider)
    }

    @Test func defaultElevationSemanticTokensProvider() {
        #expect(theme.elevations is SoshThemeElevationSemanticTokensProvider)
    }

    @Test func defaultFontSemanticTokensProvider() {
        #expect(theme.fonts is SoshThemeFontSemanticTokensProvider)
    }

    @Test func defaultGridSemanticTokensProvider() {
        #expect(theme.grids is SoshThemeGridSemanticTokensProvider)
    }

    @Test func defaultOpacitySemanticTokensProvider() {
        #expect(theme.opacities is SoshThemeOpacitySemanticTokensProvider)
    }

    @Test func defaultDimensionSemanticTokensProvider() {
        #expect(theme.dimensions is SoshThemeDimensionSemanticTokensProvider)
    }

    @Test func defaultSizeSemanticTokensProvider() {
        #expect(theme.sizes is SoshThemeSizeSemanticTokensProvider)
    }

    @Test func defaultSpaceSemanticTokensProvider() {
        #expect(theme.spaces is SoshThemeSpaceSemanticTokensProvider)
    }

    // MARK: - Tests - Component tokens providers

    @Test func defaultAlertComponentTokensProvider() {
        #expect(theme.alert is SoshThemeAlertComponentTokensProvider)
    }

    @Test func defaultBadgeComponentTokensProvider() {
        #expect(theme.badge is SoshThemeBadgeComponentTokensProvider)
    }

    @Test func defaultBarComponentTokensProvider() {
        #expect(theme.bar is SoshThemeBarComponentTokensProvider)
    }

    @Test func defaultBulletListComponentTokensProvider() {
        #expect(theme.bulletList is SoshThemeBulletListComponentTokensProvider)
    }

    @Test func defaultButtonComponentTokensProvider() {
        #expect(theme.button is SoshThemeButtonComponentTokensProvider)
    }

    @Test func defaultCheckboxComponentTokensProvider() {
        #expect(theme.checkbox is SoshThemeCheckboxComponentTokensProvider)
    }

    @Test func defaultChipComponentTokensProvider() {
        #expect(theme.chip is SoshThemeChipComponentTokensProvider)
    }

    @Test func defaultDividerComponentTokensProvider() {
        #expect(theme.divider is SoshThemeDividerComponentTokensProvider)
    }

    @Test func defaultControlItemComponentTokensProvider() {
        #expect(theme.controlItem is SoshThemeControlItemComponentTokensProvider)
    }

    @Test func defaultIconComponentTokensProvider() {
        #expect(theme.icon is SoshThemeIconComponentTokensProvider)
    }

    @Test func defaultLinkComponentTokensProvider() {
        #expect(theme.link is SoshThemeLinkComponentTokensProvider)
    }

    @Test func defaultPinCodeInputComponentTokensProvider() {
        #expect(theme.pinCodeInput is SoshThemePinCodeInputComponentTokensProvider)
    }

    @Test func defaultQuantityInputComponentTokensProvider() {
        #expect(theme.quantityInput is SoshThemeQuantityInputComponentTokensProvider)
    }

    @Test func defaultRadioButtonComponentTokensProvider() {
        #expect(theme.radioButton is SoshThemeRadioButtonComponentTokensProvider)
    }

    @Test func defaultSelectInputComponentTokensProvider() {
        #expect(theme.selectInput is SoshThemeSelectInputComponentTokensProvider)
    }

    @Test func defaultSkeletonComponentTokensProvider() {
        #expect(theme.skeleton is SoshThemeSkeletonComponentTokensProvider)
    }

    @Test func defaultSwitchComponentTokensProvider() {
        #expect(theme.switch is SoshThemeSwitchComponentTokensProvider)
    }

    @Test func defaultTagComponentTokensProvider() {
        #expect(theme.tag is SoshThemeTagComponentTokensProvider)
    }

    @Test func defaultInputTagComponentTokensProvider() {
        #expect(theme.inputTag is SoshThemeInputTagComponentTokensProvider)
    }

    @Test func defaultTextAreaButtonComponentTokensProvider() {
        #expect(theme.textArea is SoshThemeTextAreaComponentTokensProvider)
    }

    @Test func defaultTextInputComponentTokensProvider() {
        #expect(theme.textInput is SoshThemeTextInputComponentTokensProvider)
    }
}

// swiftlint:enable force_cast
