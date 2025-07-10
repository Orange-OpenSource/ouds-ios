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
        #expect(inheritedTheme.colorModes.modeOnBgPrimaryLight != abstractTheme.colorModes.modeOnBgPrimaryLight)
        #expect(inheritedTheme.colorModes.modeOnBgPrimaryLight == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnBgPrimaryDark() throws {
        #expect(inheritedTheme.colorModes.modeOnBgPrimaryDark != abstractTheme.colorModes.modeOnBgPrimaryDark)
        #expect(inheritedTheme.colorModes.modeOnBgPrimaryDark == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnBgSecondaryLight() throws {
        #expect(inheritedTheme.colorModes.modeOnBgSecondaryLight != abstractTheme.colorModes.modeOnBgSecondaryLight)
        #expect(inheritedTheme.colorModes.modeOnBgSecondaryLight == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnBgSecondaryDark() throws {
        #expect(inheritedTheme.colorModes.modeOnBgSecondaryDark != abstractTheme.colorModes.modeOnBgSecondaryDark)
        #expect(inheritedTheme.colorModes.modeOnBgSecondaryDark == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnBgTertiaryLight() throws {
        #expect(inheritedTheme.colorModes.modeOnBgTertiaryLight != abstractTheme.colorModes.modeOnBgTertiaryLight)
        #expect(inheritedTheme.colorModes.modeOnBgTertiaryLight == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnBgTertiayDark() throws {
        #expect(inheritedTheme.colorModes.modeOnBgTertiaryDark != abstractTheme.colorModes.modeOnBgTertiaryDark)
        #expect(inheritedTheme.colorModes.modeOnBgTertiaryDark == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnBgEmphasizedLight() throws {
        #expect(inheritedTheme.colorModes.modeOnBgEmphasizedLight != abstractTheme.colorModes.modeOnBgEmphasizedLight)
        #expect(inheritedTheme.colorModes.modeOnBgEmphasizedLight == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnBgEmphasizedDark() throws {
        #expect(inheritedTheme.colorModes.modeOnBgEmphasizedDark != abstractTheme.colorModes.modeOnBgEmphasizedDark)
        #expect(inheritedTheme.colorModes.modeOnBgEmphasizedDark == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    // MARK: - On Brand

    @Test func inheritedThemeCanOverrideModeOnBrandPrimaryLight() throws {
        #expect(inheritedTheme.colorModes.modeOnBrandPrimaryLight != abstractTheme.colorModes.modeOnBrandPrimaryLight)
        #expect(inheritedTheme.colorModes.modeOnBrandPrimaryLight == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnBrandPrimaryDark() throws {
        #expect(inheritedTheme.colorModes.modeOnBrandPrimaryDark != abstractTheme.colorModes.modeOnBrandPrimaryDark)
        #expect(inheritedTheme.colorModes.modeOnBrandPrimaryDark == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnBrandSecondaryLight() throws {
        #expect(inheritedTheme.colorModes.modeOnBrandSecondaryLight != abstractTheme.colorModes.modeOnBrandSecondaryLight)
        #expect(inheritedTheme.colorModes.modeOnBrandSecondaryLight == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnBrandSecondaryDark() throws {
        #expect(inheritedTheme.colorModes.modeOnBrandSecondaryDark != abstractTheme.colorModes.modeOnBrandSecondaryDark)
        #expect(inheritedTheme.colorModes.modeOnBrandSecondaryDark == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnBrandTertiaryLight() throws {
        #expect(inheritedTheme.colorModes.modeOnBrandTertiaryLight != abstractTheme.colorModes.modeOnBrandTertiaryLight)
        #expect(inheritedTheme.colorModes.modeOnBrandTertiaryLight == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnBrandTertiaryDark() throws {
        #expect(inheritedTheme.colorModes.modeOnBrandTertiaryDark != abstractTheme.colorModes.modeOnBrandTertiaryDark)
        #expect(inheritedTheme.colorModes.modeOnBrandTertiaryDark == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    // MARK: - On Status Accent

    @Test func inheritedThemeCanOverrideModeOnStatusAccentEmphasizedLight() throws {
        #expect(inheritedTheme.colorModes.modeOnStatusAccentEmphasizedLight != abstractTheme.colorModes.modeOnStatusAccentEmphasizedLight)
        #expect(inheritedTheme.colorModes.modeOnStatusAccentEmphasizedLight == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusAccentEmphasizedDark() throws {
        #expect(inheritedTheme.colorModes.modeOnStatusAccentEmphasizedDark != abstractTheme.colorModes.modeOnStatusAccentEmphasizedDark)
        #expect(inheritedTheme.colorModes.modeOnStatusAccentEmphasizedDark == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusAccentMutedLight() throws {
        #expect(inheritedTheme.colorModes.modeOnStatusAccentMutedLight != abstractTheme.colorModes.modeOnStatusAccentMutedLight)
        #expect(inheritedTheme.colorModes.modeOnStatusAccentMutedLight == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusAccentMutedDark() throws {
        #expect(inheritedTheme.colorModes.modeOnStatusAccentMutedDark != abstractTheme.colorModes.modeOnStatusAccentMutedDark)
        #expect(inheritedTheme.colorModes.modeOnStatusAccentMutedDark == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    // MARK: - On Status

    @Test func inheritedThemeCanOverrideModeOnStatusInfoEmphasizedLight() throws {
        #expect(inheritedTheme.colorModes.modeOnStatusInfoEmphasizedLight != abstractTheme.colorModes.modeOnStatusInfoEmphasizedLight)
        #expect(inheritedTheme.colorModes.modeOnStatusInfoEmphasizedLight == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusInfoEmphasizedDark() throws {
        #expect(inheritedTheme.colorModes.modeOnStatusInfoEmphasizedDark != abstractTheme.colorModes.modeOnStatusInfoEmphasizedDark)
        #expect(inheritedTheme.colorModes.modeOnStatusInfoEmphasizedDark == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusInfoMutedLight() throws {
        #expect(inheritedTheme.colorModes.modeOnStatusInfoMutedLight != abstractTheme.colorModes.modeOnStatusInfoMutedLight)
        #expect(inheritedTheme.colorModes.modeOnStatusInfoMutedLight == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusInfoMutedDark() throws {
        #expect(inheritedTheme.colorModes.modeOnStatusInfoMutedDark != abstractTheme.colorModes.modeOnStatusInfoMutedDark)
        #expect(inheritedTheme.colorModes.modeOnStatusInfoMutedDark == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusNegativeEmphasizedLight() throws {
        #expect(inheritedTheme.colorModes.modeOnStatusNegativeEmphasizedLight != abstractTheme.colorModes.modeOnStatusNegativeEmphasizedLight)
        #expect(inheritedTheme.colorModes.modeOnStatusNegativeEmphasizedLight == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusNegativeEmphasizedDark() throws {
        #expect(inheritedTheme.colorModes.modeOnStatusNegativeEmphasizedDark != abstractTheme.colorModes.modeOnStatusNegativeEmphasizedDark)
        #expect(inheritedTheme.colorModes.modeOnStatusNegativeEmphasizedDark == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusNegativeMutedLight() throws {
        #expect(inheritedTheme.colorModes.modeOnStatusNegativeMutedLight != abstractTheme.colorModes.modeOnStatusNegativeMutedLight)
        #expect(inheritedTheme.colorModes.modeOnStatusNegativeMutedLight == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusNegativeMutedDark() throws {
        #expect(inheritedTheme.colorModes.modeOnStatusNegativeMutedDark != abstractTheme.colorModes.modeOnStatusNegativeMutedDark)
        #expect(inheritedTheme.colorModes.modeOnStatusNegativeMutedDark == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusNeutralEmphasizedLight() throws {
        #expect(inheritedTheme.colorModes.modeOnStatusNeutralEmphasizedLight != abstractTheme.colorModes.modeOnStatusNeutralEmphasizedLight)
        #expect(inheritedTheme.colorModes.modeOnStatusNeutralEmphasizedLight == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusNeutralEmphasizedDark() throws {
        #expect(inheritedTheme.colorModes.modeOnStatusNeutralEmphasizedDark != abstractTheme.colorModes.modeOnStatusNeutralEmphasizedDark)
        #expect(inheritedTheme.colorModes.modeOnStatusNeutralEmphasizedDark == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusNeutralMutedLight() throws {
        #expect(inheritedTheme.colorModes.modeOnStatusNeutralMutedLight != abstractTheme.colorModes.modeOnStatusNeutralMutedLight)
        #expect(inheritedTheme.colorModes.modeOnStatusNeutralMutedLight == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusNeutralMutedDark() throws {
        #expect(inheritedTheme.colorModes.modeOnStatusNeutralMutedDark != abstractTheme.colorModes.modeOnStatusNeutralMutedDark)
        #expect(inheritedTheme.colorModes.modeOnStatusNeutralMutedDark == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusPositiveEmphasizedLight() throws {
        #expect(inheritedTheme.colorModes.modeOnStatusPositiveEmphasizedLight != abstractTheme.colorModes.modeOnStatusPositiveEmphasizedLight)
        #expect(inheritedTheme.colorModes.modeOnStatusPositiveEmphasizedLight == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusPositiveEmphasizedDark() throws {
        #expect(inheritedTheme.colorModes.modeOnStatusPositiveEmphasizedDark != abstractTheme.colorModes.modeOnStatusPositiveEmphasizedDark)
        #expect(inheritedTheme.colorModes.modeOnStatusPositiveEmphasizedDark == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusPositiveMutedLight() throws {
        #expect(inheritedTheme.colorModes.modeOnStatusPositiveMutedLight != abstractTheme.colorModes.modeOnStatusPositiveMutedLight)
        #expect(inheritedTheme.colorModes.modeOnStatusPositiveMutedLight == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusPositiveMutedDark() throws {
        #expect(inheritedTheme.colorModes.modeOnStatusPositiveMutedDark != abstractTheme.colorModes.modeOnStatusPositiveMutedDark)
        #expect(inheritedTheme.colorModes.modeOnStatusPositiveMutedDark == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusWarningEmphasizedLight() throws {
        #expect(inheritedTheme.colorModes.modeOnStatusWarningEmphasizedLight != abstractTheme.colorModes.modeOnStatusWarningEmphasizedLight)
        #expect(inheritedTheme.colorModes.modeOnStatusWarningEmphasizedLight == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusWarningEmphasizedDark() throws {
        #expect(inheritedTheme.colorModes.modeOnStatusWarningEmphasizedDark != abstractTheme.colorModes.modeOnStatusWarningEmphasizedDark)
        #expect(inheritedTheme.colorModes.modeOnStatusWarningEmphasizedDark == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusWarningMutedLight() throws {
        #expect(inheritedTheme.colorModes.modeOnStatusWarningMutedLight != abstractTheme.colorModes.modeOnStatusWarningMutedLight)
        #expect(inheritedTheme.colorModes.modeOnStatusWarningMutedLight == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusWarningMutedDark() throws {
        #expect(inheritedTheme.colorModes.modeOnStatusWarningMutedDark != abstractTheme.colorModes.modeOnStatusWarningMutedDark)
        #expect(inheritedTheme.colorModes.modeOnStatusWarningMutedDark == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    // MARK: - On Overlay

    @Test func inheritedThemeCanOverrideModeOnOverlayDefaultLight() throws {
        #expect(inheritedTheme.colorModes.modeOnOverlayDefaultLight != abstractTheme.colorModes.modeOnOverlayDefaultLight)
        #expect(inheritedTheme.colorModes.modeOnOverlayDefaultLight == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnOverlayDefaultDark() throws {
        #expect(inheritedTheme.colorModes.modeOnOverlayDefaultDark != abstractTheme.colorModes.modeOnOverlayDefaultDark)
        #expect(inheritedTheme.colorModes.modeOnOverlayDefaultDark == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnOverlayEmphasizedLight() throws {
        #expect(inheritedTheme.colorModes.modeOnOverlayEmphasizedLight != abstractTheme.colorModes.modeOnOverlayEmphasizedLight)
        #expect(inheritedTheme.colorModes.modeOnOverlayEmphasizedLight == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnOverlayEmphasizedDark() throws {
        #expect(inheritedTheme.colorModes.modeOnOverlayEmphasizedDark != abstractTheme.colorModes.modeOnOverlayEmphasizedDark)
        #expect(inheritedTheme.colorModes.modeOnOverlayEmphasizedDark == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    // MARK: - On Modal

    @Test func inheritedThemeCanOverrideModeOnModalLight() throws {
        #expect(inheritedTheme.colorModes.modeOnModalLight != abstractTheme.colorModes.modeOnModalLight)
        #expect(inheritedTheme.colorModes.modeOnModalLight == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideModeOnModalDark() throws {
        #expect(inheritedTheme.colorModes.modeOnModalDark != abstractTheme.colorModes.modeOnModalDark)
        #expect(inheritedTheme.colorModes.modeOnModalDark == MockThemeColorModeSemanticTokensProvider.mockThemeColorModeSemanticToken)
    }
}

// swiftlint:enable type_name
