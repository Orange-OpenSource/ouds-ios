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

@testable import OUDSThemesSosh
import Testing

// swiftlint:disable force_cast

/// Check if the themes has the default tokens providers with the expected types.
struct SoshThemeTests {

    private var theme: SoshTheme

    init() {
        theme = SoshTheme()
    }

    // MARK: - Tests - Semantic tokens providers

    @Test func defaultColorSemanticTokensProvider() throws {
        #expect(theme.colors is SoshThemeColorSemanticTokensProvider)
    }

    @Test func defaultColorModeSemanticTokensProvider() throws {
        #expect(theme.colorModes is SoshThemeColorModeSemanticTokensProvider)
        #expect((theme.colorModes as! SoshThemeColorModeSemanticTokensProvider).colors is SoshThemeColorSemanticTokensProvider)
    }

    @Test func defaultBorderSemanticTokensProvider() throws {
        #expect(theme.borders is SoshThemeBorderSemanticTokensProvider)
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

    @Test func defaultSizeSemanticTokensProvider() throws {
        #expect(theme.sizes is SoshThemeSizeSemanticTokensProvider)
    }

    @Test func defaultSpaceSemanticTokensProvider() throws {
        #expect(theme.spaces is SoshThemeSpaceSemanticTokensProvider)
    }

    // MARK: - Tests - Component tokens providers

    @Test func defaultButtonComponentTokensProvider() throws {
        #expect(theme.button is SoshThemeButtonComponentTokensProvider)
    }

    @Test func defaultLinkComponentTokensProvider() throws {
        #expect(theme.link is SoshThemeLinkComponentTokensProvider)
    }

    @Test func defaultSelectComponentTokensProvider() throws {
        #expect(theme.select is SoshThemeSelectComponentTokensProvider)
    }

    @Test func defaultSkeletonComponentTokensProvider() throws {
        #expect(theme.skeleton is SoshThemeSkeletonComponentTokensProvider)
    }

    @Test func defaultTagComponentTokensProvider() throws {
        #expect(theme.tag is SoshThemeTagComponentTokensProvider)
    }

    @Test func defaultSwitchComponentTokensProvider() throws {
        #expect(theme.switch is SoshThemeSwitchComponentTokensProvider)
    }

    @Test func defaultListItemComponentTokensProvider() throws {
        #expect(theme.listItem is SoshThemeListItemComponentTokensProvider)
    }

    @Test func defaultChipComponentTokensProvider() throws {
        #expect(theme.chip is SoshThemeChipComponentTokensProvider)
    }

    @Test func defaultBulletListComponentTokensProvider() throws {
        #expect(theme.bulletList is SoshThemeBulletListComponentTokensProvider)
    }

    @Test func defaultInputTextComponentTokensProvider() throws {
        #expect(theme.inputText is SoshThemeInputTextComponentTokensProvider)
    }

    @Test func defaultBadgeComponentTokensProvider() throws {
        #expect(theme.badge is SoshThemeBadgeComponentTokensProvider)
    }

    @Test func defaultControlItemComponentTokensProvider() throws {
        #expect(theme.controlItem is SoshThemeControlItemComponentTokensProvider)
    }

    @Test func defaultCheckboxComponentTokensProvider() throws {
        #expect(theme.checkbox is SoshThemeCheckboxComponentTokensProvider)
    }

    @Test func defaultRadioComponentTokensProvider() throws {
        #expect(theme.radioButton is SoshThemeRadioButtonComponentTokensProvider)
    }

    // NOTE: Add tests for new component tokens providers
}

// swiftlint:enable force_cast
