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

import OUDSFoundations
import OUDSTokensRaw
import OUDSTokensSemantic
import Testing

// swiftlint:disable function_body_length

/// To ensure the `MultipleColorSemanticTokens` is tested as a provider of semantic tokens for light and dark color schemes.
/// Tests also utilies like, for exmaple, contrat ratio computations.
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

    // MARK: - Extension with OUDSWCAG21Ratio

    @Test("OUDSWCAG21Ratio.debugContrastRatio(::::) utlity must return suitable values")
    func debugContrastRatioWithTokens() {

        OUDSWCAG21Ratio.oudsDebugWCAG21Colors = true

        // Passing light and dark for AA and non textual (>= 3:1)
        var result = OUDSWCAG21Ratio.debugContrastRatio(MultipleColorSemanticTokens(light: "#FFFFFF", dark: "#000000"),
                                                        MultipleColorSemanticTokens(light: "#FF5733", dark: "#FFFFFF"),
                                                        .nonTextual,
                                                        .AA)
        #expect(result == true)

        // Passing light and dark for AA and textual (>= 4.5:1)
        result = OUDSWCAG21Ratio.debugContrastRatio(MultipleColorSemanticTokens(light: "#2C3E50", dark: "#2C3E50"),
                                                    MultipleColorSemanticTokens(light: "#ECF0F1", dark: "#FFFFFF"),
                                                    .textual,
                                                    .AA)
        #expect(result == true)

        // Passing light and dark for AAA and textual (>= 7:1)
        result = OUDSWCAG21Ratio.debugContrastRatio(MultipleColorSemanticTokens(light: "#2C3E50", dark: "#100000"),
                                                    MultipleColorSemanticTokens(light: "#ECF0F1", dark: "#FFFFFF"),
                                                    .textual,
                                                    .AAA)
        #expect(result == true)

        // Passing light and dark for AAA and non textual (>= 4.5:1)
        result = OUDSWCAG21Ratio.debugContrastRatio(MultipleColorSemanticTokens(light: "#2C3E50", dark: "#2C3E50CC"),
                                                    MultipleColorSemanticTokens(light: "#ECF0F1", dark: "#FFFFFFCC"),
                                                    .nonTextual,
                                                    .AAA)
        #expect(result == true)

        // Passing light and non passing dark for AA and textual
        result = OUDSWCAG21Ratio.debugContrastRatio(MultipleColorSemanticTokens(light: "#4A90E2CC", dark: "#B0B0B0CC"),
                                                    MultipleColorSemanticTokens(light: "#FFFFFFCC", dark: "#FFFFFFCC"),
                                                    .textual,
                                                    .AA)
        #expect(result == false)

        // Passing light and non passing dark for AA and non textual
        result = OUDSWCAG21Ratio.debugContrastRatio(MultipleColorSemanticTokens(light: "#FFFFFFCC", dark: "#AAAAAACC"),
                                                    MultipleColorSemanticTokens(light: "#FF5733CC", dark: "#FFFFFFCC"),
                                                    .nonTextual,
                                                    .AA)
        #expect(result == false)

        // Passing light and non passing dark for AAA and textual
        result = OUDSWCAG21Ratio.debugContrastRatio(MultipleColorSemanticTokens(light: "#1A1A1ACC", dark: "#CCCCCCCC"),
                                                    MultipleColorSemanticTokens(light: "#FFFFFFCC", dark: "#FFFFFFCC"),
                                                    .textual,
                                                    .AAA)
        #expect(result == false)

        // Passing light and non passing dark for AAA and non textual
        result = OUDSWCAG21Ratio.debugContrastRatio(MultipleColorSemanticTokens(light: "#4A90E2CC", dark: "#B0B0B0CC"),
                                                    MultipleColorSemanticTokens(light: "#FFFFFFCC", dark: "#FFFFFFCC"),
                                                    .nonTextual,
                                                    .AAA)
        #expect(result == false)

        // Non passing light and passing dark for AA and textual
        result = OUDSWCAG21Ratio.debugContrastRatio(MultipleColorSemanticTokens(light: "#D9D9D9CC", dark: "#2E7D32CC"),
                                                    MultipleColorSemanticTokens(light: "#FFFFFFCC", dark: "#FFFFFFCC"),
                                                    .textual,
                                                    .AA)
        #expect(result == false)

        // Non passing light and passing dark for AA and non textual
        result = OUDSWCAG21Ratio.debugContrastRatio(MultipleColorSemanticTokens(light: "#E0E0E0CC", dark: "#B0BEC5CC"),
                                                    MultipleColorSemanticTokens(light: "#FFFFFFCC", dark: "#FFFFFFCC"),
                                                    .nonTextual,
                                                    .AA)
        #expect(result == false)

        // Non passing light and passing dark for AAA and textual
        result = OUDSWCAG21Ratio.debugContrastRatio(MultipleColorSemanticTokens(light: "#A0A0A0CC", dark: "#000000CC"),
                                                    MultipleColorSemanticTokens(light: "#FFFFFFCC", dark: "#F5F5F5CC"),
                                                    .textual,
                                                    .AAA)
        #expect(result == false)

        // Non passing light and passing dark for AAA and non textual
        result = OUDSWCAG21Ratio.debugContrastRatio(MultipleColorSemanticTokens(light: "#C0C0C0CC", dark: "#1A73E8CC"),
                                                    MultipleColorSemanticTokens(light: "#FFFFFFCC", dark: "#FFFFFFCC"),
                                                    .nonTextual,
                                                    .AAA)
        #expect(result == false)

        // Non passing light and non passing dark for AA and textual
        result = OUDSWCAG21Ratio.debugContrastRatio(MultipleColorSemanticTokens("#B0B0B0CC"),
                                                    MultipleColorSemanticTokens("#FFFFFFCC"),
                                                    .textual,
                                                    .AA)
        #expect(result == false)

        // Non passing light and non passing dark for AA and non textual
        result = OUDSWCAG21Ratio.debugContrastRatio(MultipleColorSemanticTokens("#D3D3D3CC"),
                                                    MultipleColorSemanticTokens("#FFFFFFCC"),
                                                    .nonTextual,
                                                    .AA)
        #expect(result == false)

        // Non passing light and non passing dark for AAA and textual
        result = OUDSWCAG21Ratio.debugContrastRatio(MultipleColorSemanticTokens("#7D7D7DCC"),
                                                    MultipleColorSemanticTokens("#FFFFFFCC"),
                                                    .nonTextual,
                                                    .AAA)
        #expect(result == false)

        // Non passing light and non passing dark for AAA and non textual
        result = OUDSWCAG21Ratio.debugContrastRatio(MultipleColorSemanticTokens("#B0B0B0CC"),
                                                    MultipleColorSemanticTokens("#FFFFFFCC"),
                                                    .nonTextual,
                                                    .AAA)
        #expect(result == false)
    }
}
// swiftlint:enable function_body_length
