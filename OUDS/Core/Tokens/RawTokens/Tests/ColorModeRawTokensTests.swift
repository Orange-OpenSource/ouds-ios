//
// Software Name: OUDSThemesContract iOS
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

import Foundation
import OUDSTokensRaw
import SwiftUI
import Testing

/// The aim of this tests class is to look for regressions in **color mode raw tokens**.
///
/// Here are some rules to follow:
/// - a light color mode is defined with "light" value by tokenator
/// - a dark color mode is defined with "dark" value by tokenator
/// - a light monochrome color mode is defined with "monoLight" value by tokenator
/// - a dark monochrome color mode is defined with "monoDark" value by tokenator
/// - an undefined color mode is defined with "⛔️" value by tokenator
struct ColorModeRawTokensTests {

    // MARK: - Test values

    @Test func colorModeRawTokenLight() throws {
        #expect(ColorModeRawTokens.light == "light")
    }

    @Test func colorModeRawTokenDark() throws {
        #expect(ColorModeRawTokens.dark == "dark")
    }

    @Test func colorModeRawTokenMonochromeDark() throws {
        #expect(ColorModeRawTokens.monochromeLight == "monoLight")
    }

    @Test func colorModeRawTokenMonochromeLight() throws {
        #expect(ColorModeRawTokens.monochromeDark == "monoDark")
    }

    @Test func colorModeRawTokenUndefined() throws {
        #expect(ColorModeRawTokens.undefined == "⛔️")
    }

    // MARK: - Test helpers

    @Test func colorSchemeForLightValue() throws {
        #expect(ColorModeRawTokens.colorScheme(for: ColorModeRawTokens.light) == ColorScheme.light)
    }

    @Test func colorSchemeForDarkValue() throws {
        #expect(ColorModeRawTokens.colorScheme(for: ColorModeRawTokens.dark) == ColorScheme.dark)
    }

    @Test func colorSchemeForMonochromeLightValue() throws {
        #expect(ColorModeRawTokens.colorScheme(for: ColorModeRawTokens.monochromeLight) == ColorScheme.light)
    }

    @Test func colorSchemeForMonochromeDarkValue() throws {
        #expect(ColorModeRawTokens.colorScheme(for: ColorModeRawTokens.monochromeDark) == ColorScheme.dark)
    }

    @Test func colorSchemeForUndefinedValue() throws {
        #expect(ColorModeRawTokens.colorScheme(for: ColorModeRawTokens.undefined) == nil)
    }

    @Test func isMonochromeForLightValue() throws {
        #expect(ColorModeRawTokens.isMonochrome(mode: ColorModeRawTokens.light) == false)
    }

    @Test func isMonochromeForDarkValue() throws {
        #expect(ColorModeRawTokens.isMonochrome(mode: ColorModeRawTokens.dark) == false)
    }

    @Test func isMonochromeForMonochromeLightValue() throws {
        #expect(ColorModeRawTokens.isMonochrome(mode: ColorModeRawTokens.monochromeLight) == true)
    }

    @Test func isMonochromeForMonochromeDarkValue() throws {
        #expect(ColorModeRawTokens.isMonochrome(mode: ColorModeRawTokens.monochromeDark) == true)
    }

    @Test func isMonochromeForUndefinedValue() throws {
        #expect(ColorModeRawTokens.isMonochrome(mode: ColorModeRawTokens.undefined) == nil)
    }
}
