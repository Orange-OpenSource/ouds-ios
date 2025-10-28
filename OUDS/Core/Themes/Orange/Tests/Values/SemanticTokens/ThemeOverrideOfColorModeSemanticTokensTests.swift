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
/// **These tests checks if any _colors mode semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
struct ThemeOverrideOfColorModeSemanticTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Tests

    // MARK: - On Background

    @Test func inheritedThemeCanOverrideModeOnBgPrimaryLight() throws {
        #expect(inheritedTheme.colorModes.onBgPrimaryLight != abstractTheme.colorModes.onBgPrimaryLight)
        #expect(inheritedTheme.colorModes.onBgPrimaryLight == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnBgPrimaryDark() throws {
        #expect(inheritedTheme.colorModes.onBgPrimaryDark != abstractTheme.colorModes.onBgPrimaryDark)
        #expect(inheritedTheme.colorModes.onBgPrimaryDark == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnBgSecondaryLight() throws {
        #expect(inheritedTheme.colorModes.onBgSecondaryLight != abstractTheme.colorModes.onBgSecondaryLight)
        #expect(inheritedTheme.colorModes.onBgSecondaryLight == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnBgSecondaryDark() throws {
        #expect(inheritedTheme.colorModes.onBgSecondaryDark != abstractTheme.colorModes.onBgSecondaryDark)
        #expect(inheritedTheme.colorModes.onBgSecondaryDark == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnBgTertiaryLight() throws {
        #expect(inheritedTheme.colorModes.onBgTertiaryLight != abstractTheme.colorModes.onBgTertiaryLight)
        #expect(inheritedTheme.colorModes.onBgTertiaryLight == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnBgTertiayDark() throws {
        #expect(inheritedTheme.colorModes.onBgTertiaryDark != abstractTheme.colorModes.onBgTertiaryDark)
        #expect(inheritedTheme.colorModes.onBgTertiaryDark == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    // MARK: - On Brand

    @Test func inheritedThemeCanOverrideModeOnBrandPrimaryLight() throws {
        #expect(inheritedTheme.colorModes.onBrandPrimaryLight != abstractTheme.colorModes.onBrandPrimaryLight)
        #expect(inheritedTheme.colorModes.onBrandPrimaryLight == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnBrandPrimaryDark() throws {
        #expect(inheritedTheme.colorModes.onBrandPrimaryDark != abstractTheme.colorModes.onBrandPrimaryDark)
        #expect(inheritedTheme.colorModes.onBrandPrimaryDark == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnBrandSecondaryLight() throws {
        #expect(inheritedTheme.colorModes.onBrandSecondaryLight != abstractTheme.colorModes.onBrandSecondaryLight)
        #expect(inheritedTheme.colorModes.onBrandSecondaryLight == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnBrandSecondaryDark() throws {
        #expect(inheritedTheme.colorModes.onBrandSecondaryDark != abstractTheme.colorModes.onBrandSecondaryDark)
        #expect(inheritedTheme.colorModes.onBrandSecondaryDark == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnBrandTertiaryLight() throws {
        #expect(inheritedTheme.colorModes.onBrandTertiaryLight != abstractTheme.colorModes.onBrandTertiaryLight)
        #expect(inheritedTheme.colorModes.onBrandTertiaryLight == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnBrandTertiaryDark() throws {
        #expect(inheritedTheme.colorModes.onBrandTertiaryDark != abstractTheme.colorModes.onBrandTertiaryDark)
        #expect(inheritedTheme.colorModes.onBrandTertiaryDark == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    // MARK: - On Status Accent

    @Test func inheritedThemeCanOverrideModeOnStatusAccentEmphasizedLight() throws {
        #expect(inheritedTheme.colorModes.onStatusAccentEmphasizedLight != abstractTheme.colorModes.onStatusAccentEmphasizedLight)
        #expect(inheritedTheme.colorModes.onStatusAccentEmphasizedLight == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusAccentEmphasizedDark() throws {
        #expect(inheritedTheme.colorModes.onStatusAccentEmphasizedDark != abstractTheme.colorModes.onStatusAccentEmphasizedDark)
        #expect(inheritedTheme.colorModes.onStatusAccentEmphasizedDark == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusAccentMutedLight() throws {
        #expect(inheritedTheme.colorModes.onStatusAccentMutedLight != abstractTheme.colorModes.onStatusAccentMutedLight)
        #expect(inheritedTheme.colorModes.onStatusAccentMutedLight == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusAccentMutedDark() throws {
        #expect(inheritedTheme.colorModes.onStatusAccentMutedDark != abstractTheme.colorModes.onStatusAccentMutedDark)
        #expect(inheritedTheme.colorModes.onStatusAccentMutedDark == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    // MARK: - On Status

    @Test func inheritedThemeCanOverrideModeOnStatusInfoEmphasizedLight() throws {
        #expect(inheritedTheme.colorModes.onStatusInfoEmphasizedLight != abstractTheme.colorModes.onStatusInfoEmphasizedLight)
        #expect(inheritedTheme.colorModes.onStatusInfoEmphasizedLight == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusInfoEmphasizedDark() throws {
        #expect(inheritedTheme.colorModes.onStatusInfoEmphasizedDark != abstractTheme.colorModes.onStatusInfoEmphasizedDark)
        #expect(inheritedTheme.colorModes.onStatusInfoEmphasizedDark == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusInfoMutedLight() throws {
        #expect(inheritedTheme.colorModes.onStatusInfoMutedLight != abstractTheme.colorModes.onStatusInfoMutedLight)
        #expect(inheritedTheme.colorModes.onStatusInfoMutedLight == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusInfoMutedDark() throws {
        #expect(inheritedTheme.colorModes.onStatusInfoMutedDark != abstractTheme.colorModes.onStatusInfoMutedDark)
        #expect(inheritedTheme.colorModes.onStatusInfoMutedDark == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusNegativeEmphasizedLight() throws {
        #expect(inheritedTheme.colorModes.onStatusNegativeEmphasizedLight != abstractTheme.colorModes.onStatusNegativeEmphasizedLight)
        #expect(inheritedTheme.colorModes.onStatusNegativeEmphasizedLight == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusNegativeEmphasizedDark() throws {
        #expect(inheritedTheme.colorModes.onStatusNegativeEmphasizedDark != abstractTheme.colorModes.onStatusNegativeEmphasizedDark)
        #expect(inheritedTheme.colorModes.onStatusNegativeEmphasizedDark == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusNegativeMutedLight() throws {
        #expect(inheritedTheme.colorModes.onStatusNegativeMutedLight != abstractTheme.colorModes.onStatusNegativeMutedLight)
        #expect(inheritedTheme.colorModes.onStatusNegativeMutedLight == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusNegativeMutedDark() throws {
        #expect(inheritedTheme.colorModes.onStatusNegativeMutedDark != abstractTheme.colorModes.onStatusNegativeMutedDark)
        #expect(inheritedTheme.colorModes.onStatusNegativeMutedDark == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusPositiveEmphasizedLight() throws {
        #expect(inheritedTheme.colorModes.onStatusPositiveEmphasizedLight != abstractTheme.colorModes.onStatusPositiveEmphasizedLight)
        #expect(inheritedTheme.colorModes.onStatusPositiveEmphasizedLight == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusPositiveEmphasizedDark() throws {
        #expect(inheritedTheme.colorModes.onStatusPositiveEmphasizedDark != abstractTheme.colorModes.onStatusPositiveEmphasizedDark)
        #expect(inheritedTheme.colorModes.onStatusPositiveEmphasizedDark == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusPositiveMutedLight() throws {
        #expect(inheritedTheme.colorModes.onStatusPositiveMutedLight != abstractTheme.colorModes.onStatusPositiveMutedLight)
        #expect(inheritedTheme.colorModes.onStatusPositiveMutedLight == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusPositiveMutedDark() throws {
        #expect(inheritedTheme.colorModes.onStatusPositiveMutedDark != abstractTheme.colorModes.onStatusPositiveMutedDark)
        #expect(inheritedTheme.colorModes.onStatusPositiveMutedDark == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusWarningEmphasizedLight() throws {
        #expect(inheritedTheme.colorModes.onStatusWarningEmphasizedLight != abstractTheme.colorModes.onStatusWarningEmphasizedLight)
        #expect(inheritedTheme.colorModes.onStatusWarningEmphasizedLight == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusWarningEmphasizedDark() throws {
        #expect(inheritedTheme.colorModes.onStatusWarningEmphasizedDark != abstractTheme.colorModes.onStatusWarningEmphasizedDark)
        #expect(inheritedTheme.colorModes.onStatusWarningEmphasizedDark == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusWarningMutedLight() throws {
        #expect(inheritedTheme.colorModes.onStatusWarningMutedLight != abstractTheme.colorModes.onStatusWarningMutedLight)
        #expect(inheritedTheme.colorModes.onStatusWarningMutedLight == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusWarningMutedDark() throws {
        #expect(inheritedTheme.colorModes.onStatusWarningMutedDark != abstractTheme.colorModes.onStatusWarningMutedDark)
        #expect(inheritedTheme.colorModes.onStatusWarningMutedDark == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    // MARK: - On Overlay

    @Test func inheritedThemeCanOverrideModeOnOverlayModalLight() throws {
        #expect(inheritedTheme.colorModes.onOverlayModalLight != abstractTheme.colorModes.onOverlayModalLight)
        #expect(inheritedTheme.colorModes.onOverlayModalLight == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnOverlayModalDark() throws {
        #expect(inheritedTheme.colorModes.onOverlayModalDark != abstractTheme.colorModes.onOverlayModalDark)
        #expect(inheritedTheme.colorModes.onOverlayModalDark == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnOverlayDropdownLight() throws {
        #expect(inheritedTheme.colorModes.onOverlayDropdownLight != abstractTheme.colorModes.onOverlayDropdownLight)
        #expect(inheritedTheme.colorModes.onOverlayDropdownLight == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnOverlayDropdownDark() throws {
        #expect(inheritedTheme.colorModes.onOverlayDropdownDark != abstractTheme.colorModes.onOverlayDropdownDark)
        #expect(inheritedTheme.colorModes.onOverlayDropdownDark == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnOverlayTooltipight() throws {
        #expect(inheritedTheme.colorModes.onOverlayTooltipLight != abstractTheme.colorModes.onOverlayTooltipLight)
        #expect(inheritedTheme.colorModes.onOverlayTooltipLight == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnOverlayTooltipDark() throws {
        #expect(inheritedTheme.colorModes.onOverlayTooltipDark != abstractTheme.colorModes.onOverlayTooltipDark)
        #expect(inheritedTheme.colorModes.onOverlayTooltipDark == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    // MARK: - Navigation

    @Test func inheritedThemeCanOverrideModeNavigationBarLight() throws {
        #expect(inheritedTheme.colorModes.navigationBarLight != abstractTheme.colorModes.navigationBarLight)
        #expect(inheritedTheme.colorModes.navigationBarLight == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeNavigationBarDark() throws {
        #expect(inheritedTheme.colorModes.navigationBarDark != abstractTheme.colorModes.navigationBarDark)
        #expect(inheritedTheme.colorModes.navigationBarDark == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }
}

// swiftlint:enable type_name
