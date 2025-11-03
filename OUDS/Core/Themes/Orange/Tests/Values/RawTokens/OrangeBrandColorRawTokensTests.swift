//
// Software Name: OUDSThemesContract iOS
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
import OUDSTokensRaw
import Testing
import TestsUtils

// swiftlint:disable type_body_length
// swiftlint:disable force_try
// swiftlint:disable function_body_length
// swiftlint:disable file_length

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

    @Test func orangeBrandColorRawTokenColoOpacityWarmGray80Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.warmGray80, regexp: Self.colorFormat)
    }

    @Test func orangeBrandColorRawTokenColoOpacityWarmGray400Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.warmGray400, regexp: Self.colorFormat)
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
        #expect(OrangeBrandColorRawTokens.colorOrange50 != OrangeBrandColorRawTokens.colorWarmGray1000)

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
        #expect(OrangeBrandColorRawTokens.colorOrange100 != OrangeBrandColorRawTokens.colorWarmGray1000)

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
        #expect(OrangeBrandColorRawTokens.colorOrange200 != OrangeBrandColorRawTokens.colorWarmGray1000)

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
        #expect(OrangeBrandColorRawTokens.colorOrange300 != OrangeBrandColorRawTokens.colorWarmGray1000)

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
        #expect(OrangeBrandColorRawTokens.colorOrange400 != OrangeBrandColorRawTokens.colorWarmGray1000)

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
        #expect(OrangeBrandColorRawTokens.colorOrange500 != OrangeBrandColorRawTokens.colorWarmGray1000)

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
        #expect(OrangeBrandColorRawTokens.colorOrange550 != OrangeBrandColorRawTokens.colorWarmGray1000)

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
        #expect(OrangeBrandColorRawTokens.colorOrange600 != OrangeBrandColorRawTokens.colorWarmGray1000)

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
        #expect(OrangeBrandColorRawTokens.colorOrange700 != OrangeBrandColorRawTokens.colorWarmGray1000)

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
        #expect(OrangeBrandColorRawTokens.colorOrange800 != OrangeBrandColorRawTokens.colorWarmGray1000)

        #expect(OrangeBrandColorRawTokens.colorOrange900 != OrangeBrandColorRawTokens.colorWarmGray100)
        #expect(OrangeBrandColorRawTokens.colorOrange900 != OrangeBrandColorRawTokens.colorWarmGray200)
        #expect(OrangeBrandColorRawTokens.colorOrange900 != OrangeBrandColorRawTokens.colorWarmGray300)
        #expect(OrangeBrandColorRawTokens.colorOrange900 != OrangeBrandColorRawTokens.colorWarmGray400)
        #expect(OrangeBrandColorRawTokens.colorOrange900 != OrangeBrandColorRawTokens.colorWarmGray500)
        #expect(OrangeBrandColorRawTokens.colorOrange900 != OrangeBrandColorRawTokens.colorWarmGray600)
        #expect(OrangeBrandColorRawTokens.colorOrange900 != OrangeBrandColorRawTokens.colorWarmGray700)
        #expect(OrangeBrandColorRawTokens.colorOrange900 != OrangeBrandColorRawTokens.colorWarmGray800)
        #expect(OrangeBrandColorRawTokens.colorOrange900 != OrangeBrandColorRawTokens.colorWarmGray900)
        #expect(OrangeBrandColorRawTokens.colorOrange900 != OrangeBrandColorRawTokens.colorWarmGray1000)

        #expect(OrangeBrandColorRawTokens.colorWarmGray100 != OrangeBrandColorRawTokens.colorWarmGray200)
        #expect(OrangeBrandColorRawTokens.colorWarmGray100 != OrangeBrandColorRawTokens.colorWarmGray300)
        #expect(OrangeBrandColorRawTokens.colorWarmGray100 != OrangeBrandColorRawTokens.colorWarmGray400)
        #expect(OrangeBrandColorRawTokens.colorWarmGray100 != OrangeBrandColorRawTokens.colorWarmGray500)
        #expect(OrangeBrandColorRawTokens.colorWarmGray100 != OrangeBrandColorRawTokens.colorWarmGray600)
        #expect(OrangeBrandColorRawTokens.colorWarmGray100 != OrangeBrandColorRawTokens.colorWarmGray700)
        #expect(OrangeBrandColorRawTokens.colorWarmGray100 != OrangeBrandColorRawTokens.colorWarmGray800)
        #expect(OrangeBrandColorRawTokens.colorWarmGray100 != OrangeBrandColorRawTokens.colorWarmGray900)
        #expect(OrangeBrandColorRawTokens.colorWarmGray100 != OrangeBrandColorRawTokens.colorWarmGray1000)

        #expect(OrangeBrandColorRawTokens.colorWarmGray200 != OrangeBrandColorRawTokens.colorWarmGray300)
        #expect(OrangeBrandColorRawTokens.colorWarmGray200 != OrangeBrandColorRawTokens.colorWarmGray400)
        #expect(OrangeBrandColorRawTokens.colorWarmGray200 != OrangeBrandColorRawTokens.colorWarmGray500)
        #expect(OrangeBrandColorRawTokens.colorWarmGray200 != OrangeBrandColorRawTokens.colorWarmGray600)
        #expect(OrangeBrandColorRawTokens.colorWarmGray200 != OrangeBrandColorRawTokens.colorWarmGray700)
        #expect(OrangeBrandColorRawTokens.colorWarmGray200 != OrangeBrandColorRawTokens.colorWarmGray800)
        #expect(OrangeBrandColorRawTokens.colorWarmGray200 != OrangeBrandColorRawTokens.colorWarmGray900)
        #expect(OrangeBrandColorRawTokens.colorWarmGray200 != OrangeBrandColorRawTokens.colorWarmGray1000)

        #expect(OrangeBrandColorRawTokens.colorWarmGray300 != OrangeBrandColorRawTokens.colorWarmGray400)
        #expect(OrangeBrandColorRawTokens.colorWarmGray300 != OrangeBrandColorRawTokens.colorWarmGray500)
        #expect(OrangeBrandColorRawTokens.colorWarmGray300 != OrangeBrandColorRawTokens.colorWarmGray600)
        #expect(OrangeBrandColorRawTokens.colorWarmGray300 != OrangeBrandColorRawTokens.colorWarmGray700)
        #expect(OrangeBrandColorRawTokens.colorWarmGray300 != OrangeBrandColorRawTokens.colorWarmGray800)
        #expect(OrangeBrandColorRawTokens.colorWarmGray300 != OrangeBrandColorRawTokens.colorWarmGray900)
        #expect(OrangeBrandColorRawTokens.colorWarmGray300 != OrangeBrandColorRawTokens.colorWarmGray1000)

        #expect(OrangeBrandColorRawTokens.colorWarmGray400 != OrangeBrandColorRawTokens.colorWarmGray500)
        #expect(OrangeBrandColorRawTokens.colorWarmGray400 != OrangeBrandColorRawTokens.colorWarmGray600)
        #expect(OrangeBrandColorRawTokens.colorWarmGray400 != OrangeBrandColorRawTokens.colorWarmGray700)
        #expect(OrangeBrandColorRawTokens.colorWarmGray400 != OrangeBrandColorRawTokens.colorWarmGray800)
        #expect(OrangeBrandColorRawTokens.colorWarmGray400 != OrangeBrandColorRawTokens.colorWarmGray900)
        #expect(OrangeBrandColorRawTokens.colorWarmGray400 != OrangeBrandColorRawTokens.colorWarmGray1000)

        #expect(OrangeBrandColorRawTokens.colorWarmGray500 != OrangeBrandColorRawTokens.colorWarmGray600)
        #expect(OrangeBrandColorRawTokens.colorWarmGray500 != OrangeBrandColorRawTokens.colorWarmGray700)
        #expect(OrangeBrandColorRawTokens.colorWarmGray500 != OrangeBrandColorRawTokens.colorWarmGray800)
        #expect(OrangeBrandColorRawTokens.colorWarmGray500 != OrangeBrandColorRawTokens.colorWarmGray900)
        #expect(OrangeBrandColorRawTokens.colorWarmGray500 != OrangeBrandColorRawTokens.colorWarmGray1000)

        #expect(OrangeBrandColorRawTokens.colorWarmGray600 != OrangeBrandColorRawTokens.colorWarmGray700)
        #expect(OrangeBrandColorRawTokens.colorWarmGray600 != OrangeBrandColorRawTokens.colorWarmGray800)
        #expect(OrangeBrandColorRawTokens.colorWarmGray600 != OrangeBrandColorRawTokens.colorWarmGray900)
        #expect(OrangeBrandColorRawTokens.colorWarmGray600 != OrangeBrandColorRawTokens.colorWarmGray1000)

        #expect(OrangeBrandColorRawTokens.colorWarmGray700 != OrangeBrandColorRawTokens.colorWarmGray800)
        #expect(OrangeBrandColorRawTokens.colorWarmGray700 != OrangeBrandColorRawTokens.colorWarmGray900)
        #expect(OrangeBrandColorRawTokens.colorWarmGray700 != OrangeBrandColorRawTokens.colorWarmGray1000)

        #expect(OrangeBrandColorRawTokens.colorWarmGray800 != OrangeBrandColorRawTokens.colorWarmGray900)
        #expect(OrangeBrandColorRawTokens.colorWarmGray800 != OrangeBrandColorRawTokens.colorWarmGray1000)

        #expect(OrangeBrandColorRawTokens.colorWarmGray900 != OrangeBrandColorRawTokens.colorWarmGray1000)
    }

    /// Compare all colors to ensure they are all unique
    @Test func orangeBrandDecorativeColorRawTokensAreAllDifferent() throws {

        //  (ノಠ益ಠ)ノ彡┻━┻ Failed to have efficient, nice and good solution with GenAI tool (GPT-4o-mini)

        // Step 1: Gather all tokens of color in arrays

        let colorsDecorativeAmber: [ColorRawToken] = [
            OrangeBrandColorRawTokens.colorDecorativeAmber100,
            OrangeBrandColorRawTokens.colorDecorativeAmber200,
            OrangeBrandColorRawTokens.colorDecorativeAmber300,
            OrangeBrandColorRawTokens.colorDecorativeAmber400,
            OrangeBrandColorRawTokens.colorDecorativeAmber500,
            OrangeBrandColorRawTokens.colorDecorativeAmber600,
            OrangeBrandColorRawTokens.colorDecorativeAmber700,
            OrangeBrandColorRawTokens.colorDecorativeAmber800,
            OrangeBrandColorRawTokens.colorDecorativeAmber900,
        ]

        let colorsDecorativeAmethyst: [ColorRawToken] = [
            OrangeBrandColorRawTokens.colorDecorativeAmethyst100,
            OrangeBrandColorRawTokens.colorDecorativeAmethyst200,
            OrangeBrandColorRawTokens.colorDecorativeAmethyst300,
            OrangeBrandColorRawTokens.colorDecorativeAmethyst400,
            OrangeBrandColorRawTokens.colorDecorativeAmethyst500,
            OrangeBrandColorRawTokens.colorDecorativeAmethyst600,
            OrangeBrandColorRawTokens.colorDecorativeAmethyst700,
            OrangeBrandColorRawTokens.colorDecorativeAmethyst800,
            OrangeBrandColorRawTokens.colorDecorativeAmethyst900,
        ]

        let colorsDecorativeDeepPeach: [ColorRawToken] = [
            OrangeBrandColorRawTokens.colorDecorativeDeepPeach100,
            OrangeBrandColorRawTokens.colorDecorativeDeepPeach200,
            OrangeBrandColorRawTokens.colorDecorativeDeepPeach300,
            OrangeBrandColorRawTokens.colorDecorativeDeepPeach400,
            OrangeBrandColorRawTokens.colorDecorativeDeepPeach500,
            OrangeBrandColorRawTokens.colorDecorativeDeepPeach600,
            OrangeBrandColorRawTokens.colorDecorativeDeepPeach700,
            OrangeBrandColorRawTokens.colorDecorativeDeepPeach800,
            OrangeBrandColorRawTokens.colorDecorativeDeepPeach900,
        ]

        let colorsDecorativeEmerald: [ColorRawToken] = [
            OrangeBrandColorRawTokens.colorDecorativeEmerald100,
            OrangeBrandColorRawTokens.colorDecorativeEmerald200,
            OrangeBrandColorRawTokens.colorDecorativeEmerald300,
            OrangeBrandColorRawTokens.colorDecorativeEmerald400,
            OrangeBrandColorRawTokens.colorDecorativeEmerald500,
            OrangeBrandColorRawTokens.colorDecorativeEmerald600,
            OrangeBrandColorRawTokens.colorDecorativeEmerald700,
            OrangeBrandColorRawTokens.colorDecorativeEmerald800,
            OrangeBrandColorRawTokens.colorDecorativeEmerald900,
        ]

        let colorsDecorativeShockingPink: [ColorRawToken] = [
            OrangeBrandColorRawTokens.colorDecorativeShockingPink100,
            OrangeBrandColorRawTokens.colorDecorativeShockingPink200,
            OrangeBrandColorRawTokens.colorDecorativeShockingPink300,
            OrangeBrandColorRawTokens.colorDecorativeShockingPink400,
            OrangeBrandColorRawTokens.colorDecorativeShockingPink500,
            OrangeBrandColorRawTokens.colorDecorativeShockingPink600,
            OrangeBrandColorRawTokens.colorDecorativeShockingPink700,
            OrangeBrandColorRawTokens.colorDecorativeShockingPink800,
            OrangeBrandColorRawTokens.colorDecorativeShockingPink900,
        ]

        let colorsDecorativeSky: [ColorRawToken] = [
            OrangeBrandColorRawTokens.colorDecorativeSky100,
            OrangeBrandColorRawTokens.colorDecorativeSky200,
            OrangeBrandColorRawTokens.colorDecorativeSky300,
            OrangeBrandColorRawTokens.colorDecorativeSky400,
            OrangeBrandColorRawTokens.colorDecorativeSky500,
            OrangeBrandColorRawTokens.colorDecorativeSky600,
            OrangeBrandColorRawTokens.colorDecorativeSky700,
            OrangeBrandColorRawTokens.colorDecorativeSky800,
            OrangeBrandColorRawTokens.colorDecorativeSky900,
        ]

        // Step 2: Pack all arrays

        let allColors: [[ColorRawToken]] = [
            colorsDecorativeAmber,
            colorsDecorativeAmethyst,
            colorsDecorativeDeepPeach,
            colorsDecorativeEmerald,
            colorsDecorativeShockingPink,
            colorsDecorativeSky,
        ]

        // Step 3: Use a Set to save unique values

        var uniqueColors = Set<ColorRawToken>()

        for colorArray in allColors {
            for color in colorArray {
                #expect(uniqueColors.insert(color).inserted, "The color raw token value '\(color)' is not unique, some duplicate(s) can be defined!")
            }
        }
    }

    @Test func orangeBrandOpacityAreAllDifferent() throws {
        #expect(OrangeBrandColorRawTokens.warmGray80 != OrangeBrandColorRawTokens.warmGray400)
    }

    // MARK: Primitive token - Colors - Emerald

    @Test func colorRawTokenColorDecorativeEmerald100LighterThanEmerald200() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeEmerald100, OrangeBrandColorRawTokens.colorDecorativeEmerald200)
    }

    @Test func colorRawTokenColorDecorativeEmerald200LighterThanEmerald300() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeEmerald200, OrangeBrandColorRawTokens.colorDecorativeEmerald300)
    }

    @Test func colorRawTokenColorDecorativeEmerald300LighterThanEmerald400() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeEmerald300, OrangeBrandColorRawTokens.colorDecorativeEmerald400)
    }

    @Test func colorRawTokenColorDecorativeEmerald400LighterThanEmerald500() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeEmerald400, OrangeBrandColorRawTokens.colorDecorativeEmerald500)
    }

    @Test func colorRawTokenColorDecorativeEmerald500LighterThanEmerald600() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeEmerald500, OrangeBrandColorRawTokens.colorDecorativeEmerald600)
    }

    @Test func colorRawTokenColorDecorativeEmerald600LighterThanEmerald700() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeEmerald600, OrangeBrandColorRawTokens.colorDecorativeEmerald700)
    }

    @Test func colorRawTokenColorDecorativeEmerald700LighterThanEmerald800() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeEmerald700, OrangeBrandColorRawTokens.colorDecorativeEmerald800)
    }

    @Test func colorRawTokenColorDecorativeEmerald800LighterThanEmerald900() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeEmerald800, OrangeBrandColorRawTokens.colorDecorativeEmerald900)
    }

    @Test func colorRawTokenColorDecorativeEmerald100Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeEmerald100, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeEmerald200Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeEmerald200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeEmerald300Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeEmerald300, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeEmerald400Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeEmerald400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeEmerald500Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeEmerald500, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeEmerald600Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeEmerald600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeEmerald700Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeEmerald700, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeEmerald800Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeEmerald800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeEmerald900Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeEmerald900, regexp: Self.colorFormat)
    }

    // MARK: Primitive token - Colors - Sky

    @Test func colorRawTokenColorDecorativeSky100LighterThanSky200() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeSky100, OrangeBrandColorRawTokens.colorDecorativeSky200)
    }

    @Test func colorRawTokenColorDecorativeSky200LighterThanSky300() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeSky200, OrangeBrandColorRawTokens.colorDecorativeSky300)
    }

    @Test func colorRawTokenColorDecorativeSky300LighterThanSky400() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeSky300, OrangeBrandColorRawTokens.colorDecorativeSky400)
    }

    @Test func colorRawTokenColorDecorativeSky400LighterThanSky500() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeSky400, OrangeBrandColorRawTokens.colorDecorativeSky500)
    }

    @Test func colorRawTokenColorDecorativeSky500LighterThanSky600() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeSky500, OrangeBrandColorRawTokens.colorDecorativeSky600)
    }

    @Test func colorRawTokenColorDecorativeSky600LighterThanSky700() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeSky600, OrangeBrandColorRawTokens.colorDecorativeSky700)
    }

    @Test func colorRawTokenColorDecorativeSky700LighterThanSky800() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeSky700, OrangeBrandColorRawTokens.colorDecorativeSky800)
    }

    @Test func colorRawTokenColorDecorativeSky800LighterThanSky900() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeSky800, OrangeBrandColorRawTokens.colorDecorativeSky900)
    }

    @Test func colorRawTokenColorDecorativeSky100Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeSky100, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeSky200Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeSky200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeSky300Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeSky300, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeSky400Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeSky400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeSky500Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeSky500, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeSky600Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeSky600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeSky700Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeSky700, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeSky800Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeSky800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeSky900Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeSky900, regexp: Self.colorFormat)
    }

    // MARK: Primitive token - Colors - Amber

    @Test func colorRawTokenColorDecorativeAmber100LighterThanAmber200() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeAmber100, OrangeBrandColorRawTokens.colorDecorativeAmber200)
    }

    @Test func colorRawTokenColorDecorativeAmber200LighterThanAmber300() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeAmber200, OrangeBrandColorRawTokens.colorDecorativeAmber300)
    }

    @Test func colorRawTokenColorDecorativeAmber300LighterThanAmber400() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeAmber300, OrangeBrandColorRawTokens.colorDecorativeAmber400)
    }

    @Test func colorRawTokenColorDecorativeAmber400LighterThanAmber500() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeAmber400, OrangeBrandColorRawTokens.colorDecorativeAmber500)
    }

    @Test func colorRawTokenColorDecorativeAmber500LighterThanAmber600() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeAmber500, OrangeBrandColorRawTokens.colorDecorativeAmber600)
    }

    @Test func colorRawTokenColorDecorativeAmber600LighterThanAmber700() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeAmber600, OrangeBrandColorRawTokens.colorDecorativeAmber700)
    }

    @Test func colorRawTokenColorDecorativeAmber700LighterThanAmber800() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeAmber700, OrangeBrandColorRawTokens.colorDecorativeAmber800)
    }

    @Test func colorRawTokenColorDecorativeAmber800LighterThanAmber900() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeAmber800, OrangeBrandColorRawTokens.colorDecorativeAmber900)
    }

    @Test func colorRawTokenColorDecorativeAmber100Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeAmber100, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeAmber200Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeAmber200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeAmber300Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeAmber300, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeAmber400Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeAmber400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeAmber500Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeAmber500, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeAmber600Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeAmber600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeAmber700Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeAmber700, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeAmber800Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeAmber800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeAmber900Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeAmber900, regexp: Self.colorFormat)
    }

    // MARK: Primitive token - Colors - Amethyst

    @Test func colorRawTokenColorDecorativeAmethyst100LighterThanAmethyst200() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeAmethyst100, OrangeBrandColorRawTokens.colorDecorativeAmethyst200)
    }

    @Test func colorRawTokenColorDecorativeAmethyst200LighterThanAmethyst300() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeAmethyst200, OrangeBrandColorRawTokens.colorDecorativeAmethyst300)
    }

    @Test func colorRawTokenColorDecorativeAmethyst300LighterThanAmethyst400() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeAmethyst300, OrangeBrandColorRawTokens.colorDecorativeAmethyst400)
    }

    @Test func colorRawTokenColorDecorativeAmethyst400LighterThanAmethyst500() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeAmethyst400, OrangeBrandColorRawTokens.colorDecorativeAmethyst500)
    }

    @Test func colorRawTokenColorDecorativeAmethyst500LighterThanAmethyst600() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeAmethyst500, OrangeBrandColorRawTokens.colorDecorativeAmethyst600)
    }

    @Test func colorRawTokenColorDecorativeAmethyst600LighterThanAmethyst700() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeAmethyst600, OrangeBrandColorRawTokens.colorDecorativeAmethyst700)
    }

    @Test func colorRawTokenColorDecorativeAmethyst700LighterThanAmethyst800() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeAmethyst700, OrangeBrandColorRawTokens.colorDecorativeAmethyst800)
    }

    @Test func colorRawTokenColorDecorativeAmethyst800LighterThanAmethyst900() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeAmethyst800, OrangeBrandColorRawTokens.colorDecorativeAmethyst900)
    }

    @Test func colorRawTokenColorDecorativeAmethyst100Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeAmethyst100, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeAmethyst200Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeAmethyst200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeAmethyst300Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeAmethyst300, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeAmethyst400Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeAmethyst400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeAmethyst500Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeAmethyst500, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeAmethyst600Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeAmethyst600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeAmethyst700Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeAmethyst700, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeAmethyst800Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeAmethyst800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeAmethyst900Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeAmethyst900, regexp: Self.colorFormat)
    }

    // MARK: Primitive token - Colors -  Shocking Pink

    @Test func colorRawTokenColorDecorativeShockingPink100LighterThan200() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeShockingPink100, OrangeBrandColorRawTokens.colorDecorativeShockingPink200)
    }

    @Test func colorRawTokenColorDecorativeShockingPink200LighterThan300() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeShockingPink200, OrangeBrandColorRawTokens.colorDecorativeShockingPink300)
    }

    @Test func colorRawTokenColorDecorativeShockingPink300LighterThan400() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeShockingPink300, OrangeBrandColorRawTokens.colorDecorativeShockingPink400)
    }

    @Test func colorRawTokenColorDecorativeShockingPink400LighterThan500() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeShockingPink400, OrangeBrandColorRawTokens.colorDecorativeShockingPink500)
    }

    @Test func colorRawTokenColorDecorativeShockingPink500LighterThan600() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeShockingPink500, OrangeBrandColorRawTokens.colorDecorativeShockingPink600)
    }

    @Test func colorRawTokenColorDecorativeShockingPink600LighterThan700() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeShockingPink600, OrangeBrandColorRawTokens.colorDecorativeShockingPink700)
    }

    @Test func colorRawTokenColorDecorativeShockingPink700LighterThan800() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeShockingPink700, OrangeBrandColorRawTokens.colorDecorativeShockingPink800)
    }

    @Test func colorRawTokenColorDecorativeShockingPink800LighterThan900() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeShockingPink800, OrangeBrandColorRawTokens.colorDecorativeShockingPink900)
    }

    @Test func colorRawTokenColorDecorativeShockingPink100Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeShockingPink100, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeShockingPink200Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeShockingPink200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeShockingPink300Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeShockingPink300, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeShockingPink400Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeShockingPink400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeShockingPink500Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeShockingPink500, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeShockingPink600Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeShockingPink600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeShockingPink700Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeShockingPink700, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeShockingPink800Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeShockingPink800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeShockingPink900Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeShockingPink900, regexp: Self.colorFormat)
    }

    // MARK: Primitive token - Colors -  Deep Peach

    @Test func colorRawTokenColorDecorativeDeepPeach100LighterThan200() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeDeepPeach100, OrangeBrandColorRawTokens.colorDecorativeDeepPeach200)
    }

    @Test func colorRawTokenColorDecorativeDeepPeach200LighterThan300() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeDeepPeach200, OrangeBrandColorRawTokens.colorDecorativeDeepPeach300)
    }

    @Test func colorRawTokenColorDecorativeDeepPeach300LighterThan400() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeDeepPeach300, OrangeBrandColorRawTokens.colorDecorativeDeepPeach400)
    }

    @Test func colorRawTokenColorDecorativeDeepPeach400LighterThan500() throws {
        TestsUtils.assertColorDarkerThan(OrangeBrandColorRawTokens.colorDecorativeDeepPeach400, OrangeBrandColorRawTokens.colorDecorativeDeepPeach500)
        // TODO: Why? Is the palette well defined in design team. This is the only case 400 is darker than 500
    }

    @Test func colorRawTokenColorDecorativeDeepPeach500LighterThan600() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeDeepPeach500, OrangeBrandColorRawTokens.colorDecorativeDeepPeach600)
    }

    @Test func colorRawTokenColorDecorativeDeepPeach600LighterThan700() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeDeepPeach600, OrangeBrandColorRawTokens.colorDecorativeDeepPeach700)
    }

    @Test func colorRawTokenColorDecorativeDeepPeach700LighterThan800() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeDeepPeach700, OrangeBrandColorRawTokens.colorDecorativeDeepPeach800)
    }

    @Test func colorRawTokenColorDecorativeDeepPeach800LighterThan900() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeDeepPeach800, OrangeBrandColorRawTokens.colorDecorativeDeepPeach900)
    }

    @Test func colorRawTokenColorDecorativeDeepPeach100Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeDeepPeach100, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeDeepPeach200Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeDeepPeach200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeDeepPeach300Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeDeepPeach300, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeDeepPeach400Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeDeepPeach400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeDeepPeach500Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeDeepPeach500, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeDeepPeach600Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeDeepPeach600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeDeepPeach700Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeDeepPeach700, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeDeepPeach800Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeDeepPeach800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorDecorativeDeepPeach900Format() throws {
        TestsUtils.assertMatches(OrangeBrandColorRawTokens.colorDecorativeDeepPeach900, regexp: Self.colorFormat)
    }

    // MARK: Primitive token - Colors - Opacity

    @Test func colorRawTokenColorOpacity80DarkerThan400() throws {
        TestsUtils.assertColorLighterThan(OrangeBrandColorRawTokens.warmGray80, OrangeBrandColorRawTokens.warmGray400)
    }
}

// swiftlint:enable type_body_length
// swiftlint:enable force_try
// swiftlint:enable function_body_length
