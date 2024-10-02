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

import XCTest
import OUDSThemesSosh
import TestsUtils

/// The aim of this tests class is to look for regressions in **Sosh brand color raw tokens**.
/// Because these values will be at least generated through an external tool, is it not relevant to test each token values.
/// Indeed, each future generation of Swift code may break theses tests because there are new values.
/// However, in the semantics of **Sosh brand color raw tokens**, there will be some unchanged things like relationships between tokens.
/// Thus this tests class just checks if such relationships are still here whatever the values at the end.
final class SoshBrandColorRawTokensTests: XCTestCase {

    // MARK: Primitive token - Colors - Sosh - Magenta

    func testColorBrandMagenta50LighterThan100() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorBrandMagenta50, SoshBrandColorRawTokens.colorBrandMagenta100)
    }

    func testColorBrandMagenta100LighterThan200() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorBrandMagenta100, SoshBrandColorRawTokens.colorBrandMagenta200)
    }

    func testColorBrandMagenta200LighterThan300() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorBrandMagenta200, SoshBrandColorRawTokens.colorBrandMagenta300)
    }

    func testColorBrandMagenta300LighterThan400() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorBrandMagenta300, SoshBrandColorRawTokens.colorBrandMagenta400)
    }

    func testColorBrandMagenta400LighterThan500() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorBrandMagenta400, SoshBrandColorRawTokens.colorBrandMagenta500)
    }

    func testColorBrandMagenta500LighterThan600() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorBrandMagenta500, SoshBrandColorRawTokens.colorBrandMagenta600)
    }

    func testColorBrandMagenta600LighterThan700() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorBrandMagenta600, SoshBrandColorRawTokens.colorBrandMagenta700)
    }

    func testColorBrandMagenta700LighterThan800() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorBrandMagenta700, SoshBrandColorRawTokens.colorBrandMagenta800)
    }

    func testColorBrandMagenta800LighterThan900() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorBrandMagenta800, SoshBrandColorRawTokens.colorBrandMagenta900)
    }

    func testColorBrandMagenta900LighterThan950() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorBrandMagenta900, SoshBrandColorRawTokens.colorBrandMagenta950)
    }

    // MARK: Primitive token - Colors - Sosh - Citrine

    func testColorBrandCitrine50LighterThan100() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorBrandCitrine50, SoshBrandColorRawTokens.colorBrandCitrine100)
    }

    func testColorBrandCitrine100LighterThan200() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorBrandCitrine100, SoshBrandColorRawTokens.colorBrandCitrine200)
    }

    func testColorBrandCitrine200LighterThan300() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorBrandCitrine200, SoshBrandColorRawTokens.colorBrandCitrine300)
    }

    func testColorBrandCitrine300LighterThan400() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorBrandCitrine300, SoshBrandColorRawTokens.colorBrandCitrine400)
    }

    func testColorBrandCitrine400LighterThan500() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorBrandCitrine400, SoshBrandColorRawTokens.colorBrandCitrine500)
    }

    func testColorBrandCitrine500LighterThan600() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorBrandCitrine500, SoshBrandColorRawTokens.colorBrandCitrine600)
    }

    func testColorBrandCitrine600LighterThan700() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorBrandCitrine600, SoshBrandColorRawTokens.colorBrandCitrine700)
    }

    func testColorBrandCitrine700LighterThan800() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorBrandCitrine700, SoshBrandColorRawTokens.colorBrandCitrine800)
    }

    func testColorBrandCitrine800LighterThan900() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorBrandCitrine800, SoshBrandColorRawTokens.colorBrandCitrine900)
    }

    func testColorBrandCitrine900LighterThan950() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorBrandCitrine900, SoshBrandColorRawTokens.colorBrandCitrine950)
    }

    // MARK: Primitive token - Colors - Sosh - Blue Duck

    func testColorBrandBlueDuck50LighterThan100() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorBrandBlueDuck50, SoshBrandColorRawTokens.colorBrandBlueDuck100)
    }

    func testColorBrandBlueDuck100LighterThan200() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorBrandBlueDuck100, SoshBrandColorRawTokens.colorBrandBlueDuck200)
    }

    func testColorBrandBlueDuck200LighterThan300() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorBrandBlueDuck200, SoshBrandColorRawTokens.colorBrandBlueDuck300)
    }

    func testColorBrandBlueDuck300LighterThan400() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorBrandBlueDuck300, SoshBrandColorRawTokens.colorBrandBlueDuck400)
    }

    func testColorBrandBlueDuck400LighterThan500() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorBrandBlueDuck400, SoshBrandColorRawTokens.colorBrandBlueDuck500)
    }

    func testColorBrandBlueDuck500LighterThan600() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorBrandBlueDuck500, SoshBrandColorRawTokens.colorBrandBlueDuck600)
    }

    func testColorBrandBlueDuck600LighterThan700() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorBrandBlueDuck600, SoshBrandColorRawTokens.colorBrandBlueDuck700)
    }

    func testColorBrandBlueDuck700LighterThan800() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorBrandBlueDuck700, SoshBrandColorRawTokens.colorBrandBlueDuck800)
    }

    func testColorBrandBlueDuck800LighterThan900() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorBrandBlueDuck800, SoshBrandColorRawTokens.colorBrandBlueDuck900)
    }

    func testColorBrandBlueDuck900LighterThan950() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorBrandBlueDuck900, SoshBrandColorRawTokens.colorBrandBlueDuck950)
    }
}
