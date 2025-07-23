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

@testable import OUDSThemesOrangeInverse
import Testing

// swiftlint:disable force_cast

/// Check if the themes ahs the default tokens providers with the expected types.
struct OrangeInverseThemeTests {

    private var theme: OrangeInverseTheme

    init() {
        theme = OrangeInverseTheme()
    }

    // MARK: - Tests - Semantic tokens providers

    @Test func defaultBorderSemanticTokensProvider() throws {
        #expect(theme.borders is OrangeInverseThemeBorderSemanticTokensProvider)
    }

    @Test func defaultColorSemanticTokensProvider() throws {
        #expect(theme.colors is OrangeInverseThemeColorSemanticTokensProvider)
    }

    @Test func defaultColorModeSemanticTokensProvider() throws {
        #expect(theme.colorModes is OrangeInverseThemeColorModeSemanticTokensProvider)
        #expect((theme.colorModes as! OrangeInverseThemeColorModeSemanticTokensProvider).colors is OrangeInverseThemeColorSemanticTokensProvider)
    }

    @Test func defaultColorChartsSemanticTokensProvider() throws {
        #expect(theme.colorCharts is OrangeInverseThemeColorChartSemanticTokensProvider)
    }

    @Test func defaultElevationSemanticTokensProvider() throws {
        #expect(theme.elevations is OrangeInverseThemeElevationSemanticTokensProvider)
    }

    @Test func defaultFontSemanticTokensProvider() throws {
        #expect(theme.fonts is OrangeInverseThemeFontSemanticTokensProvider)
    }

    @Test func defaultGridSemanticTokensProvider() throws {
        #expect(theme.grids is OrangeInverseThemeGridSemanticTokensProvider)
    }

    @Test func defaultOpacitySemanticTokensProvider() throws {
        #expect(theme.opacities is OrangeInverseThemeOpacitySemanticTokensProvider)
    }

    @Test func defaultDimensionSemanticTokensProvider() throws {
        #expect(theme.dimensions is OrangeInverseThemeDimensionSemanticTokensProvider)
    }

    @Test func defaultSizeSemanticTokensProvider() throws {
        #expect(theme.sizes is OrangeInverseThemeSizeSemanticTokensProvider)
    }

    @Test func defaultSpaceSemanticTokensProvider() throws {
        #expect(theme.spaces is OrangeInverseThemeSpaceSemanticTokensProvider)
    }

    // MARK: - Tests - Component tokens providers

    @Test func defaultBadgeComponentTokensProvider() throws {
        #expect(theme.badge is OrangeInverseThemeBadgeComponentTokensProvider)
    }

    @Test func defaultBulletListComponentTokensProvider() throws {
        #expect(theme.bulletList is OrangeInverseThemeBulletListComponentTokensProvider)
    }

    @Test func defaultButtonComponentTokensProvider() throws {
        #expect(theme.button is OrangeInverseThemeButtonComponentTokensProvider)
    }

    @Test func defaultCheckboxComponentTokensProvider() throws {
        #expect(theme.checkbox is OrangeInverseThemeCheckboxComponentTokensProvider)
    }

    @Test func defaultChipComponentTokensProvider() throws {
        #expect(theme.chip is OrangeInverseThemeChipComponentTokensProvider)
    }

    @Test func defaultDividerComponentTokensProvider() throws {
        #expect(theme.divider is OrangeInverseThemeDividerComponentTokensProvider)
    }

    @Test func defaultControlItemComponentTokensProvider() throws {
        #expect(theme.controlItem is OrangeInverseThemeControlItemComponentTokensProvider)
    }

    @Test func defaultLinkComponentTokensProvider() throws {
        #expect(theme.link is OrangeInverseThemeLinkComponentTokensProvider)
    }

    @Test func defaultListItemComponentTokensProvider() throws {
        #expect(theme.listItem is OrangeInverseThemeListItemComponentTokensProvider)
    }

    @Test func defaultPinCodeInputComponentTokensProvider() throws {
        #expect(theme.pinCodeInput is OrangeInverseThemePinCodeInputComponentTokensProvider)
    }

    @Test func defaultQuantityInputComponentTokensProvider() throws {
        #expect(theme.quantityInput is OrangeInverseThemeQuantityInputComponentTokensProvider)
    }

    @Test func defaultRadioButtonComponentTokensProvider() throws {
        #expect(theme.radioButton is OrangeInverseThemeRadioButtonComponentTokensProvider)
    }

    @Test func defaultSelectInputComponentTokensProvider() throws {
        #expect(theme.selectInput is OrangeInverseThemeSelectInputComponentTokensProvider)
    }

    @Test func defaultSkeletonComponentTokensProvider() throws {
        #expect(theme.skeleton is OrangeInverseThemeSkeletonComponentTokensProvider)
    }

    @Test func defaultSwitchComponentTokensProvider() throws {
        #expect(theme.switch is OrangeInverseThemeSwitchComponentTokensProvider)
    }

    @Test func defaultTagComponentTokensProvider() throws {
        #expect(theme.tag is OrangeInverseThemeTagComponentTokensProvider)
    }

    @Test func defaultTagInputComponentTokensProvider() throws {
        #expect(theme.tagInput is OrangeInverseThemeTagInputComponentTokensProvider)
    }

    @Test func defaultTextAreaButtonComponentTokensProvider() throws {
        #expect(theme.textArea is OrangeInverseThemeTextAreaComponentTokensProvider)
    }

    @Test func defaultTextInputComponentTokensProvider() throws {
        #expect(theme.textInput is OrangeInverseThemeTextInputComponentTokensProvider)
    }
}

// swiftlint:enable force_cast
