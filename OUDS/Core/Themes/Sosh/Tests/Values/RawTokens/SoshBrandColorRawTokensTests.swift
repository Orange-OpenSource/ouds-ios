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
import OUDSThemesSosh
import OUDSTokensRaw
import Testing
import TestsUtils

// swiftlint:disable type_body_length
// swiftlint:disable force_try
// swiftlint:disable function_body_length
// swiftlint:disable file_length

/// The aim of this tests class is to look for regressions in **Sosh brand color raw tokens**.
///
/// Because these values will be at least generated through an external tool, is it not relevant to test each token values.
/// Indeed, each future generation of Swift code may break theses tests because there are new values.
/// However, in the semantics of **Sosh brand color raw tokens**, there will be some unchanged things like relationships between tokens.
///
/// Here are some rules to follow:
/// - all colors must be different
/// - for a group of colors, the higher the token is, the darker the color is
/// - all colors must have an hexadecimal sring value with 8 b16 digits
struct SoshBrandColorRawTokensTests {

    // MARK: - Settings

    /// The regular expression pattern to check the colors are in hexa format
    private static let colorFormat = try! NSRegularExpression(pattern: "^#[0-9A-Fa-f]{8}$")

    // MARK: - Tests format of colors
    
    func testColorMagenta50Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorMagenta50, regexp: Self.colorFormat)
    }

    func testColorMagenta100Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorMagenta100, regexp: Self.colorFormat)
    }

    func testColorMagenta200Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorMagenta200, regexp: Self.colorFormat)
    }

    func testColorMagenta300Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorMagenta300, regexp: Self.colorFormat)
    }

    func testColorMagenta400Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorMagenta400, regexp: Self.colorFormat)
    }

    func testColorMagenta500Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorMagenta500, regexp: Self.colorFormat)
    }

    func testColorMagenta600Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorMagenta600, regexp: Self.colorFormat)
    }

    func testColorMagenta700Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorMagenta700, regexp: Self.colorFormat)
    }

    func testColorMagenta800Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorMagenta800, regexp: Self.colorFormat)
    }

    func testColorMagenta900Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorMagenta900, regexp: Self.colorFormat)
    }

    func testColorMagenta950Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorMagenta950, regexp: Self.colorFormat)
    }

    func testColorCitrine50Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorCitrine50, regexp: Self.colorFormat)
    }

    func testColorCitrine100Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorCitrine100, regexp: Self.colorFormat)
    }

    func testColorCitrine200Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorCitrine200, regexp: Self.colorFormat)
    }

    func testColorCitrine300Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorCitrine300, regexp: Self.colorFormat)
    }

    func testColorCitrine400Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorCitrine400, regexp: Self.colorFormat)
    }

    func testColorCitrine500Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorCitrine500, regexp: Self.colorFormat)
    }

    func testColorCitrine600Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorCitrine600, regexp: Self.colorFormat)
    }

    func testColorCitrine700Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorCitrine700, regexp: Self.colorFormat)
    }

    func testColorCitrine800Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorCitrine800, regexp: Self.colorFormat)
    }

    func testColorCitrine900Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorCitrine900, regexp: Self.colorFormat)
    }

    func testColorCitrine950Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorCitrine950, regexp: Self.colorFormat)
    }

    func testColorCitrine1000Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorCitrine1000, regexp: Self.colorFormat)
    }

    func testColorBlueDuckLight80Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorBlueDuckLight80, regexp: Self.colorFormat)
    }

    func testColorBlueDuckLight160Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorBlueDuckLight160, regexp: Self.colorFormat)
    }

    func testColorBlueDuckLight240Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorBlueDuckLight240, regexp: Self.colorFormat)
    }

    func testColorBlueDuckLight320Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorBlueDuckLight320, regexp: Self.colorFormat)
    }

    func testColorBlueDuckLight400Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorBlueDuckLight400, regexp: Self.colorFormat)
    }

    func testColorBlueDuckLight480Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorBlueDuckLight480, regexp: Self.colorFormat)
    }

    func testColorBlueDuckLight560Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorBlueDuckLight560, regexp: Self.colorFormat)
    }

    func testColorBlueDuckLight640Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorBlueDuckLight640, regexp: Self.colorFormat)
    }

    func testColorBlueDuckLight720Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorBlueDuckLight720, regexp: Self.colorFormat)
    }

    func testColorBlueDuckLight800Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorBlueDuckLight800, regexp: Self.colorFormat)
    }

    func testColorBlueDuckLight880Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorBlueDuckLight880, regexp: Self.colorFormat)
    }

    func testColorBlueDuckLight960Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorBlueDuckLight960, regexp: Self.colorFormat)
    }

    func testColorBlueDuckDark80Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorBlueDuckDark80, regexp: Self.colorFormat)
    }

    func testColorBlueDuckDark160Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorBlueDuckDark160, regexp: Self.colorFormat)
    }

    func testColorBlueDuckDark240Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorBlueDuckDark240, regexp: Self.colorFormat)
    }

    func testColorBlueDuckDark320Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorBlueDuckDark320, regexp: Self.colorFormat)
    }

    func testColorBlueDuckDark400Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorBlueDuckDark400, regexp: Self.colorFormat)
    }

    func testColorBlueDuckDark480Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorBlueDuckDark480, regexp: Self.colorFormat)
    }

    func testColorBlueDuckDark560Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorBlueDuckDark560, regexp: Self.colorFormat)
    }

    func testColorBlueDuckDark640Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorBlueDuckDark640, regexp: Self.colorFormat)
    }

    func testColorBlueDuckDark720Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorBlueDuckDark720, regexp: Self.colorFormat)
    }

    func testColorBlueDuckDark800Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorBlueDuckDark800, regexp: Self.colorFormat)
    }

    func testColorBlueDuckDark880Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorBlueDuckDark880, regexp: Self.colorFormat)
    }

    func testColorBlueDuckDark960Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorBlueDuckDark960, regexp: Self.colorFormat)
    }

    func testColorOpacityMagentaFormat() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorOpacityMagenta, regexp: Self.colorFormat)
    }

    // MARK: - Tests - Colros darker and darker
    
    @Test func soshBrandColorRawTokenColorMagenta50LighterThanColorMagenta100() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorMagenta50, SoshBrandColorRawTokens.colorMagenta100)
    }

    @Test func soshBrandColorRawTokenColorMagenta100LighterThanColorMagenta200() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorMagenta100, SoshBrandColorRawTokens.colorMagenta200)
    }

    @Test func soshBrandColorRawTokenColorMagenta200LighterThanColorMagenta300() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorMagenta200, SoshBrandColorRawTokens.colorMagenta300)
    }

    @Test func soshBrandColorRawTokenColorMagenta300LighterThanColorMagenta400() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorMagenta300, SoshBrandColorRawTokens.colorMagenta400)
    }

    @Test func soshBrandColorRawTokenColorMagenta400LighterThanColorMagenta500() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorMagenta400, SoshBrandColorRawTokens.colorMagenta500)
    }

    @Test func soshBrandColorRawTokenColorMagenta500LighterThanColorMagenta600() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorMagenta500, SoshBrandColorRawTokens.colorMagenta600)
    }

    @Test func soshBrandColorRawTokenColorMagenta600LighterThanColorMagenta700() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorMagenta600, SoshBrandColorRawTokens.colorMagenta700)
    }

    @Test func soshBrandColorRawTokenColorMagenta700LighterThanColorMagenta800() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorMagenta700, SoshBrandColorRawTokens.colorMagenta800)
    }

    @Test func soshBrandColorRawTokenColorMagenta800LighterThanColorMagenta900() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorMagenta800, SoshBrandColorRawTokens.colorMagenta900)
    }

    @Test func soshBrandColorRawTokenColorMagenta900LighterThanColorMagenta950() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorMagenta900, SoshBrandColorRawTokens.colorMagenta950)
    }

    @Test func soshBrandColorRawTokenColorCitrine50LighterThanColorCitrine100() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorCitrine50, SoshBrandColorRawTokens.colorCitrine100)
    }

    @Test func soshBrandColorRawTokenColorCitrine100LighterThanColorCitrine200() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorCitrine100, SoshBrandColorRawTokens.colorCitrine200)
    }

    @Test func soshBrandColorRawTokenColorCitrine200LighterThanColorCitrine300() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorCitrine200, SoshBrandColorRawTokens.colorCitrine300)
    }

    @Test func soshBrandColorRawTokenColorCitrine300LighterThanColorCitrine400() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorCitrine300, SoshBrandColorRawTokens.colorCitrine400)
    }

    @Test func soshBrandColorRawTokenColorCitrine400LighterThanColorCitrine500() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorCitrine400, SoshBrandColorRawTokens.colorCitrine500)
    }

    @Test func soshBrandColorRawTokenColorCitrine500LighterThanColorCitrine600() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorCitrine500, SoshBrandColorRawTokens.colorCitrine600)
    }

    @Test func soshBrandColorRawTokenColorCitrine600LighterThanColorCitrine700() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorCitrine600, SoshBrandColorRawTokens.colorCitrine700)
    }

    @Test func soshBrandColorRawTokenColorCitrine700LighterThanColorCitrine800() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorCitrine700, SoshBrandColorRawTokens.colorCitrine800)
    }

    @Test func soshBrandColorRawTokenColorCitrine800LighterThanColorCitrine900() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorCitrine800, SoshBrandColorRawTokens.colorCitrine900)
    }

    @Test func soshBrandColorRawTokenColorCitrine900LighterThanColorCitrine950() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorCitrine900, SoshBrandColorRawTokens.colorCitrine950)
    }

    @Test func soshBrandColorRawTokenColorCitrine950LighterThanColorCitrine1000() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorCitrine950, SoshBrandColorRawTokens.colorCitrine1000)
    }

    @Test func soshBrandColorRawTokenColorBlueDuckLight160LighterThanColorBlueDuckLight240() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorBlueDuckLight160, SoshBrandColorRawTokens.colorBlueDuckLight240)
    }

    @Test func soshBrandColorRawTokenColorBlueDuckLight240LighterThanColorBlueDuckLight320() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorBlueDuckLight240, SoshBrandColorRawTokens.colorBlueDuckLight320)
    }

    @Test func soshBrandColorRawTokenColorBlueDuckLight320LighterThanColorBlueDuckLight400() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorBlueDuckLight320, SoshBrandColorRawTokens.colorBlueDuckLight400)
    }

    @Test func soshBrandColorRawTokenColorBlueDuckLight400LighterThanColorBlueDuckLight480() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorBlueDuckLight400, SoshBrandColorRawTokens.colorBlueDuckLight480)
    }

    @Test func soshBrandColorRawTokenColorBlueDuckLight480LighterThanColorBlueDuckLight560() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorBlueDuckLight480, SoshBrandColorRawTokens.colorBlueDuckLight560)
    }

    @Test func soshBrandColorRawTokenColorBlueDuckLight560LighterThanColorBlueDuckLight640() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorBlueDuckLight560, SoshBrandColorRawTokens.colorBlueDuckLight640)
    }

    @Test func soshBrandColorRawTokenColorBlueDuckLight640LighterThanColorBlueDuckLight720() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorBlueDuckLight640, SoshBrandColorRawTokens.colorBlueDuckLight720)
    }

    @Test func soshBrandColorRawTokenColorBlueDuckLight720LighterThanColorBlueDuckLight800() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorBlueDuckLight720, SoshBrandColorRawTokens.colorBlueDuckLight800)
    }

    @Test func soshBrandColorRawTokenColorBlueDuckLight800LighterThanColorBlueDuckLight880() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorBlueDuckLight800, SoshBrandColorRawTokens.colorBlueDuckLight880)
    }

    @Test func soshBrandColorRawTokenColorBlueDuckLight880LighterThanColorBlueDuckLight960() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorBlueDuckLight880, SoshBrandColorRawTokens.colorBlueDuckLight960)
    }

    @Test func soshBrandColorRawTokenColorBlueDuckDark160LighterThanColorBlueDuckDark240() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorBlueDuckDark160, SoshBrandColorRawTokens.colorBlueDuckDark240)
    }

    @Test func soshBrandColorRawTokenColorBlueDuckDark240LighterThanColorBlueDuckDark320() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorBlueDuckDark240, SoshBrandColorRawTokens.colorBlueDuckDark320)
    }

    @Test func soshBrandColorRawTokenColorBlueDuckDark320LighterThanColorBlueDuckDark400() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorBlueDuckDark320, SoshBrandColorRawTokens.colorBlueDuckDark400)
    }

    @Test func soshBrandColorRawTokenColorBlueDuckDark400LighterThanColorBlueDuckDark480() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorBlueDuckDark400, SoshBrandColorRawTokens.colorBlueDuckDark480)
    }

    @Test func soshBrandColorRawTokenColorBlueDuckDark480LighterThanColorBlueDuckDark560() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorBlueDuckDark480, SoshBrandColorRawTokens.colorBlueDuckDark560)
    }

    @Test func soshBrandColorRawTokenColorBlueDuckDark560LighterThanColorBlueDuckDark640() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorBlueDuckDark560, SoshBrandColorRawTokens.colorBlueDuckDark640)
    }

    @Test func soshBrandColorRawTokenColorBlueDuckDark640LighterThanColorBlueDuckDark720() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorBlueDuckDark640, SoshBrandColorRawTokens.colorBlueDuckDark720)
    }

    @Test func soshBrandColorRawTokenColorBlueDuckDark720LighterThanColorBlueDuckDark800() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorBlueDuckDark720, SoshBrandColorRawTokens.colorBlueDuckDark800)
    }

    @Test func soshBrandColorRawTokenColorBlueDuckDark800LighterThanColorBlueDuckDark880() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorBlueDuckDark800, SoshBrandColorRawTokens.colorBlueDuckDark880)
    }

    @Test func soshBrandColorRawTokenColorBlueDuckDark880LighterThanColorBlueDuckDark960() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorBlueDuckDark880, SoshBrandColorRawTokens.colorBlueDuckDark960)
    }
    
    // MARK: - Test all values unique
    
    @Test func soshBrandColorRawTokensAreAllUnique() throws {
        let allColors = [
            SoshBrandColorRawTokens.colorMagenta50, SoshBrandColorRawTokens.colorMagenta100, SoshBrandColorRawTokens.colorMagenta200, SoshBrandColorRawTokens.colorMagenta300, SoshBrandColorRawTokens.colorMagenta400,
            SoshBrandColorRawTokens.colorMagenta500, SoshBrandColorRawTokens.colorMagenta600, SoshBrandColorRawTokens.colorMagenta700, SoshBrandColorRawTokens.colorMagenta800, SoshBrandColorRawTokens.colorMagenta900,
            SoshBrandColorRawTokens.colorMagenta950, SoshBrandColorRawTokens.colorCitrine50, SoshBrandColorRawTokens.colorCitrine100, SoshBrandColorRawTokens.colorCitrine200, SoshBrandColorRawTokens.colorCitrine300,
            SoshBrandColorRawTokens.colorCitrine400, SoshBrandColorRawTokens.colorCitrine500, SoshBrandColorRawTokens.colorCitrine600, SoshBrandColorRawTokens.colorCitrine700, SoshBrandColorRawTokens.colorCitrine800,
            SoshBrandColorRawTokens.colorCitrine900, SoshBrandColorRawTokens.colorCitrine950, SoshBrandColorRawTokens.colorCitrine1000, SoshBrandColorRawTokens.colorBlueDuckLight80,
            SoshBrandColorRawTokens.colorBlueDuckLight160, SoshBrandColorRawTokens.colorBlueDuckLight240, SoshBrandColorRawTokens.colorBlueDuckLight320, SoshBrandColorRawTokens.colorBlueDuckLight400,
            SoshBrandColorRawTokens.colorBlueDuckLight480, SoshBrandColorRawTokens.colorBlueDuckLight560, SoshBrandColorRawTokens.colorBlueDuckLight640, SoshBrandColorRawTokens.colorBlueDuckLight720,
            SoshBrandColorRawTokens.colorBlueDuckLight800, SoshBrandColorRawTokens.colorBlueDuckLight880, SoshBrandColorRawTokens.colorBlueDuckLight960, SoshBrandColorRawTokens.colorBlueDuckDark80,
            SoshBrandColorRawTokens.colorBlueDuckDark160, SoshBrandColorRawTokens.colorBlueDuckDark240, SoshBrandColorRawTokens.colorBlueDuckDark320, SoshBrandColorRawTokens.colorBlueDuckDark400,
            SoshBrandColorRawTokens.colorBlueDuckDark480, SoshBrandColorRawTokens.colorBlueDuckDark560, SoshBrandColorRawTokens.colorBlueDuckDark640, SoshBrandColorRawTokens.colorBlueDuckDark720,
            SoshBrandColorRawTokens.colorBlueDuckDark800, SoshBrandColorRawTokens.colorBlueDuckDark880, SoshBrandColorRawTokens.colorBlueDuckDark960, SoshBrandColorRawTokens.colorOpacityMagenta
        ]
        assertAllUniqueColors(allColors)
    }

    // MARK: - Helpers
    
    private func assertAllUniqueColors(_ colors: [ColorRawToken], file: StaticString = #file, line: UInt = #line) {
        for i in 0..<colors.count {
            for j in (i+1)..<colors.count {
                #expect(colors[i] == colors[j], "Colors \(colors[i]) and \(colors[j]) must be different")
            }
        }
    }
}

// swiftlint:enable type_body_length
// swiftlint:enable force_try
// swiftlint:enable function_body_length
