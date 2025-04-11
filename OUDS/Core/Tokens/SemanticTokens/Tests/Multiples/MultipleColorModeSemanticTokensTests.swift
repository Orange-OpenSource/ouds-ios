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

import OUDSTokensRaw
import OUDSTokensSemantic
import Testing

/// To ensure the `MultipleColorModeSemanticTokens` is tested as a provider of semantic tokens for light and dark color schemes.
struct MultipleColorModeSemanticTokensTests {

    /// Tests if the unique value is applied for light and dark modes
    @Test func initWithOneValue() {
        let unique: ColorModeRawToken = ColorModeRawTokens.light
        let token = MultipleColorModeSemanticTokens("Toktoktok", unique)

        #expect(token.light == unique)
        #expect(token.dark == unique)
    }

    /// Tests if light and dark values are preserved when defined with two assigned non nil values
    @Test func initTwoNonNilValues() {
        let light: ColorModeRawToken = ColorModeRawTokens.light
        let dark: ColorModeRawToken = ColorModeRawTokens.dark
        let token = MultipleColorModeSemanticTokens("Toktoktok", light: light, dark: dark)

        #expect(token.light == light)
        #expect(token.dark == dark)
    }

    /// Tests comparisons between two `MultipleColorModeSemanticTokens` to ensure tokens are considered as equal
    /// if an only if they have the same compact and regular values and have the same types.
    @Test func isEqual() {
        let first = MultipleColorModeSemanticTokens("1", light: ColorModeRawTokens.light, dark: ColorModeRawTokens.dark)
        let second = MultipleColorModeSemanticTokens("2", light: ColorModeRawTokens.monochromeLight, dark: ColorModeRawTokens.monochromeDark)
        let third = MultipleColorModeSemanticTokens("3", light: ColorModeRawTokens.light, dark: ColorModeRawTokens.monochromeDark)
        let fourth = MultipleColorModeSemanticTokens("4", light: ColorModeRawTokens.monochromeLight, dark: ColorModeRawTokens.dark)
        let fifth = MultipleColorModeSemanticTokens("5", light: ColorModeRawTokens.light, dark: ColorModeRawTokens.dark)

        #expect(first.isEqual(first))
        #expect(!first.isEqual(second))
        #expect(!first.isEqual(third))
        #expect(!first.isEqual(fourth))
        #expect(!first.isEqual(fifth))
    }
}
