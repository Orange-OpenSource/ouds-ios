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
@testable import OUDSThemesOrangeInverse
import OUDSTokensRaw
import OUDSTokensSemantic
import SwiftUI
import Testing

// swiftlint:disable type_name

/// Check if the semantic tokens provider for color mode tokens under test as the good rules implementations
struct OrangeInverseThemeColorModeSemanticTokensProviderTests {

    private var provider: AllColorModeSemanticTokensProvider

    init() {
        provider = OrangeInverseThemeColorModeSemanticTokensProvider()
    }

    // MARK: - Tests for useColorScheme

    @Test func useColorSchemeAndReverse() throws {
        // Given
        let modeOnStatusNegativeEmphasizedLight = ColorModeRawTokens.monochromeDark
        let modeOnStatusNegativeEmphasizedDark = ColorModeRawTokens.monochromeLight
        let modeOnStatusNegativeEmphasized = MultipleColorModeSemanticTokens("Doll",
                                                                             light: modeOnStatusNegativeEmphasizedLight,
                                                                             dark: modeOnStatusNegativeEmphasizedDark)

        // When
        let colorSchemeToApplyWhenLight: ColorScheme = provider.useColorScheme(for: modeOnStatusNegativeEmphasized, .light)
        let colorSchemeToApplyWhenDark: ColorScheme = provider.useColorScheme(for: modeOnStatusNegativeEmphasized, .dark)

        // Then
        #expect(colorSchemeToApplyWhenLight == .dark)
        #expect(colorSchemeToApplyWhenDark == .light)
    }

    @Test func useColorSchemeAndForceLight() throws {
        // Given
        let modeOnStatusInfoEmphasizedLight = ColorModeRawTokens.monochromeLight
        let modeOnStatusInfoEmphasizedDark = ColorModeRawTokens.monochromeLight
        let modeOnStatusInfoEmphasized = MultipleColorModeSemanticTokens("Dagga",
                                                                         light: modeOnStatusInfoEmphasizedLight,
                                                                         dark: modeOnStatusInfoEmphasizedDark)

        // When
        let colorSchemeToApplyWhenLight: ColorScheme = provider.useColorScheme(for: modeOnStatusInfoEmphasized, .light)
        let colorSchemeToApplyWhenDark: ColorScheme = provider.useColorScheme(for: modeOnStatusInfoEmphasized, .dark)

        // Then
        #expect(colorSchemeToApplyWhenLight == .light)
        #expect(colorSchemeToApplyWhenDark == .light)
    }

    @Test func useColorSchemeAndForceDark() throws {
        // Given
        let modeOnStatusInfoBazingaLight = ColorModeRawTokens.monochromeDark
        let modeOnStatusInfoBazingaDark = ColorModeRawTokens.monochromeDark
        let modeOnStatusInfoBazinga = MultipleColorModeSemanticTokens("Buzz-Buzz",
                                                                      light: modeOnStatusInfoBazingaLight,
                                                                      dark: modeOnStatusInfoBazingaDark)

        // When
        let colorSchemeToApplyWhenLight: ColorScheme = provider.useColorScheme(for: modeOnStatusInfoBazinga, .light)
        let colorSchemeToApplyWhenDark: ColorScheme = provider.useColorScheme(for: modeOnStatusInfoBazinga, .dark)

        // Then
        #expect(colorSchemeToApplyWhenLight == .dark)
        #expect(colorSchemeToApplyWhenDark == .dark)
    }

    @Test func useColorSchemeAndKeepCurrent() throws {
        // Given
        let modeOnStatusAccentMutedLight = ColorModeRawTokens.light
        let modeOnStatusAccentMutedDark = ColorModeRawTokens.dark
        let modeOnStatusAccentMuted = MultipleColorModeSemanticTokens("Ziggety",
                                                                      light: modeOnStatusAccentMutedLight,
                                                                      dark: modeOnStatusAccentMutedDark)

        // When
        let colorSchemeToApplyWhenLight: ColorScheme = provider.useColorScheme(for: modeOnStatusAccentMuted, .light)
        let colorSchemeToApplyWhenDark: ColorScheme = provider.useColorScheme(for: modeOnStatusAccentMuted, .dark)

        // Then
        #expect(colorSchemeToApplyWhenLight == .light)
        #expect(colorSchemeToApplyWhenDark == .dark)
    }

    // MARK: - Tests for isMonochrome

    @Test func isMonochromeWithoutNone() throws {
        // Given
        let modeOnStatusAccentMutedLight = ColorModeRawTokens.light
        let modeOnStatusAccentMutedDark = ColorModeRawTokens.dark
        let modeOnStatusAccentMuted = MultipleColorModeSemanticTokens("Zag",
                                                                      light: modeOnStatusAccentMutedLight,
                                                                      dark: modeOnStatusAccentMutedDark)

        // When
        let isMonochrome: Bool = provider.isMonochrome(mode: modeOnStatusAccentMuted)

        // Then
        #expect(isMonochrome == false)
    }

    @Test func isMonochromeWithOnlyLight() throws {
        // Given
        let modeSomeLight = ColorModeRawTokens.monochromeLight
        let modeSomeDark = ColorModeRawTokens.dark
        let modeSome = MultipleColorModeSemanticTokens("Buzz",
                                                       light: modeSomeLight,
                                                       dark: modeSomeDark)

        // When
        let isMonochrome: Bool = provider.isMonochrome(mode: modeSome)

        // Then
        #expect(isMonochrome == false)
    }

    @Test func isMonochromeWithOnlyDark() throws {
        // Given
        let modeSomeLight = ColorModeRawTokens.light
        let modeSomeDark = ColorModeRawTokens.monochromeDark
        let modeSome = MultipleColorModeSemanticTokens("Buzz",
                                                       light: modeSomeLight,
                                                       dark: modeSomeDark)

        // When
        let isMonochrome: Bool = provider.isMonochrome(mode: modeSome)

        // Then
        #expect(isMonochrome == false)
    }

    @Test func isMonochromeWithBoth() throws {
        // Given
        let modeSomeLight = ColorModeRawTokens.monochromeLight
        let modeSomeDark = ColorModeRawTokens.monochromeDark
        let modeSome = MultipleColorModeSemanticTokens("Buzz",
                                                       light: modeSomeLight,
                                                       dark: modeSomeDark)

        // When
        let isMonochrome: Bool = provider.isMonochrome(mode: modeSome)

        // Then
        #expect(isMonochrome == true)
    }
}

// swiftlint:enable type_name
