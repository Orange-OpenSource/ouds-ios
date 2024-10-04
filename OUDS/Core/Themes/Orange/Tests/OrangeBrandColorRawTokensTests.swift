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
import OUDSThemesOrange
import TestsUtils

/// The aim of this tests class is to look for regressions in **Orange brand color raw tokens**.
/// Because these values will be at least generated through an external tool, is it not relevant to test each token values.
/// Indeed, each future generation of Swift code may break theses tests because there are new values.
/// However, in the semantics of **Orange brand color raw tokens**, there will be some unchanged things like relationships between tokens.
/// Thus this tests class just checks if such relationships are still here whatever the values at the end.
final class OrangeBrandColorRawTokensTests: XCTestCase {

    // MARK: Primitive token - Colors - Orange - Brand - Orange

    func testOrangeBrandColorRawTokenColorBrandOrange50LighterThanOrange100() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorBrandOrange50, OrangeBrandColorRawTokens.colorBrandOrange100)
    }

    func testOrangeBrandColorRawTokenColorBrandOrange100LighterThanOrange200() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorBrandOrange100, OrangeBrandColorRawTokens.colorBrandOrange200)
    }

    func testOrangeBrandColorRawTokenColorBrandOrange200LighterThanOrange300() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorBrandOrange200, OrangeBrandColorRawTokens.colorBrandOrange300)
    }

    func testOrangeBrandColorRawTokenColorBrandOrange300LighterThanOrange400() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorBrandOrange300, OrangeBrandColorRawTokens.colorBrandOrange400)
    }

    func testOrangeBrandColorRawTokenColorBrandOrange400LighterThanOrange500() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorBrandOrange400, OrangeBrandColorRawTokens.colorBrandOrange500)
    }

    func testOrangeBrandColorRawTokenColorBrandOrange500LighterThanOrange550() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorBrandOrange500, OrangeBrandColorRawTokens.colorBrandOrange550)
    }

    func testOrangeBrandColorRawTokenColorBrandOrange550LighterThanOrange600() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorBrandOrange550, OrangeBrandColorRawTokens.colorBrandOrange600)
    }

    func testOrangeBrandColorRawTokenColorBrandOrange600LighterThanOrange700() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorBrandOrange600, OrangeBrandColorRawTokens.colorBrandOrange700)
    }

    func testOrangeBrandColorRawTokenColorBrandOrange700LighterThanOrange800() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorBrandOrange700, OrangeBrandColorRawTokens.colorBrandOrange800)
    }

    func testOrangeBrandColorRawTokenColorBrandOrange800LighterThanOrange900() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorBrandOrange800, OrangeBrandColorRawTokens.colorBrandOrange900)
    }

    // MARK: Primitive token - Colors - Orange - Brand - Warm gray

    func testOrangeBrandColorRawTokenColorBrandWarmGray100LighterThanWarmGray200() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorBrandWarmGray100, OrangeBrandColorRawTokens.colorBrandWarmGray200)
    }

    func testOrangeBrandColorRawTokenColorBrandWarmGray200LighterThanWarmGray300() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorBrandWarmGray200, OrangeBrandColorRawTokens.colorBrandWarmGray300)
    }

    func testOrangeBrandColorRawTokenColorBrandWarmGray300LighterThanWarmGray400() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorBrandWarmGray300, OrangeBrandColorRawTokens.colorBrandWarmGray400)
    }

    func testOrangeBrandColorRawTokenColorBrandWarmGray400LighterThanWarmGray500() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorBrandWarmGray400, OrangeBrandColorRawTokens.colorBrandWarmGray500)
    }

    func testOrangeBrandColorRawTokenColorBrandWarmGray500LighterThanWarmGray600() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorBrandWarmGray500, OrangeBrandColorRawTokens.colorBrandWarmGray600)
    }

    func testOrangeBrandColorRawTokenColorBrandWarmGray600LighterThanWarmGray700() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorBrandWarmGray600, OrangeBrandColorRawTokens.colorBrandWarmGray700)
    }

    func testOrangeBrandColorRawTokenColorBrandWarmGray700LighterThanWarmGray800() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorBrandWarmGray700, OrangeBrandColorRawTokens.colorBrandWarmGray800)
    }

    func testOrangeBrandColorRawTokenColorBrandWarmGray800LighterThanWarmGray900() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorBrandWarmGray800, OrangeBrandColorRawTokens.colorBrandWarmGray900)
    }
}
