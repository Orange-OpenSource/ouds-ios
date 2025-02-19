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
import XCTest

// swiftlint:disable required_deinit
// swiftlint:disable type_body_length
// swiftlint:disable function_body_length
// swiftlint:disable file_length

/// The aim of this tests class is to look for regressions in **dimension raw tokens**.
///
/// Because these values will be at least generated through an external tool, is it not relevant to test each token values.
/// Indeed, each future generation of Swift code may break theses tests because there are new values.
/// However, in the semantics of **dimension raw tokens**, there will be some unchanged things like relationships between tokens.
/// Thus this tests class just checks if such relationships are still here whatever the values at the end.
///
/// Here are some rules to follow:
/// - dimension must not be negative value
/// - dimension value must be a factor of `DimensionRawTokens.borderBase`
/// - dimension values must be all different
/// - the "bigger" the dimension token is, the higher the value is
final class DimensionRawTokensTests: XCTestCase {

    @Test
    func dimensionRawToken0NotNegativeValue() throws {
        #expect(DimensionRawTokens.dimension0 >= 0)
    }

    @Test
    func dimensionRawToken0LessThan25() throws {
        #expect(DimensionRawTokens.dimension0 < DimensionRawTokens.dimension25)
    }

    func testDimensionRawToken0MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension0, factor: DimensionRawTokens.dimensionBase)
    }

    @Test
    func dimensionRawToken25NotNegativeValue() throws {
        #expect(DimensionRawTokens.dimension25 >= 0)
    }

    @Test
    func dimensionRawToken25LessThan50() throws {
        #expect(DimensionRawTokens.dimension25 < DimensionRawTokens.dimension50)
    }

    func testDimensionRawToken25MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension25, factor: DimensionRawTokens.dimensionBase)
    }

    @Test
    func dimensionRawToken50NotNegativeValue() throws {
        #expect(DimensionRawTokens.dimension50 >= 0)
    }

    @Test
    func dimensionRawToken50LessThan75() throws {
        #expect(DimensionRawTokens.dimension50 < DimensionRawTokens.dimension75)
    }

    func testDimensionRawToken50MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension50, factor: DimensionRawTokens.dimensionBase)
    }

    @Test
    func dimensionRawToken75NotNegativeValue() throws {
        #expect(DimensionRawTokens.dimension75 >= 0)
    }

    @Test
    func dimensionRawToken75LessThan100() throws {
        #expect(DimensionRawTokens.dimension75 < DimensionRawTokens.dimension100)
    }

    func testDimensionRawToken75MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension75, factor: DimensionRawTokens.dimensionBase)
    }

    @Test
    func dimensionRawToken100NotNegativeValue() throws {
        #expect(DimensionRawTokens.dimension100 >= 0)
    }

    @Test
    func dimensionRawToken100LessThan125() throws {
        #expect(DimensionRawTokens.dimension100 < DimensionRawTokens.dimension125)
    }

    func testDimensionRawToken100MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension100, factor: DimensionRawTokens.dimensionBase)
    }

    @Test
    func dimensionRawToken125NotNegativeValue() throws {
        #expect(DimensionRawTokens.dimension125 >= 0)
    }

    @Test
    func dimensionRawToken125LessThan150() throws {
        #expect(DimensionRawTokens.dimension125 < DimensionRawTokens.dimension150)
    }

    func testDimensionRawToken125MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension125, factor: DimensionRawTokens.dimensionBase)
    }

    @Test
    func dimensionRawToken150NotNegativeValue() throws {
        #expect(DimensionRawTokens.dimension150 >= 0)
    }

    @Test
    func dimensionRawToken150LessThan200() throws {
        #expect(DimensionRawTokens.dimension150 < DimensionRawTokens.dimension200)
    }

    func testDimensionRawToken150MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension150, factor: DimensionRawTokens.dimensionBase)
    }

    @Test
    func dimensionRawToken200NotNegativeValue() throws {
        #expect(DimensionRawTokens.dimension200 >= 0)
    }

    @Test
    func dimensionRawToken200LessThan250() throws {
        #expect(DimensionRawTokens.dimension200 < DimensionRawTokens.dimension250)
    }

    func testDimensionRawToken200MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension200, factor: DimensionRawTokens.dimensionBase)
    }

    @Test
    func dimensionRawToken250NotNegativeValue() throws {
        #expect(DimensionRawTokens.dimension250 >= 0)
    }

    @Test
    func dimensionRawToken250LessThan300() throws {
        #expect(DimensionRawTokens.dimension250 < DimensionRawTokens.dimension300)
    }

    func testDimensionRawToken250MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension250, factor: DimensionRawTokens.dimensionBase)
    }

    @Test
    func dimensionRawToken300NotNegativeValue() throws {
        #expect(DimensionRawTokens.dimension300 >= 0)
    }

    @Test
    func dimensionRawToken300LessThan350() throws {
        #expect(DimensionRawTokens.dimension300 < DimensionRawTokens.dimension350)
    }

    func testDimensionRawToken300MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension300, factor: DimensionRawTokens.dimensionBase)
    }

    @Test
    func dimensionRawToken350NotNegativeValue() throws {
        #expect(DimensionRawTokens.dimension350 >= 0)
    }

    @Test
    func dimensionRawToken350LessThan400() throws {
        #expect(DimensionRawTokens.dimension350 < DimensionRawTokens.dimension400)
    }

    func testDimensionRawToken350MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension350, factor: DimensionRawTokens.dimensionBase)
    }

    @Test
    func dimensionRawToken400NotNegativeValue() throws {
        #expect(DimensionRawTokens.dimension400 >= 0)
    }

    @Test
    func dimensionRawToken400LessThan450() throws {
        #expect(DimensionRawTokens.dimension400 < DimensionRawTokens.dimension450)
    }

    func testDimensionRawToken400MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension400, factor: DimensionRawTokens.dimensionBase)
    }

    @Test
    func dimensionRawToken450NotNegativeValue() throws {
        #expect(DimensionRawTokens.dimension450 >= 0)
    }

    @Test
    func dimensionRawToken450LessThan500() throws {
        #expect(DimensionRawTokens.dimension450 < DimensionRawTokens.dimension500)
    }

    func testDimensionRawToken450MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension450, factor: DimensionRawTokens.dimensionBase)
    }

    @Test
    func dimensionRawToken500NotNegativeValue() throws {
        #expect(DimensionRawTokens.dimension500 >= 0)
    }

    @Test
    func dimensionRawToken500LessThan550() throws {
        #expect(DimensionRawTokens.dimension500 < DimensionRawTokens.dimension550)
    }

    func testDimensionRawToken500MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension500, factor: DimensionRawTokens.dimensionBase)
    }

    @Test
    func dimensionRawToken550NotNegativeValue() throws {
        #expect(DimensionRawTokens.dimension550 >= 0)
    }

    @Test
    func dimensionRawToken550LessThan600() throws {
        #expect(DimensionRawTokens.dimension550 < DimensionRawTokens.dimension600)
    }

    func testDimensionRawToken550MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension550, factor: DimensionRawTokens.dimensionBase)
    }

    @Test
    func dimensionRawToken600NotNegativeValue() throws {
        #expect(DimensionRawTokens.dimension600 >= 0)
    }

    @Test
    func dimensionRawToken600LessThan650() throws {
        #expect(DimensionRawTokens.dimension600 < DimensionRawTokens.dimension650)
    }

    func testDimensionRawToken600MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension600, factor: DimensionRawTokens.dimensionBase)
    }

    @Test
    func dimensionRawToken650NotNegativeValue() throws {
        #expect(DimensionRawTokens.dimension650 >= 0)
    }

    @Test
    func dimensionRawToken650LessThan700() throws {
        #expect(DimensionRawTokens.dimension650 < DimensionRawTokens.dimension700)
    }

    func testDimensionRawToken650MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension650, factor: DimensionRawTokens.dimensionBase)
    }

    @Test
    func dimensionRawToken700NotNegativeValue() throws {
        #expect(DimensionRawTokens.dimension700 >= 0)
    }

    @Test
    func dimensionRawToken700LessThan750() throws {
        #expect(DimensionRawTokens.dimension700 < DimensionRawTokens.dimension750)
    }

    func testDimensionRawToken700MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension700, factor: DimensionRawTokens.dimensionBase)
    }

    @Test
    func dimensionRawToken750NotNegativeValue() throws {
        #expect(DimensionRawTokens.dimension750 >= 0)
    }

    @Test
    func dimensionRawToken750LessThan800() throws {
        #expect(DimensionRawTokens.dimension750 < DimensionRawTokens.dimension800)
    }

    func testDimensionRawToken750MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension750, factor: DimensionRawTokens.dimensionBase)
    }

    @Test
    func dimensionRawToken800NotNegativeValue() throws {
        #expect(DimensionRawTokens.dimension800 >= 0)
    }

    @Test
    func dimensionRawToken800LessThan850() throws {
        #expect(DimensionRawTokens.dimension800 < DimensionRawTokens.dimension850)
    }

    func testDimensionRawToken800MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension800, factor: DimensionRawTokens.dimensionBase)
    }

    @Test
    func dimensionRawToken850NotNegativeValue() throws {
        #expect(DimensionRawTokens.dimension850 >= 0)
    }

    @Test
    func dimensionRawToken850LessThan900() throws {
        #expect(DimensionRawTokens.dimension850 < DimensionRawTokens.dimension900)
    }

    func testDimensionRawToken850MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension850, factor: DimensionRawTokens.dimensionBase)
    }

    @Test
    func dimensionRawToken900NotNegativeValue() throws {
        #expect(DimensionRawTokens.dimension900 >= 0)
    }

    @Test
    func dimensionRawToken900LessThan1000() throws {
        #expect(DimensionRawTokens.dimension900 < DimensionRawTokens.dimension1000)
    }

    func testDimensionRawToken900MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension900, factor: DimensionRawTokens.dimensionBase)
    }

    @Test
    func dimensionRawToken1000NotNegativeValue() throws {
        #expect(DimensionRawTokens.dimension1000 >= 0)
    }

    @Test
    func dimensionRawToken1000LessThan1200() throws {
        #expect(DimensionRawTokens.dimension1000 < DimensionRawTokens.dimension1200)
    }

    func testDimensionRawToken1000MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension1000, factor: DimensionRawTokens.dimensionBase)
    }

    @Test
    func dimensionRawToken1200NotNegativeValue() throws {
        #expect(DimensionRawTokens.dimension1200 >= 0)
    }

    @Test
    func dimensionRawToken1200LessThan1400() throws {
        #expect(DimensionRawTokens.dimension1200 < DimensionRawTokens.dimension1400)
    }

    func testDimensionRawToken1200MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension1200, factor: DimensionRawTokens.dimensionBase)
    }

    @Test
    func dimensionRawToken1400NotNegativeValue() throws {
        #expect(DimensionRawTokens.dimension1400 >= 0)
    }

    @Test
    func dimensionRawToken1400LessThan1600() throws {
        #expect(DimensionRawTokens.dimension1400 < DimensionRawTokens.dimension1600)
    }

    func testDimensionRawToken1400MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension1400, factor: DimensionRawTokens.dimensionBase)
    }

    @Test
    func dimensionRawToken1600NotNegativeValue() throws {
        #expect(DimensionRawTokens.dimension1600 >= 0)
    }

    @Test
    func dimensionRawToken1600LessThan1800() throws {
        #expect(DimensionRawTokens.dimension1600 < DimensionRawTokens.dimension1800)
    }

    func testDimensionRawToken1600MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension1600, factor: DimensionRawTokens.dimensionBase)
    }

    @Test
    func dimensionRawToken1800NotNegativeValue() throws {
        #expect(DimensionRawTokens.dimension1800 >= 0)
    }

    @Test
    func dimensionRawToken1800LessThan2000() throws {
        #expect(DimensionRawTokens.dimension1800 < DimensionRawTokens.dimension2000)
    }

    func testDimensionRawToken1800MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension1800, factor: DimensionRawTokens.dimensionBase)
    }

    @Test
    func dimensionRawToken2000NotNegativeValue() throws {
        #expect(DimensionRawTokens.dimension2000 >= 0)
    }

    @Test
    func dimensionRawToken2000LessThan3000() throws {
        #expect(DimensionRawTokens.dimension2000 < DimensionRawTokens.dimension3000)
    }

    func testDimensionRawToken2000MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension2000, factor: DimensionRawTokens.dimensionBase)
    }

    @Test
    func dimensionRawToken3000NotNegativeValue() throws {
        #expect(DimensionRawTokens.dimension3000 >= 0)
    }

    @Test
    func dimensionRawToken3000LessThan4000() throws {
        #expect(DimensionRawTokens.dimension3000 < DimensionRawTokens.dimension4000)
    }

    func testDimensionRawToken3000MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension3000, factor: DimensionRawTokens.dimensionBase)
    }

    @Test
    func dimensionRawToken4000NotNegativeValue() throws {
        #expect(DimensionRawTokens.dimension4000 >= 0)
    }

    @Test
    func dimensionRawToken4000LessThan5000() throws {
        #expect(DimensionRawTokens.dimension4000 < DimensionRawTokens.dimension5000)
    }

    func testDimensionRawToken4000MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension4000, factor: DimensionRawTokens.dimensionBase)
    }

    @Test
    func dimensionRawToken5000NotNegativeValue() throws {
        #expect(DimensionRawTokens.dimension5000 >= 0)
    }

    @Test
    func dimensionRawToken5000LessThan6000() throws {
        #expect(DimensionRawTokens.dimension5000 < DimensionRawTokens.dimension6000)
    }

    func testDimensionRawToken5000MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension5000, factor: DimensionRawTokens.dimensionBase)
    }

    @Test
    func dimensionRawToken6000NotNegativeValue() throws {
        #expect(DimensionRawTokens.dimension6000 >= 0)
    }

    @Test
    func dimensionRawToken6000LessThan7000() throws {
        #expect(DimensionRawTokens.dimension6000 < DimensionRawTokens.dimension7000)
    }

    func testDimensionRawToken6000MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension6000, factor: DimensionRawTokens.dimensionBase)
    }

    @Test
    func dimensionRawToken7000NotNegativeValue() throws {
        #expect(DimensionRawTokens.dimension7000 >= 0)
    }

    @Test
    func dimensionRawToken7000LessThan9000() throws {
        #expect(DimensionRawTokens.dimension7000 < DimensionRawTokens.dimension9000)
    }

    func testDimensionRawToken7000MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension7000, factor: DimensionRawTokens.dimensionBase)
    }

    @Test
    func dimensionRawToken9000NotNegativeValue() throws {
        #expect(DimensionRawTokens.dimension9000 >= 0)
    }

    @Test
    func dimensionRawToken9000LessThan11000() throws {
        #expect(DimensionRawTokens.dimension9000 < DimensionRawTokens.dimension11000)
    }

    func testDimensionRawToken9000MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension9000, factor: DimensionRawTokens.dimensionBase)
    }

    @Test
    func dimensionRawToken11000NotNegativeValue() throws {
        #expect(DimensionRawTokens.dimension11000 >= 0)
    }

    func testDimensionRawToken11000MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension11000, factor: DimensionRawTokens.dimensionBase)
    }

    @Test
    func nonEqualityForDimensions() throws {
        #expect(DimensionRawTokens.dimension0 != DimensionRawTokens.dimension25)
        #expect(DimensionRawTokens.dimension0 != DimensionRawTokens.dimension50)
        #expect(DimensionRawTokens.dimension0 != DimensionRawTokens.dimension75)
        #expect(DimensionRawTokens.dimension0 != DimensionRawTokens.dimension100)
        #expect(DimensionRawTokens.dimension0 != DimensionRawTokens.dimension125)
        #expect(DimensionRawTokens.dimension0 != DimensionRawTokens.dimension150)
        #expect(DimensionRawTokens.dimension0 != DimensionRawTokens.dimension200)
        #expect(DimensionRawTokens.dimension0 != DimensionRawTokens.dimension250)
        #expect(DimensionRawTokens.dimension0 != DimensionRawTokens.dimension300)
        #expect(DimensionRawTokens.dimension0 != DimensionRawTokens.dimension350)
        #expect(DimensionRawTokens.dimension0 != DimensionRawTokens.dimension400)
        #expect(DimensionRawTokens.dimension0 != DimensionRawTokens.dimension450)
        #expect(DimensionRawTokens.dimension0 != DimensionRawTokens.dimension500)
        #expect(DimensionRawTokens.dimension0 != DimensionRawTokens.dimension550)
        #expect(DimensionRawTokens.dimension0 != DimensionRawTokens.dimension600)
        #expect(DimensionRawTokens.dimension0 != DimensionRawTokens.dimension650)
        #expect(DimensionRawTokens.dimension0 != DimensionRawTokens.dimension700)
        #expect(DimensionRawTokens.dimension0 != DimensionRawTokens.dimension750)
        #expect(DimensionRawTokens.dimension0 != DimensionRawTokens.dimension800)
        #expect(DimensionRawTokens.dimension0 != DimensionRawTokens.dimension850)
        #expect(DimensionRawTokens.dimension0 != DimensionRawTokens.dimension900)
        #expect(DimensionRawTokens.dimension0 != DimensionRawTokens.dimension1000)
        #expect(DimensionRawTokens.dimension0 != DimensionRawTokens.dimension1200)
        #expect(DimensionRawTokens.dimension0 != DimensionRawTokens.dimension1400)
        #expect(DimensionRawTokens.dimension0 != DimensionRawTokens.dimension1600)
        #expect(DimensionRawTokens.dimension0 != DimensionRawTokens.dimension1800)
        #expect(DimensionRawTokens.dimension0 != DimensionRawTokens.dimension2000)
        #expect(DimensionRawTokens.dimension0 != DimensionRawTokens.dimension3000)
        #expect(DimensionRawTokens.dimension0 != DimensionRawTokens.dimension4000)
        #expect(DimensionRawTokens.dimension0 != DimensionRawTokens.dimension5000)
        #expect(DimensionRawTokens.dimension0 != DimensionRawTokens.dimension6000)
        #expect(DimensionRawTokens.dimension0 != DimensionRawTokens.dimension7000)
        #expect(DimensionRawTokens.dimension0 != DimensionRawTokens.dimension9000)
        #expect(DimensionRawTokens.dimension0 != DimensionRawTokens.dimension11000)

        #expect(DimensionRawTokens.dimension25 != DimensionRawTokens.dimension50)
        #expect(DimensionRawTokens.dimension25 != DimensionRawTokens.dimension75)
        #expect(DimensionRawTokens.dimension25 != DimensionRawTokens.dimension100)
        #expect(DimensionRawTokens.dimension25 != DimensionRawTokens.dimension125)
        #expect(DimensionRawTokens.dimension25 != DimensionRawTokens.dimension150)
        #expect(DimensionRawTokens.dimension25 != DimensionRawTokens.dimension200)
        #expect(DimensionRawTokens.dimension25 != DimensionRawTokens.dimension250)
        #expect(DimensionRawTokens.dimension25 != DimensionRawTokens.dimension300)
        #expect(DimensionRawTokens.dimension25 != DimensionRawTokens.dimension350)
        #expect(DimensionRawTokens.dimension25 != DimensionRawTokens.dimension400)
        #expect(DimensionRawTokens.dimension25 != DimensionRawTokens.dimension450)
        #expect(DimensionRawTokens.dimension25 != DimensionRawTokens.dimension500)
        #expect(DimensionRawTokens.dimension25 != DimensionRawTokens.dimension550)
        #expect(DimensionRawTokens.dimension25 != DimensionRawTokens.dimension600)
        #expect(DimensionRawTokens.dimension25 != DimensionRawTokens.dimension650)
        #expect(DimensionRawTokens.dimension25 != DimensionRawTokens.dimension700)
        #expect(DimensionRawTokens.dimension25 != DimensionRawTokens.dimension750)
        #expect(DimensionRawTokens.dimension25 != DimensionRawTokens.dimension800)
        #expect(DimensionRawTokens.dimension25 != DimensionRawTokens.dimension850)
        #expect(DimensionRawTokens.dimension25 != DimensionRawTokens.dimension900)
        #expect(DimensionRawTokens.dimension25 != DimensionRawTokens.dimension1000)
        #expect(DimensionRawTokens.dimension25 != DimensionRawTokens.dimension1200)
        #expect(DimensionRawTokens.dimension25 != DimensionRawTokens.dimension1400)
        #expect(DimensionRawTokens.dimension25 != DimensionRawTokens.dimension1600)
        #expect(DimensionRawTokens.dimension25 != DimensionRawTokens.dimension1800)
        #expect(DimensionRawTokens.dimension25 != DimensionRawTokens.dimension2000)
        #expect(DimensionRawTokens.dimension25 != DimensionRawTokens.dimension3000)
        #expect(DimensionRawTokens.dimension25 != DimensionRawTokens.dimension4000)
        #expect(DimensionRawTokens.dimension25 != DimensionRawTokens.dimension5000)
        #expect(DimensionRawTokens.dimension25 != DimensionRawTokens.dimension6000)
        #expect(DimensionRawTokens.dimension25 != DimensionRawTokens.dimension7000)
        #expect(DimensionRawTokens.dimension25 != DimensionRawTokens.dimension9000)
        #expect(DimensionRawTokens.dimension25 != DimensionRawTokens.dimension11000)

        #expect(DimensionRawTokens.dimension50 != DimensionRawTokens.dimension75)
        #expect(DimensionRawTokens.dimension50 != DimensionRawTokens.dimension100)
        #expect(DimensionRawTokens.dimension50 != DimensionRawTokens.dimension125)
        #expect(DimensionRawTokens.dimension50 != DimensionRawTokens.dimension150)
        #expect(DimensionRawTokens.dimension50 != DimensionRawTokens.dimension200)
        #expect(DimensionRawTokens.dimension50 != DimensionRawTokens.dimension250)
        #expect(DimensionRawTokens.dimension50 != DimensionRawTokens.dimension300)
        #expect(DimensionRawTokens.dimension50 != DimensionRawTokens.dimension350)
        #expect(DimensionRawTokens.dimension50 != DimensionRawTokens.dimension400)
        #expect(DimensionRawTokens.dimension50 != DimensionRawTokens.dimension450)
        #expect(DimensionRawTokens.dimension50 != DimensionRawTokens.dimension500)
        #expect(DimensionRawTokens.dimension50 != DimensionRawTokens.dimension550)
        #expect(DimensionRawTokens.dimension50 != DimensionRawTokens.dimension600)
        #expect(DimensionRawTokens.dimension50 != DimensionRawTokens.dimension650)
        #expect(DimensionRawTokens.dimension50 != DimensionRawTokens.dimension700)
        #expect(DimensionRawTokens.dimension50 != DimensionRawTokens.dimension750)
        #expect(DimensionRawTokens.dimension50 != DimensionRawTokens.dimension800)
        #expect(DimensionRawTokens.dimension50 != DimensionRawTokens.dimension850)
        #expect(DimensionRawTokens.dimension50 != DimensionRawTokens.dimension900)
        #expect(DimensionRawTokens.dimension50 != DimensionRawTokens.dimension1000)
        #expect(DimensionRawTokens.dimension50 != DimensionRawTokens.dimension1200)
        #expect(DimensionRawTokens.dimension50 != DimensionRawTokens.dimension1400)
        #expect(DimensionRawTokens.dimension50 != DimensionRawTokens.dimension1600)
        #expect(DimensionRawTokens.dimension50 != DimensionRawTokens.dimension1800)
        #expect(DimensionRawTokens.dimension50 != DimensionRawTokens.dimension2000)
        #expect(DimensionRawTokens.dimension50 != DimensionRawTokens.dimension3000)
        #expect(DimensionRawTokens.dimension50 != DimensionRawTokens.dimension4000)
        #expect(DimensionRawTokens.dimension50 != DimensionRawTokens.dimension5000)
        #expect(DimensionRawTokens.dimension50 != DimensionRawTokens.dimension6000)
        #expect(DimensionRawTokens.dimension50 != DimensionRawTokens.dimension7000)
        #expect(DimensionRawTokens.dimension50 != DimensionRawTokens.dimension9000)
        #expect(DimensionRawTokens.dimension50 != DimensionRawTokens.dimension11000)

        #expect(DimensionRawTokens.dimension75 != DimensionRawTokens.dimension100)
        #expect(DimensionRawTokens.dimension75 != DimensionRawTokens.dimension125)
        #expect(DimensionRawTokens.dimension75 != DimensionRawTokens.dimension150)
        #expect(DimensionRawTokens.dimension75 != DimensionRawTokens.dimension200)
        #expect(DimensionRawTokens.dimension75 != DimensionRawTokens.dimension250)
        #expect(DimensionRawTokens.dimension75 != DimensionRawTokens.dimension300)
        #expect(DimensionRawTokens.dimension75 != DimensionRawTokens.dimension350)
        #expect(DimensionRawTokens.dimension75 != DimensionRawTokens.dimension400)
        #expect(DimensionRawTokens.dimension75 != DimensionRawTokens.dimension450)
        #expect(DimensionRawTokens.dimension75 != DimensionRawTokens.dimension500)
        #expect(DimensionRawTokens.dimension75 != DimensionRawTokens.dimension550)
        #expect(DimensionRawTokens.dimension75 != DimensionRawTokens.dimension600)
        #expect(DimensionRawTokens.dimension75 != DimensionRawTokens.dimension650)
        #expect(DimensionRawTokens.dimension75 != DimensionRawTokens.dimension700)
        #expect(DimensionRawTokens.dimension75 != DimensionRawTokens.dimension750)
        #expect(DimensionRawTokens.dimension75 != DimensionRawTokens.dimension800)
        #expect(DimensionRawTokens.dimension75 != DimensionRawTokens.dimension850)
        #expect(DimensionRawTokens.dimension75 != DimensionRawTokens.dimension900)
        #expect(DimensionRawTokens.dimension75 != DimensionRawTokens.dimension1000)
        #expect(DimensionRawTokens.dimension75 != DimensionRawTokens.dimension1200)
        #expect(DimensionRawTokens.dimension75 != DimensionRawTokens.dimension1400)
        #expect(DimensionRawTokens.dimension75 != DimensionRawTokens.dimension1600)
        #expect(DimensionRawTokens.dimension75 != DimensionRawTokens.dimension1800)
        #expect(DimensionRawTokens.dimension75 != DimensionRawTokens.dimension2000)
        #expect(DimensionRawTokens.dimension75 != DimensionRawTokens.dimension3000)
        #expect(DimensionRawTokens.dimension75 != DimensionRawTokens.dimension4000)
        #expect(DimensionRawTokens.dimension75 != DimensionRawTokens.dimension5000)
        #expect(DimensionRawTokens.dimension75 != DimensionRawTokens.dimension6000)
        #expect(DimensionRawTokens.dimension75 != DimensionRawTokens.dimension7000)
        #expect(DimensionRawTokens.dimension75 != DimensionRawTokens.dimension9000)
        #expect(DimensionRawTokens.dimension75 != DimensionRawTokens.dimension11000)

        #expect(DimensionRawTokens.dimension100 != DimensionRawTokens.dimension125)
        #expect(DimensionRawTokens.dimension100 != DimensionRawTokens.dimension150)
        #expect(DimensionRawTokens.dimension100 != DimensionRawTokens.dimension200)
        #expect(DimensionRawTokens.dimension100 != DimensionRawTokens.dimension250)
        #expect(DimensionRawTokens.dimension100 != DimensionRawTokens.dimension300)
        #expect(DimensionRawTokens.dimension100 != DimensionRawTokens.dimension350)
        #expect(DimensionRawTokens.dimension100 != DimensionRawTokens.dimension400)
        #expect(DimensionRawTokens.dimension100 != DimensionRawTokens.dimension450)
        #expect(DimensionRawTokens.dimension100 != DimensionRawTokens.dimension500)
        #expect(DimensionRawTokens.dimension100 != DimensionRawTokens.dimension550)
        #expect(DimensionRawTokens.dimension100 != DimensionRawTokens.dimension600)
        #expect(DimensionRawTokens.dimension100 != DimensionRawTokens.dimension650)
        #expect(DimensionRawTokens.dimension100 != DimensionRawTokens.dimension700)
        #expect(DimensionRawTokens.dimension100 != DimensionRawTokens.dimension750)
        #expect(DimensionRawTokens.dimension100 != DimensionRawTokens.dimension800)
        #expect(DimensionRawTokens.dimension100 != DimensionRawTokens.dimension850)
        #expect(DimensionRawTokens.dimension100 != DimensionRawTokens.dimension900)
        #expect(DimensionRawTokens.dimension100 != DimensionRawTokens.dimension1000)
        #expect(DimensionRawTokens.dimension100 != DimensionRawTokens.dimension1200)
        #expect(DimensionRawTokens.dimension100 != DimensionRawTokens.dimension1400)
        #expect(DimensionRawTokens.dimension100 != DimensionRawTokens.dimension1600)
        #expect(DimensionRawTokens.dimension100 != DimensionRawTokens.dimension1800)
        #expect(DimensionRawTokens.dimension100 != DimensionRawTokens.dimension2000)
        #expect(DimensionRawTokens.dimension100 != DimensionRawTokens.dimension3000)
        #expect(DimensionRawTokens.dimension100 != DimensionRawTokens.dimension4000)
        #expect(DimensionRawTokens.dimension100 != DimensionRawTokens.dimension5000)
        #expect(DimensionRawTokens.dimension100 != DimensionRawTokens.dimension6000)
        #expect(DimensionRawTokens.dimension100 != DimensionRawTokens.dimension7000)
        #expect(DimensionRawTokens.dimension100 != DimensionRawTokens.dimension9000)
        #expect(DimensionRawTokens.dimension100 != DimensionRawTokens.dimension11000)

        #expect(DimensionRawTokens.dimension125 != DimensionRawTokens.dimension150)
        #expect(DimensionRawTokens.dimension125 != DimensionRawTokens.dimension200)
        #expect(DimensionRawTokens.dimension125 != DimensionRawTokens.dimension250)
        #expect(DimensionRawTokens.dimension125 != DimensionRawTokens.dimension300)
        #expect(DimensionRawTokens.dimension125 != DimensionRawTokens.dimension350)
        #expect(DimensionRawTokens.dimension125 != DimensionRawTokens.dimension400)
        #expect(DimensionRawTokens.dimension125 != DimensionRawTokens.dimension450)
        #expect(DimensionRawTokens.dimension125 != DimensionRawTokens.dimension500)
        #expect(DimensionRawTokens.dimension125 != DimensionRawTokens.dimension550)
        #expect(DimensionRawTokens.dimension125 != DimensionRawTokens.dimension600)
        #expect(DimensionRawTokens.dimension125 != DimensionRawTokens.dimension650)
        #expect(DimensionRawTokens.dimension125 != DimensionRawTokens.dimension700)
        #expect(DimensionRawTokens.dimension125 != DimensionRawTokens.dimension750)
        #expect(DimensionRawTokens.dimension125 != DimensionRawTokens.dimension800)
        #expect(DimensionRawTokens.dimension125 != DimensionRawTokens.dimension850)
        #expect(DimensionRawTokens.dimension125 != DimensionRawTokens.dimension900)
        #expect(DimensionRawTokens.dimension125 != DimensionRawTokens.dimension1000)
        #expect(DimensionRawTokens.dimension125 != DimensionRawTokens.dimension1200)
        #expect(DimensionRawTokens.dimension125 != DimensionRawTokens.dimension1400)
        #expect(DimensionRawTokens.dimension125 != DimensionRawTokens.dimension1600)
        #expect(DimensionRawTokens.dimension125 != DimensionRawTokens.dimension1800)
        #expect(DimensionRawTokens.dimension125 != DimensionRawTokens.dimension2000)
        #expect(DimensionRawTokens.dimension125 != DimensionRawTokens.dimension3000)
        #expect(DimensionRawTokens.dimension125 != DimensionRawTokens.dimension4000)
        #expect(DimensionRawTokens.dimension125 != DimensionRawTokens.dimension5000)
        #expect(DimensionRawTokens.dimension125 != DimensionRawTokens.dimension6000)
        #expect(DimensionRawTokens.dimension125 != DimensionRawTokens.dimension7000)
        #expect(DimensionRawTokens.dimension125 != DimensionRawTokens.dimension9000)
        #expect(DimensionRawTokens.dimension125 != DimensionRawTokens.dimension11000)

        #expect(DimensionRawTokens.dimension150 != DimensionRawTokens.dimension200)
        #expect(DimensionRawTokens.dimension150 != DimensionRawTokens.dimension250)
        #expect(DimensionRawTokens.dimension150 != DimensionRawTokens.dimension300)
        #expect(DimensionRawTokens.dimension150 != DimensionRawTokens.dimension350)
        #expect(DimensionRawTokens.dimension150 != DimensionRawTokens.dimension400)
        #expect(DimensionRawTokens.dimension150 != DimensionRawTokens.dimension450)
        #expect(DimensionRawTokens.dimension150 != DimensionRawTokens.dimension500)
        #expect(DimensionRawTokens.dimension150 != DimensionRawTokens.dimension550)
        #expect(DimensionRawTokens.dimension150 != DimensionRawTokens.dimension600)
        #expect(DimensionRawTokens.dimension150 != DimensionRawTokens.dimension650)
        #expect(DimensionRawTokens.dimension150 != DimensionRawTokens.dimension700)
        #expect(DimensionRawTokens.dimension150 != DimensionRawTokens.dimension750)
        #expect(DimensionRawTokens.dimension150 != DimensionRawTokens.dimension800)
        #expect(DimensionRawTokens.dimension150 != DimensionRawTokens.dimension850)
        #expect(DimensionRawTokens.dimension150 != DimensionRawTokens.dimension900)
        #expect(DimensionRawTokens.dimension150 != DimensionRawTokens.dimension1000)
        #expect(DimensionRawTokens.dimension150 != DimensionRawTokens.dimension1200)
        #expect(DimensionRawTokens.dimension150 != DimensionRawTokens.dimension1400)
        #expect(DimensionRawTokens.dimension150 != DimensionRawTokens.dimension1600)
        #expect(DimensionRawTokens.dimension150 != DimensionRawTokens.dimension1800)
        #expect(DimensionRawTokens.dimension150 != DimensionRawTokens.dimension2000)
        #expect(DimensionRawTokens.dimension150 != DimensionRawTokens.dimension3000)
        #expect(DimensionRawTokens.dimension150 != DimensionRawTokens.dimension4000)
        #expect(DimensionRawTokens.dimension150 != DimensionRawTokens.dimension5000)
        #expect(DimensionRawTokens.dimension150 != DimensionRawTokens.dimension6000)
        #expect(DimensionRawTokens.dimension150 != DimensionRawTokens.dimension7000)
        #expect(DimensionRawTokens.dimension150 != DimensionRawTokens.dimension9000)
        #expect(DimensionRawTokens.dimension150 != DimensionRawTokens.dimension11000)

        #expect(DimensionRawTokens.dimension200 != DimensionRawTokens.dimension250)
        #expect(DimensionRawTokens.dimension200 != DimensionRawTokens.dimension300)
        #expect(DimensionRawTokens.dimension200 != DimensionRawTokens.dimension350)
        #expect(DimensionRawTokens.dimension200 != DimensionRawTokens.dimension400)
        #expect(DimensionRawTokens.dimension200 != DimensionRawTokens.dimension450)
        #expect(DimensionRawTokens.dimension200 != DimensionRawTokens.dimension500)
        #expect(DimensionRawTokens.dimension200 != DimensionRawTokens.dimension550)
        #expect(DimensionRawTokens.dimension200 != DimensionRawTokens.dimension600)
        #expect(DimensionRawTokens.dimension200 != DimensionRawTokens.dimension650)
        #expect(DimensionRawTokens.dimension200 != DimensionRawTokens.dimension700)
        #expect(DimensionRawTokens.dimension200 != DimensionRawTokens.dimension750)
        #expect(DimensionRawTokens.dimension200 != DimensionRawTokens.dimension800)
        #expect(DimensionRawTokens.dimension200 != DimensionRawTokens.dimension850)
        #expect(DimensionRawTokens.dimension200 != DimensionRawTokens.dimension900)
        #expect(DimensionRawTokens.dimension200 != DimensionRawTokens.dimension1000)
        #expect(DimensionRawTokens.dimension200 != DimensionRawTokens.dimension1200)
        #expect(DimensionRawTokens.dimension200 != DimensionRawTokens.dimension1400)
        #expect(DimensionRawTokens.dimension200 != DimensionRawTokens.dimension1600)
        #expect(DimensionRawTokens.dimension200 != DimensionRawTokens.dimension1800)
        #expect(DimensionRawTokens.dimension200 != DimensionRawTokens.dimension2000)
        #expect(DimensionRawTokens.dimension200 != DimensionRawTokens.dimension3000)
        #expect(DimensionRawTokens.dimension200 != DimensionRawTokens.dimension4000)
        #expect(DimensionRawTokens.dimension200 != DimensionRawTokens.dimension5000)
        #expect(DimensionRawTokens.dimension200 != DimensionRawTokens.dimension6000)
        #expect(DimensionRawTokens.dimension200 != DimensionRawTokens.dimension7000)
        #expect(DimensionRawTokens.dimension200 != DimensionRawTokens.dimension9000)
        #expect(DimensionRawTokens.dimension200 != DimensionRawTokens.dimension11000)

        #expect(DimensionRawTokens.dimension250 != DimensionRawTokens.dimension300)
        #expect(DimensionRawTokens.dimension250 != DimensionRawTokens.dimension350)
        #expect(DimensionRawTokens.dimension250 != DimensionRawTokens.dimension400)
        #expect(DimensionRawTokens.dimension250 != DimensionRawTokens.dimension450)
        #expect(DimensionRawTokens.dimension250 != DimensionRawTokens.dimension500)
        #expect(DimensionRawTokens.dimension250 != DimensionRawTokens.dimension550)
        #expect(DimensionRawTokens.dimension250 != DimensionRawTokens.dimension600)
        #expect(DimensionRawTokens.dimension250 != DimensionRawTokens.dimension650)
        #expect(DimensionRawTokens.dimension250 != DimensionRawTokens.dimension700)
        #expect(DimensionRawTokens.dimension250 != DimensionRawTokens.dimension750)
        #expect(DimensionRawTokens.dimension250 != DimensionRawTokens.dimension800)
        #expect(DimensionRawTokens.dimension250 != DimensionRawTokens.dimension850)
        #expect(DimensionRawTokens.dimension250 != DimensionRawTokens.dimension900)
        #expect(DimensionRawTokens.dimension250 != DimensionRawTokens.dimension1000)
        #expect(DimensionRawTokens.dimension250 != DimensionRawTokens.dimension1200)
        #expect(DimensionRawTokens.dimension250 != DimensionRawTokens.dimension1400)
        #expect(DimensionRawTokens.dimension250 != DimensionRawTokens.dimension1600)
        #expect(DimensionRawTokens.dimension250 != DimensionRawTokens.dimension1800)
        #expect(DimensionRawTokens.dimension250 != DimensionRawTokens.dimension2000)
        #expect(DimensionRawTokens.dimension250 != DimensionRawTokens.dimension3000)
        #expect(DimensionRawTokens.dimension250 != DimensionRawTokens.dimension4000)
        #expect(DimensionRawTokens.dimension250 != DimensionRawTokens.dimension5000)
        #expect(DimensionRawTokens.dimension250 != DimensionRawTokens.dimension6000)
        #expect(DimensionRawTokens.dimension250 != DimensionRawTokens.dimension7000)
        #expect(DimensionRawTokens.dimension250 != DimensionRawTokens.dimension9000)
        #expect(DimensionRawTokens.dimension250 != DimensionRawTokens.dimension11000)

        #expect(DimensionRawTokens.dimension300 != DimensionRawTokens.dimension350)
        #expect(DimensionRawTokens.dimension300 != DimensionRawTokens.dimension400)
        #expect(DimensionRawTokens.dimension300 != DimensionRawTokens.dimension450)
        #expect(DimensionRawTokens.dimension300 != DimensionRawTokens.dimension500)
        #expect(DimensionRawTokens.dimension300 != DimensionRawTokens.dimension550)
        #expect(DimensionRawTokens.dimension300 != DimensionRawTokens.dimension600)
        #expect(DimensionRawTokens.dimension300 != DimensionRawTokens.dimension650)
        #expect(DimensionRawTokens.dimension300 != DimensionRawTokens.dimension700)
        #expect(DimensionRawTokens.dimension300 != DimensionRawTokens.dimension750)
        #expect(DimensionRawTokens.dimension300 != DimensionRawTokens.dimension800)
        #expect(DimensionRawTokens.dimension300 != DimensionRawTokens.dimension850)
        #expect(DimensionRawTokens.dimension300 != DimensionRawTokens.dimension900)
        #expect(DimensionRawTokens.dimension300 != DimensionRawTokens.dimension1000)
        #expect(DimensionRawTokens.dimension300 != DimensionRawTokens.dimension1200)
        #expect(DimensionRawTokens.dimension300 != DimensionRawTokens.dimension1400)
        #expect(DimensionRawTokens.dimension300 != DimensionRawTokens.dimension1600)
        #expect(DimensionRawTokens.dimension300 != DimensionRawTokens.dimension1800)
        #expect(DimensionRawTokens.dimension300 != DimensionRawTokens.dimension2000)
        #expect(DimensionRawTokens.dimension300 != DimensionRawTokens.dimension3000)
        #expect(DimensionRawTokens.dimension300 != DimensionRawTokens.dimension4000)
        #expect(DimensionRawTokens.dimension300 != DimensionRawTokens.dimension5000)
        #expect(DimensionRawTokens.dimension300 != DimensionRawTokens.dimension6000)
        #expect(DimensionRawTokens.dimension300 != DimensionRawTokens.dimension7000)
        #expect(DimensionRawTokens.dimension300 != DimensionRawTokens.dimension9000)
        #expect(DimensionRawTokens.dimension300 != DimensionRawTokens.dimension11000)

        #expect(DimensionRawTokens.dimension350 != DimensionRawTokens.dimension400)
        #expect(DimensionRawTokens.dimension350 != DimensionRawTokens.dimension450)
        #expect(DimensionRawTokens.dimension350 != DimensionRawTokens.dimension500)
        #expect(DimensionRawTokens.dimension350 != DimensionRawTokens.dimension550)
        #expect(DimensionRawTokens.dimension350 != DimensionRawTokens.dimension600)
        #expect(DimensionRawTokens.dimension350 != DimensionRawTokens.dimension650)
        #expect(DimensionRawTokens.dimension350 != DimensionRawTokens.dimension700)
        #expect(DimensionRawTokens.dimension350 != DimensionRawTokens.dimension750)
        #expect(DimensionRawTokens.dimension350 != DimensionRawTokens.dimension800)
        #expect(DimensionRawTokens.dimension350 != DimensionRawTokens.dimension850)
        #expect(DimensionRawTokens.dimension350 != DimensionRawTokens.dimension900)
        #expect(DimensionRawTokens.dimension350 != DimensionRawTokens.dimension1000)
        #expect(DimensionRawTokens.dimension350 != DimensionRawTokens.dimension1200)
        #expect(DimensionRawTokens.dimension350 != DimensionRawTokens.dimension1400)
        #expect(DimensionRawTokens.dimension350 != DimensionRawTokens.dimension1600)
        #expect(DimensionRawTokens.dimension350 != DimensionRawTokens.dimension1800)
        #expect(DimensionRawTokens.dimension350 != DimensionRawTokens.dimension2000)
        #expect(DimensionRawTokens.dimension350 != DimensionRawTokens.dimension3000)
        #expect(DimensionRawTokens.dimension350 != DimensionRawTokens.dimension4000)
        #expect(DimensionRawTokens.dimension350 != DimensionRawTokens.dimension5000)
        #expect(DimensionRawTokens.dimension350 != DimensionRawTokens.dimension6000)
        #expect(DimensionRawTokens.dimension350 != DimensionRawTokens.dimension7000)
        #expect(DimensionRawTokens.dimension350 != DimensionRawTokens.dimension9000)
        #expect(DimensionRawTokens.dimension350 != DimensionRawTokens.dimension11000)

        #expect(DimensionRawTokens.dimension400 != DimensionRawTokens.dimension450)
        #expect(DimensionRawTokens.dimension400 != DimensionRawTokens.dimension500)
        #expect(DimensionRawTokens.dimension400 != DimensionRawTokens.dimension550)
        #expect(DimensionRawTokens.dimension400 != DimensionRawTokens.dimension600)
        #expect(DimensionRawTokens.dimension400 != DimensionRawTokens.dimension650)
        #expect(DimensionRawTokens.dimension400 != DimensionRawTokens.dimension700)
        #expect(DimensionRawTokens.dimension400 != DimensionRawTokens.dimension750)
        #expect(DimensionRawTokens.dimension400 != DimensionRawTokens.dimension800)
        #expect(DimensionRawTokens.dimension400 != DimensionRawTokens.dimension850)
        #expect(DimensionRawTokens.dimension400 != DimensionRawTokens.dimension900)
        #expect(DimensionRawTokens.dimension400 != DimensionRawTokens.dimension1000)
        #expect(DimensionRawTokens.dimension400 != DimensionRawTokens.dimension1200)
        #expect(DimensionRawTokens.dimension400 != DimensionRawTokens.dimension1400)
        #expect(DimensionRawTokens.dimension400 != DimensionRawTokens.dimension1600)
        #expect(DimensionRawTokens.dimension400 != DimensionRawTokens.dimension1800)
        #expect(DimensionRawTokens.dimension400 != DimensionRawTokens.dimension2000)
        #expect(DimensionRawTokens.dimension400 != DimensionRawTokens.dimension3000)
        #expect(DimensionRawTokens.dimension400 != DimensionRawTokens.dimension4000)
        #expect(DimensionRawTokens.dimension400 != DimensionRawTokens.dimension5000)
        #expect(DimensionRawTokens.dimension400 != DimensionRawTokens.dimension6000)
        #expect(DimensionRawTokens.dimension400 != DimensionRawTokens.dimension7000)
        #expect(DimensionRawTokens.dimension400 != DimensionRawTokens.dimension9000)
        #expect(DimensionRawTokens.dimension400 != DimensionRawTokens.dimension11000)

        #expect(DimensionRawTokens.dimension450 != DimensionRawTokens.dimension500)
        #expect(DimensionRawTokens.dimension450 != DimensionRawTokens.dimension550)
        #expect(DimensionRawTokens.dimension450 != DimensionRawTokens.dimension600)
        #expect(DimensionRawTokens.dimension450 != DimensionRawTokens.dimension650)
        #expect(DimensionRawTokens.dimension450 != DimensionRawTokens.dimension700)
        #expect(DimensionRawTokens.dimension450 != DimensionRawTokens.dimension750)
        #expect(DimensionRawTokens.dimension450 != DimensionRawTokens.dimension800)
        #expect(DimensionRawTokens.dimension450 != DimensionRawTokens.dimension850)
        #expect(DimensionRawTokens.dimension450 != DimensionRawTokens.dimension900)
        #expect(DimensionRawTokens.dimension450 != DimensionRawTokens.dimension1000)
        #expect(DimensionRawTokens.dimension450 != DimensionRawTokens.dimension1200)
        #expect(DimensionRawTokens.dimension450 != DimensionRawTokens.dimension1400)
        #expect(DimensionRawTokens.dimension450 != DimensionRawTokens.dimension1600)
        #expect(DimensionRawTokens.dimension450 != DimensionRawTokens.dimension1800)
        #expect(DimensionRawTokens.dimension450 != DimensionRawTokens.dimension2000)
        #expect(DimensionRawTokens.dimension450 != DimensionRawTokens.dimension3000)
        #expect(DimensionRawTokens.dimension450 != DimensionRawTokens.dimension4000)
        #expect(DimensionRawTokens.dimension450 != DimensionRawTokens.dimension5000)
        #expect(DimensionRawTokens.dimension450 != DimensionRawTokens.dimension6000)
        #expect(DimensionRawTokens.dimension450 != DimensionRawTokens.dimension7000)
        #expect(DimensionRawTokens.dimension450 != DimensionRawTokens.dimension9000)
        #expect(DimensionRawTokens.dimension450 != DimensionRawTokens.dimension11000)

        #expect(DimensionRawTokens.dimension500 != DimensionRawTokens.dimension550)
        #expect(DimensionRawTokens.dimension500 != DimensionRawTokens.dimension600)
        #expect(DimensionRawTokens.dimension500 != DimensionRawTokens.dimension650)
        #expect(DimensionRawTokens.dimension500 != DimensionRawTokens.dimension700)
        #expect(DimensionRawTokens.dimension500 != DimensionRawTokens.dimension750)
        #expect(DimensionRawTokens.dimension500 != DimensionRawTokens.dimension800)
        #expect(DimensionRawTokens.dimension500 != DimensionRawTokens.dimension850)
        #expect(DimensionRawTokens.dimension500 != DimensionRawTokens.dimension900)
        #expect(DimensionRawTokens.dimension500 != DimensionRawTokens.dimension1000)
        #expect(DimensionRawTokens.dimension500 != DimensionRawTokens.dimension1200)
        #expect(DimensionRawTokens.dimension500 != DimensionRawTokens.dimension1400)
        #expect(DimensionRawTokens.dimension500 != DimensionRawTokens.dimension1600)
        #expect(DimensionRawTokens.dimension500 != DimensionRawTokens.dimension1800)
        #expect(DimensionRawTokens.dimension500 != DimensionRawTokens.dimension2000)
        #expect(DimensionRawTokens.dimension500 != DimensionRawTokens.dimension3000)
        #expect(DimensionRawTokens.dimension500 != DimensionRawTokens.dimension4000)
        #expect(DimensionRawTokens.dimension500 != DimensionRawTokens.dimension5000)
        #expect(DimensionRawTokens.dimension500 != DimensionRawTokens.dimension6000)
        #expect(DimensionRawTokens.dimension500 != DimensionRawTokens.dimension7000)
        #expect(DimensionRawTokens.dimension500 != DimensionRawTokens.dimension9000)
        #expect(DimensionRawTokens.dimension500 != DimensionRawTokens.dimension11000)

        #expect(DimensionRawTokens.dimension550 != DimensionRawTokens.dimension600)
        #expect(DimensionRawTokens.dimension550 != DimensionRawTokens.dimension650)
        #expect(DimensionRawTokens.dimension550 != DimensionRawTokens.dimension700)
        #expect(DimensionRawTokens.dimension550 != DimensionRawTokens.dimension750)
        #expect(DimensionRawTokens.dimension550 != DimensionRawTokens.dimension800)
        #expect(DimensionRawTokens.dimension550 != DimensionRawTokens.dimension850)
        #expect(DimensionRawTokens.dimension550 != DimensionRawTokens.dimension900)
        #expect(DimensionRawTokens.dimension550 != DimensionRawTokens.dimension1000)
        #expect(DimensionRawTokens.dimension550 != DimensionRawTokens.dimension1200)
        #expect(DimensionRawTokens.dimension550 != DimensionRawTokens.dimension1400)
        #expect(DimensionRawTokens.dimension550 != DimensionRawTokens.dimension1600)
        #expect(DimensionRawTokens.dimension550 != DimensionRawTokens.dimension1800)
        #expect(DimensionRawTokens.dimension550 != DimensionRawTokens.dimension2000)
        #expect(DimensionRawTokens.dimension550 != DimensionRawTokens.dimension3000)
        #expect(DimensionRawTokens.dimension550 != DimensionRawTokens.dimension4000)
        #expect(DimensionRawTokens.dimension550 != DimensionRawTokens.dimension5000)
        #expect(DimensionRawTokens.dimension550 != DimensionRawTokens.dimension6000)
        #expect(DimensionRawTokens.dimension550 != DimensionRawTokens.dimension7000)
        #expect(DimensionRawTokens.dimension550 != DimensionRawTokens.dimension9000)
        #expect(DimensionRawTokens.dimension550 != DimensionRawTokens.dimension11000)

        #expect(DimensionRawTokens.dimension600 != DimensionRawTokens.dimension650)
        #expect(DimensionRawTokens.dimension600 != DimensionRawTokens.dimension700)
        #expect(DimensionRawTokens.dimension600 != DimensionRawTokens.dimension750)
        #expect(DimensionRawTokens.dimension600 != DimensionRawTokens.dimension800)
        #expect(DimensionRawTokens.dimension600 != DimensionRawTokens.dimension850)
        #expect(DimensionRawTokens.dimension600 != DimensionRawTokens.dimension900)
        #expect(DimensionRawTokens.dimension600 != DimensionRawTokens.dimension1000)
        #expect(DimensionRawTokens.dimension600 != DimensionRawTokens.dimension1200)
        #expect(DimensionRawTokens.dimension600 != DimensionRawTokens.dimension1400)
        #expect(DimensionRawTokens.dimension600 != DimensionRawTokens.dimension1600)
        #expect(DimensionRawTokens.dimension600 != DimensionRawTokens.dimension1800)
        #expect(DimensionRawTokens.dimension600 != DimensionRawTokens.dimension2000)
        #expect(DimensionRawTokens.dimension600 != DimensionRawTokens.dimension3000)
        #expect(DimensionRawTokens.dimension600 != DimensionRawTokens.dimension4000)
        #expect(DimensionRawTokens.dimension600 != DimensionRawTokens.dimension5000)
        #expect(DimensionRawTokens.dimension600 != DimensionRawTokens.dimension6000)
        #expect(DimensionRawTokens.dimension600 != DimensionRawTokens.dimension7000)
        #expect(DimensionRawTokens.dimension600 != DimensionRawTokens.dimension9000)
        #expect(DimensionRawTokens.dimension600 != DimensionRawTokens.dimension11000)

        #expect(DimensionRawTokens.dimension650 != DimensionRawTokens.dimension700)
        #expect(DimensionRawTokens.dimension650 != DimensionRawTokens.dimension750)
        #expect(DimensionRawTokens.dimension650 != DimensionRawTokens.dimension800)
        #expect(DimensionRawTokens.dimension650 != DimensionRawTokens.dimension850)
        #expect(DimensionRawTokens.dimension650 != DimensionRawTokens.dimension900)
        #expect(DimensionRawTokens.dimension650 != DimensionRawTokens.dimension1000)
        #expect(DimensionRawTokens.dimension650 != DimensionRawTokens.dimension1200)
        #expect(DimensionRawTokens.dimension650 != DimensionRawTokens.dimension1400)
        #expect(DimensionRawTokens.dimension650 != DimensionRawTokens.dimension1600)
        #expect(DimensionRawTokens.dimension650 != DimensionRawTokens.dimension1800)
        #expect(DimensionRawTokens.dimension650 != DimensionRawTokens.dimension2000)
        #expect(DimensionRawTokens.dimension650 != DimensionRawTokens.dimension3000)
        #expect(DimensionRawTokens.dimension650 != DimensionRawTokens.dimension4000)
        #expect(DimensionRawTokens.dimension650 != DimensionRawTokens.dimension5000)
        #expect(DimensionRawTokens.dimension650 != DimensionRawTokens.dimension6000)
        #expect(DimensionRawTokens.dimension650 != DimensionRawTokens.dimension7000)
        #expect(DimensionRawTokens.dimension650 != DimensionRawTokens.dimension9000)
        #expect(DimensionRawTokens.dimension650 != DimensionRawTokens.dimension11000)

        #expect(DimensionRawTokens.dimension700 != DimensionRawTokens.dimension750)
        #expect(DimensionRawTokens.dimension700 != DimensionRawTokens.dimension800)
        #expect(DimensionRawTokens.dimension700 != DimensionRawTokens.dimension850)
        #expect(DimensionRawTokens.dimension700 != DimensionRawTokens.dimension900)
        #expect(DimensionRawTokens.dimension700 != DimensionRawTokens.dimension1000)
        #expect(DimensionRawTokens.dimension700 != DimensionRawTokens.dimension1200)
        #expect(DimensionRawTokens.dimension700 != DimensionRawTokens.dimension1400)
        #expect(DimensionRawTokens.dimension700 != DimensionRawTokens.dimension1600)
        #expect(DimensionRawTokens.dimension700 != DimensionRawTokens.dimension1800)
        #expect(DimensionRawTokens.dimension700 != DimensionRawTokens.dimension2000)
        #expect(DimensionRawTokens.dimension700 != DimensionRawTokens.dimension3000)
        #expect(DimensionRawTokens.dimension700 != DimensionRawTokens.dimension4000)
        #expect(DimensionRawTokens.dimension700 != DimensionRawTokens.dimension5000)
        #expect(DimensionRawTokens.dimension700 != DimensionRawTokens.dimension6000)
        #expect(DimensionRawTokens.dimension700 != DimensionRawTokens.dimension7000)
        #expect(DimensionRawTokens.dimension700 != DimensionRawTokens.dimension9000)
        #expect(DimensionRawTokens.dimension700 != DimensionRawTokens.dimension11000)

        #expect(DimensionRawTokens.dimension750 != DimensionRawTokens.dimension800)
        #expect(DimensionRawTokens.dimension750 != DimensionRawTokens.dimension850)
        #expect(DimensionRawTokens.dimension750 != DimensionRawTokens.dimension900)
        #expect(DimensionRawTokens.dimension750 != DimensionRawTokens.dimension1000)
        #expect(DimensionRawTokens.dimension750 != DimensionRawTokens.dimension1200)
        #expect(DimensionRawTokens.dimension750 != DimensionRawTokens.dimension1400)
        #expect(DimensionRawTokens.dimension750 != DimensionRawTokens.dimension1600)
        #expect(DimensionRawTokens.dimension750 != DimensionRawTokens.dimension1800)
        #expect(DimensionRawTokens.dimension750 != DimensionRawTokens.dimension2000)
        #expect(DimensionRawTokens.dimension750 != DimensionRawTokens.dimension3000)
        #expect(DimensionRawTokens.dimension750 != DimensionRawTokens.dimension4000)
        #expect(DimensionRawTokens.dimension750 != DimensionRawTokens.dimension5000)
        #expect(DimensionRawTokens.dimension750 != DimensionRawTokens.dimension6000)
        #expect(DimensionRawTokens.dimension750 != DimensionRawTokens.dimension7000)
        #expect(DimensionRawTokens.dimension750 != DimensionRawTokens.dimension9000)
        #expect(DimensionRawTokens.dimension750 != DimensionRawTokens.dimension11000)

        #expect(DimensionRawTokens.dimension800 != DimensionRawTokens.dimension850)
        #expect(DimensionRawTokens.dimension800 != DimensionRawTokens.dimension900)
        #expect(DimensionRawTokens.dimension800 != DimensionRawTokens.dimension1000)
        #expect(DimensionRawTokens.dimension800 != DimensionRawTokens.dimension1200)
        #expect(DimensionRawTokens.dimension800 != DimensionRawTokens.dimension1400)
        #expect(DimensionRawTokens.dimension800 != DimensionRawTokens.dimension1600)
        #expect(DimensionRawTokens.dimension800 != DimensionRawTokens.dimension1800)
        #expect(DimensionRawTokens.dimension800 != DimensionRawTokens.dimension2000)
        #expect(DimensionRawTokens.dimension800 != DimensionRawTokens.dimension3000)
        #expect(DimensionRawTokens.dimension800 != DimensionRawTokens.dimension4000)
        #expect(DimensionRawTokens.dimension800 != DimensionRawTokens.dimension5000)
        #expect(DimensionRawTokens.dimension800 != DimensionRawTokens.dimension6000)
        #expect(DimensionRawTokens.dimension800 != DimensionRawTokens.dimension7000)
        #expect(DimensionRawTokens.dimension800 != DimensionRawTokens.dimension9000)
        #expect(DimensionRawTokens.dimension800 != DimensionRawTokens.dimension11000)

        #expect(DimensionRawTokens.dimension850 != DimensionRawTokens.dimension900)
        #expect(DimensionRawTokens.dimension850 != DimensionRawTokens.dimension1000)
        #expect(DimensionRawTokens.dimension850 != DimensionRawTokens.dimension1200)
        #expect(DimensionRawTokens.dimension850 != DimensionRawTokens.dimension1400)
        #expect(DimensionRawTokens.dimension850 != DimensionRawTokens.dimension1600)
        #expect(DimensionRawTokens.dimension850 != DimensionRawTokens.dimension1800)
        #expect(DimensionRawTokens.dimension850 != DimensionRawTokens.dimension2000)
        #expect(DimensionRawTokens.dimension850 != DimensionRawTokens.dimension3000)
        #expect(DimensionRawTokens.dimension850 != DimensionRawTokens.dimension4000)
        #expect(DimensionRawTokens.dimension850 != DimensionRawTokens.dimension5000)
        #expect(DimensionRawTokens.dimension850 != DimensionRawTokens.dimension6000)
        #expect(DimensionRawTokens.dimension850 != DimensionRawTokens.dimension7000)
        #expect(DimensionRawTokens.dimension850 != DimensionRawTokens.dimension9000)
        #expect(DimensionRawTokens.dimension850 != DimensionRawTokens.dimension11000)

        #expect(DimensionRawTokens.dimension900 != DimensionRawTokens.dimension1000)
        #expect(DimensionRawTokens.dimension900 != DimensionRawTokens.dimension1200)
        #expect(DimensionRawTokens.dimension900 != DimensionRawTokens.dimension1400)
        #expect(DimensionRawTokens.dimension900 != DimensionRawTokens.dimension1600)
        #expect(DimensionRawTokens.dimension900 != DimensionRawTokens.dimension1800)
        #expect(DimensionRawTokens.dimension900 != DimensionRawTokens.dimension2000)
        #expect(DimensionRawTokens.dimension900 != DimensionRawTokens.dimension3000)
        #expect(DimensionRawTokens.dimension900 != DimensionRawTokens.dimension4000)
        #expect(DimensionRawTokens.dimension900 != DimensionRawTokens.dimension5000)
        #expect(DimensionRawTokens.dimension900 != DimensionRawTokens.dimension6000)
        #expect(DimensionRawTokens.dimension900 != DimensionRawTokens.dimension7000)
        #expect(DimensionRawTokens.dimension900 != DimensionRawTokens.dimension9000)
        #expect(DimensionRawTokens.dimension900 != DimensionRawTokens.dimension11000)

        #expect(DimensionRawTokens.dimension1000 != DimensionRawTokens.dimension1200)
        #expect(DimensionRawTokens.dimension1000 != DimensionRawTokens.dimension1400)
        #expect(DimensionRawTokens.dimension1000 != DimensionRawTokens.dimension1600)
        #expect(DimensionRawTokens.dimension1000 != DimensionRawTokens.dimension1800)
        #expect(DimensionRawTokens.dimension1000 != DimensionRawTokens.dimension2000)
        #expect(DimensionRawTokens.dimension1000 != DimensionRawTokens.dimension3000)
        #expect(DimensionRawTokens.dimension1000 != DimensionRawTokens.dimension4000)
        #expect(DimensionRawTokens.dimension1000 != DimensionRawTokens.dimension5000)
        #expect(DimensionRawTokens.dimension1000 != DimensionRawTokens.dimension6000)
        #expect(DimensionRawTokens.dimension1000 != DimensionRawTokens.dimension7000)
        #expect(DimensionRawTokens.dimension1000 != DimensionRawTokens.dimension9000)
        #expect(DimensionRawTokens.dimension1000 != DimensionRawTokens.dimension11000)

        #expect(DimensionRawTokens.dimension1200 != DimensionRawTokens.dimension1400)
        #expect(DimensionRawTokens.dimension1200 != DimensionRawTokens.dimension1600)
        #expect(DimensionRawTokens.dimension1200 != DimensionRawTokens.dimension1800)
        #expect(DimensionRawTokens.dimension1200 != DimensionRawTokens.dimension2000)
        #expect(DimensionRawTokens.dimension1200 != DimensionRawTokens.dimension3000)
        #expect(DimensionRawTokens.dimension1200 != DimensionRawTokens.dimension4000)
        #expect(DimensionRawTokens.dimension1200 != DimensionRawTokens.dimension5000)
        #expect(DimensionRawTokens.dimension1200 != DimensionRawTokens.dimension6000)
        #expect(DimensionRawTokens.dimension1200 != DimensionRawTokens.dimension7000)
        #expect(DimensionRawTokens.dimension1200 != DimensionRawTokens.dimension9000)
        #expect(DimensionRawTokens.dimension1200 != DimensionRawTokens.dimension11000)

        #expect(DimensionRawTokens.dimension1400 != DimensionRawTokens.dimension1600)
        #expect(DimensionRawTokens.dimension1400 != DimensionRawTokens.dimension1800)
        #expect(DimensionRawTokens.dimension1400 != DimensionRawTokens.dimension2000)
        #expect(DimensionRawTokens.dimension1400 != DimensionRawTokens.dimension3000)
        #expect(DimensionRawTokens.dimension1400 != DimensionRawTokens.dimension4000)
        #expect(DimensionRawTokens.dimension1400 != DimensionRawTokens.dimension5000)
        #expect(DimensionRawTokens.dimension1400 != DimensionRawTokens.dimension6000)
        #expect(DimensionRawTokens.dimension1400 != DimensionRawTokens.dimension7000)
        #expect(DimensionRawTokens.dimension1400 != DimensionRawTokens.dimension9000)
        #expect(DimensionRawTokens.dimension1400 != DimensionRawTokens.dimension11000)

        #expect(DimensionRawTokens.dimension1600 != DimensionRawTokens.dimension1800)
        #expect(DimensionRawTokens.dimension1600 != DimensionRawTokens.dimension2000)
        #expect(DimensionRawTokens.dimension1600 != DimensionRawTokens.dimension3000)
        #expect(DimensionRawTokens.dimension1600 != DimensionRawTokens.dimension4000)
        #expect(DimensionRawTokens.dimension1600 != DimensionRawTokens.dimension5000)
        #expect(DimensionRawTokens.dimension1600 != DimensionRawTokens.dimension6000)
        #expect(DimensionRawTokens.dimension1600 != DimensionRawTokens.dimension7000)
        #expect(DimensionRawTokens.dimension1600 != DimensionRawTokens.dimension9000)
        #expect(DimensionRawTokens.dimension1600 != DimensionRawTokens.dimension11000)

        #expect(DimensionRawTokens.dimension1800 != DimensionRawTokens.dimension2000)
        #expect(DimensionRawTokens.dimension1800 != DimensionRawTokens.dimension3000)
        #expect(DimensionRawTokens.dimension1800 != DimensionRawTokens.dimension4000)
        #expect(DimensionRawTokens.dimension1800 != DimensionRawTokens.dimension5000)
        #expect(DimensionRawTokens.dimension1800 != DimensionRawTokens.dimension6000)
        #expect(DimensionRawTokens.dimension1800 != DimensionRawTokens.dimension7000)
        #expect(DimensionRawTokens.dimension1800 != DimensionRawTokens.dimension9000)
        #expect(DimensionRawTokens.dimension1800 != DimensionRawTokens.dimension11000)

        #expect(DimensionRawTokens.dimension2000 != DimensionRawTokens.dimension3000)
        #expect(DimensionRawTokens.dimension2000 != DimensionRawTokens.dimension4000)
        #expect(DimensionRawTokens.dimension2000 != DimensionRawTokens.dimension5000)
        #expect(DimensionRawTokens.dimension2000 != DimensionRawTokens.dimension6000)
        #expect(DimensionRawTokens.dimension2000 != DimensionRawTokens.dimension7000)
        #expect(DimensionRawTokens.dimension2000 != DimensionRawTokens.dimension9000)
        #expect(DimensionRawTokens.dimension2000 != DimensionRawTokens.dimension11000)

        #expect(DimensionRawTokens.dimension3000 != DimensionRawTokens.dimension4000)
        #expect(DimensionRawTokens.dimension3000 != DimensionRawTokens.dimension5000)
        #expect(DimensionRawTokens.dimension3000 != DimensionRawTokens.dimension6000)
        #expect(DimensionRawTokens.dimension3000 != DimensionRawTokens.dimension7000)
        #expect(DimensionRawTokens.dimension3000 != DimensionRawTokens.dimension9000)
        #expect(DimensionRawTokens.dimension3000 != DimensionRawTokens.dimension11000)

        #expect(DimensionRawTokens.dimension4000 != DimensionRawTokens.dimension5000)
        #expect(DimensionRawTokens.dimension4000 != DimensionRawTokens.dimension6000)
        #expect(DimensionRawTokens.dimension4000 != DimensionRawTokens.dimension7000)
        #expect(DimensionRawTokens.dimension4000 != DimensionRawTokens.dimension9000)
        #expect(DimensionRawTokens.dimension4000 != DimensionRawTokens.dimension11000)

        #expect(DimensionRawTokens.dimension5000 != DimensionRawTokens.dimension6000)
        #expect(DimensionRawTokens.dimension5000 != DimensionRawTokens.dimension7000)
        #expect(DimensionRawTokens.dimension5000 != DimensionRawTokens.dimension9000)
        #expect(DimensionRawTokens.dimension5000 != DimensionRawTokens.dimension11000)

        #expect(DimensionRawTokens.dimension6000 != DimensionRawTokens.dimension7000)
        #expect(DimensionRawTokens.dimension6000 != DimensionRawTokens.dimension9000)
        #expect(DimensionRawTokens.dimension6000 != DimensionRawTokens.dimension11000)

        #expect(DimensionRawTokens.dimension7000 != DimensionRawTokens.dimension9000)
        #expect(DimensionRawTokens.dimension7000 != DimensionRawTokens.dimension11000)

        #expect(DimensionRawTokens.dimension9000 != DimensionRawTokens.dimension11000)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable type_body_length
// swiftlint:enable function_body_length
