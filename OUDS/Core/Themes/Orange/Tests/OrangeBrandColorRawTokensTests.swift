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

    // MARK: Primitive token - Colors - Orange - Emerald

    func testOrangeBrandColorRawTokenColorDecorativeEmerald100LighterThanEmerald200() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeEmerald100, OrangeBrandColorRawTokens.colorDecorativeEmerald200)
    }

    func testOrangeBrandColorRawTokenColorDecorativeEmerald200LighterThanEmerald300() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeEmerald200, OrangeBrandColorRawTokens.colorDecorativeEmerald300)
    }

    func testOrangeBrandColorRawTokenColorDecorativeEmerald300LighterThanEmerald400() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeEmerald300, OrangeBrandColorRawTokens.colorDecorativeEmerald400)
    }

    func testOrangeBrandColorRawTokenColorDecorativeEmerald400LighterThanEmerald500() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeEmerald400, OrangeBrandColorRawTokens.colorDecorativeEmerald500)
    }

    func testOrangeBrandColorRawTokenColorDecorativeEmerald500LighterThanEmerald600() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeEmerald500, OrangeBrandColorRawTokens.colorDecorativeEmerald600)
    }

    func testOrangeBrandColorRawTokenColorDecorativeEmerald600LighterThanEmerald700() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeEmerald600, OrangeBrandColorRawTokens.colorDecorativeEmerald700)
    }

    func testOrangeBrandColorRawTokenColorDecorativeEmerald700LighterThanEmerald800() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeEmerald700, OrangeBrandColorRawTokens.colorDecorativeEmerald800)
    }

    func testOrangeBrandColorRawTokenColorDecorativeEmerald800LighterThanEmerald900() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeEmerald800, OrangeBrandColorRawTokens.colorDecorativeEmerald900)
    }

    // MARK: Primitive token - Colors - Orange - Sky

    func testOrangeBrandColorRawTokenColorDecorativeSky100LighterThanSky200() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeSky100, OrangeBrandColorRawTokens.colorDecorativeSky200)
    }

    func testOrangeBrandColorRawTokenColorDecorativeSky200LighterThanSky300() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeSky200, OrangeBrandColorRawTokens.colorDecorativeSky300)
    }

    func testOrangeBrandColorRawTokenColorDecorativeSky300LighterThanSky400() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeSky300, OrangeBrandColorRawTokens.colorDecorativeSky400)
    }

    func testOrangeBrandColorRawTokenColorDecorativeSky400LighterThanSky500() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeSky400, OrangeBrandColorRawTokens.colorDecorativeSky500)
    }

    func testOrangeBrandColorRawTokenColorDecorativeSky500LighterThanSky600() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeSky500, OrangeBrandColorRawTokens.colorDecorativeSky600)
    }

    func testOrangeBrandColorRawTokenColorDecorativeSky600LighterThanSky700() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeSky600, OrangeBrandColorRawTokens.colorDecorativeSky700)
    }

    func testOrangeBrandColorRawTokenColorDecorativeSky700LighterThanSky800() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeSky700, OrangeBrandColorRawTokens.colorDecorativeSky800)
    }

    func testOrangeBrandColorRawTokenColorDecorativeSky800LighterThanSky900() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeSky800, OrangeBrandColorRawTokens.colorDecorativeSky900)
    }

    // MARK: Primitive token - Colors - Orange - Amber

    func testOrangeBrandColorRawTokenColorDecorativeAmber100LighterThanAmber200() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeAmber100, OrangeBrandColorRawTokens.colorDecorativeAmber200)
    }

    func testOrangeBrandColorRawTokenColorDecorativeAmber200LighterThanAmber300() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeAmber200, OrangeBrandColorRawTokens.colorDecorativeAmber300)
    }

    func testOrangeBrandColorRawTokenColorDecorativeAmber300LighterThanAmber400() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeAmber300, OrangeBrandColorRawTokens.colorDecorativeAmber400)
    }

    func testOrangeBrandColorRawTokenColorDecorativeAmber400LighterThanAmber500() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeAmber400, OrangeBrandColorRawTokens.colorDecorativeAmber500)
    }

    func testOrangeBrandColorRawTokenColorDecorativeAmber500LighterThanAmber600() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeAmber500, OrangeBrandColorRawTokens.colorDecorativeAmber600)
    }

    func testOrangeBrandColorRawTokenColorDecorativeAmber600LighterThanAmber700() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeAmber600, OrangeBrandColorRawTokens.colorDecorativeAmber700)
    }

    func testOrangeBrandColorRawTokenColorDecorativeAmber700LighterThanAmber800() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeAmber700, OrangeBrandColorRawTokens.colorDecorativeAmber800)
    }

    func testOrangeBrandColorRawTokenColorDecorativeAmber800LighterThanAmber900() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeAmber800, OrangeBrandColorRawTokens.colorDecorativeAmber900)
    }

    // MARK: Primitive token - Colors - Orange - Amethyst

    func testOrangeBrandColorRawTokenColorDecorativeAmethyst100LighterThanAmethyst200() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeAmethyst100, OrangeBrandColorRawTokens.colorDecorativeAmethyst200)
    }

    func testOrangeBrandColorRawTokenColorDecorativeAmethyst200LighterThanAmethyst300() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeAmethyst200, OrangeBrandColorRawTokens.colorDecorativeAmethyst300)
    }

    func testOrangeBrandColorRawTokenColorDecorativeAmethyst300LighterThanAmethyst400() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeAmethyst300, OrangeBrandColorRawTokens.colorDecorativeAmethyst400)
    }

    func testOrangeBrandColorRawTokenColorDecorativeAmethyst400LighterThanAmethyst500() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeAmethyst400, OrangeBrandColorRawTokens.colorDecorativeAmethyst500)
    }

    func testOrangeBrandColorRawTokenColorDecorativeAmethyst500LighterThanAmethyst600() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeAmethyst500, OrangeBrandColorRawTokens.colorDecorativeAmethyst600)
    }

    func testOrangeBrandColorRawTokenColorDecorativeAmethyst600LighterThanAmethyst700() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeAmethyst600, OrangeBrandColorRawTokens.colorDecorativeAmethyst700)
    }

    func testOrangeBrandColorRawTokenColorDecorativeAmethyst700LighterThanAmethyst800() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeAmethyst700, OrangeBrandColorRawTokens.colorDecorativeAmethyst800)
    }

    func testOrangeBrandColorRawTokenColorDecorativeAmethyst800LighterThanAmethyst900() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeAmethyst800, OrangeBrandColorRawTokens.colorDecorativeAmethyst900)
    }

    // MARK: Primitive token - Colors - Orange - Shocking Pink

    func testOrangeBrandColorRawTokenColorDecorativeShockingPink100LighterThan200() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeShockingPink100, OrangeBrandColorRawTokens.colorDecorativeShockingPink200)
    }

    func testOrangeBrandColorRawTokenColorDecorativeShockingPink200LighterThan300() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeShockingPink200, OrangeBrandColorRawTokens.colorDecorativeShockingPink300)
    }

    func testOrangeBrandColorRawTokenColorDecorativeShockingPink300LighterThan400() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeShockingPink300, OrangeBrandColorRawTokens.colorDecorativeShockingPink400)
    }

    func testOrangeBrandColorRawTokenColorDecorativeShockingPink400LighterThan500() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeShockingPink400, OrangeBrandColorRawTokens.colorDecorativeShockingPink500)
    }

    func testOrangeBrandColorRawTokenColorDecorativeShockingPink500LighterThan600() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeShockingPink500, OrangeBrandColorRawTokens.colorDecorativeShockingPink600)
    }

    func testOrangeBrandColorRawTokenColorDecorativeShockingPink600LighterThan700() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeShockingPink600, OrangeBrandColorRawTokens.colorDecorativeShockingPink700)
    }

    func testOrangeBrandColorRawTokenColorDecorativeShockingPink700LighterThan800() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeShockingPink700, OrangeBrandColorRawTokens.colorDecorativeShockingPink800)
    }

    func testOrangeBrandColorRawTokenColorDecorativeShockingPink800LighterThan900() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeShockingPink800, OrangeBrandColorRawTokens.colorDecorativeShockingPink900)
    }

    // MARK: Primitive token - Colors - Orange - Deep Peach

    func testOrangeBrandColorRawTokenColorDecorativeDeepPeach100LighterThan200() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeDeepPeach100, OrangeBrandColorRawTokens.colorDecorativeDeepPeach200)
    }

    func testOrangeBrandColorRawTokenColorDecorativeDeepPeach200LighterThan300() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeDeepPeach200, OrangeBrandColorRawTokens.colorDecorativeDeepPeach300)
    }

    func testOrangeBrandColorRawTokenColorDecorativeDeepPeach300LighterThan400() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeDeepPeach300, OrangeBrandColorRawTokens.colorDecorativeDeepPeach400)
    }

    func testOrangeBrandColorRawTokenColorDecorativeDeepPeach400LighterThan500() throws {
        XCTAssertColorDarkerThan(OrangeBrandColorRawTokens.colorDecorativeDeepPeach400, OrangeBrandColorRawTokens.colorDecorativeDeepPeach500)
        // TODO: Why? Is the palette well defined in design team. This is the only case 400 is darker than 500
    }

    func testOrangeBrandColorRawTokenColorDecorativeDeepPeach500LighterThan600() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeDeepPeach500, OrangeBrandColorRawTokens.colorDecorativeDeepPeach600)
    }

    func testOrangeBrandColorRawTokenColorDecorativeDeepPeach600LighterThan700() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeDeepPeach600, OrangeBrandColorRawTokens.colorDecorativeDeepPeach700)
    }

    func testOrangeBrandColorRawTokenColorDecorativeDeepPeach700LighterThan800() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeDeepPeach700, OrangeBrandColorRawTokens.colorDecorativeDeepPeach800)
    }

    func testOrangeBrandColorRawTokenColorDecorativeDeepPeach800LighterThan900() throws {
        XCTAssertColorLighterThan(OrangeBrandColorRawTokens.colorDecorativeDeepPeach800, OrangeBrandColorRawTokens.colorDecorativeDeepPeach900)
    }
}
