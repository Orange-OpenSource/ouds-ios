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

/// Check if the themes hash the default tokens providers with the expected types.
struct OrangeBusinessToolsThemeTests {

    private var theme: OrangeBusinessToolsTheme

    init() {
        theme = OrangeBusinessToolsTheme()
    }

    // MARK: - Tests - Semantic tokens providers

    @Test func defaultColorSemanticTokensProvider() throws {
        #expect(theme.colors is OrangeBusinessToolsThemeColorSemanticTokensProvider)
    }

    @Test func defaultColorModeSemanticTokensProvider() throws {
        #expect(theme.colorModes is OrangeBusinessToolsThemeColorModeSemanticTokensProvider)
        #expect((theme.colorModes as! OrangeBusinessToolsThemeColorModeSemanticTokensProvider).colors is OrangeBusinessToolsThemeColorSemanticTokensProvider)
    }

    @Test func defaultBorderSemanticTokensProvider() throws {
        #expect(theme.borders is OrangeBusinessToolsThemeBorderSemanticTokensProvider)
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

    @Test func defaultSizeSemanticTokensProvider() throws {
        #expect(theme.sizes is OrangeBusinessToolsThemeSizeSemanticTokensProvider)
    }

    @Test func defaultSpaceSemanticTokensProvider() throws {
        #expect(theme.spaces is OrangeBusinessToolsThemeSpaceSemanticTokensProvider)
    }

    // MARK: - Tests - Component tokens providers

    @Test func defaultButtonComponentTokensProvider() throws {
        #expect(theme.button is OrangeBusinessToolsThemeButtonComponentTokensProvider)
    }

    @Test func defaultLinkComponentTokensProvider() throws {
        #expect(theme.link is OrangeBusinessToolsThemeLinkComponentTokensProvider)
    }

    @Test func defaultSelectComponentTokensProvider() throws {
        #expect(theme.select is OrangeBusinessToolsThemeSelectComponentTokensProvider)
    }

    @Test func defaultSkeletonComponentTokensProvider() throws {
        #expect(theme.skeleton is OrangeBusinessToolsThemeSkeletonComponentTokensProvider)
    }

    @Test func defaultTagComponentTokensProvider() throws {
        #expect(theme.tag is OrangeBusinessToolsThemeTagComponentTokensProvider)
    }

    @Test func defaultSwitchComponentTokensProvider() throws {
        #expect(theme.switch is OrangeBusinessToolsThemeSwitchComponentTokensProvider)
    }

    @Test func defaultListItemComponentTokensProvider() throws {
        #expect(theme.listItem is OrangeBusinessToolsThemeListItemComponentTokensProvider)
    }

    @Test func defaultChipComponentTokensProvider() throws {
        #expect(theme.chip is OrangeBusinessToolsThemeChipComponentTokensProvider)
    }

    @Test func defaultBulletListComponentTokensProvider() throws {
        #expect(theme.bulletList is OrangeBusinessToolsThemeBulletListComponentTokensProvider)
    }

    @Test func defaultInputTextComponentTokensProvider() throws {
        #expect(theme.inputText is OrangeBusinessToolsThemeInputTextComponentTokensProvider)
    }

    @Test func defaultBadgeComponentTokensProvider() throws {
        #expect(theme.badge is OrangeBusinessToolsThemeBadgeComponentTokensProvider)
    }

    @Test func defaultControlItemComponentTokensProvider() throws {
        #expect(theme.controlItem is OrangeBusinessToolsThemeControlItemComponentTokensProvider)
    }

    @Test func defaultCheckboxComponentTokensProvider() throws {
        #expect(theme.checkbox is OrangeBusinessToolsThemeCheckboxComponentTokensProvider)
    }

    @Test func defaultRadioComponentTokensProvider() throws {
        #expect(theme.radioButton is OrangeBusinessToolsThemeRadioButtonComponentTokensProvider)
    }

    // NOTE: Add tests for new component tokens providers
}

// swiftlint:enable force_cast
