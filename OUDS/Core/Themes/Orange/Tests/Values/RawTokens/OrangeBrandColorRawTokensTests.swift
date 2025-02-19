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

import OUDSThemesOrange
import TestsUtils
import XCTest

// swiftlint:disable required_deinit
// swiftlint:disable type_body_length
// swiftlint:disable force_try
// swiftlint:disable function_body_length

/// The aim of this tests class is to look for regressions in **Orange brand color raw tokens**.
///
/// Because these values will be at least generated through an external tool, is it not relevant to test each token values.
/// Indeed, each future generation of Swift code may break theses tests because there are new values.
/// However, in the semantics of **Orange brand color raw tokens**, there will be some unchanged things like relationships between tokens.
/// 
/// Here are some rules to follow:
/// - all colors must be different
/// - for a group of colors, the higher the token is, the darker the color is
/// - all colors must have an hexadecimal sring value with 8 b16 digits
final class OrangeBrandColorRawTokensTests: XCTestCase {

    // MARK: - Settings

    /// The regular expression pattern to check the colors are in hexa format
    private static let colorFormat = try! NSRegularExpression(pattern: "^#[0-9A-Fa-f]{8}$")

    // MARK: - Tests

    // MARK: Primitive token - Colors - Orange - Orange

    func testOrangeBrandColorRawTokenColorOrange50LighterThanOrange100() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorOrange50, OrangeBrandColorRawTokens.colorOrange100)
    }

    func testOrangeBrandColorRawTokenColorOrange100LighterThanOrange200() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorOrange100, OrangeBrandColorRawTokens.colorOrange200)
    }

    func testOrangeBrandColorRawTokenColorOrange200LighterThanOrange300() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorOrange200, OrangeBrandColorRawTokens.colorOrange300)
    }

    func testOrangeBrandColorRawTokenColorOrange300LighterThanOrange400() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorOrange300, OrangeBrandColorRawTokens.colorOrange400)
    }

    func testOrangeBrandColorRawTokenColorOrange400LighterThanOrange500() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorOrange400, OrangeBrandColorRawTokens.colorOrange500)
    }

    func testOrangeBrandColorRawTokenColorOrange500LighterThanOrange550() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorOrange500, OrangeBrandColorRawTokens.colorOrange550)
    }

    func testOrangeBrandColorRawTokenColorOrange550LighterThanOrange600() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorOrange550, OrangeBrandColorRawTokens.colorOrange600)
    }

    func testOrangeBrandColorRawTokenColorOrange600LighterThanOrange700() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorOrange600, OrangeBrandColorRawTokens.colorOrange700)
    }

    func testOrangeBrandColorRawTokenColorOrange700LighterThanOrange800() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorOrange700, OrangeBrandColorRawTokens.colorOrange800)
    }

    func testOrangeBrandColorRawTokenColorOrange800LighterThanOrange900() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorOrange800, OrangeBrandColorRawTokens.colorOrange900)
    }

    func testOrangeBrandColorRawTokenColorOrange50Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorOrange50, regexp: Self.colorFormat)
    }

    func testOrangeBrandColorRawTokenColorOrange100Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorOrange100, regexp: Self.colorFormat)
    }

    func testOrangeBrandColorRawTokenColorOrange200Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorOrange200, regexp: Self.colorFormat)
    }

    func testOrangeBrandColorRawTokenColorOrange300Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorOrange300, regexp: Self.colorFormat)
    }

    func testOrangeBrandColorRawTokenColorOrange400Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorOrange400, regexp: Self.colorFormat)
    }

    func testOrangeBrandColorRawTokenColorOrange500Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorOrange500, regexp: Self.colorFormat)
    }

    func testOrangeBrandColorRawTokenColorOrange550Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorOrange550, regexp: Self.colorFormat)
    }

    func testOrangeBrandColorRawTokenColorOrange600Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorOrange600, regexp: Self.colorFormat)
    }

    func testOrangeBrandColorRawTokenColorOrange700Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorOrange700, regexp: Self.colorFormat)
    }

    func testOrangeBrandColorRawTokenColorOrange800Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorOrange800, regexp: Self.colorFormat)
    }

    func testOrangeBrandColorRawTokenColorOrange900Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorOrange900, regexp: Self.colorFormat)
    }

    // MARK: Primitive token - Colors - Orange - Brand - Warm gray

    func testOrangeBrandColorRawTokenColorWarmGray100LighterThanWarmGray200() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorWarmGray100, OrangeBrandColorRawTokens.colorWarmGray200)
    }

    func testOrangeBrandColorRawTokenColorWarmGray200LighterThanWarmGray300() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorWarmGray200, OrangeBrandColorRawTokens.colorWarmGray300)
    }

    func testOrangeBrandColorRawTokenColorWarmGray300LighterThanWarmGray400() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorWarmGray300, OrangeBrandColorRawTokens.colorWarmGray400)
    }

    func testOrangeBrandColorRawTokenColorWarmGray400LighterThanWarmGray500() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorWarmGray400, OrangeBrandColorRawTokens.colorWarmGray500)
    }

    func testOrangeBrandColorRawTokenColorWarmGray500LighterThanWarmGray600() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorWarmGray500, OrangeBrandColorRawTokens.colorWarmGray600)
    }

    func testOrangeBrandColorRawTokenColorWarmGray600LighterThanWarmGray700() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorWarmGray600, OrangeBrandColorRawTokens.colorWarmGray700)
    }

    func testOrangeBrandColorRawTokenColorWarmGray700LighterThanWarmGray800() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorWarmGray700, OrangeBrandColorRawTokens.colorWarmGray800)
    }

    func testOrangeBrandColorRawTokenColorWarmGray800LighterThanWarmGray900() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorWarmGray800, OrangeBrandColorRawTokens.colorWarmGray900)
    }

    func testOrangeBrandColorRawTokenColorWarmGray100Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorWarmGray100, regexp: Self.colorFormat)
    }

    func testOrangeBrandColorRawTokenColorWarmGray200Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorWarmGray200, regexp: Self.colorFormat)
    }

    func testOrangeBrandColorRawTokenColorWarmGray300Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorWarmGray300, regexp: Self.colorFormat)
    }

    func testOrangeBrandColorRawTokenColorWarmGray400Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorWarmGray400, regexp: Self.colorFormat)
    }

    func testOrangeBrandColorRawTokenColorWarmGray500Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorWarmGray500, regexp: Self.colorFormat)
    }

    func testOrangeBrandColorRawTokenColorWarmGray600Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorWarmGray600, regexp: Self.colorFormat)
    }

    func testOrangeBrandColorRawTokenColorWarmGray700Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorWarmGray700, regexp: Self.colorFormat)
    }

    func testOrangeBrandColorRawTokenColorWarmGray800Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorWarmGray800, regexp: Self.colorFormat)
    }

    func testOrangeBrandColorRawTokenColorWarmGray900Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorWarmGray900, regexp: Self.colorFormat)
    }

    // MARK: - Compare all colors

    func testOrangeBrandColorRawTokensAreAllUnique() {
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange50, OrangeBrandColorRawTokens.colorOrange100)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange50, OrangeBrandColorRawTokens.colorOrange200)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange50, OrangeBrandColorRawTokens.colorOrange300)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange50, OrangeBrandColorRawTokens.colorOrange400)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange50, OrangeBrandColorRawTokens.colorOrange500)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange50, OrangeBrandColorRawTokens.colorOrange550)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange50, OrangeBrandColorRawTokens.colorOrange600)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange50, OrangeBrandColorRawTokens.colorOrange700)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange50, OrangeBrandColorRawTokens.colorOrange800)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange50, OrangeBrandColorRawTokens.colorOrange900)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange50, OrangeBrandColorRawTokens.colorWarmGray100)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange50, OrangeBrandColorRawTokens.colorWarmGray200)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange50, OrangeBrandColorRawTokens.colorWarmGray300)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange50, OrangeBrandColorRawTokens.colorWarmGray400)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange50, OrangeBrandColorRawTokens.colorWarmGray500)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange50, OrangeBrandColorRawTokens.colorWarmGray600)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange50, OrangeBrandColorRawTokens.colorWarmGray700)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange50, OrangeBrandColorRawTokens.colorWarmGray800)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange50, OrangeBrandColorRawTokens.colorWarmGray900)

        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange100, OrangeBrandColorRawTokens.colorOrange200)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange100, OrangeBrandColorRawTokens.colorOrange300)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange100, OrangeBrandColorRawTokens.colorOrange400)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange100, OrangeBrandColorRawTokens.colorOrange500)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange100, OrangeBrandColorRawTokens.colorOrange550)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange100, OrangeBrandColorRawTokens.colorOrange600)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange100, OrangeBrandColorRawTokens.colorOrange700)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange100, OrangeBrandColorRawTokens.colorOrange800)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange100, OrangeBrandColorRawTokens.colorOrange900)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange100, OrangeBrandColorRawTokens.colorWarmGray100)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange100, OrangeBrandColorRawTokens.colorWarmGray200)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange100, OrangeBrandColorRawTokens.colorWarmGray300)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange100, OrangeBrandColorRawTokens.colorWarmGray400)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange100, OrangeBrandColorRawTokens.colorWarmGray500)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange100, OrangeBrandColorRawTokens.colorWarmGray600)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange100, OrangeBrandColorRawTokens.colorWarmGray700)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange100, OrangeBrandColorRawTokens.colorWarmGray800)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange100, OrangeBrandColorRawTokens.colorWarmGray900)

        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange200, OrangeBrandColorRawTokens.colorOrange300)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange200, OrangeBrandColorRawTokens.colorOrange400)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange200, OrangeBrandColorRawTokens.colorOrange500)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange200, OrangeBrandColorRawTokens.colorOrange550)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange200, OrangeBrandColorRawTokens.colorOrange600)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange200, OrangeBrandColorRawTokens.colorOrange700)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange200, OrangeBrandColorRawTokens.colorOrange800)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange200, OrangeBrandColorRawTokens.colorOrange900)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange200, OrangeBrandColorRawTokens.colorWarmGray100)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange200, OrangeBrandColorRawTokens.colorWarmGray200)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange200, OrangeBrandColorRawTokens.colorWarmGray300)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange200, OrangeBrandColorRawTokens.colorWarmGray400)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange200, OrangeBrandColorRawTokens.colorWarmGray500)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange200, OrangeBrandColorRawTokens.colorWarmGray600)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange200, OrangeBrandColorRawTokens.colorWarmGray700)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange200, OrangeBrandColorRawTokens.colorWarmGray800)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange200, OrangeBrandColorRawTokens.colorWarmGray900)

        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange300, OrangeBrandColorRawTokens.colorOrange400)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange300, OrangeBrandColorRawTokens.colorOrange500)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange300, OrangeBrandColorRawTokens.colorOrange550)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange300, OrangeBrandColorRawTokens.colorOrange600)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange300, OrangeBrandColorRawTokens.colorOrange700)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange300, OrangeBrandColorRawTokens.colorOrange800)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange300, OrangeBrandColorRawTokens.colorOrange900)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange300, OrangeBrandColorRawTokens.colorWarmGray100)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange300, OrangeBrandColorRawTokens.colorWarmGray200)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange300, OrangeBrandColorRawTokens.colorWarmGray300)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange300, OrangeBrandColorRawTokens.colorWarmGray400)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange300, OrangeBrandColorRawTokens.colorWarmGray500)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange300, OrangeBrandColorRawTokens.colorWarmGray600)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange300, OrangeBrandColorRawTokens.colorWarmGray700)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange300, OrangeBrandColorRawTokens.colorWarmGray800)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange300, OrangeBrandColorRawTokens.colorWarmGray900)

        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange400, OrangeBrandColorRawTokens.colorOrange500)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange400, OrangeBrandColorRawTokens.colorOrange550)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange400, OrangeBrandColorRawTokens.colorOrange600)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange400, OrangeBrandColorRawTokens.colorOrange700)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange400, OrangeBrandColorRawTokens.colorOrange800)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange400, OrangeBrandColorRawTokens.colorOrange900)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange400, OrangeBrandColorRawTokens.colorWarmGray100)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange400, OrangeBrandColorRawTokens.colorWarmGray200)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange400, OrangeBrandColorRawTokens.colorWarmGray300)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange400, OrangeBrandColorRawTokens.colorWarmGray400)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange400, OrangeBrandColorRawTokens.colorWarmGray500)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange400, OrangeBrandColorRawTokens.colorWarmGray600)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange400, OrangeBrandColorRawTokens.colorWarmGray700)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange400, OrangeBrandColorRawTokens.colorWarmGray800)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange400, OrangeBrandColorRawTokens.colorWarmGray900)

        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange500, OrangeBrandColorRawTokens.colorOrange550)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange500, OrangeBrandColorRawTokens.colorOrange600)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange500, OrangeBrandColorRawTokens.colorOrange700)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange500, OrangeBrandColorRawTokens.colorOrange800)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange500, OrangeBrandColorRawTokens.colorOrange900)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange500, OrangeBrandColorRawTokens.colorWarmGray100)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange500, OrangeBrandColorRawTokens.colorWarmGray200)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange500, OrangeBrandColorRawTokens.colorWarmGray300)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange500, OrangeBrandColorRawTokens.colorWarmGray400)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange500, OrangeBrandColorRawTokens.colorWarmGray500)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange500, OrangeBrandColorRawTokens.colorWarmGray600)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange500, OrangeBrandColorRawTokens.colorWarmGray700)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange500, OrangeBrandColorRawTokens.colorWarmGray800)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange500, OrangeBrandColorRawTokens.colorWarmGray900)

        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange550, OrangeBrandColorRawTokens.colorOrange600)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange550, OrangeBrandColorRawTokens.colorOrange700)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange550, OrangeBrandColorRawTokens.colorOrange800)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange550, OrangeBrandColorRawTokens.colorOrange900)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange550, OrangeBrandColorRawTokens.colorWarmGray100)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange550, OrangeBrandColorRawTokens.colorWarmGray200)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange550, OrangeBrandColorRawTokens.colorWarmGray300)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange550, OrangeBrandColorRawTokens.colorWarmGray400)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange550, OrangeBrandColorRawTokens.colorWarmGray500)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange550, OrangeBrandColorRawTokens.colorWarmGray600)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange550, OrangeBrandColorRawTokens.colorWarmGray700)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange550, OrangeBrandColorRawTokens.colorWarmGray800)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange550, OrangeBrandColorRawTokens.colorWarmGray900)

        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange600, OrangeBrandColorRawTokens.colorOrange700)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange600, OrangeBrandColorRawTokens.colorOrange800)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange600, OrangeBrandColorRawTokens.colorOrange900)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange600, OrangeBrandColorRawTokens.colorWarmGray100)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange600, OrangeBrandColorRawTokens.colorWarmGray200)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange600, OrangeBrandColorRawTokens.colorWarmGray300)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange600, OrangeBrandColorRawTokens.colorWarmGray400)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange600, OrangeBrandColorRawTokens.colorWarmGray500)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange600, OrangeBrandColorRawTokens.colorWarmGray600)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange600, OrangeBrandColorRawTokens.colorWarmGray700)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange600, OrangeBrandColorRawTokens.colorWarmGray800)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange600, OrangeBrandColorRawTokens.colorWarmGray900)

        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange700, OrangeBrandColorRawTokens.colorOrange800)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange700, OrangeBrandColorRawTokens.colorOrange900)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange700, OrangeBrandColorRawTokens.colorWarmGray100)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange700, OrangeBrandColorRawTokens.colorWarmGray200)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange700, OrangeBrandColorRawTokens.colorWarmGray300)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange700, OrangeBrandColorRawTokens.colorWarmGray400)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange700, OrangeBrandColorRawTokens.colorWarmGray500)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange700, OrangeBrandColorRawTokens.colorWarmGray600)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange700, OrangeBrandColorRawTokens.colorWarmGray700)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange700, OrangeBrandColorRawTokens.colorWarmGray800)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange700, OrangeBrandColorRawTokens.colorWarmGray900)

        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange800, OrangeBrandColorRawTokens.colorOrange900)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange800, OrangeBrandColorRawTokens.colorWarmGray100)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange800, OrangeBrandColorRawTokens.colorWarmGray200)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange800, OrangeBrandColorRawTokens.colorWarmGray300)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange800, OrangeBrandColorRawTokens.colorWarmGray400)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange800, OrangeBrandColorRawTokens.colorWarmGray500)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange800, OrangeBrandColorRawTokens.colorWarmGray600)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange800, OrangeBrandColorRawTokens.colorWarmGray700)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange800, OrangeBrandColorRawTokens.colorWarmGray800)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange800, OrangeBrandColorRawTokens.colorWarmGray900)

        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange900, OrangeBrandColorRawTokens.colorWarmGray100)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange900, OrangeBrandColorRawTokens.colorWarmGray200)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange900, OrangeBrandColorRawTokens.colorWarmGray300)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange900, OrangeBrandColorRawTokens.colorWarmGray400)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange900, OrangeBrandColorRawTokens.colorWarmGray500)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange900, OrangeBrandColorRawTokens.colorWarmGray600)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange900, OrangeBrandColorRawTokens.colorWarmGray700)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange900, OrangeBrandColorRawTokens.colorWarmGray800)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorOrange900, OrangeBrandColorRawTokens.colorWarmGray900)

        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorWarmGray100, OrangeBrandColorRawTokens.colorWarmGray200)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorWarmGray100, OrangeBrandColorRawTokens.colorWarmGray300)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorWarmGray100, OrangeBrandColorRawTokens.colorWarmGray400)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorWarmGray100, OrangeBrandColorRawTokens.colorWarmGray500)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorWarmGray100, OrangeBrandColorRawTokens.colorWarmGray600)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorWarmGray100, OrangeBrandColorRawTokens.colorWarmGray700)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorWarmGray100, OrangeBrandColorRawTokens.colorWarmGray800)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorWarmGray100, OrangeBrandColorRawTokens.colorWarmGray900)

        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorWarmGray200, OrangeBrandColorRawTokens.colorWarmGray300)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorWarmGray200, OrangeBrandColorRawTokens.colorWarmGray400)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorWarmGray200, OrangeBrandColorRawTokens.colorWarmGray500)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorWarmGray200, OrangeBrandColorRawTokens.colorWarmGray600)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorWarmGray200, OrangeBrandColorRawTokens.colorWarmGray700)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorWarmGray200, OrangeBrandColorRawTokens.colorWarmGray800)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorWarmGray200, OrangeBrandColorRawTokens.colorWarmGray900)

        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorWarmGray300, OrangeBrandColorRawTokens.colorWarmGray400)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorWarmGray300, OrangeBrandColorRawTokens.colorWarmGray500)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorWarmGray300, OrangeBrandColorRawTokens.colorWarmGray600)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorWarmGray300, OrangeBrandColorRawTokens.colorWarmGray700)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorWarmGray300, OrangeBrandColorRawTokens.colorWarmGray800)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorWarmGray300, OrangeBrandColorRawTokens.colorWarmGray900)

        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorWarmGray400, OrangeBrandColorRawTokens.colorWarmGray500)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorWarmGray400, OrangeBrandColorRawTokens.colorWarmGray600)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorWarmGray400, OrangeBrandColorRawTokens.colorWarmGray700)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorWarmGray400, OrangeBrandColorRawTokens.colorWarmGray800)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorWarmGray400, OrangeBrandColorRawTokens.colorWarmGray900)

        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorWarmGray500, OrangeBrandColorRawTokens.colorWarmGray600)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorWarmGray500, OrangeBrandColorRawTokens.colorWarmGray700)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorWarmGray500, OrangeBrandColorRawTokens.colorWarmGray800)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorWarmGray500, OrangeBrandColorRawTokens.colorWarmGray900)

        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorWarmGray600, OrangeBrandColorRawTokens.colorWarmGray700)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorWarmGray600, OrangeBrandColorRawTokens.colorWarmGray800)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorWarmGray600, OrangeBrandColorRawTokens.colorWarmGray900)

        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorWarmGray700, OrangeBrandColorRawTokens.colorWarmGray800)
        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorWarmGray700, OrangeBrandColorRawTokens.colorWarmGray900)

        XCTAssertNotEqual(OrangeBrandColorRawTokens.colorWarmGray800, OrangeBrandColorRawTokens.colorWarmGray900)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable type_body_length
// swiftlint:enable force_try
// swiftlint:enable function_body_length
