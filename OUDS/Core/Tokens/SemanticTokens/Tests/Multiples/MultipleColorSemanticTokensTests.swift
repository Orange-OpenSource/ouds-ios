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

/// To ensure the `MultipleColorSemanticTokens` is tested as a provider of semantic tokens for light and dark color schemes.
struct MultipleColorSemanticTokensTests {

    /// Tests if the unique value is applied for light and dark modes
    @Test func initWithOneValue() {
        let unique: ColorRawToken = ColorRawTokens.colorFunctionalMalachite300
        let token = MultipleColorSemanticTokens(unique)

        #expect(token.light == unique)
        #expect(token.dark == unique)
    }

    /// Tests if light and dark values are preserved when defined with two assigned non nil values
    @Test func initTwoNonNilValues() {
        let light: ColorRawToken = ColorRawTokens.colorFunctionalMalachite300
        let dark: ColorRawToken = ColorRawTokens.colorFunctionalScarlet900
        let token = MultipleColorSemanticTokens(light: light, dark: dark)

        #expect(token.light == light)
        #expect(token.dark == dark)
    }

    /// Tests comparisons between two `MultipleColorSemanticTokens` to ensure tokens are considered as equal
    /// if an only if they have the same light and dark values and have the same types.
    @Test func isEqual() {
        let first = MultipleColorSemanticTokens(light: ColorRawTokens.colorFunctionalMalachite300, dark: ColorRawTokens.colorFunctionalScarlet900)
        let second = MultipleColorSemanticTokens(light: ColorRawTokens.colorFunctionalDarkGray80, dark: ColorRawTokens.colorFunctionalSun100)
        let third = MultipleColorSemanticTokens(light: ColorRawTokens.colorFunctionalMalachite300, dark: ColorRawTokens.colorFunctionalSun100)
        let fourth = MultipleColorSemanticTokens(light: ColorRawTokens.colorFunctionalDarkGray80, dark: ColorRawTokens.colorFunctionalScarlet900)
        let fifth = MultipleColorSemanticTokens(light: ColorRawTokens.colorFunctionalMalachite300, dark: ColorRawTokens.colorFunctionalScarlet900)
        let sixth = MultipleSizeSemanticTokens(compact: 12, regular: 12)

        #expect(first.isEqual(first))
        #expect(!first.isEqual(second))
        #expect(!first.isEqual(third))
        #expect(!first.isEqual(fourth))
        #expect(first.isEqual(fifth))
        #expect(!first.isEqual(sixth))
    }
}
