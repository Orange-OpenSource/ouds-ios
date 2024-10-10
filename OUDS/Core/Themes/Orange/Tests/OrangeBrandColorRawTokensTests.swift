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

    // MARK: Primitive token - Colors - Orange - Orange

    func testOrangeBrandColorRawTokenColorOrange50LighterThanOrange100() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorOrange50, OrangeBrandColorRawTokens.colorOrange100)
    }

    func testOrangeBrandColorRawTokenColorOrange100LighterThanOrange200() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorOrange100, OrangeBrandColorRawTokens.colorOrange200)
    }

    func testOrangeBrandColorRawTokenColorOrange200LighterThanOrange300() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorOrange200, OrangeBrandColorRawTokens.colorOrange300)
    }

    func testOrangeBrandColorRawTokenColorOrange300LighterThanOrange400() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorOrange300, OrangeBrandColorRawTokens.colorOrange400)
    }

    func testOrangeBrandColorRawTokenColorOrange400LighterThanOrange500() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorOrange400, OrangeBrandColorRawTokens.colorOrange500)
    }

    func testOrangeBrandColorRawTokenColorOrange500LighterThanOrange550() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorOrange500, OrangeBrandColorRawTokens.colorOrange550)
    }

    func testOrangeBrandColorRawTokenColorOrange550LighterThanOrange600() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorOrange550, OrangeBrandColorRawTokens.colorOrange600)
    }

    func testOrangeBrandColorRawTokenColorOrange600LighterThanOrange700() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorOrange600, OrangeBrandColorRawTokens.colorOrange700)
    }

    func testOrangeBrandColorRawTokenColorOrange700LighterThanOrange800() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorOrange700, OrangeBrandColorRawTokens.colorOrange800)
    }

    func testOrangeBrandColorRawTokenColorOrange800LighterThanOrange900() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorOrange800, OrangeBrandColorRawTokens.colorOrange900)
    }

    // MARK: Primitive token - Colors - Orange - Brand - Warm gray

    func testOrangeBrandColorRawTokenColorWarmGray100LighterThanWarmGray200() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorWarmGray100, OrangeBrandColorRawTokens.colorWarmGray200)
    }

    func testOrangeBrandColorRawTokenColorWarmGray200LighterThanWarmGray300() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorWarmGray200, OrangeBrandColorRawTokens.colorWarmGray300)
    }

    func testOrangeBrandColorRawTokenColorWarmGray300LighterThanWarmGray400() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorWarmGray300, OrangeBrandColorRawTokens.colorWarmGray400)
    }

    func testOrangeBrandColorRawTokenColorWarmGray400LighterThanWarmGray500() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorWarmGray400, OrangeBrandColorRawTokens.colorWarmGray500)
    }

    func testOrangeBrandColorRawTokenColorWarmGray500LighterThanWarmGray600() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorWarmGray500, OrangeBrandColorRawTokens.colorWarmGray600)
    }

    func testOrangeBrandColorRawTokenColorWarmGray600LighterThanWarmGray700() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorWarmGray600, OrangeBrandColorRawTokens.colorWarmGray700)
    }

    func testOrangeBrandColorRawTokenColorWarmGray700LighterThanWarmGray800() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorWarmGray700, OrangeBrandColorRawTokens.colorWarmGray800)
    }

    func testOrangeBrandColorRawTokenColorWarmGray800LighterThanWarmGray900() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorWarmGray800, OrangeBrandColorRawTokens.colorWarmGray900)
    }
}
