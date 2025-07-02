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
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalGrayLight80, ColorRawTokens.colorFunctionalGrayLight160)
    }

    @Test func colorRawTokenFunctionalLightGray160LighterThanFunctionalLightGray240() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalGrayLight160, ColorRawTokens.colorFunctionalGrayLight240)
    }

    @Test func colorRawTokenFunctionalLightGray240LighterThanFunctionalLightGray320() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalGrayLight240, ColorRawTokens.colorFunctionalGrayLight320)
    }

    @Test func colorRawTokenFunctionalLightGray320LighterThanFunctionalLightGray400() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalGrayLight320, ColorRawTokens.colorFunctionalGrayLight400)
    }

    @Test func colorRawTokenFunctionalLightGray400LighterThanFunctionalLightGray480() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalGrayLight400, ColorRawTokens.colorFunctionalGrayLight480)
    }

    @Test func colorRawTokenFunctionalLightGray480LighterThanFunctionalLightGray560() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalGrayLight480, ColorRawTokens.colorFunctionalGrayLight560)
    }

    @Test func colorRawTokenFunctionalLightGray560LighterThanFunctionalLightGray640() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalGrayLight560, ColorRawTokens.colorFunctionalGrayLight640)
    }

    @Test func colorRawTokenFunctionalLightGray640LighterThanFunctionalLightGray720() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalGrayLight640, ColorRawTokens.colorFunctionalGrayLight720)
    }

    @Test func colorRawTokenFunctionalLightGray720LighterThanFunctionalLightGray800() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalGrayLight720, ColorRawTokens.colorFunctionalGrayLight800)
    }

    @Test func colorRawTokenFunctionalLightGray800LighterThanFunctionalLightGray880() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalGrayLight800, ColorRawTokens.colorFunctionalGrayLight880)
    }

    @Test func colorRawTokenFunctionalLightGray880LighterThanFunctionalLightGray960() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalGrayLight880, ColorRawTokens.colorFunctionalGrayLight960)
    }

    @Test func colorRawTokenColorFunctionalGrayLight80Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalGrayLight80, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight160Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalGrayLight160, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight240Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalGrayLight240, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight320Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalGrayLight320, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight400Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalGrayLight400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight480Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalGrayLight480, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight560Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalGrayLight560, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight640Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalGrayLight640, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight720Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalGrayLight720, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight800Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalGrayLight800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight880Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalGrayLight880, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight960Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalGrayLight960, regexp: Self.colorFormat)
    }

    // MARK: - Primitive token - Colors - Functional dark gray

    @Test func colorRawTokenFunctionalDarkGray80LighterThanFunctionalDarkGray160() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalGrayDark80, ColorRawTokens.colorFunctionalGrayDark160)
    }

    @Test func colorRawTokenFunctionalDarkGray160LighterThanFunctionalDarkGray240() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalGrayDark160, ColorRawTokens.colorFunctionalGrayDark240)
    }

    @Test func colorRawTokenFunctionalDarkGray240LighterThanFunctionalDarkGray320() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalGrayDark240, ColorRawTokens.colorFunctionalGrayDark320)
    }

    @Test func colorRawTokenFunctionalDarkGray320LighterThanFunctionalDarkGray400() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalGrayDark320, ColorRawTokens.colorFunctionalGrayDark400)
    }

    @Test func colorRawTokenFunctionalDarkGray400LighterThanFunctionalDarkGray480() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalGrayDark400, ColorRawTokens.colorFunctionalGrayDark480)
    }

    @Test func colorRawTokenFunctionalDarkGray480LighterThanFunctionalDarkGray560() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalGrayDark480, ColorRawTokens.colorFunctionalGrayDark560)
    }

    @Test func colorRawTokenFunctionalDarkGray560LighterThanFunctionalDarkGray640() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalGrayDark560, ColorRawTokens.colorFunctionalGrayDark640)
    }

    @Test func colorRawTokenFunctionalDarkGray640LighterThanFunctionalDarkGray720() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalGrayDark640, ColorRawTokens.colorFunctionalGrayDark720)
    }

    @Test func colorRawTokenFunctionalDarkGray720LighterThanFunctionalDarkGray800() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalGrayDark720, ColorRawTokens.colorFunctionalGrayDark800)
    }

    @Test func colorRawTokenFunctionalDarkGray800LighterThanFunctionalDarkGray880() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalGrayDark800, ColorRawTokens.colorFunctionalGrayDark880)
    }

    @Test func colorRawTokenFunctionalDarkGray880LighterThanFunctionalDarkGray960() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.colorFunctionalGrayDark880, ColorRawTokens.colorFunctionalGrayDark960)
    }

    @Test func colorRawTokenColorFunctionalGrayDark80Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalGrayDark80, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark160Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalGrayDark160, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark240Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalGrayDark240, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark320Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalGrayDark320, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark400Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalGrayDark400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark480Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalGrayDark480, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark560Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalGrayDark560, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark640Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalGrayDark640, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark720Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalGrayDark720, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark800Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalGrayDark800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark880Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalGrayDark880, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark960Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.colorFunctionalGrayDark960, regexp: Self.colorFormat)
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

    // MARK: - Compare all colors

    /// Compare all colors to ensure they are all unique
    @Test func colorRawTokensAreAllDifferent() throws {

        //  (ノಠ益ಠ)ノ彡┻━┻ Failed to have efficient, nice and good solution with GenAI tool (GPT-4o-mini)

        // Step 1: Gather all tokens of color in arrays

        let colorsFunctionalBlack: [ColorRawToken] = [ColorRawTokens.colorFunctionalBlack]

        let colorsFunctionalWhite: [ColorRawToken] = [ColorRawTokens.colorFunctionalWhite]

        let colorsFunctionalDarkGray: [ColorRawToken] = [
            ColorRawTokens.colorFunctionalGrayDark80,
            ColorRawTokens.colorFunctionalGrayDark160,
            ColorRawTokens.colorFunctionalGrayDark240,
            ColorRawTokens.colorFunctionalGrayDark320,
            ColorRawTokens.colorFunctionalGrayDark400,
            ColorRawTokens.colorFunctionalGrayDark480,
            ColorRawTokens.colorFunctionalGrayDark560,
            ColorRawTokens.colorFunctionalGrayDark640,
            ColorRawTokens.colorFunctionalGrayDark720,
            ColorRawTokens.colorFunctionalGrayDark800,
            ColorRawTokens.colorFunctionalGrayDark880,
            ColorRawTokens.colorFunctionalGrayDark960,
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
            ColorRawTokens.colorFunctionalGrayLight80,
            ColorRawTokens.colorFunctionalGrayLight160,
            ColorRawTokens.colorFunctionalGrayLight240,
            ColorRawTokens.colorFunctionalGrayLight320,
            ColorRawTokens.colorFunctionalGrayLight400,
            ColorRawTokens.colorFunctionalGrayLight480,
            ColorRawTokens.colorFunctionalGrayLight560,
            ColorRawTokens.colorFunctionalGrayLight640,
            ColorRawTokens.colorFunctionalGrayLight720,
            ColorRawTokens.colorFunctionalGrayLight800,
            ColorRawTokens.colorFunctionalGrayLight880,
            ColorRawTokens.colorFunctionalGrayLight960,
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
