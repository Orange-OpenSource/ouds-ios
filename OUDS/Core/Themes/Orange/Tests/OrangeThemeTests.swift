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

import OUDSChartsOrange
import OUDSThemesOrange
import Testing

// swiftlint:disable force_cast

/// Check if the themes ahs the default tokens providers with the expected types.
struct OrangeThemeTests {

    private var theme: OrangeTheme

    init() {
        theme = OrangeTheme()
    }

    // MARK: - Tests - Semantic tokens providers

    @Test func defaultColorSemanticTokensProvider() throws {
        #expect(theme.colors is OrangeThemeColorSemanticTokensProvider)
    }

    @Test func defaultColorModeSemanticTokensProvider() throws {
        #expect(theme.colorModes is OrangeThemeColorModeSemanticTokensProvider)
        #expect((theme.colorModes as! OrangeThemeColorModeSemanticTokensProvider).colors is OrangeThemeColorSemanticTokensProvider)
    }

    @Test func defaultColorChartsSemanticTokensProvider() throws {
        #expect(theme.colorCharts is OrangeChartColorChartSemanticTokensProvider)
    }

    @Test func defaultBorderSemanticTokensProvider() throws {
        #expect(theme.borders is OrangeThemeBorderSemanticTokensProvider)
    }

    @Test func defaultElevationSemanticTokensProvider() throws {
        #expect(theme.elevations is OrangeThemeElevationSemanticTokensProvider)
    }

    @Test func defaultFontSemanticTokensProvider() throws {
        #expect(theme.fonts is OrangeThemeFontSemanticTokensProvider)
    }

    @Test func defaultGridSemanticTokensProvider() throws {
        #expect(theme.grids is OrangeThemeGridSemanticTokensProvider)
    }

    @Test func defaultOpacitySemanticTokensProvider() throws {
        #expect(theme.opacities is OrangeThemeOpacitySemanticTokensProvider)
    }

    @Test func defaultSizeSemanticTokensProvider() throws {
        #expect(theme.sizes is OrangeThemeSizeSemanticTokensProvider)
    }

    @Test func defaultSpaceSemanticTokensProvider() throws {
        #expect(theme.spaces is OrangeThemeSpaceSemanticTokensProvider)
    }

    // MARK: - Tests - Component tokens providers

    @Test func defaultButtonComponentTokensProvider() throws {
        #expect(theme.button is OrangeThemeButtonComponentTokensProvider)
    }

    @Test func defaultLinkComponentTokensProvider() throws {
        #expect(theme.link is OrangeThemeLinkComponentTokensProvider)
    }

    @Test func defaultSelectComponentTokensProvider() throws {
        #expect(theme.select is OrangeThemeSelectComponentTokensProvider)
    }

    @Test func defaultSkeletonComponentTokensProvider() throws {
        #expect(theme.skeleton is OrangeThemeSkeletonComponentTokensProvider)
    }

    @Test func defaultTagComponentTokensProvider() throws {
        #expect(theme.tag is OrangeThemeTagComponentTokensProvider)
    }

    @Test func defaultSwitchComponentTokensProvider() throws {
        #expect(theme.switch is OrangeThemeSwitchComponentTokensProvider)
    }

    @Test func defaultListItemComponentTokensProvider() throws {
        #expect(theme.listItem is OrangeThemeListItemComponentTokensProvider)
    }

    @Test func defaultChipComponentTokensProvider() throws {
        #expect(theme.chip is OrangeThemeChipComponentTokensProvider)
    }

    @Test func defaultBulletListComponentTokensProvider() throws {
        #expect(theme.bulletList is OrangeThemeBulletListComponentTokensProvider)
    }

    @Test func defaultInputTextComponentTokensProvider() throws {
        #expect(theme.inputText is OrangeThemeInputTextComponentTokensProvider)
    }

    @Test func defaultBadgeComponentTokensProvider() throws {
        #expect(theme.badge is OrangeThemeBadgeComponentTokensProvider)
    }

    @Test func defaultControlItemComponentTokensProvider() throws {
        #expect(theme.controlItem is OrangeThemeControlItemComponentTokensProvider)
    }

    @Test func defaultCheckboxComponentTokensProvider() throws {
        #expect(theme.checkbox is OrangeThemeCheckboxComponentTokensProvider)
    }

    @Test func defaultRadioComponentTokensProvider() throws {
        #expect(theme.radioButton is OrangeThemeRadioButtonComponentTokensProvider)
    }

    // NOTE: Add tests for new component tokens providers
}

// swiftlint:enable force_cast
