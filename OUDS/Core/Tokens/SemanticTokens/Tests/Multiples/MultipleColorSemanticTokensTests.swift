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

/// To ensure the `MultipleColorSemanticToken` is tested as a provider of semantic tokens for light and dark color schemes.
/// Tests also utilies like, for exmaple, contrat ratio computations.
struct MultipleColorSemanticTokenTests {

    // See https://github.com/Orange-OpenSource/ouds-ios/issues/667
    #if !os(iOS)
    private static let doesRunOniOS = false
    #else
    private static let doesRunOniOS = true
    #endif

    /// Tests if the unique value is applied for light and dark modes
    @Test func initWithOneValue() {
        let unique: ColorRawToken = ColorRawTokens.functionalMalachite300
        let token = MultipleColorSemanticToken(unique)

        #expect(token.light == unique)
        #expect(token.dark == unique)
    }

    /// Tests if light and dark values are preserved when defined with two assigned non nil values
    @Test func initTwoNonNilValues() {
        let light: ColorRawToken = ColorRawTokens.functionalMalachite300
        let dark: ColorRawToken = ColorRawTokens.functionalScarlet900
        let token = MultipleColorSemanticToken(light: light, dark: dark)

        #expect(token.light == light)
        #expect(token.dark == dark)
    }

    /// Tests comparisons between two `MultipleColorSemanticToken` to ensure tokens are considered as equal
    /// if an only if they have the same light and dark values and have the same types.
    @Test func isEqual() {
        let first = MultipleColorSemanticToken(light: ColorRawTokens.functionalMalachite300, dark: ColorRawTokens.functionalScarlet900)
        let second = MultipleColorSemanticToken(light: ColorRawTokens.functionalGrayDark80, dark: ColorRawTokens.functionalSun100)
        let third = MultipleColorSemanticToken(light: ColorRawTokens.functionalMalachite300, dark: ColorRawTokens.functionalSun100)
        let fourth = MultipleColorSemanticToken(light: ColorRawTokens.functionalGrayDark80, dark: ColorRawTokens.functionalScarlet900)
        let fifth = MultipleColorSemanticToken(light: ColorRawTokens.functionalMalachite300, dark: ColorRawTokens.functionalScarlet900)
        let sixth = MultipleSizeSemanticToken(compact: 12, regular: 12)

        #expect(first.isEqual(first))
        #expect(!first.isEqual(second))
        #expect(!first.isEqual(third))
        #expect(!first.isEqual(fourth))
        #expect(first.isEqual(fifth))
        #expect(!first.isEqual(sixth))
    }

    /// Tests controls on `MultipleColorSemanticToken` to ensure that if it contains at least one forbidden color value we know it
    @Test func hasForbiddenColorValues() {
        // Given
        let forbiddenColorValue = "ouds-forbidden-color-value"
        let notForbiddenColorValue = ColorRawTokens.functionalMalachite300

        // When, then
        var multipleColorSemanticToken = MultipleColorSemanticToken(light: notForbiddenColorValue, dark: notForbiddenColorValue)
        #expect(multipleColorSemanticToken.hasForbiddenColorValue() == false)

        // When, then
        multipleColorSemanticToken = MultipleColorSemanticToken(light: notForbiddenColorValue, dark: forbiddenColorValue)
        #expect(multipleColorSemanticToken.hasForbiddenColorValue() == true)

        // When, then
        multipleColorSemanticToken = MultipleColorSemanticToken(light: forbiddenColorValue, dark: notForbiddenColorValue)
        #expect(multipleColorSemanticToken.hasForbiddenColorValue() == true)

        // When, then
        multipleColorSemanticToken = MultipleColorSemanticToken(light: forbiddenColorValue, dark: forbiddenColorValue)
        #expect(multipleColorSemanticToken.hasForbiddenColorValue() == true)
    }

    // MARK: - Extension with OUDSWCAG21Ratio

