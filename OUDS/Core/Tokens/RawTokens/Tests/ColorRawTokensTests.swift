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
import Testing
import TestsUtils
import XCTest

// swiftlint:disable type_body_length
// swiftlint:disable required_deinit
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
final class ColorRawTokensTests: XCTestCase {

    // MARK: - Settings

    /// The regular expression pattern to check the colors are in hexa format
    private static let colorFormat = try! NSRegularExpression(pattern: "^#[0-9A-Fa-f]{8}$")

    // MARK: - Tests

    // MARK: - Primitive token - Colors - Black, white

    func testColorRawTokenColorFunctionalWhiteLighterThanColorFunctionalDark() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalWhite, ColorRawTokens.colorFunctionalBlack)
    }

    func testColorRawTokenColorFunctionalBlackFormat() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalBlack, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalWhiteFormat() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalWhite, regexp: Self.colorFormat)
    }

    // MARK: - Primitive token - Colors - Functional light gray

    func testColorRawTokenFunctionalLightGray80LighterThanFunctionalLightGray160() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalLightGray80, ColorRawTokens.colorFunctionalLightGray160)
    }

    func testColorRawTokenFunctionalLightGray160LighterThanFunctionalLightGray240() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalLightGray160, ColorRawTokens.colorFunctionalLightGray240)
    }

    func testColorRawTokenFunctionalLightGray240LighterThanFunctionalLightGray320() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalLightGray240, ColorRawTokens.colorFunctionalLightGray320)
    }

    func testColorRawTokenFunctionalLightGray320LighterThanFunctionalLightGray400() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalLightGray320, ColorRawTokens.colorFunctionalLightGray400)
    }

    func testColorRawTokenFunctionalLightGray400LighterThanFunctionalLightGray480() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalLightGray400, ColorRawTokens.colorFunctionalLightGray480)
    }

    func testColorRawTokenFunctionalLightGray480LighterThanFunctionalLightGray560() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalLightGray480, ColorRawTokens.colorFunctionalLightGray560)
    }

    func testColorRawTokenFunctionalLightGray560LighterThanFunctionalLightGray640() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalLightGray560, ColorRawTokens.colorFunctionalLightGray640)
    }

    func testColorRawTokenFunctionalLightGray640LighterThanFunctionalLightGray720() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalLightGray640, ColorRawTokens.colorFunctionalLightGray720)
    }

    func testColorRawTokenFunctionalLightGray720LighterThanFunctionalLightGray800() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalLightGray720, ColorRawTokens.colorFunctionalLightGray800)
    }

    func testColorRawTokenFunctionalLightGray800LighterThanFunctionalLightGray880() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalLightGray800, ColorRawTokens.colorFunctionalLightGray880)
    }

    func testColorRawTokenFunctionalLightGray880LighterThanFunctionalLightGray960() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalLightGray880, ColorRawTokens.colorFunctionalLightGray960)
    }

    func testColorRawTokenColorFunctionalLightGray80Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalLightGray80, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalLightGray160Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalLightGray160, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalLightGray240Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalLightGray240, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalLightGray320Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalLightGray320, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalLightGray400Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalLightGray400, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalLightGray480Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalLightGray480, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalLightGray560Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalLightGray560, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalLightGray640Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalLightGray640, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalLightGray720Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalLightGray720, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalLightGray800Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalLightGray800, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalLightGray880Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalLightGray880, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalLightGray960Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalLightGray960, regexp: Self.colorFormat)
    }

    // MARK: - Primitive token - Colors - Functional dark gray

    func testColorRawTokenFunctionalDarkGray80LighterThanFunctionalDarkGray160() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalDarkGray80, ColorRawTokens.colorFunctionalDarkGray160)
    }

    func testColorRawTokenFunctionalDarkGray160LighterThanFunctionalDarkGray240() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalDarkGray160, ColorRawTokens.colorFunctionalDarkGray240)
    }

    func testColorRawTokenFunctionalDarkGray240LighterThanFunctionalDarkGray320() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalDarkGray240, ColorRawTokens.colorFunctionalDarkGray320)
    }

    func testColorRawTokenFunctionalDarkGray320LighterThanFunctionalDarkGray400() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalDarkGray320, ColorRawTokens.colorFunctionalDarkGray400)
    }

    func testColorRawTokenFunctionalDarkGray400LighterThanFunctionalDarkGray480() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalDarkGray400, ColorRawTokens.colorFunctionalDarkGray480)
    }

    func testColorRawTokenFunctionalDarkGray480LighterThanFunctionalDarkGray560() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalDarkGray480, ColorRawTokens.colorFunctionalDarkGray560)
    }

    func testColorRawTokenFunctionalDarkGray560LighterThanFunctionalDarkGray640() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalDarkGray560, ColorRawTokens.colorFunctionalDarkGray640)
    }

    func testColorRawTokenFunctionalDarkGray640LighterThanFunctionalDarkGray720() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalDarkGray640, ColorRawTokens.colorFunctionalDarkGray720)
    }

    func testColorRawTokenFunctionalDarkGray720LighterThanFunctionalDarkGray800() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalDarkGray720, ColorRawTokens.colorFunctionalDarkGray800)
    }

    func testColorRawTokenFunctionalDarkGray800LighterThanFunctionalDarkGray880() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalDarkGray800, ColorRawTokens.colorFunctionalDarkGray880)
    }

    func testColorRawTokenFunctionalDarkGray880LighterThanFunctionalDarkGray960() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalDarkGray880, ColorRawTokens.colorFunctionalDarkGray960)
    }

    func testColorRawTokenColorFunctionalDarkGray80Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalDarkGray80, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalDarkGray160Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalDarkGray160, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalDarkGray240Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalDarkGray240, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalDarkGray320Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalDarkGray320, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalDarkGray400Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalDarkGray400, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalDarkGray480Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalDarkGray480, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalDarkGray560Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalDarkGray560, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalDarkGray640Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalDarkGray640, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalDarkGray720Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalDarkGray720, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalDarkGray800Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalDarkGray800, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalDarkGray880Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalDarkGray880, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalDarkGray960Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalDarkGray960, regexp: Self.colorFormat)
    }

    // MARK: - Primitive token - Colors - Functional scarlet

    func testColorRawTokenFunctionalScarlet100LighterThanFunctionalScarlet200() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalScarlet100, ColorRawTokens.colorFunctionalScarlet200)
    }

    func testColorRawTokenFunctionalScarlet200LighterThanFunctionalScarlet300() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalScarlet200, ColorRawTokens.colorFunctionalScarlet300)
    }

    func testColorRawTokenFunctionalScarlet300LighterThanFunctionalScarlet400() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalScarlet300, ColorRawTokens.colorFunctionalScarlet400)
    }

    func testColorRawTokenFunctionalScarlet400LighterThanFunctionalScarlet500() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalScarlet400, ColorRawTokens.colorFunctionalScarlet500)
    }

    func testColorRawTokenFunctionalScarlet500LighterThanFunctionalScarlet600() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalScarlet500, ColorRawTokens.colorFunctionalScarlet600)
    }

    func testColorRawTokenFunctionalScarlet600LighterThanFunctionalScarlet700() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalScarlet600, ColorRawTokens.colorFunctionalScarlet700)
    }

    func testColorRawTokenFunctionalScarlet700LighterThanFunctionalScarlet800() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalScarlet700, ColorRawTokens.colorFunctionalScarlet800)
    }

    func testColorRawTokenFunctionalScarlet800LighterThanFunctionalScarlet900() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalScarlet800, ColorRawTokens.colorFunctionalScarlet900)
    }

    func testColorRawTokenColorFunctionalScarlet100Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalScarlet100, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalScarlet200Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalScarlet200, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalScarlet300Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalScarlet300, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalScarlet400Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalScarlet400, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalScarlet500Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalScarlet500, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalScarlet600Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalScarlet600, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalScarlet700Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalScarlet700, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalScarlet800Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalScarlet800, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalScarlet900Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalScarlet900, regexp: Self.colorFormat)
    }

    // MARK: - Primitive token - Colors - Functional sun

    func testColorRawTokenFunctionalSun100LighterThanFunctionalSun200() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalSun100, ColorRawTokens.colorFunctionalSun200)
    }

    func testColorRawTokenFunctionalSun200LighterThanFunctionalSun300() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalSun200, ColorRawTokens.colorFunctionalSun300)
    }

    func testColorRawTokenFunctionalSun300LighterThanFunctionalSun400() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalSun300, ColorRawTokens.colorFunctionalSun400)
    }

    func testColorRawTokenFunctionalSun400LighterThanFunctionalSun500() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalSun400, ColorRawTokens.colorFunctionalSun500)
    }

    func testColorRawTokenFunctionalSun500LighterThanFunctionalSun600() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalSun500, ColorRawTokens.colorFunctionalSun600)
    }

    func testColorRawTokenFunctionalSun600LighterThanFunctionalSun700() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalSun600, ColorRawTokens.colorFunctionalSun700)
    }

    func testColorRawTokenFunctionalSun700LighterThanFunctionalSun800() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalSun700, ColorRawTokens.colorFunctionalSun800)
    }

    func testColorRawTokenFunctionalSun800LighterThanFunctionalSun900() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalSun800, ColorRawTokens.colorFunctionalSun900)
    }

    func testColorRawTokenColorFunctionalSun100Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalSun100, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalSun200Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalSun200, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalSun300Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalSun300, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalSun400Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalSun400, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalSun500Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalSun500, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalSun600Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalSun600, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalSun700Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalSun700, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalSun800Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalSun800, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalSun900Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalSun900, regexp: Self.colorFormat)
    }

    // MARK: Primitive token - Colors - Functional malachite

    func testColorRawTokenFunctionalMalachite100LighterThanFunctionalMalachite200() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalMalachite100, ColorRawTokens.colorFunctionalMalachite200)
    }

    func testColorRawTokenFunctionalMalachite200LighterThanFunctionalMalachite300() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalMalachite200, ColorRawTokens.colorFunctionalMalachite300)
    }

    func testColorRawTokenFunctionalMalachite300LighterThanFunctionalMalachite400() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalMalachite300, ColorRawTokens.colorFunctionalMalachite400)
    }

    func testColorRawTokenFunctionalMalachite400LighterThanFunctionalMalachite500() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalMalachite400, ColorRawTokens.colorFunctionalMalachite500)
    }

    func testColorRawTokenFunctionalMalachite500LighterThanFunctionalMalachite600() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalMalachite500, ColorRawTokens.colorFunctionalMalachite600)
    }

    func testColorRawTokenFunctionalMalachite600LighterThanFunctionalMalachite700() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalMalachite600, ColorRawTokens.colorFunctionalMalachite700)
    }

    func testColorRawTokenFunctionalMalachite700LighterThanFunctionalMalachite800() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalMalachite700, ColorRawTokens.colorFunctionalMalachite800)
    }

    func testColorRawTokenFunctionalMalachite800LighterThanFunctionalMalachite900() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalMalachite800, ColorRawTokens.colorFunctionalMalachite900)
    }

    func testColorRawTokenColorFunctionalMalachite100Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalMalachite100, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalMalachite200Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalMalachite200, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalMalachite300Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalMalachite300, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalMalachite400Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalMalachite400, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalMalachite500Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalMalachite500, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalMalachite600Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalMalachite600, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalMalachite700Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalMalachite700, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalMalachite800Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalMalachite800, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalMalachite900Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalMalachite900, regexp: Self.colorFormat)
    }

    // MARK: - Primitive token - Colors - Functional dodger blue

    func testColorRawTokenFunctionalDodgerBlue100LighterThanFunctionalDodgerBlue200() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalDodgerBlue100, ColorRawTokens.colorFunctionalDodgerBlue200)
    }

    func testColorRawTokenFunctionalDodgerBlue200LighterThanFunctionalDodgerBlue300() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalDodgerBlue200, ColorRawTokens.colorFunctionalDodgerBlue300)
    }

    func testColorRawTokenFunctionalDodgerBlue300LighterThanFunctionalDodgerBlue400() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalDodgerBlue300, ColorRawTokens.colorFunctionalDodgerBlue400)
    }

    func testColorRawTokenFunctionalDodgerBlue400LighterThanFunctionalDodgerBlue500() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalDodgerBlue400, ColorRawTokens.colorFunctionalDodgerBlue500)
    }

    func testColorRawTokenFunctionalDodgerBlue500LighterThanFunctionalDodgerBlue600() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalDodgerBlue500, ColorRawTokens.colorFunctionalDodgerBlue600)
    }

    func testColorRawTokenFunctionalDodgerBlue600LighterThanFunctionalDodgerBlue700() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalDodgerBlue600, ColorRawTokens.colorFunctionalDodgerBlue700)
    }

    func testColorRawTokenFunctionalDodgerBlue700LighterThanFunctionalDodgerBlue800() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalDodgerBlue700, ColorRawTokens.colorFunctionalDodgerBlue800)
    }

    func testColorRawTokenFunctionalDodgerBlue800LighterThanFunctionalDodgerBlue900() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorFunctionalDodgerBlue800, ColorRawTokens.colorFunctionalDodgerBlue900)
    }

    func testColorRawTokenColorFunctionalDodgerBlue100Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalDodgerBlue100, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalDodgerBlue200Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalDodgerBlue200, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalDodgerBlue300Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalDodgerBlue300, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalDodgerBlue400Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalDodgerBlue400, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalDodgerBlue500Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalDodgerBlue500, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalDodgerBlue600Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalDodgerBlue600, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalDodgerBlue700Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalDodgerBlue700, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalDodgerBlue800Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalDodgerBlue800, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorFunctionalDodgerBlue900Format() throws {
        XCTAssertMatches(ColorRawTokens.colorFunctionalDodgerBlue900, regexp: Self.colorFormat)
    }

    // MARK: - Primitive token - Colors - Opacity black

    func testColorOpacityBlack0DarkerThanTransparentBlack40() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityBlack0, ColorRawTokens.colorOpacityBlack40)
    }

    func testColorOpacityBlack40DarkerThanTransparentBlack80() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityBlack40, ColorRawTokens.colorOpacityBlack80)
    }

    func testColorOpacityBlack80DarkerThanTransparentBlack120() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityBlack80, ColorRawTokens.colorOpacityBlack120)
    }

    func testColorOpacityBlack120DarkerThanTransparentBlack160() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityBlack120, ColorRawTokens.colorOpacityBlack160)
    }

    func testColorOpacityBlack160DarkerThanTransparentBlack200() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityBlack160, ColorRawTokens.colorOpacityBlack200)
    }

    func testColorOpacityBlack200DarkerThanTransparentBlack240() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityBlack200, ColorRawTokens.colorOpacityBlack240)
    }

    func testColorOpacityBlack240DarkerThanTransparentBlack280() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityBlack240, ColorRawTokens.colorOpacityBlack280)
    }

    func testColorOpacityBlack280DarkerThanTransparentBlack320() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityBlack280, ColorRawTokens.colorOpacityBlack320)
    }

    func testColorOpacityBlack320DarkerThanTransparentBlack360() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityBlack320, ColorRawTokens.colorOpacityBlack360)
    }

    func testColorOpacityBlack360DarkerThanTransparentBlack400() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityBlack360, ColorRawTokens.colorOpacityBlack400)
    }

    func testColorOpacityBlack400DarkerThanTransparentBlack440() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityBlack400, ColorRawTokens.colorOpacityBlack440)
    }

    func testColorOpacityBlack440DarkerThanTransparentBlack480() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityBlack440, ColorRawTokens.colorOpacityBlack480)
    }

    func testColorOpacityBlack480DarkerThanTransparentBlack520() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityBlack480, ColorRawTokens.colorOpacityBlack520)
    }

    func testColorOpacityBlack520DarkerThanTransparentBlack560() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityBlack520, ColorRawTokens.colorOpacityBlack560)
    }

    func testColorOpacityBlack560DarkerThanTransparentBlack600() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityBlack560, ColorRawTokens.colorOpacityBlack600)
    }

    func testColorOpacityBlack600DarkerThanTransparentBlack640() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityBlack600, ColorRawTokens.colorOpacityBlack640)
    }

    func testColorOpacityBlack640DarkerThanTransparentBlack680() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityBlack640, ColorRawTokens.colorOpacityBlack680)
    }

    func testColorOpacityBlack680DarkerThanTransparentBlack720() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityBlack680, ColorRawTokens.colorOpacityBlack720)
    }

    func testColorOpacityBlack720DarkerThanTransparentBlack760() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityBlack720, ColorRawTokens.colorOpacityBlack760)
    }

    func testColorOpacityBlack760DarkerThanTransparentBlack800() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityBlack760, ColorRawTokens.colorOpacityBlack800)
    }

    func testColorOpacityBlack800DarkerThanTransparentBlack840() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityBlack800, ColorRawTokens.colorOpacityBlack840)
    }

    func testColorOpacityBlack880DarkerThanTransparentBlack920() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityBlack880, ColorRawTokens.colorOpacityBlack920)
    }

    func testColorOpacityBlack920DarkerThanTransparentBlack960() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityBlack920, ColorRawTokens.colorOpacityBlack960)
    }

    func testColorRawTokenColorOpacityBlack0Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityBlack0, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityBlack40Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityBlack40, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityBlack80Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityBlack80, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityBlack120Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityBlack120, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityBlack160Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityBlack160, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityBlack200Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityBlack200, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityBlack240Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityBlack240, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityBlack280Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityBlack280, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityBlack320Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityBlack320, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityBlack360Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityBlack360, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityBlack400Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityBlack400, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityBlack440Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityBlack440, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityBlack480Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityBlack480, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityBlack520Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityBlack520, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityBlack560Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityBlack560, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityBlack600Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityBlack600, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityBlack640Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityBlack640, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityBlack680Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityBlack680, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityBlack720Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityBlack720, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityBlack760Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityBlack760, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityBlack800Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityBlack800, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityBlack840Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityBlack840, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityBlack880Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityBlack880, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityBlack920Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityBlack920, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityBlack960Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityBlack960, regexp: Self.colorFormat)
    }

    // MARK: - Primitive token - Colors - Opacity Colored

    func testColorRawTokenColorOpacityMalachiteFormat() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityMalachite, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityScarletFormat() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityScarlet, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacitySunFormat() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacitySun, regexp: Self.colorFormat)
    }

    // MARK: - Primitive token - Colors - Opacity White

    func testColorOpacityWhite0DarkerThanTransparentWhite40() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityWhite0, ColorRawTokens.colorOpacityWhite40)
    }

    func testColorOpacityWhite40DarkerThanTransparentWhite80() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityWhite40, ColorRawTokens.colorOpacityWhite80)
    }

    func testColorOpacityWhite80DarkerThanTransparentWhite120() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityWhite80, ColorRawTokens.colorOpacityWhite120)
    }

    func testColorOpacityWhite120DarkerThanTransparentWhite160() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityWhite120, ColorRawTokens.colorOpacityWhite160)
    }

    func testColorOpacityWhite160DarkerThanTransparentWhite200() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityWhite160, ColorRawTokens.colorOpacityWhite200)
    }

    func testColorOpacityWhite200DarkerThanTransparentWhite240() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityWhite200, ColorRawTokens.colorOpacityWhite240)
    }

    func testColorOpacityWhite240DarkerThanTransparentWhite280() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityWhite240, ColorRawTokens.colorOpacityWhite280)
    }

    func testColorOpacityWhite280DarkerThanTransparentWhite320() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityWhite280, ColorRawTokens.colorOpacityWhite320)
    }

    func testColorOpacityWhite320DarkerThanTransparentWhite360() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityWhite320, ColorRawTokens.colorOpacityWhite360)
    }

    func testColorOpacityWhite360DarkerThanTransparentWhite400() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityWhite360, ColorRawTokens.colorOpacityWhite400)
    }

    func testColorOpacityWhite400DarkerThanTransparentWhite440() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityWhite400, ColorRawTokens.colorOpacityWhite440)
    }

    func testColorOpacityWhite440DarkerThanTransparentWhite480() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityWhite440, ColorRawTokens.colorOpacityWhite480)
    }

    func testColorOpacityWhite480DarkerThanTransparentWhite520() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityWhite480, ColorRawTokens.colorOpacityWhite520)
    }

    func testColorOpacityWhite520DarkerThanTransparentWhite560() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityWhite520, ColorRawTokens.colorOpacityWhite560)
    }

    func testColorOpacityWhite560DarkerThanTransparentWhite600() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityWhite560, ColorRawTokens.colorOpacityWhite600)
    }

    func testColorOpacityWhite600DarkerThanTransparentWhite640() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityWhite600, ColorRawTokens.colorOpacityWhite640)
    }

    func testColorOpacityWhite640DarkerThanTransparentWhite680() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityWhite640, ColorRawTokens.colorOpacityWhite680)
    }

    func testColorOpacityWhite680DarkerThanTransparentWhite720() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityWhite680, ColorRawTokens.colorOpacityWhite720)
    }

    func testColorOpacityWhite720DarkerThanTransparentWhite760() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityWhite720, ColorRawTokens.colorOpacityWhite760)
    }

    func testColorOpacityWhite760DarkerThanTransparentWhite800() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityWhite760, ColorRawTokens.colorOpacityWhite800)
    }

    func testColorOpacityWhite800DarkerThanTransparentWhite840() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityWhite800, ColorRawTokens.colorOpacityWhite840)
    }

    func testColorOpacityWhite880DarkerThanTransparentWhite920() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityWhite880, ColorRawTokens.colorOpacityWhite920)
    }

    func testColorOpacityWhite920DarkerThanTransparentWhite960() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorOpacityWhite920, ColorRawTokens.colorOpacityWhite960)
    }

    func testColorRawTokenColorOpacityWhite0Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityWhite0, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityWhite40Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityWhite40, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityWhite80Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityWhite80, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityWhite120Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityWhite120, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityWhite160Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityWhite160, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityWhite200Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityWhite200, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityWhite240Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityWhite240, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityWhite280Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityWhite280, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityWhite320Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityWhite320, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityWhite360Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityWhite360, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityWhite400Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityWhite400, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityWhite440Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityWhite440, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityWhite480Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityWhite480, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityWhite520Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityWhite520, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityWhite560Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityWhite560, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityWhite600Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityWhite600, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityWhite640Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityWhite640, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityWhite680Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityWhite680, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityWhite720Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityWhite720, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityWhite760Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityWhite760, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityWhite800Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityWhite800, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityWhite840Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityWhite840, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityWhite880Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityWhite880, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityWhite920Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityWhite920, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorOpacityWhite960Format() throws {
        XCTAssertMatches(ColorRawTokens.colorOpacityWhite960, regexp: Self.colorFormat)
    }

    // MARK: Primitive token - Colors - Emerald

    func testColorRawTokenColorDecorativeEmerald100LighterThanEmerald200() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeEmerald100, ColorRawTokens.colorDecorativeEmerald200)
    }

    func testColorRawTokenColorDecorativeEmerald200LighterThanEmerald300() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeEmerald200, ColorRawTokens.colorDecorativeEmerald300)
    }

    func testColorRawTokenColorDecorativeEmerald300LighterThanEmerald400() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeEmerald300, ColorRawTokens.colorDecorativeEmerald400)
    }

    func testColorRawTokenColorDecorativeEmerald400LighterThanEmerald500() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeEmerald400, ColorRawTokens.colorDecorativeEmerald500)
    }

    func testColorRawTokenColorDecorativeEmerald500LighterThanEmerald600() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeEmerald500, ColorRawTokens.colorDecorativeEmerald600)
    }

    func testColorRawTokenColorDecorativeEmerald600LighterThanEmerald700() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeEmerald600, ColorRawTokens.colorDecorativeEmerald700)
    }

    func testColorRawTokenColorDecorativeEmerald700LighterThanEmerald800() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeEmerald700, ColorRawTokens.colorDecorativeEmerald800)
    }

    func testColorRawTokenColorDecorativeEmerald800LighterThanEmerald900() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeEmerald800, ColorRawTokens.colorDecorativeEmerald900)
    }

    func testColorRawTokenColorDecorativeEmerald100Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeEmerald100, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeEmerald200Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeEmerald200, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeEmerald300Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeEmerald300, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeEmerald400Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeEmerald400, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeEmerald500Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeEmerald500, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeEmerald600Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeEmerald600, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeEmerald700Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeEmerald700, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeEmerald800Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeEmerald800, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeEmerald900Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeEmerald900, regexp: Self.colorFormat)
    }

    // MARK: Primitive token - Colors - Sky

    func testColorRawTokenColorDecorativeSky100LighterThanSky200() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeSky100, ColorRawTokens.colorDecorativeSky200)
    }

    func testColorRawTokenColorDecorativeSky200LighterThanSky300() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeSky200, ColorRawTokens.colorDecorativeSky300)
    }

    func testColorRawTokenColorDecorativeSky300LighterThanSky400() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeSky300, ColorRawTokens.colorDecorativeSky400)
    }

    func testColorRawTokenColorDecorativeSky400LighterThanSky500() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeSky400, ColorRawTokens.colorDecorativeSky500)
    }

    func testColorRawTokenColorDecorativeSky500LighterThanSky600() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeSky500, ColorRawTokens.colorDecorativeSky600)
    }

    func testColorRawTokenColorDecorativeSky600LighterThanSky700() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeSky600, ColorRawTokens.colorDecorativeSky700)
    }

    func testColorRawTokenColorDecorativeSky700LighterThanSky800() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeSky700, ColorRawTokens.colorDecorativeSky800)
    }

    func testColorRawTokenColorDecorativeSky800LighterThanSky900() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeSky800, ColorRawTokens.colorDecorativeSky900)
    }

    func testColorRawTokenColorDecorativeSky100Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeSky100, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeSky200Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeSky200, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeSky300Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeSky300, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeSky400Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeSky400, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeSky500Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeSky500, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeSky600Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeSky600, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeSky700Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeSky700, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeSky800Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeSky800, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeSky900Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeSky900, regexp: Self.colorFormat)
    }

    // MARK: Primitive token - Colors - Amber

    func testColorRawTokenColorDecorativeAmber100LighterThanAmber200() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeAmber100, ColorRawTokens.colorDecorativeAmber200)
    }

    func testColorRawTokenColorDecorativeAmber200LighterThanAmber300() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeAmber200, ColorRawTokens.colorDecorativeAmber300)
    }

    func testColorRawTokenColorDecorativeAmber300LighterThanAmber400() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeAmber300, ColorRawTokens.colorDecorativeAmber400)
    }

    func testColorRawTokenColorDecorativeAmber400LighterThanAmber500() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeAmber400, ColorRawTokens.colorDecorativeAmber500)
    }

    func testColorRawTokenColorDecorativeAmber500LighterThanAmber600() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeAmber500, ColorRawTokens.colorDecorativeAmber600)
    }

    func testColorRawTokenColorDecorativeAmber600LighterThanAmber700() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeAmber600, ColorRawTokens.colorDecorativeAmber700)
    }

    func testColorRawTokenColorDecorativeAmber700LighterThanAmber800() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeAmber700, ColorRawTokens.colorDecorativeAmber800)
    }

    func testColorRawTokenColorDecorativeAmber800LighterThanAmber900() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeAmber800, ColorRawTokens.colorDecorativeAmber900)
    }

    func testColorRawTokenColorDecorativeAmber100Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeAmber100, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeAmber200Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeAmber200, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeAmber300Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeAmber300, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeAmber400Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeAmber400, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeAmber500Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeAmber500, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeAmber600Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeAmber600, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeAmber700Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeAmber700, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeAmber800Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeAmber800, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeAmber900Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeAmber900, regexp: Self.colorFormat)
    }

    // MARK: Primitive token - Colors - Amethyst

    func testColorRawTokenColorDecorativeAmethyst100LighterThanAmethyst200() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeAmethyst100, ColorRawTokens.colorDecorativeAmethyst200)
    }

    func testColorRawTokenColorDecorativeAmethyst200LighterThanAmethyst300() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeAmethyst200, ColorRawTokens.colorDecorativeAmethyst300)
    }

    func testColorRawTokenColorDecorativeAmethyst300LighterThanAmethyst400() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeAmethyst300, ColorRawTokens.colorDecorativeAmethyst400)
    }

    func testColorRawTokenColorDecorativeAmethyst400LighterThanAmethyst500() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeAmethyst400, ColorRawTokens.colorDecorativeAmethyst500)
    }

    func testColorRawTokenColorDecorativeAmethyst500LighterThanAmethyst600() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeAmethyst500, ColorRawTokens.colorDecorativeAmethyst600)
    }

    func testColorRawTokenColorDecorativeAmethyst600LighterThanAmethyst700() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeAmethyst600, ColorRawTokens.colorDecorativeAmethyst700)
    }

    func testColorRawTokenColorDecorativeAmethyst700LighterThanAmethyst800() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeAmethyst700, ColorRawTokens.colorDecorativeAmethyst800)
    }

    func testColorRawTokenColorDecorativeAmethyst800LighterThanAmethyst900() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeAmethyst800, ColorRawTokens.colorDecorativeAmethyst900)
    }

    func testColorRawTokenColorDecorativeAmethyst100Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeAmethyst100, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeAmethyst200Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeAmethyst200, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeAmethyst300Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeAmethyst300, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeAmethyst400Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeAmethyst400, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeAmethyst500Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeAmethyst500, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeAmethyst600Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeAmethyst600, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeAmethyst700Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeAmethyst700, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeAmethyst800Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeAmethyst800, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeAmethyst900Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeAmethyst900, regexp: Self.colorFormat)
    }

    // MARK: Primitive token - Colors -  Shocking Pink

    func testColorRawTokenColorDecorativeShockingPink100LighterThan200() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeShockingPink100, ColorRawTokens.colorDecorativeShockingPink200)
    }

    func testColorRawTokenColorDecorativeShockingPink200LighterThan300() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeShockingPink200, ColorRawTokens.colorDecorativeShockingPink300)
    }

    func testColorRawTokenColorDecorativeShockingPink300LighterThan400() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeShockingPink300, ColorRawTokens.colorDecorativeShockingPink400)
    }

    func testColorRawTokenColorDecorativeShockingPink400LighterThan500() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeShockingPink400, ColorRawTokens.colorDecorativeShockingPink500)
    }

    func testColorRawTokenColorDecorativeShockingPink500LighterThan600() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeShockingPink500, ColorRawTokens.colorDecorativeShockingPink600)
    }

    func testColorRawTokenColorDecorativeShockingPink600LighterThan700() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeShockingPink600, ColorRawTokens.colorDecorativeShockingPink700)
    }

    func testColorRawTokenColorDecorativeShockingPink700LighterThan800() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeShockingPink700, ColorRawTokens.colorDecorativeShockingPink800)
    }

    func testColorRawTokenColorDecorativeShockingPink800LighterThan900() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeShockingPink800, ColorRawTokens.colorDecorativeShockingPink900)
    }

    func testColorRawTokenColorDecorativeShockingPink100Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeShockingPink100, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeShockingPink200Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeShockingPink200, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeShockingPink300Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeShockingPink300, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeShockingPink400Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeShockingPink400, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeShockingPink500Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeShockingPink500, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeShockingPink600Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeShockingPink600, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeShockingPink700Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeShockingPink700, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeShockingPink800Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeShockingPink800, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeShockingPink900Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeShockingPink900, regexp: Self.colorFormat)
    }

    // MARK: Primitive token - Colors -  Deep Peach

    func testColorRawTokenColorDecorativeDeepPeach100LighterThan200() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeDeepPeach100, ColorRawTokens.colorDecorativeDeepPeach200)
    }

    func testColorRawTokenColorDecorativeDeepPeach200LighterThan300() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeDeepPeach200, ColorRawTokens.colorDecorativeDeepPeach300)
    }

    func testColorRawTokenColorDecorativeDeepPeach300LighterThan400() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeDeepPeach300, ColorRawTokens.colorDecorativeDeepPeach400)
    }

    func testColorRawTokenColorDecorativeDeepPeach400LighterThan500() throws {
        XCTAssertColorDarkerThan(ColorRawTokens.colorDecorativeDeepPeach400, ColorRawTokens.colorDecorativeDeepPeach500)
        // TODO: Why? Is the palette well defined in design team. This is the only case 400 is darker than 500
    }

    func testColorRawTokenColorDecorativeDeepPeach500LighterThan600() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeDeepPeach500, ColorRawTokens.colorDecorativeDeepPeach600)
    }

    func testColorRawTokenColorDecorativeDeepPeach600LighterThan700() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeDeepPeach600, ColorRawTokens.colorDecorativeDeepPeach700)
    }

    func testColorRawTokenColorDecorativeDeepPeach700LighterThan800() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeDeepPeach700, ColorRawTokens.colorDecorativeDeepPeach800)
    }

    func testColorRawTokenColorDecorativeDeepPeach800LighterThan900() throws {
        XCTAssertColorLighterThan(ColorRawTokens.colorDecorativeDeepPeach800, ColorRawTokens.colorDecorativeDeepPeach900)
    }

    func testColorRawTokenColorDecorativeDeepPeach100Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeDeepPeach100, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeDeepPeach200Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeDeepPeach200, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeDeepPeach300Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeDeepPeach300, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeDeepPeach400Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeDeepPeach400, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeDeepPeach500Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeDeepPeach500, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeDeepPeach600Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeDeepPeach600, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeDeepPeach700Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeDeepPeach700, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeDeepPeach800Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeDeepPeach800, regexp: Self.colorFormat)
    }

    func testColorRawTokenColorDecorativeDeepPeach900Format() throws {
        XCTAssertMatches(ColorRawTokens.colorDecorativeDeepPeach900, regexp: Self.colorFormat)
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
// swiftlint:enable required_deinit
// swiftlint:enable force_try
// swiftlint:enable function_body_length
