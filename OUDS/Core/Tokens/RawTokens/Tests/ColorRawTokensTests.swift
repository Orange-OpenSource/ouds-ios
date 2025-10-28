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
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalWhite, ColorRawTokens.functionalBlack)
    }

    @Test func colorRawTokenColorFunctionalBlackFormat() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalBlack, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalWhiteFormat() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalWhite, regexp: Self.colorFormat)
    }

    // MARK: - Primitive token - Colors - Functional light gray

    @Test func colorRawTokenFunctionalLightGray80LighterThanFunctionalLightGray160() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalGrayLight80, ColorRawTokens.functionalGrayLight160)
    }

    @Test func colorRawTokenFunctionalLightGray160LighterThanFunctionalLightGray240() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalGrayLight160, ColorRawTokens.functionalGrayLight240)
    }

    @Test func colorRawTokenFunctionalLightGray240LighterThanFunctionalLightGray320() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalGrayLight240, ColorRawTokens.functionalGrayLight320)
    }

    @Test func colorRawTokenFunctionalLightGray320LighterThanFunctionalLightGray400() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalGrayLight320, ColorRawTokens.functionalGrayLight400)
    }

    @Test func colorRawTokenFunctionalLightGray400LighterThanFunctionalLightGray480() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalGrayLight400, ColorRawTokens.functionalGrayLight480)
    }

    @Test func colorRawTokenFunctionalLightGray480LighterThanFunctionalLightGray560() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalGrayLight480, ColorRawTokens.functionalGrayLight560)
    }

    @Test func colorRawTokenFunctionalLightGray560LighterThanFunctionalLightGray640() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalGrayLight560, ColorRawTokens.functionalGrayLight640)
    }

    @Test func colorRawTokenFunctionalLightGray640LighterThanFunctionalLightGray720() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalGrayLight640, ColorRawTokens.functionalGrayLight720)
    }

    @Test func colorRawTokenFunctionalLightGray720LighterThanFunctionalLightGray800() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalGrayLight720, ColorRawTokens.functionalGrayLight800)
    }

    @Test func colorRawTokenFunctionalLightGray800LighterThanFunctionalLightGray880() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalGrayLight800, ColorRawTokens.functionalGrayLight880)
    }

    @Test func colorRawTokenFunctionalLightGray880LighterThanFunctionalLightGray960() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalGrayLight880, ColorRawTokens.functionalGrayLight960)
    }

    @Test func colorRawTokenColorFunctionalGrayLight80Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalGrayLight80, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight160Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalGrayLight160, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight240Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalGrayLight240, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight320Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalGrayLight320, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight400Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalGrayLight400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight480Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalGrayLight480, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight560Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalGrayLight560, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight640Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalGrayLight640, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight720Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalGrayLight720, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight800Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalGrayLight800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight880Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalGrayLight880, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight960Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalGrayLight960, regexp: Self.colorFormat)
    }

    // MARK: - Primitive token - Colors - Functional dark gray

    @Test func colorRawTokenFunctionalDarkGray80LighterThanFunctionalDarkGray160() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalGrayDark80, ColorRawTokens.functionalGrayDark160)
    }

    @Test func colorRawTokenFunctionalDarkGray160LighterThanFunctionalDarkGray240() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalGrayDark160, ColorRawTokens.functionalGrayDark240)
    }

    @Test func colorRawTokenFunctionalDarkGray240LighterThanFunctionalDarkGray320() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalGrayDark240, ColorRawTokens.functionalGrayDark320)
    }

    @Test func colorRawTokenFunctionalDarkGray320LighterThanFunctionalDarkGray400() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalGrayDark320, ColorRawTokens.functionalGrayDark400)
    }

    @Test func colorRawTokenFunctionalDarkGray400LighterThanFunctionalDarkGray480() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalGrayDark400, ColorRawTokens.functionalGrayDark480)
    }

    @Test func colorRawTokenFunctionalDarkGray480LighterThanFunctionalDarkGray560() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalGrayDark480, ColorRawTokens.functionalGrayDark560)
    }

    @Test func colorRawTokenFunctionalDarkGray560LighterThanFunctionalDarkGray640() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalGrayDark560, ColorRawTokens.functionalGrayDark640)
    }

    @Test func colorRawTokenFunctionalDarkGray640LighterThanFunctionalDarkGray720() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalGrayDark640, ColorRawTokens.functionalGrayDark720)
    }

    @Test func colorRawTokenFunctionalDarkGray720LighterThanFunctionalDarkGray800() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalGrayDark720, ColorRawTokens.functionalGrayDark800)
    }

    @Test func colorRawTokenFunctionalDarkGray800LighterThanFunctionalDarkGray880() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalGrayDark800, ColorRawTokens.functionalGrayDark880)
    }

    @Test func colorRawTokenFunctionalDarkGray880LighterThanFunctionalDarkGray960() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalGrayDark880, ColorRawTokens.functionalGrayDark960)
    }

    @Test func colorRawTokenColorFunctionalGrayDark80Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalGrayDark80, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark160Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalGrayDark160, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark240Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalGrayDark240, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark320Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalGrayDark320, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark400Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalGrayDark400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark480Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalGrayDark480, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark560Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalGrayDark560, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark640Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalGrayDark640, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark720Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalGrayDark720, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark800Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalGrayDark800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark880Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalGrayDark880, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark960Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalGrayDark960, regexp: Self.colorFormat)
    }

    // MARK: - Primitive token - Colors - Functional scarlet

    @Test func colorRawTokenFunctionalScarlet100LighterThanFunctionalScarlet200() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalScarlet100, ColorRawTokens.functionalScarlet200)
    }

    @Test func colorRawTokenFunctionalScarlet200LighterThanFunctionalScarlet300() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalScarlet200, ColorRawTokens.functionalScarlet300)
    }

    @Test func colorRawTokenFunctionalScarlet300LighterThanFunctionalScarlet400() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalScarlet300, ColorRawTokens.functionalScarlet400)
    }

    @Test func colorRawTokenFunctionalScarlet400LighterThanFunctionalScarlet500() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalScarlet400, ColorRawTokens.functionalScarlet500)
    }

    @Test func colorRawTokenFunctionalScarlet500LighterThanFunctionalScarlet600() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalScarlet500, ColorRawTokens.functionalScarlet600)
    }

    @Test func colorRawTokenFunctionalScarlet600LighterThanFunctionalScarlet700() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalScarlet600, ColorRawTokens.functionalScarlet700)
    }

    @Test func colorRawTokenFunctionalScarlet700LighterThanFunctionalScarlet800() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalScarlet700, ColorRawTokens.functionalScarlet800)
    }

    @Test func colorRawTokenFunctionalScarlet800LighterThanFunctionalScarlet900() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalScarlet800, ColorRawTokens.functionalScarlet900)
    }

    @Test func colorRawTokenColorFunctionalScarlet100Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalScarlet100, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalScarlet200Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalScarlet200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalScarlet300Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalScarlet300, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalScarlet400Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalScarlet400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalScarlet500Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalScarlet500, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalScarlet600Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalScarlet600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalScarlet700Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalScarlet700, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalScarlet800Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalScarlet800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalScarlet900Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalScarlet900, regexp: Self.colorFormat)
    }

    // MARK: - Primitive token - Colors - Functional sun

    @Test func colorRawTokenFunctionalSun100LighterThanFunctionalSun200() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalSun100, ColorRawTokens.functionalSun200)
    }

    @Test func colorRawTokenFunctionalSun200LighterThanFunctionalSun300() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalSun200, ColorRawTokens.functionalSun300)
    }

    @Test func colorRawTokenFunctionalSun300LighterThanFunctionalSun400() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalSun300, ColorRawTokens.functionalSun400)
    }

    @Test func colorRawTokenFunctionalSun400LighterThanFunctionalSun500() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalSun400, ColorRawTokens.functionalSun500)
    }

    @Test func colorRawTokenFunctionalSun500LighterThanFunctionalSun600() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalSun500, ColorRawTokens.functionalSun600)
    }

    @Test func colorRawTokenFunctionalSun600LighterThanFunctionalSun700() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalSun600, ColorRawTokens.functionalSun700)
    }

    @Test func colorRawTokenFunctionalSun700LighterThanFunctionalSun800() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalSun700, ColorRawTokens.functionalSun800)
    }

    @Test func colorRawTokenFunctionalSun800LighterThanFunctionalSun900() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalSun800, ColorRawTokens.functionalSun900)
    }

    @Test func colorRawTokenColorFunctionalSun100Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalSun100, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalSun200Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalSun200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalSun300Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalSun300, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalSun400Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalSun400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalSun500Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalSun500, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalSun600Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalSun600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalSun700Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalSun700, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalSun800Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalSun800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalSun900Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalSun900, regexp: Self.colorFormat)
    }

    // MARK: Primitive token - Colors - Functional malachite

    @Test func colorRawTokenFunctionalMalachite100LighterThanFunctionalMalachite200() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalMalachite100, ColorRawTokens.functionalMalachite200)
    }

    @Test func colorRawTokenFunctionalMalachite200LighterThanFunctionalMalachite300() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalMalachite200, ColorRawTokens.functionalMalachite300)
    }

    @Test func colorRawTokenFunctionalMalachite300LighterThanFunctionalMalachite400() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalMalachite300, ColorRawTokens.functionalMalachite400)
    }

    @Test func colorRawTokenFunctionalMalachite400LighterThanFunctionalMalachite500() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalMalachite400, ColorRawTokens.functionalMalachite500)
    }

    @Test func colorRawTokenFunctionalMalachite500LighterThanFunctionalMalachite600() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalMalachite500, ColorRawTokens.functionalMalachite600)
    }

    @Test func colorRawTokenFunctionalMalachite600LighterThanFunctionalMalachite700() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalMalachite600, ColorRawTokens.functionalMalachite700)
    }

    @Test func colorRawTokenFunctionalMalachite700LighterThanFunctionalMalachite800() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalMalachite700, ColorRawTokens.functionalMalachite800)
    }

    @Test func colorRawTokenFunctionalMalachite800LighterThanFunctionalMalachite900() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalMalachite800, ColorRawTokens.functionalMalachite900)
    }

    @Test func colorRawTokenColorFunctionalMalachite100Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalMalachite100, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalMalachite200Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalMalachite200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalMalachite300Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalMalachite300, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalMalachite400Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalMalachite400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalMalachite500Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalMalachite500, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalMalachite600Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalMalachite600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalMalachite700Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalMalachite700, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalMalachite800Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalMalachite800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalMalachite900Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalMalachite900, regexp: Self.colorFormat)
    }

    // MARK: - Primitive token - Colors - Functional dodger blue

    @Test func colorRawTokenFunctionalDodgerBlue100LighterThanFunctionalDodgerBlue200() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalDodgerBlue100, ColorRawTokens.functionalDodgerBlue200)
    }

    @Test func colorRawTokenFunctionalDodgerBlue200LighterThanFunctionalDodgerBlue300() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalDodgerBlue200, ColorRawTokens.functionalDodgerBlue300)
    }

    @Test func colorRawTokenFunctionalDodgerBlue300LighterThanFunctionalDodgerBlue400() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalDodgerBlue300, ColorRawTokens.functionalDodgerBlue400)
    }

    @Test func colorRawTokenFunctionalDodgerBlue400LighterThanFunctionalDodgerBlue500() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalDodgerBlue400, ColorRawTokens.functionalDodgerBlue500)
    }

    @Test func colorRawTokenFunctionalDodgerBlue500LighterThanFunctionalDodgerBlue600() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalDodgerBlue500, ColorRawTokens.functionalDodgerBlue600)
    }

    @Test func colorRawTokenFunctionalDodgerBlue600LighterThanFunctionalDodgerBlue700() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalDodgerBlue600, ColorRawTokens.functionalDodgerBlue700)
    }

    @Test func colorRawTokenFunctionalDodgerBlue700LighterThanFunctionalDodgerBlue800() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalDodgerBlue700, ColorRawTokens.functionalDodgerBlue800)
    }

    @Test func colorRawTokenFunctionalDodgerBlue800LighterThanFunctionalDodgerBlue900() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.functionalDodgerBlue800, ColorRawTokens.functionalDodgerBlue900)
    }

    @Test func colorRawTokenColorFunctionalDodgerBlue100Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalDodgerBlue100, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalDodgerBlue200Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalDodgerBlue200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalDodgerBlue300Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalDodgerBlue300, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalDodgerBlue400Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalDodgerBlue400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalDodgerBlue500Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalDodgerBlue500, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalDodgerBlue600Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalDodgerBlue600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalDodgerBlue700Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalDodgerBlue700, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalDodgerBlue800Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalDodgerBlue800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalDodgerBlue900Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.functionalDodgerBlue900, regexp: Self.colorFormat)
    }

    // MARK: - Primitive token - Colors - Opacity black

    @Test func opacityBlack0DarkerThanTransparentBlack40() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.opacityBlack0, ColorRawTokens.opacityBlack40)
    }

    @Test func opacityBlack40DarkerThanTransparentBlack80() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.opacityBlack40, ColorRawTokens.opacityBlack80)
    }

    @Test func opacityBlack80DarkerThanTransparentBlack120() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.opacityBlack80, ColorRawTokens.opacityBlack120)
    }

    @Test func opacityBlack120DarkerThanTransparentBlack160() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.opacityBlack120, ColorRawTokens.opacityBlack160)
    }

    @Test func opacityBlack160DarkerThanTransparentBlack200() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.opacityBlack160, ColorRawTokens.opacityBlack200)
    }

    @Test func opacityBlack200DarkerThanTransparentBlack240() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.opacityBlack200, ColorRawTokens.opacityBlack240)
    }

    @Test func opacityBlack240DarkerThanTransparentBlack280() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.opacityBlack240, ColorRawTokens.opacityBlack280)
    }

    @Test func opacityBlack280DarkerThanTransparentBlack320() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.opacityBlack280, ColorRawTokens.opacityBlack320)
    }

    @Test func opacityBlack320DarkerThanTransparentBlack360() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.opacityBlack320, ColorRawTokens.opacityBlack360)
    }

    @Test func opacityBlack360DarkerThanTransparentBlack400() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.opacityBlack360, ColorRawTokens.opacityBlack400)
    }

    @Test func opacityBlack400DarkerThanTransparentBlack440() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.opacityBlack400, ColorRawTokens.opacityBlack440)
    }

    @Test func opacityBlack440DarkerThanTransparentBlack480() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.opacityBlack440, ColorRawTokens.opacityBlack480)
    }

    @Test func opacityBlack480DarkerThanTransparentBlack520() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.opacityBlack480, ColorRawTokens.opacityBlack520)
    }

    @Test func opacityBlack520DarkerThanTransparentBlack560() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.opacityBlack520, ColorRawTokens.opacityBlack560)
    }

    @Test func opacityBlack560DarkerThanTransparentBlack600() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.opacityBlack560, ColorRawTokens.opacityBlack600)
    }

    @Test func opacityBlack600DarkerThanTransparentBlack640() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.opacityBlack600, ColorRawTokens.opacityBlack640)
    }

    @Test func opacityBlack640DarkerThanTransparentBlack680() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.opacityBlack640, ColorRawTokens.opacityBlack680)
    }

    @Test func opacityBlack680DarkerThanTransparentBlack720() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.opacityBlack680, ColorRawTokens.opacityBlack720)
    }

    @Test func opacityBlack720DarkerThanTransparentBlack760() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.opacityBlack720, ColorRawTokens.opacityBlack760)
    }

    @Test func opacityBlack760DarkerThanTransparentBlack800() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.opacityBlack760, ColorRawTokens.opacityBlack800)
    }

    @Test func opacityBlack800DarkerThanTransparentBlack840() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.opacityBlack800, ColorRawTokens.opacityBlack840)
    }

    @Test func opacityBlack880DarkerThanTransparentBlack920() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.opacityBlack880, ColorRawTokens.opacityBlack920)
    }

    @Test func opacityBlack920DarkerThanTransparentBlack960() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.opacityBlack920, ColorRawTokens.opacityBlack960)
    }

    @Test func colorRawTokenColorOpacityBlack0Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.opacityBlack0, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack40Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.opacityBlack40, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack80Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.opacityBlack80, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack120Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.opacityBlack120, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack160Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.opacityBlack160, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack200Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.opacityBlack200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack240Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.opacityBlack240, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack280Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.opacityBlack280, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack320Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.opacityBlack320, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack360Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.opacityBlack360, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack400Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.opacityBlack400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack440Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.opacityBlack440, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack480Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.opacityBlack480, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack520Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.opacityBlack520, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack560Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.opacityBlack560, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack600Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.opacityBlack600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack640Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.opacityBlack640, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack680Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.opacityBlack680, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack720Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.opacityBlack720, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack760Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.opacityBlack760, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack800Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.opacityBlack800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack840Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.opacityBlack840, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack880Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.opacityBlack880, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack920Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.opacityBlack920, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack960Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.opacityBlack960, regexp: Self.colorFormat)
    }

    // MARK: - Primitive token - Colors - Opacity Colored

    @Test func colorRawTokenColorOpacityMalachite120Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.malachite120, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityMalachite640Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.malachite640, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityMalachite120LighterThan640Format() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.malachite120, ColorRawTokens.malachite640)
    }

    @Test func colorRawTokenColorOpacityScarlet80Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.scarlet80, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityScarlet320Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.scarlet320, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacitScarlet80DarkerThan320Format() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.scarlet80, ColorRawTokens.scarlet320)
    }

    @Test func colorRawTokenColorOpacitySun160Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.sun160, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacitySun480Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.sun480, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacitySun160LighterThan480Format() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.sun160, ColorRawTokens.sun480)
    }

    @Test func colorRawTokenColorOpacityDodgerBlue80Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.dodgerBlue80, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityDodgerBlue520Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.dodgerBlue520, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityDodgerBlue80LighterThan520Format() throws {
        TestsUtils.assertColorLighterThan(ColorRawTokens.dodgerBlue80, ColorRawTokens.dodgerBlue520)
    }

    // MARK: - Primitive token - Colors - Opacity White

    @Test func opacityWhite0DarkerThanTransparentWhite40() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.white0, ColorRawTokens.white40)
    }

    @Test func opacityWhite40DarkerThanTransparentWhite80() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.white40, ColorRawTokens.white80)
    }

    @Test func opacityWhite80DarkerThanTransparentWhite120() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.white80, ColorRawTokens.white120)
    }

    @Test func opacityWhite120DarkerThanTransparentWhite160() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.white120, ColorRawTokens.white160)
    }

    @Test func opacityWhite160DarkerThanTransparentWhite200() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.white160, ColorRawTokens.white200)
    }

    @Test func opacityWhite200DarkerThanTransparentWhite240() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.white200, ColorRawTokens.white240)
    }

    @Test func opacityWhite240DarkerThanTransparentWhite280() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.white240, ColorRawTokens.white280)
    }

    @Test func opacityWhite280DarkerThanTransparentWhite320() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.white280, ColorRawTokens.white320)
    }

    @Test func opacityWhite320DarkerThanTransparentWhite360() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.white320, ColorRawTokens.white360)
    }

    @Test func opacityWhite360DarkerThanTransparentWhite400() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.white360, ColorRawTokens.white400)
    }

    @Test func opacityWhite400DarkerThanTransparentWhite440() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.white400, ColorRawTokens.white440)
    }

    @Test func opacityWhite440DarkerThanTransparentWhite480() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.white440, ColorRawTokens.white480)
    }

    @Test func opacityWhite480DarkerThanTransparentWhite520() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.white480, ColorRawTokens.white520)
    }

    @Test func opacityWhite520DarkerThanTransparentWhite560() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.white520, ColorRawTokens.white560)
    }

    @Test func opacityWhite560DarkerThanTransparentWhite600() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.white560, ColorRawTokens.white600)
    }

    @Test func opacityWhite600DarkerThanTransparentWhite640() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.white600, ColorRawTokens.white640)
    }

    @Test func opacityWhite640DarkerThanTransparentWhite680() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.white640, ColorRawTokens.white680)
    }

    @Test func opacityWhite680DarkerThanTransparentWhite720() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.white680, ColorRawTokens.white720)
    }

    @Test func opacityWhite720DarkerThanTransparentWhite760() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.white720, ColorRawTokens.white760)
    }

    @Test func opacityWhite760DarkerThanTransparentWhite800() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.white760, ColorRawTokens.white800)
    }

    @Test func opacityWhite800DarkerThanTransparentWhite840() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.white800, ColorRawTokens.white840)
    }

    @Test func opacityWhite880DarkerThanTransparentWhite920() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.white880, ColorRawTokens.white920)
    }

    @Test func opacityWhite920DarkerThanTransparentWhite960() throws {
        TestsUtils.assertColorDarkerThan(ColorRawTokens.white920, ColorRawTokens.white960)
    }

    @Test func colorRawTokenColorOpacityWhite0Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.white0, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite40Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.white40, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite80Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.white80, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite120Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.white120, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite160Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.white160, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite200Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.white200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite240Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.white240, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite280Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.white280, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite320Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.white320, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite360Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.white360, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite400Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.white400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite440Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.white440, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite480Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.white480, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite520Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.white520, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite560Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.white560, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite600Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.white600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite640Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.white640, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite680Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.white680, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite720Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.white720, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite760Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.white760, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite800Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.white800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite840Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.white840, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite880Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.white880, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite920Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.white920, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite960Format() throws {
        TestsUtils.assertMatches(ColorRawTokens.white960, regexp: Self.colorFormat)
    }

    // MARK: - Compare all colors

    /// Compare all colors to ensure they are all unique
    @Test func colorRawTokensAreAllDifferent() throws {

        //  (ノಠ益ಠ)ノ彡┻━┻ Failed to have efficient, nice and good solution with GenAI tool (GPT-4o-mini)

        // Step 1: Gather all tokens of color in arrays

        let colorsFunctionalBlack: [ColorRawToken] = [ColorRawTokens.functionalBlack]

        let colorsFunctionalWhite: [ColorRawToken] = [ColorRawTokens.functionalWhite]

        let colorsFunctionalDarkGray: [ColorRawToken] = [
            ColorRawTokens.functionalGrayDark80,
            ColorRawTokens.functionalGrayDark160,
            ColorRawTokens.functionalGrayDark240,
            ColorRawTokens.functionalGrayDark320,
            ColorRawTokens.functionalGrayDark400,
            ColorRawTokens.functionalGrayDark480,
            ColorRawTokens.functionalGrayDark560,
            ColorRawTokens.functionalGrayDark640,
            ColorRawTokens.functionalGrayDark720,
            ColorRawTokens.functionalGrayDark800,
            ColorRawTokens.functionalGrayDark880,
            ColorRawTokens.functionalGrayDark960,
        ]

        let colorsFunctionalDodgerBlue: [ColorRawToken] = [
            ColorRawTokens.functionalDodgerBlue100,
            ColorRawTokens.functionalDodgerBlue200,
            ColorRawTokens.functionalDodgerBlue300,
            ColorRawTokens.functionalDodgerBlue400,
            ColorRawTokens.functionalDodgerBlue500,
            ColorRawTokens.functionalDodgerBlue600,
            ColorRawTokens.functionalDodgerBlue700,
            ColorRawTokens.functionalDodgerBlue800,
            ColorRawTokens.functionalDodgerBlue900,
        ]

        let colorsFunctionalLightGray: [ColorRawToken] = [
            ColorRawTokens.functionalGrayLight80,
            ColorRawTokens.functionalGrayLight160,
            ColorRawTokens.functionalGrayLight240,
            ColorRawTokens.functionalGrayLight320,
            ColorRawTokens.functionalGrayLight400,
            ColorRawTokens.functionalGrayLight480,
            ColorRawTokens.functionalGrayLight560,
            ColorRawTokens.functionalGrayLight640,
            ColorRawTokens.functionalGrayLight720,
            ColorRawTokens.functionalGrayLight800,
            ColorRawTokens.functionalGrayLight880,
            ColorRawTokens.functionalGrayLight960,
        ]

        let colorsFunctionalMalachite: [ColorRawToken] = [
            ColorRawTokens.functionalMalachite100,
            ColorRawTokens.functionalMalachite200,
            ColorRawTokens.functionalMalachite300,
            ColorRawTokens.functionalMalachite400,
            ColorRawTokens.functionalMalachite500,
            ColorRawTokens.functionalMalachite600,
            ColorRawTokens.functionalMalachite700,
            ColorRawTokens.functionalMalachite800,
            ColorRawTokens.functionalMalachite900,
        ]

        let colorsFunctionalScarlet: [ColorRawToken] = [
            ColorRawTokens.functionalScarlet100,
            ColorRawTokens.functionalScarlet200,
            ColorRawTokens.functionalScarlet300,
            ColorRawTokens.functionalScarlet400,
            ColorRawTokens.functionalScarlet500,
            ColorRawTokens.functionalScarlet600,
            ColorRawTokens.functionalScarlet700,
            ColorRawTokens.functionalScarlet800,
            ColorRawTokens.functionalScarlet900,
        ]

        let colorsFunctionalSun: [ColorRawToken] = [
            ColorRawTokens.functionalSun100,
            ColorRawTokens.functionalSun200,
            ColorRawTokens.functionalSun300,
            ColorRawTokens.functionalSun400,
            ColorRawTokens.functionalSun500,
            ColorRawTokens.functionalSun600,
            ColorRawTokens.functionalSun700,
            ColorRawTokens.functionalSun800,
            ColorRawTokens.functionalSun900,
        ]

        let colorsOpacityBlack: [ColorRawToken] = [
            ColorRawTokens.opacityBlack0,
            ColorRawTokens.opacityBlack40,
            ColorRawTokens.opacityBlack80,
            ColorRawTokens.opacityBlack120,
            ColorRawTokens.opacityBlack160,
            ColorRawTokens.opacityBlack200,
            ColorRawTokens.opacityBlack240,
            ColorRawTokens.opacityBlack280,
            ColorRawTokens.opacityBlack320,
            ColorRawTokens.opacityBlack360,
            ColorRawTokens.opacityBlack400,
            ColorRawTokens.opacityBlack440,
            ColorRawTokens.opacityBlack480,
            ColorRawTokens.opacityBlack520,
            ColorRawTokens.opacityBlack560,
            ColorRawTokens.opacityBlack600,
            ColorRawTokens.opacityBlack640,
            ColorRawTokens.opacityBlack680,
            ColorRawTokens.opacityBlack720,
            ColorRawTokens.opacityBlack760,
            ColorRawTokens.opacityBlack800,
            ColorRawTokens.opacityBlack840,
            ColorRawTokens.opacityBlack880,
            ColorRawTokens.opacityBlack920,
            ColorRawTokens.opacityBlack960,
        ]

        let colorsOpacityColored: [ColorRawToken] = [
            ColorRawTokens.dodgerBlue80,
            ColorRawTokens.dodgerBlue520,
            ColorRawTokens.malachite120,
            ColorRawTokens.malachite640,
            ColorRawTokens.scarlet80,
            ColorRawTokens.scarlet320,
            ColorRawTokens.sun160,
            ColorRawTokens.sun480,
        ]

        let colorsOpacityWhite: [ColorRawToken] = [
            ColorRawTokens.white0,
            ColorRawTokens.white40,
            ColorRawTokens.white80,
            ColorRawTokens.white120,
            ColorRawTokens.white160,
            ColorRawTokens.white200,
            ColorRawTokens.white240,
            ColorRawTokens.white280,
            ColorRawTokens.white320,
            ColorRawTokens.white360,
            ColorRawTokens.white400,
            ColorRawTokens.white440,
            ColorRawTokens.white480,
            ColorRawTokens.white520,
            ColorRawTokens.white560,
            ColorRawTokens.white600,
            ColorRawTokens.white640,
            ColorRawTokens.white680,
            ColorRawTokens.white720,
            ColorRawTokens.white760,
            ColorRawTokens.white800,
            ColorRawTokens.white840,
            ColorRawTokens.white880,
            ColorRawTokens.white920,
            ColorRawTokens.white960,
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