    @Test("OUDSWCAG21Ratio.debugContrastRatio(::::) utlity must return suitable values", .enabled(if: Self.doesRunOniOS))
    func debugContrastRatioWithTokens() {

        OUDSWCAG21Ratio.oudsDebugWCAG21Colors = true

        // Passing light and dark for AA and non textual (>= 3:1)
        var result = OUDSWCAG21Ratio.debugContrastRatio(MultipleColorSemanticToken(light: "#FFFFFF", dark: "#000000"),
                                                        MultipleColorSemanticToken(light: "#FF5733", dark: "#FFFFFF"),
                                                        .nonTextual,
                                                        .AA)
        #expect(result == true)

        // Passing light and dark for AA and textual (>= 4.5:1)
        result = OUDSWCAG21Ratio.debugContrastRatio(MultipleColorSemanticToken(light: "#2C3E50", dark: "#2C3E50"),
                                                    MultipleColorSemanticToken(light: "#ECF0F1", dark: "#FFFFFF"),
                                                    .textual,
                                                    .AA)
        #expect(result == true)

        // Passing light and dark for AAA and textual (>= 7:1)
        result = OUDSWCAG21Ratio.debugContrastRatio(MultipleColorSemanticToken(light: "#2C3E50", dark: "#100000"),
                                                    MultipleColorSemanticToken(light: "#ECF0F1", dark: "#FFFFFF"),
                                                    .textual,
                                                    .AAA)
        #expect(result == true)

        // Passing light and dark for AAA and non textual (>= 4.5:1)
        result = OUDSWCAG21Ratio.debugContrastRatio(MultipleColorSemanticToken(light: "#2C3E50", dark: "#2C3E50CC"),
                                                    MultipleColorSemanticToken(light: "#ECF0F1", dark: "#FFFFFFCC"),
                                                    .nonTextual,
                                                    .AAA)
        #expect(result == true)

        // Passing light and non passing dark for AA and textual
        result = OUDSWCAG21Ratio.debugContrastRatio(MultipleColorSemanticToken(light: "#4A90E2CC", dark: "#B0B0B0CC"),
                                                    MultipleColorSemanticToken(light: "#FFFFFFCC", dark: "#FFFFFFCC"),
                                                    .textual,
                                                    .AA)
        #expect(result == false)

        // Passing light and non passing dark for AA and non textual
        result = OUDSWCAG21Ratio.debugContrastRatio(MultipleColorSemanticToken(light: "#FFFFFFCC", dark: "#AAAAAACC"),
                                                    MultipleColorSemanticToken(light: "#FF5733CC", dark: "#FFFFFFCC"),
                                                    .nonTextual,
                                                    .AA)
        #expect(result == false)

        // Passing light and non passing dark for AAA and textual
        result = OUDSWCAG21Ratio.debugContrastRatio(MultipleColorSemanticToken(light: "#1A1A1ACC", dark: "#CCCCCCCC"),
                                                    MultipleColorSemanticToken(light: "#FFFFFFCC", dark: "#FFFFFFCC"),
                                                    .textual,
                                                    .AAA)
        #expect(result == false)

        // Passing light and non passing dark for AAA and non textual
        result = OUDSWCAG21Ratio.debugContrastRatio(MultipleColorSemanticToken(light: "#4A90E2CC", dark: "#B0B0B0CC"),
                                                    MultipleColorSemanticToken(light: "#FFFFFFCC", dark: "#FFFFFFCC"),
                                                    .nonTextual,
                                                    .AAA)
        #expect(result == false)

        // Non passing light and passing dark for AA and textual
        result = OUDSWCAG21Ratio.debugContrastRatio(MultipleColorSemanticToken(light: "#D9D9D9CC", dark: "#2E7D32CC"),
                                                    MultipleColorSemanticToken(light: "#FFFFFFCC", dark: "#FFFFFFCC"),
                                                    .textual,
                                                    .AA)
        #expect(result == false)

        // Non passing light and passing dark for AA and non textual
        result = OUDSWCAG21Ratio.debugContrastRatio(MultipleColorSemanticToken(light: "#E0E0E0CC", dark: "#B0BEC5CC"),
                                                    MultipleColorSemanticToken(light: "#FFFFFFCC", dark: "#FFFFFFCC"),
                                                    .nonTextual,
                                                    .AA)
        #expect(result == false)

        // Non passing light and passing dark for AAA and textual
        result = OUDSWCAG21Ratio.debugContrastRatio(MultipleColorSemanticToken(light: "#A0A0A0CC", dark: "#000000CC"),
                                                    MultipleColorSemanticToken(light: "#FFFFFFCC", dark: "#F5F5F5CC"),
                                                    .textual,
                                                    .AAA)
        #expect(result == false)

        // Non passing light and passing dark for AAA and non textual
        result = OUDSWCAG21Ratio.debugContrastRatio(MultipleColorSemanticToken(light: "#C0C0C0CC", dark: "#1A73E8CC"),
                                                    MultipleColorSemanticToken(light: "#FFFFFFCC", dark: "#FFFFFFCC"),
                                                    .nonTextual,
                                                    .AAA)
        #expect(result == false)

        // Non passing light and non passing dark for AA and textual
        result = OUDSWCAG21Ratio.debugContrastRatio(MultipleColorSemanticToken("#B0B0B0CC"),
                                                    MultipleColorSemanticToken("#FFFFFFCC"),
                                                    .textual,
                                                    .AA)
        #expect(result == false)

        // Non passing light and non passing dark for AA and non textual
        result = OUDSWCAG21Ratio.debugContrastRatio(MultipleColorSemanticToken("#D3D3D3CC"),
                                                    MultipleColorSemanticToken("#FFFFFFCC"),
                                                    .nonTextual,
                                                    .AA)
        #expect(result == false)

        // Non passing light and non passing dark for AAA and textual
        result = OUDSWCAG21Ratio.debugContrastRatio(MultipleColorSemanticToken("#7D7D7DCC"),
                                                    MultipleColorSemanticToken("#FFFFFFCC"),
                                                    .nonTextual,
                                                    .AAA)
        #expect(result == false)

        // Non passing light and non passing dark for AAA and non textual
        result = OUDSWCAG21Ratio.debugContrastRatio(MultipleColorSemanticToken("#B0B0B0CC"),
                                                    MultipleColorSemanticToken("#FFFFFFCC"),
                                                    .nonTextual,
                                                    .AAA)
        #expect(result == false)
    }
}

// swiftlint:enable function_body_length
