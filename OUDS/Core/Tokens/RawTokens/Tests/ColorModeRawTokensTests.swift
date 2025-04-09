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

import Foundation
import OUDSTokensRaw
import Testing
import TestsUtils

// swiftlint:disable type_body_length
// swiftlint:disable file_length
// swiftlint:disable force_try
// swiftlint:disable function_body_length

/// The aim of this tests class is to look for regressions in **color raw tokens**.
///
/// Because these values will be at least generated through an external tool, is it not relevant to test each token values.
/// Indeed, each future generation of Swift code may break theses tests because there are new values.
/// However, in the semantics of **color raw tokens**, there will be some unchanged things like relationships between tokens.
///
/// Here are some rules to follow:
/// - all colors must be different
/// - for a group of colors, the higher the token is, the darker the color is
/// - all colors must have an hexadecimal sring value with 8 b16 digits
struct ColorRawTokensTests {

    // MARK: - Settings

    /// The regular expression pattern to check the colors are in hexa format
    private static let colorFormat = try! NSRegularExpression(pattern: "^#[0-9A-Fa-f]{8}$")

    // MARK: - Tests

    // MARK: - Primitive token - Colors - Black, white

    @Test func colorRawTokenColorFunctionalWhiteLighterThanColorFunctionalDark() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalWhite, ColorRawTokens.colorFunctionalBlack)
    }

    @Test func colorRawTokenColorFunctionalBlackFormat() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalBlack, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalWhiteFormat() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalWhite, regexp: Self.colorFormat)
    }

    // MARK: - Primitive token - Colors - Functional light gray

    @Test func colorRawTokenFunctionalLightGray80LighterThanFunctionalLightGray160() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalLightGray80, ColorRawTokens.colorFunctionalLightGray160)
    }

    @Test func colorRawTokenFunctionalLightGray160LighterThanFunctionalLightGray240() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalLightGray160, ColorRawTokens.colorFunctionalLightGray240)
    }

    @Test func colorRawTokenFunctionalLightGray240LighterThanFunctionalLightGray320() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalLightGray240, ColorRawTokens.colorFunctionalLightGray320)
    }

    @Test func colorRawTokenFunctionalLightGray320LighterThanFunctionalLightGray400() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalLightGray320, ColorRawTokens.colorFunctionalLightGray400)
    }

    @Test func colorRawTokenFunctionalLightGray400LighterThanFunctionalLightGray480() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalLightGray400, ColorRawTokens.colorFunctionalLightGray480)
    }

    @Test func colorRawTokenFunctionalLightGray480LighterThanFunctionalLightGray560() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalLightGray480, ColorRawTokens.colorFunctionalLightGray560)
    }

    @Test func colorRawTokenFunctionalLightGray560LighterThanFunctionalLightGray640() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalLightGray560, ColorRawTokens.colorFunctionalLightGray640)
    }

    @Test func colorRawTokenFunctionalLightGray640LighterThanFunctionalLightGray720() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalLightGray640, ColorRawTokens.colorFunctionalLightGray720)
    }

    @Test func colorRawTokenFunctionalLightGray720LighterThanFunctionalLightGray800() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalLightGray720, ColorRawTokens.colorFunctionalLightGray800)
    }

    @Test func colorRawTokenFunctionalLightGray800LighterThanFunctionalLightGray880() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalLightGray800, ColorRawTokens.colorFunctionalLightGray880)
    }

    @Test func colorRawTokenFunctionalLightGray880LighterThanFunctionalLightGray960() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalLightGray880, ColorRawTokens.colorFunctionalLightGray960)
    }

    @Test func colorRawTokenColorFunctionalLightGray80Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalLightGray80, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalLightGray160Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalLightGray160, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalLightGray240Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalLightGray240, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalLightGray320Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalLightGray320, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalLightGray400Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalLightGray400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalLightGray480Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalLightGray480, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalLightGray560Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalLightGray560, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalLightGray640Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalLightGray640, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalLightGray720Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalLightGray720, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalLightGray800Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalLightGray800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalLightGray880Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalLightGray880, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalLightGray960Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalLightGray960, regexp: Self.colorFormat)
    }

    // MARK: - Primitive token - Colors - Functional dark gray

    @Test func colorRawTokenFunctionalDarkGray80LighterThanFunctionalDarkGray160() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalDarkGray80, ColorRawTokens.colorFunctionalDarkGray160)
    }

    @Test func colorRawTokenFunctionalDarkGray160LighterThanFunctionalDarkGray240() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalDarkGray160, ColorRawTokens.colorFunctionalDarkGray240)
    }

    @Test func colorRawTokenFunctionalDarkGray240LighterThanFunctionalDarkGray320() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalDarkGray240, ColorRawTokens.colorFunctionalDarkGray320)
    }

    @Test func colorRawTokenFunctionalDarkGray320LighterThanFunctionalDarkGray400() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalDarkGray320, ColorRawTokens.colorFunctionalDarkGray400)
    }

    @Test func colorRawTokenFunctionalDarkGray400LighterThanFunctionalDarkGray480() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalDarkGray400, ColorRawTokens.colorFunctionalDarkGray480)
    }

    @Test func colorRawTokenFunctionalDarkGray480LighterThanFunctionalDarkGray560() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalDarkGray480, ColorRawTokens.colorFunctionalDarkGray560)
    }

    @Test func colorRawTokenFunctionalDarkGray560LighterThanFunctionalDarkGray640() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalDarkGray560, ColorRawTokens.colorFunctionalDarkGray640)
    }

    @Test func colorRawTokenFunctionalDarkGray640LighterThanFunctionalDarkGray720() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalDarkGray640, ColorRawTokens.colorFunctionalDarkGray720)
    }

    @Test func colorRawTokenFunctionalDarkGray720LighterThanFunctionalDarkGray800() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalDarkGray720, ColorRawTokens.colorFunctionalDarkGray800)
    }

    @Test func colorRawTokenFunctionalDarkGray800LighterThanFunctionalDarkGray880() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalDarkGray800, ColorRawTokens.colorFunctionalDarkGray880)
    }

    @Test func colorRawTokenFunctionalDarkGray880LighterThanFunctionalDarkGray960() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalDarkGray880, ColorRawTokens.colorFunctionalDarkGray960)
    }

    @Test func colorRawTokenColorFunctionalDarkGray80Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalDarkGray80, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalDarkGray160Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalDarkGray160, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalDarkGray240Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalDarkGray240, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalDarkGray320Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalDarkGray320, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalDarkGray400Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalDarkGray400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalDarkGray480Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalDarkGray480, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalDarkGray560Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalDarkGray560, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalDarkGray640Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalDarkGray640, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalDarkGray720Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalDarkGray720, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalDarkGray800Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalDarkGray800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalDarkGray880Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalDarkGray880, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalDarkGray960Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalDarkGray960, regexp: Self.colorFormat)
    }

    // MARK: - Primitive token - Colors - Functional scarlet

    @Test func colorRawTokenFunctionalScarlet100LighterThanFunctionalScarlet200() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalScarlet100, ColorRawTokens.colorFunctionalScarlet200)
    }

    @Test func colorRawTokenFunctionalScarlet200LighterThanFunctionalScarlet300() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalScarlet200, ColorRawTokens.colorFunctionalScarlet300)
    }

    @Test func colorRawTokenFunctionalScarlet300LighterThanFunctionalScarlet400() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalScarlet300, ColorRawTokens.colorFunctionalScarlet400)
    }

    @Test func colorRawTokenFunctionalScarlet400LighterThanFunctionalScarlet500() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalScarlet400, ColorRawTokens.colorFunctionalScarlet500)
    }

    @Test func colorRawTokenFunctionalScarlet500LighterThanFunctionalScarlet600() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalScarlet500, ColorRawTokens.colorFunctionalScarlet600)
    }

    @Test func colorRawTokenFunctionalScarlet600LighterThanFunctionalScarlet700() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalScarlet600, ColorRawTokens.colorFunctionalScarlet700)
    }

    @Test func colorRawTokenFunctionalScarlet700LighterThanFunctionalScarlet800() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalScarlet700, ColorRawTokens.colorFunctionalScarlet800)
    }

    @Test func colorRawTokenFunctionalScarlet800LighterThanFunctionalScarlet900() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalScarlet800, ColorRawTokens.colorFunctionalScarlet900)
    }

    @Test func colorRawTokenColorFunctionalScarlet100Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalScarlet100, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalScarlet200Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalScarlet200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalScarlet300Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalScarlet300, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalScarlet400Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalScarlet400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalScarlet500Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalScarlet500, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalScarlet600Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalScarlet600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalScarlet700Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalScarlet700, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalScarlet800Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalScarlet800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalScarlet900Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalScarlet900, regexp: Self.colorFormat)
    }

    // MARK: - Primitive token - Colors - Functional sun

    @Test func colorRawTokenFunctionalSun100LighterThanFunctionalSun200() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalSun100, ColorRawTokens.colorFunctionalSun200)
    }

    @Test func colorRawTokenFunctionalSun200LighterThanFunctionalSun300() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalSun200, ColorRawTokens.colorFunctionalSun300)
    }

    @Test func colorRawTokenFunctionalSun300LighterThanFunctionalSun400() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalSun300, ColorRawTokens.colorFunctionalSun400)
    }

    @Test func colorRawTokenFunctionalSun400LighterThanFunctionalSun500() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalSun400, ColorRawTokens.colorFunctionalSun500)
    }

    @Test func colorRawTokenFunctionalSun500LighterThanFunctionalSun600() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalSun500, ColorRawTokens.colorFunctionalSun600)
    }

    @Test func colorRawTokenFunctionalSun600LighterThanFunctionalSun700() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalSun600, ColorRawTokens.colorFunctionalSun700)
    }

    @Test func colorRawTokenFunctionalSun700LighterThanFunctionalSun800() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalSun700, ColorRawTokens.colorFunctionalSun800)
    }

    @Test func colorRawTokenFunctionalSun800LighterThanFunctionalSun900() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalSun800, ColorRawTokens.colorFunctionalSun900)
    }

    @Test func colorRawTokenColorFunctionalSun100Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalSun100, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalSun200Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalSun200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalSun300Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalSun300, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalSun400Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalSun400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalSun500Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalSun500, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalSun600Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalSun600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalSun700Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalSun700, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalSun800Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalSun800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalSun900Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalSun900, regexp: Self.colorFormat)
    }

    // MARK: Primitive token - Colors - Functional malachite

    @Test func colorRawTokenFunctionalMalachite100LighterThanFunctionalMalachite200() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalMalachite100, ColorRawTokens.colorFunctionalMalachite200)
    }

    @Test func colorRawTokenFunctionalMalachite200LighterThanFunctionalMalachite300() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalMalachite200, ColorRawTokens.colorFunctionalMalachite300)
    }

    @Test func colorRawTokenFunctionalMalachite300LighterThanFunctionalMalachite400() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalMalachite300, ColorRawTokens.colorFunctionalMalachite400)
    }

    @Test func colorRawTokenFunctionalMalachite400LighterThanFunctionalMalachite500() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalMalachite400, ColorRawTokens.colorFunctionalMalachite500)
    }

    @Test func colorRawTokenFunctionalMalachite500LighterThanFunctionalMalachite600() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalMalachite500, ColorRawTokens.colorFunctionalMalachite600)
    }

    @Test func colorRawTokenFunctionalMalachite600LighterThanFunctionalMalachite700() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalMalachite600, ColorRawTokens.colorFunctionalMalachite700)
    }

    @Test func colorRawTokenFunctionalMalachite700LighterThanFunctionalMalachite800() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalMalachite700, ColorRawTokens.colorFunctionalMalachite800)
    }

    @Test func colorRawTokenFunctionalMalachite800LighterThanFunctionalMalachite900() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalMalachite800, ColorRawTokens.colorFunctionalMalachite900)
    }

    @Test func colorRawTokenColorFunctionalMalachite100Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalMalachite100, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalMalachite200Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalMalachite200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalMalachite300Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalMalachite300, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalMalachite400Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalMalachite400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalMalachite500Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalMalachite500, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalMalachite600Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalMalachite600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalMalachite700Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalMalachite700, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalMalachite800Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalMalachite800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalMalachite900Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalMalachite900, regexp: Self.colorFormat)
    }

    // MARK: - Primitive token - Colors - Functional dodger blue

    @Test func colorRawTokenFunctionalDodgerBlue100LighterThanFunctionalDodgerBlue200() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalDodgerBlue100, ColorRawTokens.colorFunctionalDodgerBlue200)
    }

    @Test func colorRawTokenFunctionalDodgerBlue200LighterThanFunctionalDodgerBlue300() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalDodgerBlue200, ColorRawTokens.colorFunctionalDodgerBlue300)
    }

    @Test func colorRawTokenFunctionalDodgerBlue300LighterThanFunctionalDodgerBlue400() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalDodgerBlue300, ColorRawTokens.colorFunctionalDodgerBlue400)
    }

    @Test func colorRawTokenFunctionalDodgerBlue400LighterThanFunctionalDodgerBlue500() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalDodgerBlue400, ColorRawTokens.colorFunctionalDodgerBlue500)
    }

    @Test func colorRawTokenFunctionalDodgerBlue500LighterThanFunctionalDodgerBlue600() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalDodgerBlue500, ColorRawTokens.colorFunctionalDodgerBlue600)
    }

    @Test func colorRawTokenFunctionalDodgerBlue600LighterThanFunctionalDodgerBlue700() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalDodgerBlue600, ColorRawTokens.colorFunctionalDodgerBlue700)
    }

    @Test func colorRawTokenFunctionalDodgerBlue700LighterThanFunctionalDodgerBlue800() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalDodgerBlue700, ColorRawTokens.colorFunctionalDodgerBlue800)
    }

    @Test func colorRawTokenFunctionalDodgerBlue800LighterThanFunctionalDodgerBlue900() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalDodgerBlue800, ColorRawTokens.colorFunctionalDodgerBlue900)
    }

    @Test func colorRawTokenColorFunctionalDodgerBlue100Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalDodgerBlue100, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalDodgerBlue200Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalDodgerBlue200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalDodgerBlue300Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalDodgerBlue300, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalDodgerBlue400Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalDodgerBlue400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalDodgerBlue500Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalDodgerBlue500, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalDodgerBlue600Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalDodgerBlue600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalDodgerBlue700Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalDodgerBlue700, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalDodgerBlue800Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalDodgerBlue800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalDodgerBlue900Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalDodgerBlue900, regexp: Self.colorFormat)
    }

    // MARK: - Primitive token - Colors - Opacity black

    @Test func colorOpacityBlack0DarkerThanTransparentBlack40() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityBlack0, ColorRawTokens.colorOpacityBlack40)
    }

    @Test func colorOpacityBlack40DarkerThanTransparentBlack80() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityBlack40, ColorRawTokens.colorOpacityBlack80)
    }

    @Test func colorOpacityBlack80DarkerThanTransparentBlack120() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityBlack80, ColorRawTokens.colorOpacityBlack120)
    }

    @Test func colorOpacityBlack120DarkerThanTransparentBlack160() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityBlack120, ColorRawTokens.colorOpacityBlack160)
    }

    @Test func colorOpacityBlack160DarkerThanTransparentBlack200() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityBlack160, ColorRawTokens.colorOpacityBlack200)
    }

    @Test func colorOpacityBlack200DarkerThanTransparentBlack240() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityBlack200, ColorRawTokens.colorOpacityBlack240)
    }

    @Test func colorOpacityBlack240DarkerThanTransparentBlack280() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityBlack240, ColorRawTokens.colorOpacityBlack280)
    }

    @Test func colorOpacityBlack280DarkerThanTransparentBlack320() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityBlack280, ColorRawTokens.colorOpacityBlack320)
    }

    @Test func colorOpacityBlack320DarkerThanTransparentBlack360() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityBlack320, ColorRawTokens.colorOpacityBlack360)
    }

    @Test func colorOpacityBlack360DarkerThanTransparentBlack400() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityBlack360, ColorRawTokens.colorOpacityBlack400)
    }

    @Test func colorOpacityBlack400DarkerThanTransparentBlack440() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityBlack400, ColorRawTokens.colorOpacityBlack440)
    }

    @Test func colorOpacityBlack440DarkerThanTransparentBlack480() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityBlack440, ColorRawTokens.colorOpacityBlack480)
    }

    @Test func colorOpacityBlack480DarkerThanTransparentBlack520() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityBlack480, ColorRawTokens.colorOpacityBlack520)
    }

    @Test func colorOpacityBlack520DarkerThanTransparentBlack560() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityBlack520, ColorRawTokens.colorOpacityBlack560)
    }

    @Test func colorOpacityBlack560DarkerThanTransparentBlack600() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityBlack560, ColorRawTokens.colorOpacityBlack600)
    }

    @Test func colorOpacityBlack600DarkerThanTransparentBlack640() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityBlack600, ColorRawTokens.colorOpacityBlack640)
    }

    @Test func colorOpacityBlack640DarkerThanTransparentBlack680() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityBlack640, ColorRawTokens.colorOpacityBlack680)
    }

    @Test func colorOpacityBlack680DarkerThanTransparentBlack720() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityBlack680, ColorRawTokens.colorOpacityBlack720)
    }

    @Test func colorOpacityBlack720DarkerThanTransparentBlack760() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityBlack720, ColorRawTokens.colorOpacityBlack760)
    }

    @Test func colorOpacityBlack760DarkerThanTransparentBlack800() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityBlack760, ColorRawTokens.colorOpacityBlack800)
    }

    @Test func colorOpacityBlack800DarkerThanTransparentBlack840() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityBlack800, ColorRawTokens.colorOpacityBlack840)
    }

    @Test func colorOpacityBlack880DarkerThanTransparentBlack920() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityBlack880, ColorRawTokens.colorOpacityBlack920)
    }

    @Test func colorOpacityBlack920DarkerThanTransparentBlack960() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityBlack920, ColorRawTokens.colorOpacityBlack960)
    }

    @Test func colorRawTokenColorOpacityBlack0Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityBlack0, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack40Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityBlack40, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack80Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityBlack80, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack120Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityBlack120, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack160Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityBlack160, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack200Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityBlack200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack240Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityBlack240, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack280Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityBlack280, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack320Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityBlack320, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack360Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityBlack360, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack400Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityBlack400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack440Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityBlack440, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack480Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityBlack480, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack520Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityBlack520, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack560Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityBlack560, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack600Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityBlack600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack640Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityBlack640, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack680Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityBlack680, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack720Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityBlack720, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack760Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityBlack760, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack800Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityBlack800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack840Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityBlack840, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack880Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityBlack880, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack920Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityBlack920, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack960Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityBlack960, regexp: Self.colorFormat)
    }

    // MARK: - Primitive token - Colors - Opacity Colored

    @Test func colorRawTokenColorOpacityMalachiteFormat() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityMalachite, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityScarletFormat() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityScarlet, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacitySunFormat() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacitySun, regexp: Self.colorFormat)
    }

    // MARK: - Primitive token - Colors - Opacity White

    @Test func colorOpacityWhite0DarkerThanTransparentWhite40() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityWhite0, ColorRawTokens.colorOpacityWhite40)
    }

    @Test func colorOpacityWhite40DarkerThanTransparentWhite80() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityWhite40, ColorRawTokens.colorOpacityWhite80)
    }

    @Test func colorOpacityWhite80DarkerThanTransparentWhite120() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityWhite80, ColorRawTokens.colorOpacityWhite120)
    }

    @Test func colorOpacityWhite120DarkerThanTransparentWhite160() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityWhite120, ColorRawTokens.colorOpacityWhite160)
    }

    @Test func colorOpacityWhite160DarkerThanTransparentWhite200() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityWhite160, ColorRawTokens.colorOpacityWhite200)
    }

    @Test func colorOpacityWhite200DarkerThanTransparentWhite240() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityWhite200, ColorRawTokens.colorOpacityWhite240)
    }

    @Test func colorOpacityWhite240DarkerThanTransparentWhite280() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityWhite240, ColorRawTokens.colorOpacityWhite280)
    }

    @Test func colorOpacityWhite280DarkerThanTransparentWhite320() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityWhite280, ColorRawTokens.colorOpacityWhite320)
    }

    @Test func colorOpacityWhite320DarkerThanTransparentWhite360() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityWhite320, ColorRawTokens.colorOpacityWhite360)
    }

    @Test func colorOpacityWhite360DarkerThanTransparentWhite400() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityWhite360, ColorRawTokens.colorOpacityWhite400)
    }

    @Test func colorOpacityWhite400DarkerThanTransparentWhite440() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityWhite400, ColorRawTokens.colorOpacityWhite440)
    }

    @Test func colorOpacityWhite440DarkerThanTransparentWhite480() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityWhite440, ColorRawTokens.colorOpacityWhite480)
    }

    @Test func colorOpacityWhite480DarkerThanTransparentWhite520() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityWhite480, ColorRawTokens.colorOpacityWhite520)
    }

    @Test func colorOpacityWhite520DarkerThanTransparentWhite560() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityWhite520, ColorRawTokens.colorOpacityWhite560)
    }

    @Test func colorOpacityWhite560DarkerThanTransparentWhite600() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityWhite560, ColorRawTokens.colorOpacityWhite600)
    }

    @Test func colorOpacityWhite600DarkerThanTransparentWhite640() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityWhite600, ColorRawTokens.colorOpacityWhite640)
    }

    @Test func colorOpacityWhite640DarkerThanTransparentWhite680() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityWhite640, ColorRawTokens.colorOpacityWhite680)
    }

    @Test func colorOpacityWhite680DarkerThanTransparentWhite720() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityWhite680, ColorRawTokens.colorOpacityWhite720)
    }

    @Test func colorOpacityWhite720DarkerThanTransparentWhite760() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityWhite720, ColorRawTokens.colorOpacityWhite760)
    }

    @Test func colorOpacityWhite760DarkerThanTransparentWhite800() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityWhite760, ColorRawTokens.colorOpacityWhite800)
    }

    @Test func colorOpacityWhite800DarkerThanTransparentWhite840() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityWhite800, ColorRawTokens.colorOpacityWhite840)
    }

    @Test func colorOpacityWhite880DarkerThanTransparentWhite920() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityWhite880, ColorRawTokens.colorOpacityWhite920)
    }

    @Test func colorOpacityWhite920DarkerThanTransparentWhite960() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorOpacityWhite920, ColorRawTokens.colorOpacityWhite960)
    }

    @Test func colorRawTokenColorOpacityWhite0Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityWhite0, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite40Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityWhite40, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite80Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityWhite80, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite120Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityWhite120, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite160Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityWhite160, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite200Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityWhite200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite240Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityWhite240, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite280Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityWhite280, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite320Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityWhite320, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite360Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityWhite360, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite400Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityWhite400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite440Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityWhite440, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite480Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityWhite480, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite520Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityWhite520, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite560Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityWhite560, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite600Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityWhite600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite640Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityWhite640, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite680Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityWhite680, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite720Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityWhite720, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite760Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityWhite760, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite800Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityWhite800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite840Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityWhite840, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite880Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityWhite880, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite920Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityWhite920, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite960Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorOpacityWhite960, regexp: Self.colorFormat)
    }

    // MARK: Primitive token - Colors - Emerald

    @Test func colorRawTokenColorDecorativeEmerald100LighterThanEmerald200() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeEmerald100, ColorRawTokens.colorDecorativeEmerald200)
    }

    @Test func colorRawTokenColorDecorativeEmerald200LighterThanEmerald300() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeEmerald200, ColorRawTokens.colorDecorativeEmerald300)
    }

    @Test func colorRawTokenColorDecorativeEmerald300LighterThanEmerald400() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeEmerald300, ColorRawTokens.colorDecorativeEmerald400)
    }

    @Test func colorRawTokenColorDecorativeEmerald400LighterThanEmerald500() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeEmerald400, ColorRawTokens.colorDecorativeEmerald500)
    }

    @Test func colorRawTokenColorDecorativeEmerald500LighterThanEmerald600() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeEmerald500, ColorRawTokens.colorDecorativeEmerald600)
    }

    @Test func colorRawTokenColorDecorativeEmerald600LighterThanEmerald700() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeEmerald600, ColorRawTokens.colorDecorativeEmerald700)
    }

    @Test func colorRawTokenColorDecorativeEmerald700LighterThanEmerald800() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeEmerald700, ColorRawTokens.colorDecorativeEmerald800)
    }

    @Test func colorRawTokenColorDecorativeEmerald800LighterThanEmerald900() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeEmerald800, ColorRawTokens.colorDecorativeEmerald900)
    }

    @Test func colorRawTokenColorDecorativeEmerald100Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeEmerald100, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeEmerald200Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeEmerald200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeEmerald300Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeEmerald300, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeEmerald400Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeEmerald400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeEmerald500Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeEmerald500, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeEmerald600Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeEmerald600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeEmerald700Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeEmerald700, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeEmerald800Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeEmerald800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeEmerald900Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeEmerald900, regexp: Self.colorFormat)
    }

    // MARK: Primitive token - Colors - Sky

    @Test func colorRawTokenColorDecorativeSky100LighterThanSky200() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeSky100, ColorRawTokens.colorDecorativeSky200)
    }

    @Test func colorRawTokenColorDecorativeSky200LighterThanSky300() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeSky200, ColorRawTokens.colorDecorativeSky300)
    }

    @Test func colorRawTokenColorDecorativeSky300LighterThanSky400() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeSky300, ColorRawTokens.colorDecorativeSky400)
    }

    @Test func colorRawTokenColorDecorativeSky400LighterThanSky500() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeSky400, ColorRawTokens.colorDecorativeSky500)
    }

    @Test func colorRawTokenColorDecorativeSky500LighterThanSky600() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeSky500, ColorRawTokens.colorDecorativeSky600)
    }

    @Test func colorRawTokenColorDecorativeSky600LighterThanSky700() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeSky600, ColorRawTokens.colorDecorativeSky700)
    }

    @Test func colorRawTokenColorDecorativeSky700LighterThanSky800() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeSky700, ColorRawTokens.colorDecorativeSky800)
    }

    @Test func colorRawTokenColorDecorativeSky800LighterThanSky900() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeSky800, ColorRawTokens.colorDecorativeSky900)
    }

    @Test func colorRawTokenColorDecorativeSky100Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeSky100, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeSky200Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeSky200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeSky300Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeSky300, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeSky400Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeSky400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeSky500Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeSky500, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeSky600Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeSky600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeSky700Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeSky700, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeSky800Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeSky800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeSky900Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeSky900, regexp: Self.colorFormat)
    }

    // MARK: Primitive token - Colors - Amber

    @Test func colorRawTokenColorDecorativeAmber100LighterThanAmber200() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeAmber100, ColorRawTokens.colorDecorativeAmber200)
    }

    @Test func colorRawTokenColorDecorativeAmber200LighterThanAmber300() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeAmber200, ColorRawTokens.colorDecorativeAmber300)
    }

    @Test func colorRawTokenColorDecorativeAmber300LighterThanAmber400() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeAmber300, ColorRawTokens.colorDecorativeAmber400)
    }

    @Test func colorRawTokenColorDecorativeAmber400LighterThanAmber500() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeAmber400, ColorRawTokens.colorDecorativeAmber500)
    }

    @Test func colorRawTokenColorDecorativeAmber500LighterThanAmber600() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeAmber500, ColorRawTokens.colorDecorativeAmber600)
    }

    @Test func colorRawTokenColorDecorativeAmber600LighterThanAmber700() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeAmber600, ColorRawTokens.colorDecorativeAmber700)
    }

    @Test func colorRawTokenColorDecorativeAmber700LighterThanAmber800() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeAmber700, ColorRawTokens.colorDecorativeAmber800)
    }

    @Test func colorRawTokenColorDecorativeAmber800LighterThanAmber900() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeAmber800, ColorRawTokens.colorDecorativeAmber900)
    }

    @Test func colorRawTokenColorDecorativeAmber100Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeAmber100, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeAmber200Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeAmber200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeAmber300Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeAmber300, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeAmber400Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeAmber400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeAmber500Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeAmber500, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeAmber600Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeAmber600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeAmber700Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeAmber700, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeAmber800Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeAmber800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeAmber900Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeAmber900, regexp: Self.colorFormat)
    }

    // MARK: Primitive token - Colors - Amethyst

    @Test func colorRawTokenColorDecorativeAmethyst100LighterThanAmethyst200() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeAmethyst100, ColorRawTokens.colorDecorativeAmethyst200)
    }

    @Test func colorRawTokenColorDecorativeAmethyst200LighterThanAmethyst300() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeAmethyst200, ColorRawTokens.colorDecorativeAmethyst300)
    }

    @Test func colorRawTokenColorDecorativeAmethyst300LighterThanAmethyst400() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeAmethyst300, ColorRawTokens.colorDecorativeAmethyst400)
    }

    @Test func colorRawTokenColorDecorativeAmethyst400LighterThanAmethyst500() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeAmethyst400, ColorRawTokens.colorDecorativeAmethyst500)
    }

    @Test func colorRawTokenColorDecorativeAmethyst500LighterThanAmethyst600() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeAmethyst500, ColorRawTokens.colorDecorativeAmethyst600)
    }

    @Test func colorRawTokenColorDecorativeAmethyst600LighterThanAmethyst700() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeAmethyst600, ColorRawTokens.colorDecorativeAmethyst700)
    }

    @Test func colorRawTokenColorDecorativeAmethyst700LighterThanAmethyst800() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeAmethyst700, ColorRawTokens.colorDecorativeAmethyst800)
    }

    @Test func colorRawTokenColorDecorativeAmethyst800LighterThanAmethyst900() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeAmethyst800, ColorRawTokens.colorDecorativeAmethyst900)
    }

    @Test func colorRawTokenColorDecorativeAmethyst100Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeAmethyst100, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeAmethyst200Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeAmethyst200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeAmethyst300Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeAmethyst300, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeAmethyst400Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeAmethyst400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeAmethyst500Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeAmethyst500, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeAmethyst600Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeAmethyst600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeAmethyst700Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeAmethyst700, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeAmethyst800Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeAmethyst800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeAmethyst900Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeAmethyst900, regexp: Self.colorFormat)
    }

    // MARK: Primitive token - Colors -  Shocking Pink

    @Test func colorRawTokenColorDecorativeShockingPink100LighterThan200() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeShockingPink100, ColorRawTokens.colorDecorativeShockingPink200)
    }

    @Test func colorRawTokenColorDecorativeShockingPink200LighterThan300() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeShockingPink200, ColorRawTokens.colorDecorativeShockingPink300)
    }

    @Test func colorRawTokenColorDecorativeShockingPink300LighterThan400() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeShockingPink300, ColorRawTokens.colorDecorativeShockingPink400)
    }

    @Test func colorRawTokenColorDecorativeShockingPink400LighterThan500() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeShockingPink400, ColorRawTokens.colorDecorativeShockingPink500)
    }

    @Test func colorRawTokenColorDecorativeShockingPink500LighterThan600() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeShockingPink500, ColorRawTokens.colorDecorativeShockingPink600)
    }

    @Test func colorRawTokenColorDecorativeShockingPink600LighterThan700() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeShockingPink600, ColorRawTokens.colorDecorativeShockingPink700)
    }

    @Test func colorRawTokenColorDecorativeShockingPink700LighterThan800() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeShockingPink700, ColorRawTokens.colorDecorativeShockingPink800)
    }

    @Test func colorRawTokenColorDecorativeShockingPink800LighterThan900() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeShockingPink800, ColorRawTokens.colorDecorativeShockingPink900)
    }

    @Test func colorRawTokenColorDecorativeShockingPink100Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeShockingPink100, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeShockingPink200Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeShockingPink200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeShockingPink300Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeShockingPink300, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeShockingPink400Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeShockingPink400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeShockingPink500Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeShockingPink500, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeShockingPink600Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeShockingPink600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeShockingPink700Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeShockingPink700, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeShockingPink800Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeShockingPink800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeShockingPink900Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeShockingPink900, regexp: Self.colorFormat)
    }

    // MARK: Primitive token - Colors -  Deep Peach

    @Test func colorRawTokenColorDecorativeDeepPeach100LighterThan200() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeDeepPeach100, ColorRawTokens.colorDecorativeDeepPeach200)
    }

    @Test func colorRawTokenColorDecorativeDeepPeach200LighterThan300() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeDeepPeach200, ColorRawTokens.colorDecorativeDeepPeach300)
    }

    @Test func colorRawTokenColorDecorativeDeepPeach300LighterThan400() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeDeepPeach300, ColorRawTokens.colorDecorativeDeepPeach400)
    }

    @Test func colorRawTokenColorDecorativeDeepPeach400LighterThan500() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.colorDecorativeDeepPeach400, ColorRawTokens.colorDecorativeDeepPeach500)
        // TODO: Why? Is the palette well defined in design team. This is the only case 400 is darker than 500
    }

    @Test func colorRawTokenColorDecorativeDeepPeach500LighterThan600() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeDeepPeach500, ColorRawTokens.colorDecorativeDeepPeach600)
    }

    @Test func colorRawTokenColorDecorativeDeepPeach600LighterThan700() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeDeepPeach600, ColorRawTokens.colorDecorativeDeepPeach700)
    }

    @Test func colorRawTokenColorDecorativeDeepPeach700LighterThan800() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeDeepPeach700, ColorRawTokens.colorDecorativeDeepPeach800)
    }

    @Test func colorRawTokenColorDecorativeDeepPeach800LighterThan900() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorDecorativeDeepPeach800, ColorRawTokens.colorDecorativeDeepPeach900)
    }

    @Test func colorRawTokenColorDecorativeDeepPeach100Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeDeepPeach100, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeDeepPeach200Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeDeepPeach200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeDeepPeach300Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeDeepPeach300, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeDeepPeach400Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeDeepPeach400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeDeepPeach500Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeDeepPeach500, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeDeepPeach600Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeDeepPeach600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeDeepPeach700Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeDeepPeach700, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeDeepPeach800Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeDeepPeach800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeDeepPeach900Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorDecorativeDeepPeach900, regexp: Self.colorFormat)
    }

    // MARK: - Compare all colors

    /// Compare all colors to ensure they are all unique
    @Test func colorRawTokensAreAllDifferent() throws {

        //  (ノಠ益ಠ)ノ彡┻━┻ Failed to have efficient, nice and good solution with GenAI tool (GPT-4o-mini)

        // Step 1: Gather all tokens of color in arrays

        let colorsDecorativeAmber: [ColorRawToken] = [
            ColorRawTokens.colorDecorativeAmber100,
            ColorRawTokens.colorDecorativeAmber200,
            ColorRawTokens.colorDecorativeAmber300,
            ColorRawTokens.colorDecorativeAmber400,
            ColorRawTokens.colorDecorativeAmber500,
            ColorRawTokens.colorDecorativeAmber600,
            ColorRawTokens.colorDecorativeAmber700,
            ColorRawTokens.colorDecorativeAmber800,
            ColorRawTokens.colorDecorativeAmber900,
        ]

        let colorsDecorativeAmethyst: [ColorRawToken] = [
            ColorRawTokens.colorDecorativeAmethyst100,
            ColorRawTokens.colorDecorativeAmethyst200,
            ColorRawTokens.colorDecorativeAmethyst300,
            ColorRawTokens.colorDecorativeAmethyst400,
            ColorRawTokens.colorDecorativeAmethyst500,
            ColorRawTokens.colorDecorativeAmethyst600,
            ColorRawTokens.colorDecorativeAmethyst700,
            ColorRawTokens.colorDecorativeAmethyst800,
            ColorRawTokens.colorDecorativeAmethyst900,
        ]

        let colorsDecorativeDeepPeach: [ColorRawToken] = [
            ColorRawTokens.colorDecorativeDeepPeach100,
            ColorRawTokens.colorDecorativeDeepPeach200,
            ColorRawTokens.colorDecorativeDeepPeach300,
            ColorRawTokens.colorDecorativeDeepPeach400,
            ColorRawTokens.colorDecorativeDeepPeach500,
            ColorRawTokens.colorDecorativeDeepPeach600,
            ColorRawTokens.colorDecorativeDeepPeach700,
            ColorRawTokens.colorDecorativeDeepPeach800,
            ColorRawTokens.colorDecorativeDeepPeach900,
        ]

        let colorsDecorativeEmerald: [ColorRawToken] = [
            ColorRawTokens.colorDecorativeEmerald100,
            ColorRawTokens.colorDecorativeEmerald200,
            ColorRawTokens.colorDecorativeEmerald300,
            ColorRawTokens.colorDecorativeEmerald400,
            ColorRawTokens.colorDecorativeEmerald500,
            ColorRawTokens.colorDecorativeEmerald600,
            ColorRawTokens.colorDecorativeEmerald700,
            ColorRawTokens.colorDecorativeEmerald800,
            ColorRawTokens.colorDecorativeEmerald900,
        ]

        let colorsDecorativeShockingPink: [ColorRawToken] = [
            ColorRawTokens.colorDecorativeShockingPink100,
            ColorRawTokens.colorDecorativeShockingPink200,
            ColorRawTokens.colorDecorativeShockingPink300,
            ColorRawTokens.colorDecorativeShockingPink400,
            ColorRawTokens.colorDecorativeShockingPink500,
            ColorRawTokens.colorDecorativeShockingPink600,
            ColorRawTokens.colorDecorativeShockingPink700,
            ColorRawTokens.colorDecorativeShockingPink800,
            ColorRawTokens.colorDecorativeShockingPink900,
        ]

        let colorsDecorativeSky: [ColorRawToken] = [
            ColorRawTokens.colorDecorativeSky100,
            ColorRawTokens.colorDecorativeSky200,
            ColorRawTokens.colorDecorativeSky300,
            ColorRawTokens.colorDecorativeSky400,
            ColorRawTokens.colorDecorativeSky500,
            ColorRawTokens.colorDecorativeSky600,
            ColorRawTokens.colorDecorativeSky700,
            ColorRawTokens.colorDecorativeSky800,
            ColorRawTokens.colorDecorativeSky900,
        ]

        let colorsFunctionalBlack: [ColorRawToken] = [ColorRawTokens.colorFunctionalBlack]

        let colorsFunctionalWhite: [ColorRawToken] = [ColorRawTokens.colorFunctionalWhite]

        let colorsFunctionalDarkGray: [ColorRawToken] = [
            ColorRawTokens.colorFunctionalDarkGray80,
            ColorRawTokens.colorFunctionalDarkGray160,
            ColorRawTokens.colorFunctionalDarkGray240,
            ColorRawTokens.colorFunctionalDarkGray320,
            ColorRawTokens.colorFunctionalDarkGray400,
            ColorRawTokens.colorFunctionalDarkGray480,
            ColorRawTokens.colorFunctionalDarkGray560,
            ColorRawTokens.colorFunctionalDarkGray640,
            ColorRawTokens.colorFunctionalDarkGray720,
            ColorRawTokens.colorFunctionalDarkGray800,
            ColorRawTokens.colorFunctionalDarkGray880,
            ColorRawTokens.colorFunctionalDarkGray960,
        ]

        let colorsFunctionalDodgerBlue: [ColorRawToken] = [
            ColorRawTokens.colorFunctionalDodgerBlue100,
            ColorRawTokens.colorFunctionalDodgerBlue200,
            ColorRawTokens.colorFunctionalDodgerBlue300,
            ColorRawTokens.colorFunctionalDodgerBlue400,
            ColorRawTokens.colorFunctionalDodgerBlue500,
            ColorRawTokens.colorFunctionalDodgerBlue600,
            ColorRawTokens.colorFunctionalDodgerBlue700,
            ColorRawTokens.colorFunctionalDodgerBlue800,
            ColorRawTokens.colorFunctionalDodgerBlue900,
        ]

        let colorsFunctionalLightGray: [ColorRawToken] = [
            ColorRawTokens.colorFunctionalLightGray80,
            ColorRawTokens.colorFunctionalLightGray160,
            ColorRawTokens.colorFunctionalLightGray240,
            ColorRawTokens.colorFunctionalLightGray320,
            ColorRawTokens.colorFunctionalLightGray400,
            ColorRawTokens.colorFunctionalLightGray480,
            ColorRawTokens.colorFunctionalLightGray560,
            ColorRawTokens.colorFunctionalLightGray640,
            ColorRawTokens.colorFunctionalLightGray720,
            ColorRawTokens.colorFunctionalLightGray800,
            ColorRawTokens.colorFunctionalLightGray880,
            ColorRawTokens.colorFunctionalLightGray960,
        ]

        let colorsFunctionalMalachite: [ColorRawToken] = [
            ColorRawTokens.colorFunctionalMalachite100,
            ColorRawTokens.colorFunctionalMalachite200,
            ColorRawTokens.colorFunctionalMalachite300,
            ColorRawTokens.colorFunctionalMalachite400,
            ColorRawTokens.colorFunctionalMalachite500,
            ColorRawTokens.colorFunctionalMalachite600,
            ColorRawTokens.colorFunctionalMalachite700,
            ColorRawTokens.colorFunctionalMalachite800,
            ColorRawTokens.colorFunctionalMalachite900,
        ]

        let colorsFunctionalScarlet: [ColorRawToken] = [
            ColorRawTokens.colorFunctionalScarlet100,
            ColorRawTokens.colorFunctionalScarlet200,
            ColorRawTokens.colorFunctionalScarlet300,
            ColorRawTokens.colorFunctionalScarlet400,
            ColorRawTokens.colorFunctionalScarlet500,
            ColorRawTokens.colorFunctionalScarlet600,
            ColorRawTokens.colorFunctionalScarlet700,
            ColorRawTokens.colorFunctionalScarlet800,
            ColorRawTokens.colorFunctionalScarlet900,
        ]

        let colorsFunctionalSun: [ColorRawToken] = [
            ColorRawTokens.colorFunctionalSun100,
            ColorRawTokens.colorFunctionalSun200,
            ColorRawTokens.colorFunctionalSun300,
            ColorRawTokens.colorFunctionalSun400,
            ColorRawTokens.colorFunctionalSun500,
            ColorRawTokens.colorFunctionalSun600,
            ColorRawTokens.colorFunctionalSun700,
            ColorRawTokens.colorFunctionalSun800,
            ColorRawTokens.colorFunctionalSun900,
        ]

        let colorsOpacityBlack: [ColorRawToken] = [
            ColorRawTokens.colorOpacityBlack0,
            ColorRawTokens.colorOpacityBlack40,
            ColorRawTokens.colorOpacityBlack80,
            ColorRawTokens.colorOpacityBlack120,
            ColorRawTokens.colorOpacityBlack160,
            ColorRawTokens.colorOpacityBlack200,
            ColorRawTokens.colorOpacityBlack240,
            ColorRawTokens.colorOpacityBlack280,
            ColorRawTokens.colorOpacityBlack320,
            ColorRawTokens.colorOpacityBlack360,
            ColorRawTokens.colorOpacityBlack400,
            ColorRawTokens.colorOpacityBlack440,
            ColorRawTokens.colorOpacityBlack480,
            ColorRawTokens.colorOpacityBlack520,
            ColorRawTokens.colorOpacityBlack560,
            ColorRawTokens.colorOpacityBlack600,
            ColorRawTokens.colorOpacityBlack640,
            ColorRawTokens.colorOpacityBlack680,
            ColorRawTokens.colorOpacityBlack720,
            ColorRawTokens.colorOpacityBlack760,
            ColorRawTokens.colorOpacityBlack800,
            ColorRawTokens.colorOpacityBlack840,
            ColorRawTokens.colorOpacityBlack880,
            ColorRawTokens.colorOpacityBlack920,
            ColorRawTokens.colorOpacityBlack960,
        ]

        let colorsOpacityColored: [ColorRawToken] = [
            ColorRawTokens.colorOpacityDodgerBlue,
            ColorRawTokens.colorOpacityMalachite,
            ColorRawTokens.colorOpacityScarlet,
            ColorRawTokens.colorOpacitySun,
        ]

        let colorsOpacityWhite: [ColorRawToken] = [
            ColorRawTokens.colorOpacityWhite0,
            ColorRawTokens.colorOpacityWhite40,
            ColorRawTokens.colorOpacityWhite80,
            ColorRawTokens.colorOpacityWhite120,
            ColorRawTokens.colorOpacityWhite160,
            ColorRawTokens.colorOpacityWhite200,
            ColorRawTokens.colorOpacityWhite240,
            ColorRawTokens.colorOpacityWhite280,
            ColorRawTokens.colorOpacityWhite320,
            ColorRawTokens.colorOpacityWhite360,
            ColorRawTokens.colorOpacityWhite400,
            ColorRawTokens.colorOpacityWhite440,
            ColorRawTokens.colorOpacityWhite480,
            ColorRawTokens.colorOpacityWhite520,
            ColorRawTokens.colorOpacityWhite560,
            ColorRawTokens.colorOpacityWhite600,
            ColorRawTokens.colorOpacityWhite640,
            ColorRawTokens.colorOpacityWhite680,
            ColorRawTokens.colorOpacityWhite720,
            ColorRawTokens.colorOpacityWhite760,
            ColorRawTokens.colorOpacityWhite800,
            ColorRawTokens.colorOpacityWhite840,
            ColorRawTokens.colorOpacityWhite880,
            ColorRawTokens.colorOpacityWhite920,
            ColorRawTokens.colorOpacityWhite960,
        ]

        // Step 2: Pack all arrays

        let allColors: [[ColorRawToken]] = [
            colorsDecorativeAmber,
            colorsDecorativeAmethyst,
            colorsDecorativeDeepPeach,
            colorsDecorativeEmerald,
            colorsDecorativeShockingPink,
            colorsDecorativeSky,
            colorsFunctionalBlack,
            colorsFunctionalWhite,
            colorsFunctionalDarkGray,
            colorsFunctionalDodgerBlue,
            colorsFunctionalLightGray,
            colorsFunctionalMalachite,
            colorsFunctionalScarlet,
            colorsFunctionalSun,
            colorsOpacityBlack,
            colorsOpacityColored,
            colorsOpacityWhite,
        ]

        // Step 3: Use a Set to save unique values

        var uniqueColors = Set<ColorRawToken>()

        for colorArray in allColors {
            for color in colorArray {
                #expect(uniqueColors.insert(color).inserted, "The color raw token value '\(color)' is not unique, some duplicate(s) can be defined!")
            }
        }
    }
}

// swiftlint:enable type_body_length
// swiftlint:enable force_try
// swiftlint:enable function_body_length
