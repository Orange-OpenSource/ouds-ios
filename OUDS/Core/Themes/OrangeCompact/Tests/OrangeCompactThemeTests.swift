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

@testable import OUDSThemesContract
@testable import OUDSThemesOrangeCompact
import Testing

// swiftlint:disable force_cast

/// Check if the theme has the default configuration and okens providers with the expected types.
struct OrangeCompactThemeTests {

    private var theme: OrangeCompactTheme

    init() {
        theme = OrangeCompactTheme()
    }

    // MARK: - Tests - Theme tuning

    @Test func defaultTuningOfOrangeCompactTheme() throws {
        let tuning = theme.tuning
        #expect(tuning == Tuning.default)
    }

    // MARK: - Tests - Semantic tokens providers

    @Test func defaultBorderSemanticTokensProvider() throws {
        #expect(theme.borders is OrangeCompactThemeBorderSemanticTokensProvider)
    }

    @Test func defaultColorSemanticTokensProvider() throws {
        #expect(theme.colors is OrangeCompactThemeColorSemanticTokensProvider)
    }

    @Test func defaultColorModeSemanticTokensProvider() throws {
        #expect(theme.colorModes is OrangeCompactThemeColorModeSemanticTokensProvider)
        #expect((theme.colorModes as! OrangeCompactThemeColorModeSemanticTokensProvider).colors is OrangeCompactThemeColorSemanticTokensProvider)
    }

    @Test func defaultColorChartsSemanticTokensProvider() throws {
        #expect(theme.charts is OrangeCompactThemeColorChartSemanticTokensProvider)
    }

    @Test func defaultEffectSemanticTokensProvider() throws {
        #expect(theme.effects is OrangeCompactThemeEffectSemanticTokensProvider)
    }

    @Test func defaultElevationSemanticTokensProvider() throws {
        #expect(theme.elevations is OrangeCompactThemeElevationSemanticTokensProvider)
    }

    @Test func defaultFontSemanticTokensProvider() throws {
        #expect(theme.fonts is OrangeCompactThemeFontSemanticTokensProvider)
    }

    @Test func defaultGridSemanticTokensProvider() throws {
        #expect(theme.grids is OrangeCompactThemeGridSemanticTokensProvider)
    }

    @Test func defaultOpacitySemanticTokensProvider() throws {
        #expect(theme.opacities is OrangeCompactThemeOpacitySemanticTokensProvider)
    }

    @Test func defaultDimensionSemanticTokensProvider() throws {
        #expect(theme.dimensions is OrangeCompactThemeDimensionSemanticTokensProvider)
    }

    @Test func defaultSizeSemanticTokensProvider() throws {
        #expect(theme.sizes is OrangeCompactThemeSizeSemanticTokensProvider)
    }

    @Test func defaultSpaceSemanticTokensProvider() throws {
        #expect(theme.spaces is OrangeCompactThemeSpaceSemanticTokensProvider)
    }

    // MARK: - Tests - Component tokens providers

    @Test func defaultAlertComponentTokensProvider() throws {
        #expect(theme.alert is OrangeCompactThemeAlertComponentTokensProvider)
    }

    @Test func defaultBadgeComponentTokensProvider() throws {
        #expect(theme.badge is OrangeCompactThemeBadgeComponentTokensProvider)
    }

    @Test func defaultBarComponentTokensProvider() throws {
        #expect(theme.bar is OrangeCompactThemeBarComponentTokensProvider)
    }

    @Test func defaultBulletListComponentTokensProvider() throws {
        #expect(theme.bulletList is OrangeCompactThemeBulletListComponentTokensProvider)
    }

    @Test func defaultButtonComponentTokensProvider() throws {
        #expect(theme.button is OrangeCompactThemeButtonComponentTokensProvider)
    }

    @Test func defaultCheckboxComponentTokensProvider() throws {
        #expect(theme.checkbox is OrangeCompactThemeCheckboxComponentTokensProvider)
    }

    @Test func defaultChipComponentTokensProvider() throws {
        #expect(theme.chip is OrangeCompactThemeChipComponentTokensProvider)
    }

    @Test func defaultDividerComponentTokensProvider() throws {
        #expect(theme.divider is OrangeCompactThemeDividerComponentTokensProvider)
    }

    @Test func defaultControlItemComponentTokensProvider() throws {
        #expect(theme.controlItem is OrangeCompactThemeControlItemComponentTokensProvider)
    }

    @Test func defaultIconComponentTokensProvider() throws {
        #expect(theme.icon is OrangeCompactThemeIconComponentTokensProvider)
    }

    @Test func defaultLinkComponentTokensProvider() throws {
        #expect(theme.link is OrangeCompactThemeLinkComponentTokensProvider)
    }

    @Test func defaultPinCodeInputComponentTokensProvider() throws {
        #expect(theme.pinCodeInput is OrangeCompactThemePinCodeInputComponentTokensProvider)
    }

    @Test func defaultQuantityInputComponentTokensProvider() throws {
        #expect(theme.quantityInput is OrangeCompactThemeQuantityInputComponentTokensProvider)
    }

    @Test func defaultRadioButtonComponentTokensProvider() throws {
        #expect(theme.radioButton is OrangeCompactThemeRadioButtonComponentTokensProvider)
    }

    @Test func defaultSelectInputComponentTokensProvider() throws {
        #expect(theme.selectInput is OrangeCompactThemeSelectInputComponentTokensProvider)
    }

    @Test func defaultSkeletonComponentTokensProvider() throws {
        #expect(theme.skeleton is OrangeCompactThemeSkeletonComponentTokensProvider)
    }

    @Test func defaultSwitchComponentTokensProvider() throws {
        #expect(theme.switch is OrangeCompactThemeSwitchComponentTokensProvider)
    }

    @Test func defaultTagComponentTokensProvider() throws {
        #expect(theme.tag is OrangeCompactThemeTagComponentTokensProvider)
    }

    @Test func defaultInputTagComponentTokensProvider() throws {
        #expect(theme.inputTag is OrangeCompactThemeInputTagComponentTokensProvider)
    }

    @Test func defaultTextAreaButtonComponentTokensProvider() throws {
        #expect(theme.textArea is OrangeCompactThemeTextAreaComponentTokensProvider)
    }

    @Test func defaultTextInputComponentTokensProvider() throws {
        #expect(theme.textInput is OrangeCompactThemeTextInputComponentTokensProvider)
    }
}

// swiftlint:enable force_cast
