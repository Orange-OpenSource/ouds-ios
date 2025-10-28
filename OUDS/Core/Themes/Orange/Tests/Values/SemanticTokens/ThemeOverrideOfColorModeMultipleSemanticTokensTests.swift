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

import OUDS
import OUDSThemesOrange
import OUDSTokensSemantic
import Testing

// swiftlint:disable type_name

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In fact the `OUDSTheme` object is a class, which can be seen as an _abstract class_, exposing through its extensions and protocols _colors semantic tokens_.
/// These semantic tokens should be overridable by subclasses like the ``OrangeThemeColorModeSemanticTokensProvider``.
///
/// **These tests checks if any _colors mode multiple semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
struct ThemeOverrideOfColorModeMultipleSemanticTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Tests

    // MARK: - On Background

    @Test func inheritedThemeCanOverrideModeOnBgPrimary() throws {
        #expect(inheritedTheme.colorModes.onBgPrimary != abstractTheme.colorModes.onBgPrimary)
        #expect(inheritedTheme.colorModes.onBgPrimary == MockThemeColorModeSemanticTokensProvider.mockThemeMultipleColorModeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideModeOnBgSecondary() throws {
        #expect(inheritedTheme.colorModes.onBgSecondary != abstractTheme.colorModes.onBgSecondary)
        #expect(inheritedTheme.colorModes.onBgSecondary == MockThemeColorModeSemanticTokensProvider.mockThemeMultipleColorModeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideModeOnBgTertiary() throws {
        #expect(inheritedTheme.colorModes.onBgTertiary != abstractTheme.colorModes.onBgTertiary)
        #expect(inheritedTheme.colorModes.onBgTertiary == MockThemeColorModeSemanticTokensProvider.mockThemeMultipleColorModeSemanticTokens)
    }

    // MARK: - On Brand

    @Test func inheritedThemeCanOverrideModeOnBrandPrimary() throws {
        #expect(inheritedTheme.colorModes.onBrandPrimary != abstractTheme.colorModes.onBrandPrimary)
        #expect(inheritedTheme.colorModes.onBrandPrimary == MockThemeColorModeSemanticTokensProvider.mockThemeMultipleColorModeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideModeOnBrandSecondary() throws {
        #expect(inheritedTheme.colorModes.onBrandSecondary != abstractTheme.colorModes.onBrandSecondary)
        #expect(inheritedTheme.colorModes.onBrandSecondary == MockThemeColorModeSemanticTokensProvider.mockThemeMultipleColorModeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideModeOnBrandTertiary() throws {
        #expect(inheritedTheme.colorModes.onBrandTertiary != abstractTheme.colorModes.onBrandTertiary)
        #expect(inheritedTheme.colorModes.onBrandTertiary == MockThemeColorModeSemanticTokensProvider.mockThemeMultipleColorModeSemanticTokens)
    }

    // MARK: - On Status

    @Test func inheritedThemeCanOverrideModeOnStatusInfoEmphasized() throws {
        #expect(inheritedTheme.colorModes.onStatusInfoEmphasized != abstractTheme.colorModes.onStatusInfoEmphasized)
        #expect(inheritedTheme.colorModes.onStatusInfoEmphasized == MockThemeColorModeSemanticTokensProvider.mockThemeMultipleColorModeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusInfoMuted() throws {
        #expect(inheritedTheme.colorModes.onStatusInfoMuted != abstractTheme.colorModes.onStatusInfoMuted)
        #expect(inheritedTheme.colorModes.onStatusInfoMuted == MockThemeColorModeSemanticTokensProvider.mockThemeMultipleColorModeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusNegativeEmphasized() throws {
        #expect(inheritedTheme.colorModes.onStatusNegativeEmphasized != abstractTheme.colorModes.onStatusNegativeEmphasized)
        #expect(inheritedTheme.colorModes.onStatusNegativeEmphasized == MockThemeColorModeSemanticTokensProvider.mockThemeMultipleColorModeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusNegativeMuted() throws {
        #expect(inheritedTheme.colorModes.onStatusNegativeMuted != abstractTheme.colorModes.onStatusNegativeMuted)
        #expect(inheritedTheme.colorModes.onStatusNegativeMuted == MockThemeColorModeSemanticTokensProvider.mockThemeMultipleColorModeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusAccentEmphasized() throws {
        #expect(inheritedTheme.colorModes.onStatusAccentEmphasized != abstractTheme.colorModes.onStatusAccentEmphasized)
        #expect(inheritedTheme.colorModes.onStatusAccentEmphasized == MockThemeColorModeSemanticTokensProvider.mockThemeMultipleColorModeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusAccentMuted() throws {
        #expect(inheritedTheme.colorModes.onStatusAccentMuted != abstractTheme.colorModes.onStatusAccentMuted)
        #expect(inheritedTheme.colorModes.onStatusAccentMuted == MockThemeColorModeSemanticTokensProvider.mockThemeMultipleColorModeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusPositiveEmphasized() throws {
        #expect(inheritedTheme.colorModes.onStatusPositiveEmphasized != abstractTheme.colorModes.onStatusPositiveEmphasized)
        #expect(inheritedTheme.colorModes.onStatusPositiveEmphasized == MockThemeColorModeSemanticTokensProvider.mockThemeMultipleColorModeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusPositiveMuted() throws {
        #expect(inheritedTheme.colorModes.onStatusPositiveMuted != abstractTheme.colorModes.onStatusPositiveMuted)
        #expect(inheritedTheme.colorModes.onStatusPositiveMuted == MockThemeColorModeSemanticTokensProvider.mockThemeMultipleColorModeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusWarningEmphasized() throws {
        #expect(inheritedTheme.colorModes.onStatusWarningEmphasized != abstractTheme.colorModes.onStatusWarningEmphasized)
        #expect(inheritedTheme.colorModes.onStatusWarningEmphasized == MockThemeColorModeSemanticTokensProvider.mockThemeMultipleColorModeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusWarningMuted() throws {
        #expect(inheritedTheme.colorModes.onStatusWarningMuted != abstractTheme.colorModes.onStatusWarningMuted)
        #expect(inheritedTheme.colorModes.onStatusWarningMuted == MockThemeColorModeSemanticTokensProvider.mockThemeMultipleColorModeSemanticTokens)
    }

    // MARK: - On Overlay

    @Test func inheritedThemeCanOverrideModeOverlayModal() throws {
        #expect(inheritedTheme.colorModes.onOverlayModal != abstractTheme.colorModes.onOverlayModal)
        #expect(inheritedTheme.colorModes.onOverlayModal == MockThemeColorModeSemanticTokensProvider.mockThemeMultipleColorModeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideModeOverlayDropdown() throws {
        #expect(inheritedTheme.colorModes.onOverlayDropdown != abstractTheme.colorModes.onOverlayDropdown)
        #expect(inheritedTheme.colorModes.onOverlayDropdown == MockThemeColorModeSemanticTokensProvider.mockThemeMultipleColorModeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideModeOverlayTooltip() throws {
        #expect(inheritedTheme.colorModes.onOverlayTooltip != abstractTheme.colorModes.onOverlayTooltip)
        #expect(inheritedTheme.colorModes.onOverlayTooltip == MockThemeColorModeSemanticTokensProvider.mockThemeMultipleColorModeSemanticTokens)
    }
}

// swiftlint:enable type_name
