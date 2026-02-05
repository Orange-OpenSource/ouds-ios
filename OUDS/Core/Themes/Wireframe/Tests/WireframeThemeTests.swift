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

// swiftlint:disable force_cast

/// Check if the theme has the default configuration and tokens providers with the expected types.
struct WireframeThemeTests {

    private var theme: WireframeTheme

    init() {
        theme = WireframeTheme()
    }

    // MARK: - Tests - Theme tuning

    @Test func defaultTuningOfWireframeTheme() throws {
        let tuning = theme.tuning
        #expect(tuning == Tuning.default)
    }

    // MARK: - Tests - Semantic tokens providers

    @Test func defaultBorderSemanticTokensProvider() throws {
        #expect(theme.borders is WireframeThemeBorderSemanticTokensProvider)
    }

    @Test func defaultColorSemanticTokensProvider() throws {
        #expect(theme.colors is WireframeThemeColorSemanticTokensProvider)
    }

    @Test func defaultColorModeSemanticTokensProvider() throws {
        #expect(theme.colorModes is WireframeThemeColorModeSemanticTokensProvider)
        #expect((theme.colorModes as! WireframeThemeColorModeSemanticTokensProvider).colors is WireframeThemeColorSemanticTokensProvider)
    }

    @Test func defaultColorChartsSemanticTokensProvider() throws {
        #expect(theme.charts == nil)
    }

    @Test func defaultEffectSemanticTokensProvider() throws {
        #expect(theme.effects is WireframeThemeEffectSemanticTokensProvider)
    }

    @Test func defaultElevationSemanticTokensProvider() throws {
        #expect(theme.elevations is WireframeThemeElevationSemanticTokensProvider)
    }

    @Test func defaultFontSemanticTokensProvider() throws {
        #expect(theme.fonts is WireframeThemeFontSemanticTokensProvider)
    }

    @Test func defaultGridSemanticTokensProvider() throws {
        #expect(theme.grids is WireframeThemeGridSemanticTokensProvider)
    }

    @Test func defaultOpacitySemanticTokensProvider() throws {
        #expect(theme.opacities is WireframeThemeOpacitySemanticTokensProvider)
    }

    @Test func defaultDimensionSemanticTokensProvider() throws {
        #expect(theme.dimensions is WireframeThemeDimensionSemanticTokensProvider)
    }

    @Test func defaultSizeSemanticTokensProvider() throws {
        #expect(theme.sizes is WireframeThemeSizeSemanticTokensProvider)
    }

    @Test func defaultSpaceSemanticTokensProvider() throws {
        #expect(theme.spaces is WireframeThemeSpaceSemanticTokensProvider)
    }

    // MARK: - Tests - Component tokens providers

    @Test func defaultAlertComponentTokensProvider() throws {
        #expect(theme.alert is WireframeThemeAlertComponentTokensProvider)
    }

    @Test func defaultBadgeComponentTokensProvider() throws {
        #expect(theme.badge is WireframeThemeBadgeComponentTokensProvider)
    }

    @Test func defaultBarComponentTokensProvider() throws {
        #expect(theme.bar is WireframeThemeBarComponentTokensProvider)
    }

    @Test func defaultBulletListComponentTokensProvider() throws {
        #expect(theme.bulletList is WireframeThemeBulletListComponentTokensProvider)
    }

    @Test func defaultButtonComponentTokensProvider() throws {
        #expect(theme.button is WireframeThemeButtonComponentTokensProvider)
    }

    @Test func defaultCheckboxComponentTokensProvider() throws {
        #expect(theme.checkbox is WireframeThemeCheckboxComponentTokensProvider)
    }

    @Test func defaultChipComponentTokensProvider() throws {
        #expect(theme.chip is WireframeThemeChipComponentTokensProvider)
    }

    @Test func defaultDividerComponentTokensProvider() throws {
        #expect(theme.divider is WireframeThemeDividerComponentTokensProvider)
    }

    @Test func defaultControlItemComponentTokensProvider() throws {
        #expect(theme.controlItem is WireframeThemeControlItemComponentTokensProvider)
    }

    @Test func defaultIconComponentTokensProvider() throws {
        #expect(theme.icon is WireframeThemeIconComponentTokensProvider)
    }

    @Test func defaultLinkComponentTokensProvider() throws {
        #expect(theme.link is WireframeThemeLinkComponentTokensProvider)
    }

    @Test func defaultPinCodeInputComponentTokensProvider() throws {
        #expect(theme.pinCodeInput is WireframeThemePinCodeInputComponentTokensProvider)
    }

    @Test func defaultQuantityInputComponentTokensProvider() throws {
        #expect(theme.quantityInput is WireframeThemeQuantityInputComponentTokensProvider)
    }

    @Test func defaultRadioButtonComponentTokensProvider() throws {
        #expect(theme.radioButton is WireframeThemeRadioButtonComponentTokensProvider)
    }

    @Test func defaultSelectInputComponentTokensProvider() throws {
        #expect(theme.selectInput is WireframeThemeSelectInputComponentTokensProvider)
    }

    @Test func defaultSkeletonComponentTokensProvider() throws {
        #expect(theme.skeleton is WireframeThemeSkeletonComponentTokensProvider)
    }

    @Test func defaultSwitchComponentTokensProvider() throws {
        #expect(theme.switch is WireframeThemeSwitchComponentTokensProvider)
    }

    @Test func defaultTagComponentTokensProvider() throws {
        #expect(theme.tag is WireframeThemeTagComponentTokensProvider)
    }

    @Test func defaultInputTagComponentTokensProvider() throws {
        #expect(theme.inputTag is WireframeThemeInputTagComponentTokensProvider)
    }

    @Test func defaultTextAreaButtonComponentTokensProvider() throws {
        #expect(theme.textArea is WireframeThemeTextAreaComponentTokensProvider)
    }

    @Test func defaultTextInputComponentTokensProvider() throws {
        #expect(theme.textInput is WireframeThemeTextInputComponentTokensProvider)
    }
}

// swiftlint:enable force_cast
