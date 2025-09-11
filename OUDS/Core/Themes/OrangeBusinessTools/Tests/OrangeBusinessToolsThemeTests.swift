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

@testable import OUDSThemesOrangeBusinessTools
import Testing

// swiftlint:disable force_cast

/// Check if the theme has the default configuration and okens providers with the expected types.
struct OrangeBusinessToolsThemeTests {

    private var theme: OrangeBusinessToolsTheme

    init() {
        theme = OrangeBusinessToolsTheme()
    }

    // MARK: - Tests - Theme tuning

    @Test func defaultTuningOfOrangeBusinessToolsTheme() throws {
        let tuning = theme.tuning
        #expect(tuning.roundedCorners == false)
    }

    @Test func tuningOfOrangeBusinessToolsTheme() throws {
        let tunedTheme = OrangeBusinessToolsTheme(tuning: ThemeTuning(roundedCorners: true))
        #expect(tunedTheme.tuning.roundedCorners == true)
    }

    // MARK: - Tests - Semantic tokens providers

    @Test func defaultBorderSemanticTokensProvider() throws {
        #expect(theme.borders is OrangeBusinessToolsThemeBorderSemanticTokensProvider)
    }

    @Test func defaultColorSemanticTokensProvider() throws {
        #expect(theme.colors is OrangeBusinessToolsThemeColorSemanticTokensProvider)
    }

    @Test func defaultColorModeSemanticTokensProvider() throws {
        #expect(theme.colorModes is OrangeBusinessToolsThemeColorModeSemanticTokensProvider)
        #expect((theme.colorModes as! OrangeBusinessToolsThemeColorModeSemanticTokensProvider).colors is OrangeBusinessToolsThemeColorSemanticTokensProvider)
    }

    @Test func defaultColorChartsSemanticTokensProvider() throws {
        #expect(theme.colorCharts is OrangeBusinessToolsThemeColorChartSemanticTokensProvider)
    }

    @Test func defaultElevationSemanticTokensProvider() throws {
        #expect(theme.elevations is OrangeBusinessToolsThemeElevationSemanticTokensProvider)
    }

    @Test func defaultFontSemanticTokensProvider() throws {
        #expect(theme.fonts is OrangeBusinessToolsThemeFontSemanticTokensProvider)
    }

    @Test func defaultGridSemanticTokensProvider() throws {
        #expect(theme.grids is OrangeBusinessToolsThemeGridSemanticTokensProvider)
    }

    @Test func defaultOpacitySemanticTokensProvider() throws {
        #expect(theme.opacities is OrangeBusinessToolsThemeOpacitySemanticTokensProvider)
    }

    @Test func defaultDimensionSemanticTokensProvider() throws {
        #expect(theme.dimensions is OrangeBusinessToolsThemeDimensionSemanticTokensProvider)
    }

    @Test func defaultSizeSemanticTokensProvider() throws {
        #expect(theme.sizes is OrangeBusinessToolsThemeSizeSemanticTokensProvider)
    }

    @Test func defaultSpaceSemanticTokensProvider() throws {
        #expect(theme.spaces is OrangeBusinessToolsThemeSpaceSemanticTokensProvider)
    }

    // MARK: - Tests - Component tokens providers

    @Test func defaultBadgeComponentTokensProvider() throws {
        #expect(theme.badge is OrangeBusinessToolsThemeBadgeComponentTokensProvider)
    }

    @Test func defaultBulletListComponentTokensProvider() throws {
        #expect(theme.bulletList is OrangeBusinessToolsThemeBulletListComponentTokensProvider)
    }

    @Test func defaultButtonComponentTokensProvider() throws {
        #expect(theme.button is OrangeBusinessToolsThemeButtonComponentTokensProvider)
    }

    @Test func defaultCheckboxComponentTokensProvider() throws {
        #expect(theme.checkbox is OrangeBusinessToolsThemeCheckboxComponentTokensProvider)
    }

    @Test func defaultChipComponentTokensProvider() throws {
        #expect(theme.chip is OrangeBusinessToolsThemeChipComponentTokensProvider)
    }

    @Test func defaultDividerComponentTokensProvider() throws {
        #expect(theme.divider is OrangeBusinessToolsThemeDividerComponentTokensProvider)
    }

    @Test func defaultControlItemComponentTokensProvider() throws {
        #expect(theme.controlItem is OrangeBusinessToolsThemeControlItemComponentTokensProvider)
    }

    @Test func defaultLinkComponentTokensProvider() throws {
        #expect(theme.link is OrangeBusinessToolsThemeLinkComponentTokensProvider)
    }

    @Test func defaultPinCodeInputComponentTokensProvider() throws {
        #expect(theme.pinCodeInput is OrangeBusinessToolsThemePinCodeInputComponentTokensProvider)
    }

    @Test func defaultQuantityInputComponentTokensProvider() throws {
        #expect(theme.quantityInput is OrangeBusinessToolsThemeQuantityInputComponentTokensProvider)
    }

    @Test func defaultRadioButtonComponentTokensProvider() throws {
        #expect(theme.radioButton is OrangeBusinessToolsThemeRadioButtonComponentTokensProvider)
    }

    @Test func defaultSelectInputComponentTokensProvider() throws {
        #expect(theme.selectInput is OrangeBusinessToolsThemeSelectInputComponentTokensProvider)
    }

    @Test func defaultSkeletonComponentTokensProvider() throws {
        #expect(theme.skeleton is OrangeBusinessToolsThemeSkeletonComponentTokensProvider)
    }

    @Test func defaultSwitchComponentTokensProvider() throws {
        #expect(theme.switch is OrangeBusinessToolsThemeSwitchComponentTokensProvider)
    }

    @Test func defaultTagComponentTokensProvider() throws {
        #expect(theme.tag is OrangeBusinessToolsThemeTagComponentTokensProvider)
    }

    @Test func defaultTagInputComponentTokensProvider() throws {
        #expect(theme.tagInput is OrangeBusinessToolsThemeTagInputComponentTokensProvider)
    }

    @Test func defaultTextAreaButtonComponentTokensProvider() throws {
        #expect(theme.textArea is OrangeBusinessToolsThemeTextAreaComponentTokensProvider)
    }

    @Test func defaultTextInputComponentTokensProvider() throws {
        #expect(theme.textInput is OrangeBusinessToolsThemeTextInputComponentTokensProvider)
    }
}

// swiftlint:enable force_cast
