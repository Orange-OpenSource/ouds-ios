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

    // MARK: - Tests - Theme tuning

    @Test func defaultTuningOfSoshTheme() throws {
        let tuning = theme.tuning
        #expect(tuning == Tuning.default)
    }

    // MARK: - Tests - Semantic tokens providers

    @Test func defaultBorderSemanticTokensProvider() throws {
        #expect(theme.borders is SoshThemeBorderSemanticTokensProvider)
    }

    @Test func defaultColorSemanticTokensProvider() throws {
        #expect(theme.colors is SoshThemeColorSemanticTokensProvider)
    }

    @Test func defaultColorModeSemanticTokensProvider() throws {
        #expect(theme.colorModes is SoshThemeColorModeSemanticTokensProvider)
        #expect((theme.colorModes as! SoshThemeColorModeSemanticTokensProvider).colors is SoshThemeColorSemanticTokensProvider)
    }

    @Test func defaultColorChartsSemanticTokensProvider() throws {
        #expect(theme.charts == nil)
    }

    @Test func defaultElevationSemanticTokensProvider() throws {
        #expect(theme.elevations is SoshThemeElevationSemanticTokensProvider)
    }

    @Test func defaultFontSemanticTokensProvider() throws {
        #expect(theme.fonts is SoshThemeFontSemanticTokensProvider)
    }

    @Test func defaultGridSemanticTokensProvider() throws {
        #expect(theme.grids is SoshThemeGridSemanticTokensProvider)
    }

    @Test func defaultOpacitySemanticTokensProvider() throws {
        #expect(theme.opacities is SoshThemeOpacitySemanticTokensProvider)
    }

    @Test func defaultDimensionSemanticTokensProvider() throws {
        #expect(theme.dimensions is SoshThemeDimensionSemanticTokensProvider)
    }

    @Test func defaultSizeSemanticTokensProvider() throws {
        #expect(theme.sizes is SoshThemeSizeSemanticTokensProvider)
    }

    @Test func defaultSpaceSemanticTokensProvider() throws {
        #expect(theme.spaces is SoshThemeSpaceSemanticTokensProvider)
    }

    // MARK: - Tests - Component tokens providers

    @Test func defaultBadgeComponentTokensProvider() throws {
        #expect(theme.badge is SoshThemeBadgeComponentTokensProvider)
    }

    @Test func defaultBulletListComponentTokensProvider() throws {
        #expect(theme.bulletList is SoshThemeBulletListComponentTokensProvider)
    }

    @Test func defaultButtonComponentTokensProvider() throws {
        #expect(theme.button is SoshThemeButtonComponentTokensProvider)
    }

    @Test func defaultCheckboxComponentTokensProvider() throws {
        #expect(theme.checkbox is SoshThemeCheckboxComponentTokensProvider)
    }

    @Test func defaultChipComponentTokensProvider() throws {
        #expect(theme.chip is SoshThemeChipComponentTokensProvider)
    }

    @Test func defaultDividerComponentTokensProvider() throws {
        #expect(theme.divider is SoshThemeDividerComponentTokensProvider)
    }

    @Test func defaultControlItemComponentTokensProvider() throws {
        #expect(theme.controlItem is SoshThemeControlItemComponentTokensProvider)
    }

    @Test func defaultIconComponentTokensProvider() throws {
        #expect(theme.icon is SoshThemeIconComponentTokensProvider)
    }

    @Test func defaultLinkComponentTokensProvider() throws {
        #expect(theme.link is SoshThemeLinkComponentTokensProvider)
    }

    @Test func defaultPinCodeInputComponentTokensProvider() throws {
        #expect(theme.pinCodeInput is SoshThemePinCodeInputComponentTokensProvider)
    }

    @Test func defaultQuantityInputComponentTokensProvider() throws {
        #expect(theme.quantityInput is SoshThemeQuantityInputComponentTokensProvider)
    }

    @Test func defaultRadioButtonComponentTokensProvider() throws {
        #expect(theme.radioButton is SoshThemeRadioButtonComponentTokensProvider)
    }

    @Test func defaultSelectInputComponentTokensProvider() throws {
        #expect(theme.selectInput is SoshThemeSelectInputComponentTokensProvider)
    }

    @Test func defaultSkeletonComponentTokensProvider() throws {
        #expect(theme.skeleton is SoshThemeSkeletonComponentTokensProvider)
    }

    @Test func defaultSwitchComponentTokensProvider() throws {
        #expect(theme.switch is SoshThemeSwitchComponentTokensProvider)
    }

    @Test func defaultTagComponentTokensProvider() throws {
        #expect(theme.tag is SoshThemeTagComponentTokensProvider)
    }

    @Test func defaultInputTagComponentTokensProvider() throws {
        #expect(theme.inputTag is SoshThemeInputTagComponentTokensProvider)
    }

    @Test func defaultTextAreaButtonComponentTokensProvider() throws {
        #expect(theme.textArea is SoshThemeTextAreaComponentTokensProvider)
    }

    @Test func defaultTextInputComponentTokensProvider() throws {
        #expect(theme.textInput is SoshThemeTextInputComponentTokensProvider)
    }
}

// swiftlint:enable force_cast
