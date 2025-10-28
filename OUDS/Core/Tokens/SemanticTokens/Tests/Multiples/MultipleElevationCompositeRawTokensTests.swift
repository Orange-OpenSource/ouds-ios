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

/// To ensure the `MultipleElevationCompositeRawTokens` is tested as a provider of semantic tokens for light and dark color schemes.
struct MultipleElevationCompositeRawTokensTests {

    /// Tests if the unique value is applied for light and dark modes
    @Test func initWithOneValue() {
        let unique: ElevationCompositeRawToken = ElevationRawTokens.bottom_4_100
        let token = MultipleElevationCompositeRawTokens(unique)

        #expect(token.light == unique)
        #expect(token.dark == unique)
    }

    /// Tests if light and dark values are preserved when defined with two assigned non nil values
    @Test func initWithTwoValues() {
        let light: ElevationCompositeRawToken = ElevationRawTokens.bottom_1_200
        let dark: ElevationCompositeRawToken = ElevationRawTokens.bottom_1_300
        let token = MultipleElevationCompositeRawTokens(light: light, dark: dark)

        #expect(token.light == light)
        #expect(token.dark == dark)
    }

    /// Tests comparisons between two `MultipleElevationCompositeRawTokens` to ensure tokens are considered as equal
    /// if an only if they have the same light and dark values and have the same types.
    @Test func isEqual() {
        let first = MultipleElevationCompositeRawTokens(light: ElevationRawTokens.bottom_4_100, dark: ElevationRawTokens.bottom_2_500)
        let second = MultipleElevationCompositeRawTokens(light: ElevationRawTokens.bottom_3_300, dark: ElevationRawTokens.bottom_3_500)
        let third = MultipleElevationCompositeRawTokens(light: ElevationRawTokens.bottom_4_100, dark: ElevationRawTokens.bottom_3_500)
        let fourth = MultipleElevationCompositeRawTokens(light: ElevationRawTokens.bottom_3_300, dark: ElevationRawTokens.bottom_2_500)
        let fifth = MultipleElevationCompositeRawTokens(light: ElevationRawTokens.bottom_4_100, dark: ElevationRawTokens.bottom_2_500)
        let sixth = MultipleSizeSemanticTokens(compact: 12, regular: 12)

        #expect(first.isEqual(first))
        #expect(!first.isEqual(second))
        #expect(!first.isEqual(third))
        #expect(!first.isEqual(fourth))
        #expect(first.isEqual(fifth))
        #expect(!first.isEqual(sixth))
    }
}
