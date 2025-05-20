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
import OUDSThemesOrange
import Testing
import TestsUtils

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
struct OrangeBrandColorRawTokensTests {

    // MARK: - Settings

    /// The regular expression pattern to check the colors are in hexa format
    private static let colorFormat = try! NSRegularExpression(pattern: "^#[0-9A-Fa-f]{8}$")

    // MARK: - Tests

    // MARK: Primitive token - Colors - Orange - Orange

    @Test func orangeBrandColorRawTokenColorOrange50LighterThanOrange100() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorOrange50, OrangeBrandColorRawTokens.colorOrange100)
    }

    @Test func orangeBrandColorRawTokenColorOrange100LighterThanOrange200() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorOrange100, OrangeBrandColorRawTokens.colorOrange200)
    }

    @Test func orangeBrandColorRawTokenColorOrange200LighterThanOrange300() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorOrange200, OrangeBrandColorRawTokens.colorOrange300)
    }

    @Test func orangeBrandColorRawTokenColorOrange300LighterThanOrange400() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorOrange300, OrangeBrandColorRawTokens.colorOrange400)
    }

    @Test func orangeBrandColorRawTokenColorOrange400LighterThanOrange500() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorOrange400, OrangeBrandColorRawTokens.colorOrange500)
    }

    @Test func orangeBrandColorRawTokenColorOrange500LighterThanOrange550() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorOrange500, OrangeBrandColorRawTokens.colorOrange550)
    }

    @Test func orangeBrandColorRawTokenColorOrange550LighterThanOrange600() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorOrange550, OrangeBrandColorRawTokens.colorOrange600)
    }

    @Test func orangeBrandColorRawTokenColorOrange600LighterThanOrange700() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorOrange600, OrangeBrandColorRawTokens.colorOrange700)
    }

    @Test func orangeBrandColorRawTokenColorOrange700LighterThanOrange800() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorOrange700, OrangeBrandColorRawTokens.colorOrange800)
    }

    @Test func orangeBrandColorRawTokenColorOrange800LighterThanOrange900() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorOrange800, OrangeBrandColorRawTokens.colorOrange900)
    }

    @Test func orangeBrandColorRawTokenColorOrange50Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorOrange50, regexp: Self.colorFormat)
    }

    @Test func orangeBrandColorRawTokenColorOrange100Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorOrange100, regexp: Self.colorFormat)
    }

    @Test func orangeBrandColorRawTokenColorOrange200Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorOrange200, regexp: Self.colorFormat)
    }

    @Test func orangeBrandColorRawTokenColorOrange300Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorOrange300, regexp: Self.colorFormat)
    }

    @Test func orangeBrandColorRawTokenColorOrange400Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorOrange400, regexp: Self.colorFormat)
    }

    @Test func orangeBrandColorRawTokenColorOrange500Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorOrange500, regexp: Self.colorFormat)
    }

    @Test func orangeBrandColorRawTokenColorOrange550Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorOrange550, regexp: Self.colorFormat)
    }

    @Test func orangeBrandColorRawTokenColorOrange600Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorOrange600, regexp: Self.colorFormat)
    }

    @Test func orangeBrandColorRawTokenColorOrange700Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorOrange700, regexp: Self.colorFormat)
    }

    @Test func orangeBrandColorRawTokenColorOrange800Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorOrange800, regexp: Self.colorFormat)
    }

    @Test func orangeBrandColorRawTokenColorOrange900Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorOrange900, regexp: Self.colorFormat)
    }

    // MARK: Primitive token - Colors - Orange - Brand - Warm gray

    @Test func orangeBrandColorRawTokenColorWarmGray100LighterThanWarmGray200() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorWarmGray100, OrangeBrandColorRawTokens.colorWarmGray200)
    }

    @Test func orangeBrandColorRawTokenColorWarmGray200LighterThanWarmGray300() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorWarmGray200, OrangeBrandColorRawTokens.colorWarmGray300)
    }

    @Test func orangeBrandColorRawTokenColorWarmGray300LighterThanWarmGray400() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorWarmGray300, OrangeBrandColorRawTokens.colorWarmGray400)
    }

    @Test func orangeBrandColorRawTokenColorWarmGray400LighterThanWarmGray500() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorWarmGray400, OrangeBrandColorRawTokens.colorWarmGray500)
    }

    @Test func orangeBrandColorRawTokenColorWarmGray500LighterThanWarmGray600() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorWarmGray500, OrangeBrandColorRawTokens.colorWarmGray600)
    }

    @Test func orangeBrandColorRawTokenColorWarmGray600LighterThanWarmGray700() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorWarmGray600, OrangeBrandColorRawTokens.colorWarmGray700)
    }

    @Test func orangeBrandColorRawTokenColorWarmGray700LighterThanWarmGray800() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorWarmGray700, OrangeBrandColorRawTokens.colorWarmGray800)
    }

    @Test func orangeBrandColorRawTokenColorWarmGray800LighterThanWarmGray900() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorWarmGray800, OrangeBrandColorRawTokens.colorWarmGray900)
    }

    @Test func orangeBrandColorRawTokenColorWarmGray100Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorWarmGray100, regexp: Self.colorFormat)
    }

    @Test func orangeBrandColorRawTokenColorWarmGray200Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorWarmGray200, regexp: Self.colorFormat)
    }

    @Test func orangeBrandColorRawTokenColorWarmGray300Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorWarmGray300, regexp: Self.colorFormat)
    }

    @Test func orangeBrandColorRawTokenColorWarmGray400Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorWarmGray400, regexp: Self.colorFormat)
    }

    @Test func orangeBrandColorRawTokenColorWarmGray500Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorWarmGray500, regexp: Self.colorFormat)
    }

    @Test func orangeBrandColorRawTokenColorWarmGray600Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorWarmGray600, regexp: Self.colorFormat)
    }

    @Test func orangeBrandColorRawTokenColorWarmGray700Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorWarmGray700, regexp: Self.colorFormat)
    }

    @Test func orangeBrandColorRawTokenColorWarmGray800Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorWarmGray800, regexp: Self.colorFormat)
    }

    @Test func orangeBrandColorRawTokenColorWarmGray900Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorWarmGray900, regexp: Self.colorFormat)
    }

    // MARK: - Compare all colors

    @Test func orangeBrandColorRawTokensAreAllUnique() {
        #expect(OrangeBrandColorRawTokens.colorOrange50 != OrangeBrandColorRawTokens.colorOrange100)
        #expect(OrangeBrandColorRawTokens.colorOrange50 != OrangeBrandColorRawTokens.colorOrange200)
        #expect(OrangeBrandColorRawTokens.colorOrange50 != OrangeBrandColorRawTokens.colorOrange300)
        #expect(OrangeBrandColorRawTokens.colorOrange50 != OrangeBrandColorRawTokens.colorOrange400)
        #expect(OrangeBrandColorRawTokens.colorOrange50 != OrangeBrandColorRawTokens.colorOrange500)
        #expect(OrangeBrandColorRawTokens.colorOrange50 != OrangeBrandColorRawTokens.colorOrange550)
        #expect(OrangeBrandColorRawTokens.colorOrange50 != OrangeBrandColorRawTokens.colorOrange600)
        #expect(OrangeBrandColorRawTokens.colorOrange50 != OrangeBrandColorRawTokens.colorOrange700)
        #expect(OrangeBrandColorRawTokens.colorOrange50 != OrangeBrandColorRawTokens.colorOrange800)
        #expect(OrangeBrandColorRawTokens.colorOrange50 != OrangeBrandColorRawTokens.colorOrange900)
        #expect(OrangeBrandColorRawTokens.colorOrange50 != OrangeBrandColorRawTokens.colorWarmGray100)
        #expect(OrangeBrandColorRawTokens.colorOrange50 != OrangeBrandColorRawTokens.colorWarmGray200)
        #expect(OrangeBrandColorRawTokens.colorOrange50 != OrangeBrandColorRawTokens.colorWarmGray300)
        #expect(OrangeBrandColorRawTokens.colorOrange50 != OrangeBrandColorRawTokens.colorWarmGray400)
        #expect(OrangeBrandColorRawTokens.colorOrange50 != OrangeBrandColorRawTokens.colorWarmGray500)
        #expect(OrangeBrandColorRawTokens.colorOrange50 != OrangeBrandColorRawTokens.colorWarmGray600)
        #expect(OrangeBrandColorRawTokens.colorOrange50 != OrangeBrandColorRawTokens.colorWarmGray700)
        #expect(OrangeBrandColorRawTokens.colorOrange50 != OrangeBrandColorRawTokens.colorWarmGray800)
        #expect(OrangeBrandColorRawTokens.colorOrange50 != OrangeBrandColorRawTokens.colorWarmGray900)

        #expect(OrangeBrandColorRawTokens.colorOrange100 != OrangeBrandColorRawTokens.colorOrange200)
        #expect(OrangeBrandColorRawTokens.colorOrange100 != OrangeBrandColorRawTokens.colorOrange300)
        #expect(OrangeBrandColorRawTokens.colorOrange100 != OrangeBrandColorRawTokens.colorOrange400)
        #expect(OrangeBrandColorRawTokens.colorOrange100 != OrangeBrandColorRawTokens.colorOrange500)
        #expect(OrangeBrandColorRawTokens.colorOrange100 != OrangeBrandColorRawTokens.colorOrange550)
        #expect(OrangeBrandColorRawTokens.colorOrange100 != OrangeBrandColorRawTokens.colorOrange600)
        #expect(OrangeBrandColorRawTokens.colorOrange100 != OrangeBrandColorRawTokens.colorOrange700)
        #expect(OrangeBrandColorRawTokens.colorOrange100 != OrangeBrandColorRawTokens.colorOrange800)
        #expect(OrangeBrandColorRawTokens.colorOrange100 != OrangeBrandColorRawTokens.colorOrange900)
        #expect(OrangeBrandColorRawTokens.colorOrange100 != OrangeBrandColorRawTokens.colorWarmGray100)
        #expect(OrangeBrandColorRawTokens.colorOrange100 != OrangeBrandColorRawTokens.colorWarmGray200)
        #expect(OrangeBrandColorRawTokens.colorOrange100 != OrangeBrandColorRawTokens.colorWarmGray300)
        #expect(OrangeBrandColorRawTokens.colorOrange100 != OrangeBrandColorRawTokens.colorWarmGray400)
        #expect(OrangeBrandColorRawTokens.colorOrange100 != OrangeBrandColorRawTokens.colorWarmGray500)
        #expect(OrangeBrandColorRawTokens.colorOrange100 != OrangeBrandColorRawTokens.colorWarmGray600)
        #expect(OrangeBrandColorRawTokens.colorOrange100 != OrangeBrandColorRawTokens.colorWarmGray700)
        #expect(OrangeBrandColorRawTokens.colorOrange100 != OrangeBrandColorRawTokens.colorWarmGray800)
        #expect(OrangeBrandColorRawTokens.colorOrange100 != OrangeBrandColorRawTokens.colorWarmGray900)

        #expect(OrangeBrandColorRawTokens.colorOrange200 != OrangeBrandColorRawTokens.colorOrange300)
        #expect(OrangeBrandColorRawTokens.colorOrange200 != OrangeBrandColorRawTokens.colorOrange400)
        #expect(OrangeBrandColorRawTokens.colorOrange200 != OrangeBrandColorRawTokens.colorOrange500)
        #expect(OrangeBrandColorRawTokens.colorOrange200 != OrangeBrandColorRawTokens.colorOrange550)
        #expect(OrangeBrandColorRawTokens.colorOrange200 != OrangeBrandColorRawTokens.colorOrange600)
        #expect(OrangeBrandColorRawTokens.colorOrange200 != OrangeBrandColorRawTokens.colorOrange700)
        #expect(OrangeBrandColorRawTokens.colorOrange200 != OrangeBrandColorRawTokens.colorOrange800)
        #expect(OrangeBrandColorRawTokens.colorOrange200 != OrangeBrandColorRawTokens.colorOrange900)
        #expect(OrangeBrandColorRawTokens.colorOrange200 != OrangeBrandColorRawTokens.colorWarmGray100)
        #expect(OrangeBrandColorRawTokens.colorOrange200 != OrangeBrandColorRawTokens.colorWarmGray200)
        #expect(OrangeBrandColorRawTokens.colorOrange200 != OrangeBrandColorRawTokens.colorWarmGray300)
        #expect(OrangeBrandColorRawTokens.colorOrange200 != OrangeBrandColorRawTokens.colorWarmGray400)
        #expect(OrangeBrandColorRawTokens.colorOrange200 != OrangeBrandColorRawTokens.colorWarmGray500)
        #expect(OrangeBrandColorRawTokens.colorOrange200 != OrangeBrandColorRawTokens.colorWarmGray600)
        #expect(OrangeBrandColorRawTokens.colorOrange200 != OrangeBrandColorRawTokens.colorWarmGray700)
        #expect(OrangeBrandColorRawTokens.colorOrange200 != OrangeBrandColorRawTokens.colorWarmGray800)
        #expect(OrangeBrandColorRawTokens.colorOrange200 != OrangeBrandColorRawTokens.colorWarmGray900)

        #expect(OrangeBrandColorRawTokens.colorOrange300 != OrangeBrandColorRawTokens.colorOrange400)
        #expect(OrangeBrandColorRawTokens.colorOrange300 != OrangeBrandColorRawTokens.colorOrange500)
        #expect(OrangeBrandColorRawTokens.colorOrange300 != OrangeBrandColorRawTokens.colorOrange550)
        #expect(OrangeBrandColorRawTokens.colorOrange300 != OrangeBrandColorRawTokens.colorOrange600)
        #expect(OrangeBrandColorRawTokens.colorOrange300 != OrangeBrandColorRawTokens.colorOrange700)
        #expect(OrangeBrandColorRawTokens.colorOrange300 != OrangeBrandColorRawTokens.colorOrange800)
        #expect(OrangeBrandColorRawTokens.colorOrange300 != OrangeBrandColorRawTokens.colorOrange900)
        #expect(OrangeBrandColorRawTokens.colorOrange300 != OrangeBrandColorRawTokens.colorWarmGray100)
        #expect(OrangeBrandColorRawTokens.colorOrange300 != OrangeBrandColorRawTokens.colorWarmGray200)
        #expect(OrangeBrandColorRawTokens.colorOrange300 != OrangeBrandColorRawTokens.colorWarmGray300)
        #expect(OrangeBrandColorRawTokens.colorOrange300 != OrangeBrandColorRawTokens.colorWarmGray400)
        #expect(OrangeBrandColorRawTokens.colorOrange300 != OrangeBrandColorRawTokens.colorWarmGray500)
        #expect(OrangeBrandColorRawTokens.colorOrange300 != OrangeBrandColorRawTokens.colorWarmGray600)
        #expect(OrangeBrandColorRawTokens.colorOrange300 != OrangeBrandColorRawTokens.colorWarmGray700)
        #expect(OrangeBrandColorRawTokens.colorOrange300 != OrangeBrandColorRawTokens.colorWarmGray800)
        #expect(OrangeBrandColorRawTokens.colorOrange300 != OrangeBrandColorRawTokens.colorWarmGray900)

        #expect(OrangeBrandColorRawTokens.colorOrange400 != OrangeBrandColorRawTokens.colorOrange500)
        #expect(OrangeBrandColorRawTokens.colorOrange400 != OrangeBrandColorRawTokens.colorOrange550)
        #expect(OrangeBrandColorRawTokens.colorOrange400 != OrangeBrandColorRawTokens.colorOrange600)
        #expect(OrangeBrandColorRawTokens.colorOrange400 != OrangeBrandColorRawTokens.colorOrange700)
        #expect(OrangeBrandColorRawTokens.colorOrange400 != OrangeBrandColorRawTokens.colorOrange800)
        #expect(OrangeBrandColorRawTokens.colorOrange400 != OrangeBrandColorRawTokens.colorOrange900)
        #expect(OrangeBrandColorRawTokens.colorOrange400 != OrangeBrandColorRawTokens.colorWarmGray100)
        #expect(OrangeBrandColorRawTokens.colorOrange400 != OrangeBrandColorRawTokens.colorWarmGray200)
        #expect(OrangeBrandColorRawTokens.colorOrange400 != OrangeBrandColorRawTokens.colorWarmGray300)
        #expect(OrangeBrandColorRawTokens.colorOrange400 != OrangeBrandColorRawTokens.colorWarmGray400)
        #expect(OrangeBrandColorRawTokens.colorOrange400 != OrangeBrandColorRawTokens.colorWarmGray500)
        #expect(OrangeBrandColorRawTokens.colorOrange400 != OrangeBrandColorRawTokens.colorWarmGray600)
        #expect(OrangeBrandColorRawTokens.colorOrange400 != OrangeBrandColorRawTokens.colorWarmGray700)
        #expect(OrangeBrandColorRawTokens.colorOrange400 != OrangeBrandColorRawTokens.colorWarmGray800)
        #expect(OrangeBrandColorRawTokens.colorOrange400 != OrangeBrandColorRawTokens.colorWarmGray900)

        #expect(OrangeBrandColorRawTokens.colorOrange500 != OrangeBrandColorRawTokens.colorOrange550)
        #expect(OrangeBrandColorRawTokens.colorOrange500 != OrangeBrandColorRawTokens.colorOrange600)
        #expect(OrangeBrandColorRawTokens.colorOrange500 != OrangeBrandColorRawTokens.colorOrange700)
        #expect(OrangeBrandColorRawTokens.colorOrange500 != OrangeBrandColorRawTokens.colorOrange800)
        #expect(OrangeBrandColorRawTokens.colorOrange500 != OrangeBrandColorRawTokens.colorOrange900)
        #expect(OrangeBrandColorRawTokens.colorOrange500 != OrangeBrandColorRawTokens.colorWarmGray100)
        #expect(OrangeBrandColorRawTokens.colorOrange500 != OrangeBrandColorRawTokens.colorWarmGray200)
        #expect(OrangeBrandColorRawTokens.colorOrange500 != OrangeBrandColorRawTokens.colorWarmGray300)
        #expect(OrangeBrandColorRawTokens.colorOrange500 != OrangeBrandColorRawTokens.colorWarmGray400)
        #expect(OrangeBrandColorRawTokens.colorOrange500 != OrangeBrandColorRawTokens.colorWarmGray500)
        #expect(OrangeBrandColorRawTokens.colorOrange500 != OrangeBrandColorRawTokens.colorWarmGray600)
        #expect(OrangeBrandColorRawTokens.colorOrange500 != OrangeBrandColorRawTokens.colorWarmGray700)
        #expect(OrangeBrandColorRawTokens.colorOrange500 != OrangeBrandColorRawTokens.colorWarmGray800)
        #expect(OrangeBrandColorRawTokens.colorOrange500 != OrangeBrandColorRawTokens.colorWarmGray900)

        #expect(OrangeBrandColorRawTokens.colorOrange550 != OrangeBrandColorRawTokens.colorOrange600)
        #expect(OrangeBrandColorRawTokens.colorOrange550 != OrangeBrandColorRawTokens.colorOrange700)
        #expect(OrangeBrandColorRawTokens.colorOrange550 != OrangeBrandColorRawTokens.colorOrange800)
        #expect(OrangeBrandColorRawTokens.colorOrange550 != OrangeBrandColorRawTokens.colorOrange900)
        #expect(OrangeBrandColorRawTokens.colorOrange550 != OrangeBrandColorRawTokens.colorWarmGray100)
        #expect(OrangeBrandColorRawTokens.colorOrange550 != OrangeBrandColorRawTokens.colorWarmGray200)
        #expect(OrangeBrandColorRawTokens.colorOrange550 != OrangeBrandColorRawTokens.colorWarmGray300)
        #expect(OrangeBrandColorRawTokens.colorOrange550 != OrangeBrandColorRawTokens.colorWarmGray400)
        #expect(OrangeBrandColorRawTokens.colorOrange550 != OrangeBrandColorRawTokens.colorWarmGray500)
        #expect(OrangeBrandColorRawTokens.colorOrange550 != OrangeBrandColorRawTokens.colorWarmGray600)
        #expect(OrangeBrandColorRawTokens.colorOrange550 != OrangeBrandColorRawTokens.colorWarmGray700)
        #expect(OrangeBrandColorRawTokens.colorOrange550 != OrangeBrandColorRawTokens.colorWarmGray800)
        #expect(OrangeBrandColorRawTokens.colorOrange550 != OrangeBrandColorRawTokens.colorWarmGray900)

        #expect(OrangeBrandColorRawTokens.colorOrange600 != OrangeBrandColorRawTokens.colorOrange700)
        #expect(OrangeBrandColorRawTokens.colorOrange600 != OrangeBrandColorRawTokens.colorOrange800)
        #expect(OrangeBrandColorRawTokens.colorOrange600 != OrangeBrandColorRawTokens.colorOrange900)
        #expect(OrangeBrandColorRawTokens.colorOrange600 != OrangeBrandColorRawTokens.colorWarmGray100)
        #expect(OrangeBrandColorRawTokens.colorOrange600 != OrangeBrandColorRawTokens.colorWarmGray200)
        #expect(OrangeBrandColorRawTokens.colorOrange600 != OrangeBrandColorRawTokens.colorWarmGray300)
        #expect(OrangeBrandColorRawTokens.colorOrange600 != OrangeBrandColorRawTokens.colorWarmGray400)
        #expect(OrangeBrandColorRawTokens.colorOrange600 != OrangeBrandColorRawTokens.colorWarmGray500)
        #expect(OrangeBrandColorRawTokens.colorOrange600 != OrangeBrandColorRawTokens.colorWarmGray600)
        #expect(OrangeBrandColorRawTokens.colorOrange600 != OrangeBrandColorRawTokens.colorWarmGray700)
        #expect(OrangeBrandColorRawTokens.colorOrange600 != OrangeBrandColorRawTokens.colorWarmGray800)
        #expect(OrangeBrandColorRawTokens.colorOrange600 != OrangeBrandColorRawTokens.colorWarmGray900)

        #expect(OrangeBrandColorRawTokens.colorOrange700 != OrangeBrandColorRawTokens.colorOrange800)
        #expect(OrangeBrandColorRawTokens.colorOrange700 != OrangeBrandColorRawTokens.colorOrange900)
        #expect(OrangeBrandColorRawTokens.colorOrange700 != OrangeBrandColorRawTokens.colorWarmGray100)
        #expect(OrangeBrandColorRawTokens.colorOrange700 != OrangeBrandColorRawTokens.colorWarmGray200)
        #expect(OrangeBrandColorRawTokens.colorOrange700 != OrangeBrandColorRawTokens.colorWarmGray300)
        #expect(OrangeBrandColorRawTokens.colorOrange700 != OrangeBrandColorRawTokens.colorWarmGray400)
        #expect(OrangeBrandColorRawTokens.colorOrange700 != OrangeBrandColorRawTokens.colorWarmGray500)
        #expect(OrangeBrandColorRawTokens.colorOrange700 != OrangeBrandColorRawTokens.colorWarmGray600)
        #expect(OrangeBrandColorRawTokens.colorOrange700 != OrangeBrandColorRawTokens.colorWarmGray700)
        #expect(OrangeBrandColorRawTokens.colorOrange700 != OrangeBrandColorRawTokens.colorWarmGray800)
        #expect(OrangeBrandColorRawTokens.colorOrange700 != OrangeBrandColorRawTokens.colorWarmGray900)

        #expect(OrangeBrandColorRawTokens.colorOrange800 != OrangeBrandColorRawTokens.colorOrange900)
        #expect(OrangeBrandColorRawTokens.colorOrange800 != OrangeBrandColorRawTokens.colorWarmGray100)
        #expect(OrangeBrandColorRawTokens.colorOrange800 != OrangeBrandColorRawTokens.colorWarmGray200)
        #expect(OrangeBrandColorRawTokens.colorOrange800 != OrangeBrandColorRawTokens.colorWarmGray300)
        #expect(OrangeBrandColorRawTokens.colorOrange800 != OrangeBrandColorRawTokens.colorWarmGray400)
        #expect(OrangeBrandColorRawTokens.colorOrange800 != OrangeBrandColorRawTokens.colorWarmGray500)
        #expect(OrangeBrandColorRawTokens.colorOrange800 != OrangeBrandColorRawTokens.colorWarmGray600)
        #expect(OrangeBrandColorRawTokens.colorOrange800 != OrangeBrandColorRawTokens.colorWarmGray700)
        #expect(OrangeBrandColorRawTokens.colorOrange800 != OrangeBrandColorRawTokens.colorWarmGray800)
        #expect(OrangeBrandColorRawTokens.colorOrange800 != OrangeBrandColorRawTokens.colorWarmGray900)

        #expect(OrangeBrandColorRawTokens.colorOrange900 != OrangeBrandColorRawTokens.colorWarmGray100)
        #expect(OrangeBrandColorRawTokens.colorOrange900 != OrangeBrandColorRawTokens.colorWarmGray200)
        #expect(OrangeBrandColorRawTokens.colorOrange900 != OrangeBrandColorRawTokens.colorWarmGray300)
        #expect(OrangeBrandColorRawTokens.colorOrange900 != OrangeBrandColorRawTokens.colorWarmGray400)
        #expect(OrangeBrandColorRawTokens.colorOrange900 != OrangeBrandColorRawTokens.colorWarmGray500)
        #expect(OrangeBrandColorRawTokens.colorOrange900 != OrangeBrandColorRawTokens.colorWarmGray600)
        #expect(OrangeBrandColorRawTokens.colorOrange900 != OrangeBrandColorRawTokens.colorWarmGray700)
        #expect(OrangeBrandColorRawTokens.colorOrange900 != OrangeBrandColorRawTokens.colorWarmGray800)
        #expect(OrangeBrandColorRawTokens.colorOrange900 != OrangeBrandColorRawTokens.colorWarmGray900)

        #expect(OrangeBrandColorRawTokens.colorWarmGray100 != OrangeBrandColorRawTokens.colorWarmGray200)
        #expect(OrangeBrandColorRawTokens.colorWarmGray100 != OrangeBrandColorRawTokens.colorWarmGray300)
        #expect(OrangeBrandColorRawTokens.colorWarmGray100 != OrangeBrandColorRawTokens.colorWarmGray400)
        #expect(OrangeBrandColorRawTokens.colorWarmGray100 != OrangeBrandColorRawTokens.colorWarmGray500)
        #expect(OrangeBrandColorRawTokens.colorWarmGray100 != OrangeBrandColorRawTokens.colorWarmGray600)
        #expect(OrangeBrandColorRawTokens.colorWarmGray100 != OrangeBrandColorRawTokens.colorWarmGray700)
        #expect(OrangeBrandColorRawTokens.colorWarmGray100 != OrangeBrandColorRawTokens.colorWarmGray800)
        #expect(OrangeBrandColorRawTokens.colorWarmGray100 != OrangeBrandColorRawTokens.colorWarmGray900)

        #expect(OrangeBrandColorRawTokens.colorWarmGray200 != OrangeBrandColorRawTokens.colorWarmGray300)
        #expect(OrangeBrandColorRawTokens.colorWarmGray200 != OrangeBrandColorRawTokens.colorWarmGray400)
        #expect(OrangeBrandColorRawTokens.colorWarmGray200 != OrangeBrandColorRawTokens.colorWarmGray500)
        #expect(OrangeBrandColorRawTokens.colorWarmGray200 != OrangeBrandColorRawTokens.colorWarmGray600)
        #expect(OrangeBrandColorRawTokens.colorWarmGray200 != OrangeBrandColorRawTokens.colorWarmGray700)
        #expect(OrangeBrandColorRawTokens.colorWarmGray200 != OrangeBrandColorRawTokens.colorWarmGray800)
        #expect(OrangeBrandColorRawTokens.colorWarmGray200 != OrangeBrandColorRawTokens.colorWarmGray900)

        #expect(OrangeBrandColorRawTokens.colorWarmGray300 != OrangeBrandColorRawTokens.colorWarmGray400)
        #expect(OrangeBrandColorRawTokens.colorWarmGray300 != OrangeBrandColorRawTokens.colorWarmGray500)
        #expect(OrangeBrandColorRawTokens.colorWarmGray300 != OrangeBrandColorRawTokens.colorWarmGray600)
        #expect(OrangeBrandColorRawTokens.colorWarmGray300 != OrangeBrandColorRawTokens.colorWarmGray700)
        #expect(OrangeBrandColorRawTokens.colorWarmGray300 != OrangeBrandColorRawTokens.colorWarmGray800)
        #expect(OrangeBrandColorRawTokens.colorWarmGray300 != OrangeBrandColorRawTokens.colorWarmGray900)

        #expect(OrangeBrandColorRawTokens.colorWarmGray400 != OrangeBrandColorRawTokens.colorWarmGray500)
        #expect(OrangeBrandColorRawTokens.colorWarmGray400 != OrangeBrandColorRawTokens.colorWarmGray600)
        #expect(OrangeBrandColorRawTokens.colorWarmGray400 != OrangeBrandColorRawTokens.colorWarmGray700)
        #expect(OrangeBrandColorRawTokens.colorWarmGray400 != OrangeBrandColorRawTokens.colorWarmGray800)
        #expect(OrangeBrandColorRawTokens.colorWarmGray400 != OrangeBrandColorRawTokens.colorWarmGray900)

        #expect(OrangeBrandColorRawTokens.colorWarmGray500 != OrangeBrandColorRawTokens.colorWarmGray600)
        #expect(OrangeBrandColorRawTokens.colorWarmGray500 != OrangeBrandColorRawTokens.colorWarmGray700)
        #expect(OrangeBrandColorRawTokens.colorWarmGray500 != OrangeBrandColorRawTokens.colorWarmGray800)
        #expect(OrangeBrandColorRawTokens.colorWarmGray500 != OrangeBrandColorRawTokens.colorWarmGray900)

        #expect(OrangeBrandColorRawTokens.colorWarmGray600 != OrangeBrandColorRawTokens.colorWarmGray700)
        #expect(OrangeBrandColorRawTokens.colorWarmGray600 != OrangeBrandColorRawTokens.colorWarmGray800)
        #expect(OrangeBrandColorRawTokens.colorWarmGray600 != OrangeBrandColorRawTokens.colorWarmGray900)

        #expect(OrangeBrandColorRawTokens.colorWarmGray700 != OrangeBrandColorRawTokens.colorWarmGray800)
        #expect(OrangeBrandColorRawTokens.colorWarmGray700 != OrangeBrandColorRawTokens.colorWarmGray900)

        #expect(OrangeBrandColorRawTokens.colorWarmGray800 != OrangeBrandColorRawTokens.colorWarmGray900)
    }
}

// swiftlint:enable type_body_length
// swiftlint:enable force_try
// swiftlint:enable function_body_length
