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
/// **These tests checks if any _colors multiple semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
struct ThemeOverrideOfColorModeMultipleSemanticTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Tests

    @Test func inheritedThemeCanOverrideModeOnBrandPrimary() throws {
        #expect(inheritedTheme.colorModes.modeOnBrandPrimary != abstractTheme.colorModes.modeOnBrandPrimary)
        #expect(inheritedTheme.colorModes.modeOnBrandPrimary == MockThemeColorModeSemanticTokensProvider.mockThemeMultipleColorModeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideModeOnBrandSecondary() throws {
        #expect(inheritedTheme.colorModes.modeOnBrandSecondary != abstractTheme.colorModes.modeOnBrandSecondary)
        #expect(inheritedTheme.colorModes.modeOnBrandSecondary == MockThemeColorModeSemanticTokensProvider.mockThemeMultipleColorModeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideModeOnBrandTertiary() throws {
        #expect(inheritedTheme.colorModes.modeOnBrandTertiary != abstractTheme.colorModes.modeOnBrandTertiary)
        #expect(inheritedTheme.colorModes.modeOnBrandTertiary == MockThemeColorModeSemanticTokensProvider.mockThemeMultipleColorModeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusAccentEmphasized() throws {
        #expect(inheritedTheme.colorModes.modeOnStatusAccentEmphasized != abstractTheme.colorModes.modeOnStatusAccentEmphasized)
        #expect(inheritedTheme.colorModes.modeOnStatusAccentEmphasized == MockThemeColorModeSemanticTokensProvider.mockThemeMultipleColorModeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusAccentMuted() throws {
        #expect(inheritedTheme.colorModes.modeOnStatusAccentMuted != abstractTheme.colorModes.modeOnStatusAccentMuted)
        #expect(inheritedTheme.colorModes.modeOnStatusAccentMuted == MockThemeColorModeSemanticTokensProvider.mockThemeMultipleColorModeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusInfoEmphasized() throws {
        #expect(inheritedTheme.colorModes.modeOnStatusInfoEmphasized != abstractTheme.colorModes.modeOnStatusInfoEmphasized)
        #expect(inheritedTheme.colorModes.modeOnStatusInfoEmphasized == MockThemeColorModeSemanticTokensProvider.mockThemeMultipleColorModeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusInfoMuted() throws {
        #expect(inheritedTheme.colorModes.modeOnStatusInfoMuted != abstractTheme.colorModes.modeOnStatusInfoMuted)
        #expect(inheritedTheme.colorModes.modeOnStatusInfoMuted == MockThemeColorModeSemanticTokensProvider.mockThemeMultipleColorModeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusNegativeEmphasized() throws {
        #expect(inheritedTheme.colorModes.modeOnStatusNegativeEmphasized != abstractTheme.colorModes.modeOnStatusNegativeEmphasized)
        #expect(inheritedTheme.colorModes.modeOnStatusNegativeEmphasized == MockThemeColorModeSemanticTokensProvider.mockThemeMultipleColorModeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusNegativeMuted() throws {
        #expect(inheritedTheme.colorModes.modeOnStatusNegativeMuted != abstractTheme.colorModes.modeOnStatusNegativeMuted)
        #expect(inheritedTheme.colorModes.modeOnStatusNegativeMuted == MockThemeColorModeSemanticTokensProvider.mockThemeMultipleColorModeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusNeutralEmphasized() throws {
        #expect(inheritedTheme.colorModes.modeOnStatusNeutralEmphasized != abstractTheme.colorModes.modeOnStatusNeutralEmphasized)
        #expect(inheritedTheme.colorModes.modeOnStatusNeutralEmphasized == MockThemeColorModeSemanticTokensProvider.mockThemeMultipleColorModeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusNeutralMuted() throws {
        #expect(inheritedTheme.colorModes.modeOnStatusNeutralMuted != abstractTheme.colorModes.modeOnStatusNeutralMuted)
        #expect(inheritedTheme.colorModes.modeOnStatusNeutralMuted == MockThemeColorModeSemanticTokensProvider.mockThemeMultipleColorModeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusPositiveEmphasized() throws {
        #expect(inheritedTheme.colorModes.modeOnStatusPositiveEmphasized != abstractTheme.colorModes.modeOnStatusPositiveEmphasized)
        #expect(inheritedTheme.colorModes.modeOnStatusPositiveEmphasized == MockThemeColorModeSemanticTokensProvider.mockThemeMultipleColorModeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusPositiveMuted() throws {
        #expect(inheritedTheme.colorModes.modeOnStatusPositiveMuted != abstractTheme.colorModes.modeOnStatusPositiveMuted)
        #expect(inheritedTheme.colorModes.modeOnStatusPositiveMuted == MockThemeColorModeSemanticTokensProvider.mockThemeMultipleColorModeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusWarningEmphasized() throws {
        #expect(inheritedTheme.colorModes.modeOnStatusWarningEmphasized != abstractTheme.colorModes.modeOnStatusWarningEmphasized)
        #expect(inheritedTheme.colorModes.modeOnStatusWarningEmphasized == MockThemeColorModeSemanticTokensProvider.mockThemeMultipleColorModeSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideModeOnStatusWarningMuted() throws {
        #expect(inheritedTheme.colorModes.modeOnStatusWarningMuted != abstractTheme.colorModes.modeOnStatusWarningMuted)
        #expect(inheritedTheme.colorModes.modeOnStatusWarningMuted == MockThemeColorModeSemanticTokensProvider.mockThemeMultipleColorModeSemanticTokens)
    }
}

// swiftlint:enable type_name
