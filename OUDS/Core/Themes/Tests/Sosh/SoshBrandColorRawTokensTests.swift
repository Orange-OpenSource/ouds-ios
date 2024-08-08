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

/// The aim of this tests class is to look for regressions in **Sosh brand color raw tokens**.
/// Because these values will be at least generated through an external tool, is it not relevant to test each token values.
/// Indeed, each future generation of Swift code may break theses tests because there are new values.
/// However, in the semantics of **Sosh brand color raw tokens**, there will be some unchanged things like relationships between tokens.
/// Thus this tests class just checks if such relationships are still here whatever the values at the end.
final class SoshBrandColorRawTokensTests: XCTestCase {

    // MARK: Primitive token - Colors - Sosh - Magenta

    func testColorDecorativeMagenta50LighterThan100() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorDecorativeMagenta50, SoshBrandColorRawTokens.colorDecorativeMagenta100)
    }

    func testColorDecorativeMagenta100LighterThan200() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorDecorativeMagenta100, SoshBrandColorRawTokens.colorDecorativeMagenta200)
    }

    func testColorDecorativeMagenta200LighterThan300() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorDecorativeMagenta200, SoshBrandColorRawTokens.colorDecorativeMagenta300)
    }

    func testColorDecorativeMagenta300LighterThan400() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorDecorativeMagenta300, SoshBrandColorRawTokens.colorDecorativeMagenta400)
    }

    func testColorDecorativeMagenta400LighterThan500() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorDecorativeMagenta400, SoshBrandColorRawTokens.colorDecorativeMagenta500)
    }

    func testColorDecorativeMagenta500LighterThan600() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorDecorativeMagenta500, SoshBrandColorRawTokens.colorDecorativeMagenta600)
    }

    func testColorDecorativeMagenta600LighterThan700() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorDecorativeMagenta600, SoshBrandColorRawTokens.colorDecorativeMagenta700)
    }

    func testColorDecorativeMagenta700LighterThan800() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorDecorativeMagenta700, SoshBrandColorRawTokens.colorDecorativeMagenta800)
    }

    func testColorDecorativeMagenta800LighterThan900() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorDecorativeMagenta800, SoshBrandColorRawTokens.colorDecorativeMagenta900)
    }

    func testColorDecorativeMagenta900LighterThan950() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorDecorativeMagenta900, SoshBrandColorRawTokens.colorDecorativeMagenta950)
    }
    
    // MARK: Primitive token - Colors - Sosh - Citrine

    func testColorDecorativeCitrine50LighterThan100() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorDecorativeCitrine50, SoshBrandColorRawTokens.colorDecorativeCitrine100)
    }

    func testColorDecorativeCitrine100LighterThan200() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorDecorativeCitrine100, SoshBrandColorRawTokens.colorDecorativeCitrine200)
    }

    func testColorDecorativeCitrine200LighterThan300() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorDecorativeCitrine200, SoshBrandColorRawTokens.colorDecorativeCitrine300)
    }

    func testColorDecorativeCitrine300LighterThan400() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorDecorativeCitrine300, SoshBrandColorRawTokens.colorDecorativeCitrine400)
    }

    func testColorDecorativeCitrine400LighterThan500() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorDecorativeCitrine400, SoshBrandColorRawTokens.colorDecorativeCitrine500)
    }

    func testColorDecorativeCitrine500LighterThan600() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorDecorativeCitrine500, SoshBrandColorRawTokens.colorDecorativeCitrine600)
    }

    func testColorDecorativeCitrine600LighterThan700() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorDecorativeCitrine600, SoshBrandColorRawTokens.colorDecorativeCitrine700)
    }

    func testColorDecorativeCitrine700LighterThan800() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorDecorativeCitrine700, SoshBrandColorRawTokens.colorDecorativeCitrine800)
    }

    func testColorDecorativeCitrine800LighterThan900() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorDecorativeCitrine800, SoshBrandColorRawTokens.colorDecorativeCitrine900)
    }

    func testColorDecorativeCitrine900LighterThan950() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorDecorativeCitrine900, SoshBrandColorRawTokens.colorDecorativeCitrine950)
    }
    
    // MARK: Primitive token - Colors - Sosh - Blue Duck

    func testColorDecorativeBlueDuck50LighterThan100() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorDecorativeBlueDuck50, SoshBrandColorRawTokens.colorDecorativeBlueDuck100)
    }

    func testColorDecorativeBlueDuck100LighterThan200() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorDecorativeBlueDuck100, SoshBrandColorRawTokens.colorDecorativeBlueDuck200)
    }

    func testColorDecorativeBlueDuck200LighterThan300() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorDecorativeBlueDuck200, SoshBrandColorRawTokens.colorDecorativeBlueDuck300)
    }

    func testColorDecorativeBlueDuck300LighterThan400() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorDecorativeBlueDuck300, SoshBrandColorRawTokens.colorDecorativeBlueDuck400)
    }

    func testColorDecorativeBlueDuck400LighterThan500() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorDecorativeBlueDuck400, SoshBrandColorRawTokens.colorDecorativeBlueDuck500)
    }

    func testColorDecorativeBlueDuck500LighterThan600() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorDecorativeBlueDuck500, SoshBrandColorRawTokens.colorDecorativeBlueDuck600)
    }

    func testColorDecorativeBlueDuck600LighterThan700() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorDecorativeBlueDuck600, SoshBrandColorRawTokens.colorDecorativeBlueDuck700)
    }

    func testColorDecorativeBlueDuck700LighterThan800() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorDecorativeBlueDuck700, SoshBrandColorRawTokens.colorDecorativeBlueDuck800)
    }

    func testColorDecorativeBlueDuck800LighterThan900() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorDecorativeBlueDuck800, SoshBrandColorRawTokens.colorDecorativeBlueDuck900)
    }

    func testColorDecorativeBlueDuck900LighterThan950() throws {
        XCTAssertColorLighterThan(SoshBrandColorRawTokens.colorDecorativeBlueDuck900, SoshBrandColorRawTokens.colorDecorativeBlueDuck950)
    }
}
